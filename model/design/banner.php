<?php
class ModelDesignBanner extends Model {
	public function getBanner($banner_id) {
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "banner b LEFT JOIN " . DB_PREFIX . "banner_image bi ON (b.banner_id = bi.banner_id) WHERE b.banner_id = '" . (int)$banner_id . "' AND b.status = '1' AND bi.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY bi.sort_order ASC");
		
		$rowarray = $query->rows;
		
		$i = 0;
		foreach ($rowarray as $result){
			$product_id = substr($query->rows[$i]["link"], strpos($query->rows[$i]["link"], '_id=') + 4, strlen($query->rows[$i]["link"]));
			$query->rows[$i]["product_id"] = $product_id;
			if ($product_id){
			$query_txt = "SELECT ps.date_end  from " . DB_PREFIX . "product_special  ps where ps.product_id = ". (string)$product_id ;
			$date_end_query = $this->db->query($query_txt);
			@$query->rows[$i]["date_end"] = $date_end_query->row["date_end"];
		    }
			
			
			$i++;
		}

		
		return $query->rows;
	}
}
