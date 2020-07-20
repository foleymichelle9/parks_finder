require "rails_helper"

RSpec.describe"As a user" do
  it "Shows national parks and their data" do
    visit "/"
    select "Tennessee", from: :state
    click_on 'Find Parks'

    expect(current_path).to eq(parks_path)

    expect(page).to have_content('There are 18 parks in TN')
    expect(page).to have_css('.park', count: 18)

    within(first('.park')) do
      within('.name') do
          expect(page).to have_content('Boston Harbor Islands')
      end
      within('.description') do
          expect(page).to have_content(". . . where you can walk a Civil War-era fort, visit historic lighthouses, explore tide pools, hike lush trails, camp under the stars, or relax while fishing, picnicking or swimming-all within reach of downtown Boston. Youth programs, visitor services, research, wildlife management, and more are coordinated on the park's 34 islands and peninsulas by the Boston Harbor Islands Partnership.")
      end
      within('.direction') do
          expect(page).to have_content("There are many ways to enjoy Boston Harbor Islands and many ways to get there. For more information on how to get to the park by ferry, car, or private boat, please visit www.bostonharborislands.org.")
      end
      # within('.hours') do
      #     expect(page).to have_content()
      # end
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
