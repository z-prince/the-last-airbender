require 'rails_helper'

RSpec.describe 'AvatarFacade' do
  describe 'search page calls' do
    it 'returns an array of fire nation members' do
      results = AvatarsFacade.nation_members('Fire Nation')  # set to variable to decrease number of api and/or cassette calls
      expect(results).to be_a Array
      expect(results.count).to be 97
      expect(results).to be_all Avatar
      expect(results.first.affiliations).to include('Fire Nation')
    end
  end
end
