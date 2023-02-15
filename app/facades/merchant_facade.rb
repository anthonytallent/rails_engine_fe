class MerchantFacade

  def self.get_all_merchants
    data = MerchantService.get_all_merchants_response
    data[:data].map do |merchant_information|
      Merchant.new(merchant_information)
    end
  end

  def self.get_one_merchant(id)
    data = MerchantService.get_one_merchant_response(id)
    Merchant.new(data[:data])
  end

  def self.get_all_items_by_merchant(merchant_id)
    data = MerchantService.get_all_items_by_merchant_response(merchant_id)
    data[:data].map do |item_information|
      Item.new(item_information)
    end
  end
end