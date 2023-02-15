class Merchant
  attr_reader :name, :id

  def initialize(merchant_information)
    @id = merchant_information[:id]
    @name = merchant_information[:attributes][:name]
  end
end