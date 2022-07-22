class Avatar
  attr_reader :name,
              :photo,
              :allies,
              :affiliations,
              :enemies

  def initialize(data)
    @name = data[:name]
    @photo = data[:photoUrl] unless data[:photoUrl].nil?
    @allies = data[:allies]
    @affiliations = data[:affiliation] unless data[:affiliation].nil?
    @enemies = data[:enemies] unless data[:enemies].nil?
  end
end
