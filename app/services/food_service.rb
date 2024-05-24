class FoodService
  def search(food_name)
    query = food_name.gsub(' ', '%20')
    get_url("foods/search?query=#{query}&pageSize=10&pageNumber=1")[:foods]
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |faraday|
      faraday.params["api_key"] = Rails.application.credentials.usda[:key]
    end
  end
end