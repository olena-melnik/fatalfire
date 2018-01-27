<?php
class ControllerExtensionModuleSlideshow extends Controller {
	public function index($setting) {
		static $module = 0;		

		$this->load->model('design/banner');
		$this->load->model('tool/image');

		$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.carousel.css');
		$this->document->addScript('catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js');

		$data['banners'] = array();

		$results = $this->model_design_banner->getBanner($setting['banner_id']);
		foreach ($results as $result) {
			if (is_file(DIR_IMAGE . $result['image'])) {
				/*getting bycicle by link*/
				$str = $result['link'];
				(int)$product_id =$result['product_id'];
				$this->load->model('catalog/product');
				$product_info = $this->model_catalog_product->getProduct($product_id);
			    $price = 0;
				$special = 0;
				$benefit = 0;
				if($product_info['price'] > 0)
				$price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				if($product_info['special'] > 0)
				$special = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				$benefit = $price - $special;
				
				
				$data['banners'][] = array(
					'title' => $result['title'],
					'link'  => $result['link'],
					'price'  =>   $price,
					'psprice' =>  $special,
					'benefit'  => $benefit,
					'date_end'  => $result['date_end'],
					'description'  => $product_info['description'],
					'short_description'  => $product_info['tag'],
					'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height'])
				);
			}
		}

		$data['module'] = $module++;

		return $this->load->view('extension/module/slideshow', $data);
	}
}
