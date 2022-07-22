class AvatarsService
  def self.get_url(url, keyword = nil)
    conn = Faraday.new(url: 'https://last-airbender-api.herokuapp.com/') do |faraday|
      faraday.params[:query] = keyword unless keyword.nil?
    end

    response = conn.get(url)

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_all_characters
    get_url('api/v1/characters')
  end
end
