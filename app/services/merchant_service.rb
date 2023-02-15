class MerchantService

  def self.conn
    Faraday.new(url: "http://localhost:3000")
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_all_merchants_response
    response = conn.get("/api/v1/merchants")
    parse(response)
  end

  def self.get_one_merchant_response(id)
    response = conn.get("/api/v1/merchants/#{id}")
    parse(response)
  end

  def self.get_all_items_by_merchant_response(merchant_id)
    response = conn.get("/api/v1/merchants/#{merchant_id}/items")
    parse(response)
  end

  private_class_method :conn, :parse
end