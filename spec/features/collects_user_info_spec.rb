feature 'it collects users details' do
  scenario 'it collects users name' do
    visit ('/')
    fill_in("name", with: 'Sean')
    click_button "Submit"
    expect(page).to have_content("Hello Sean")
  end

  scenario 'collects users birthday' do
    visit('/')
    fill_in('name', with: 'Sean')
    select('19', from: 'day')
    select('June', from: 'month')
    click_button "Submit"
    expect(page).to have_content("You were born 19/6")
  end
end
