require "rails_helper"

RSpec.describe"As a user" do
  it "Shows national parks and their data" do
    visit "/"
    select "Tennesee", from: :state
    click_on 'Find Parks'

    expect(current_path).to eq(search_path)

    expect(page).to have_content('There are 97 parks in Tennesee')
    expect(page).to have_css('.park', count: 1)

    within(first('.park')) do
      within('.name') do
          expect(page).to have_content('park')
      end
      within('.description') do
          expect(page).to have_content('description')
      end
      within('.direction') do
          expect(page).to have_content('Fire Nation')
      end
      within('.hours') do
          expect(page).to have_content('Aang')
      end
    end
  end
end






# As a user,
# When I select "Tennessee" from the form,
# (Note: use the existing form)
# And click on "Find Parks",
# I see the total of parks found,
# And for each park I see:
# - full name of the park
# - description
# - direction info
# - standard hours for operation
