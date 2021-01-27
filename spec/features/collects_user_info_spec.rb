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
    expect(page).to have_content("Sean it is not your Birthday!")
  end

  scenario 'collects users birthday' do
    visit('/')
    fill_in('name', with: 'Sean')
    select('27', from: 'day')
    select('January', from: 'month')
    click_button "Submit"
    expect(page).to have_content("it is your Birthday today!!!")
  end

end
