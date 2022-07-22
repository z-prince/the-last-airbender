class Avatar
  attr_reader :name,
              :photo,
              :allies,
              :affiliations

  def initialize(data)
    @name = data[:name]
    @photo = data[:photo] unless data[:photo].nil?
    @allies = data[:allies]
    @affiliations = data[:affiliations] unless data[:affiliations].nil?
  end
end
