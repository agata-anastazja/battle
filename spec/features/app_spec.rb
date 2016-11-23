
RSpec.feature "Battle" do
  scenario "User fills out name in form" do
    visit("/")
    fill_in :player_1, with: 'Tom'
    fill_in :player_2, with: 'Dan'
    click_button 'Submit'
    expect(page).to have_content 'Tom vs. Dan'
  end

  scenario "User can see hit points" do
    visit("/points")
    expect(page).to have_content 50
  end

end
