feature 'Homepage welcomes users' do
  scenario 'it says hello when you visit the page' do
    visit('/')
    expect(page).to have_content("Hello there")
  end

  scenario 'it asks for your name' do
    visit ('/')
    expect(page).to have_content("What's your name?")
  end

  scenario 'it asks for your birthday' do
    visit ('/')
    expect(page).to have_content("When is your birthday?")
  end
end
