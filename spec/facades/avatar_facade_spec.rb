require 'rails_helper'

RSpec.describe 'AvatarFacade' do
  describe 'discover page calls' do
    it 'returns an array of fire nation members' do
      results = MoviesFacade.top_rated  # set to variable to decrease number of api and/or cassette calls
      expect(results).to be_a Array
      expect(results.count).to be <= 40
      expect(results).to be_all Movie
    end
  end
end
