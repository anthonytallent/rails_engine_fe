class Item
attr_reader :id, :name, :description, :unit_price, :merchant_id
  def initialize(item_information)
    @id = item_information[:id]
    @name = item_information[:attributes][:name]
    @description = item_information[:attributes][:description]
    @unit_price = item_information[:attributes][:unit_price]
    @merchant_id = item_information[:attributes][:merchant_id]
  end
end