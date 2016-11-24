

RSpec.feature "Battle" do
  scenario "User fills out name in form" do
    sign_in_and_play
    expect(page).to have_content 'Tom vs. Dan'
  end

  scenario "User can see player 2 hit points" do
    sign_in_and_play
    expect(page).to have_content 'Dan 100/100 points'
  end

  # scenario "User gets confirmation of attack" do
  #   sign_in_and_play
  #   click_button 'ATTACK!'
  #   expect(page).to have_content ('Tom has attacked Dan!')
  # end

  scenario "Players 2 points reduced upon attack" do
    sign_in_and_play
    click_button 'ATTACK!'
    expect(page).to have_content "Dan 90/100 points"
  end

end
