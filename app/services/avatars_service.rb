class AvatarsService
  def self.get_url(url, keyword = nil)
    conn = Faraday.new(url: 'https://last-airbender-api.herokuapp.com/') do |faraday|
      faraday.params[:affiliation] = keyword unless keyword.nil?
    end

    response = conn.get(url)

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_all_nation_members(keyword)
    get_url('api/v1/characters', keyword)
  end
end
