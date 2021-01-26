feature 'Homepage welcomes users' do
  scenario 'it says hello when you visit the page' do
    visit('/')
    expect(page).to have_content("Hello There")
  end

  scenario 'it asks for your name' do
    visit ('/')
    expect(page).to have_content("What's your name?")
  end

  scenario 'it asks for your name' do
    visit ('/')
    expect(page).to have_content("When's your birthday?")
  end
end
