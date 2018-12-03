
$items = [
	{ 
		id: 1,
		description: "value1",
		sku: "XBVJS-12311", 
		stock: 5,
		price: "25.5" 
	},
	{ 
		id: 2,
		description: "value2",
		sku: "DDSSD-14411",
		stock: 5,
		price: "15.5" 
	},
	{ 
		id: 3,
		description: "value3",
		sku: "SESFD-23423",
		stock: 7,
		price: "35.0" 
	},
	{ 
		id: 4,
		description: "value4",
		sku: "FGHFG-34532",
		stock: 2,
		price: "27.5" 
	},
	{ 
		id: 5,
		description: "value5",
		sku: "XCXXC-89674",
		stock: 1,
		price: "55.9" 
	}
]

def simple_list
	keys_to_extract = [:id, :sku, :description]

	$items.map do |w|
	  w.select { |k,_| keys_to_extract.include? k }
	end
end