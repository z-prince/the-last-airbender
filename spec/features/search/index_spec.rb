require 'rails_helper'

RSpec.describe 'search index' do
  it 'displays member count and first 25 affiliates' do
    visit root_path

    select 'Fire Nation', from: :nation

    click_on('Search For Members')

    expect(current_path).to eq('/search')

    within '#totalMembers' do
      expect(page).to have_content(97)
    end
  end
end
