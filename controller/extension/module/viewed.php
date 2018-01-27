<?php
class ControllerExtensionModuleViewed extends Controller {
	public function index($setting) {
		$this->load->language('extension/module/viewed');

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_tax'] = $this->language->get('text_tax');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

		$data['products'] = array();

        $products = array();

        if (isset($this->request->cookie['viewed'])) {
            $products = explode(',', $this->request->cookie['viewed']);
        } else if (isset($this->session->data['viewed'])) {
            $products = $this->session->data['viewed'];
        }

        if (isset($this->request->get['route']) && $this->request->get['route'] == 'product/product') {
            $product_id = $this->request->get['product_id'];
            $products = array_diff($products, array($product_id));
            array_unshift($products, $product_id);
            setcookie('viewed', implode(',',$products), time() + 60 * 60 * 24 * 30, '/', $this->request->server['HTTP_HOST']);
        }

		if (empty($setting['limit'])) {
			$setting['limit'] = 4;
		}

		$products = array_slice($products, 0, (int)$setting['limit']);
		foreach ($products as $product_id) {
			$product_info = $this->model_catalog_product->getProduct($product_id);

			if ($product_info) {
				if ($product_info['image']) {
					$image = $this->model_tool_image->resize($product_info['image'], $setting['width'], $setting['height']);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
				}

				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$price = false;
				}

				if ((float)$product_info['special']) {
					$special = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				    $benefit = $this->currency->format($this->tax->calculate($product_info['mybenefit'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				    $date_end = $product_info['date_end'];
				
				} else {
					$special = false;
					$benefit = false;
					$date_end = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$product_info['special'] ? $product_info['special'] : $product_info['price'], $this->session->data['currency']);
				} else {
					$tax = false;
				}

				if ($product_info['manufacturer']) {
					$manufacturer = $product_info['manufacturer'];
				} else {
					$manufacturer = false;
				}
			$mycolors['ecolors'] = array();

				foreach ($this->model_catalog_product->getProductOptions($product_info['product_id']) as $v_option) {
						
						if ($v_option['type'] == 'radio')	{
							foreach ($v_option['product_option_value'] as $option_value) {
	                            $mycolors['ecolors'][] = $option_value['sort_order'];
							}
					
						}	
				}

				$data['products'][] = array(
					'product_id'  => $product_info['product_id'],
					'thumb'       => $image,
					'name'        => $product_info['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
				    'benefit'     => $benefit,
					'date_end'     => $date_end,
					'manufacturer' => $manufacturer,
					'colors' => $mycolors,
					'tax'         => $tax,
					//'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'product_id=' . $product_info['product_id'])
				);	
				
			}
		}

		if ($data['products']) {
			return $this->load->view('extension/module/viewed', $data);
		}
	}
}