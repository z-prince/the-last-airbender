class Avatar
  attr_reader :name,
              :photo,
              :allies,
              :affiliations

  def initialize(data)
    @name = data[:name]
    @photo = data[:photoUrl] unless data[:photoUrl].nil?
    @allies = data[:allies]
    @affiliations = data[:affiliation] unless data[:affiliation].nil?
  end
end
