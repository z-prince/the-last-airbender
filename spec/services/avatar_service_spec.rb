require 'rails_helper'

RSpec.describe AvatarsService do
  it '#gets all the characters' do
    parsed_json = AvatarsService.get_all_nation_members('Fire Nation')

    expect(parsed_json).to be_a Array

    avatar = parsed_json.first
    expect(avatar).to be_a Hash

    parsed_json.each do |avatar|
      expect(avatar[:allies]).to be_a Array
      expect(avatar[:affiliation]).to include('Fire Nation')
      expect(avatar[:name]).to be_a String
      expect(avatar[:enemies]).to be_a Array
    end
  end
end
