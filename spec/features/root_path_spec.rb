require 'rails_helper'

RSpec.describe 'root path' do
  it 'can search for members' do
    visit root_path

    select 'Fire Nation', from: 'select-field'

    click_on('Search For Members')

    expect(current_path).to eq('/search')
  end
end
