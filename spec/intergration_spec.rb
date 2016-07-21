require('spec_helper')

describe('the home page route', :type => :feature) do
  it "takes us to the home page" do
    visit '/'
    expect(page).to have_content('Welcome')
  end
end

describe('the recipe route', :type => :feature) do
  it("allows the user to name a new recipe") do
    visit '/'
    fill_in 'name', :with => 'Jerk Chicken'
    click_button 'Go!'
    expect(page).to have_content('Jerk Chicken')
  end

  it('allows a user to enter an ingredient to their recipe') do
    visit '/'
    fill_in 'name', :with => 'Jerk Chicken'
    click_button 'Go!'
    fill_in 'ingredient', :with => 'Chicken'
    click_button 'Add'
    expect(page).to have_content('Chicken')
  end

  it('allows a user to enter instructions for their recipe') do
    visit '/'
    fill_in 'name', :with => 'Jerk Chicken'
    click_button 'Go!'
    fill_in 'instruction', :with => 'Wash the chicken, salt (pinch) and let sweat for 10 min. Add pepper and bake at 350 for 2 hours'
    click_button 'Submit'
    expect(page).to have_content('Wash the chicken')
  end

  it('allows a user to view their complete recipe') do
    visit '/'
    fill_in 'name', :with => 'Jerk Chicken'
    click_button 'Go!'
    fill_in 'ingredient', :with => 'Chicken'
    click_button 'Add'
    fill_in 'ingredient', :with => 'Salt'
    click_button 'Add'
    fill_in 'ingredient', :with => 'Pepper'
    click_button 'Add'
    fill_in 'instruction', :with => 'Wash the chicken, salt (pinch) and let sweat for 10 min. Add pepper and bake at 350 for 2 hours'
    click_button 'Submit'
    click_button 'See My Recipe'
    expect(page).to have_content('Jerk Chicken')
  end

  it('allows a user to delete an ingredient') do
    visit '/'
    fill_in 'name', :with => 'Jerk Chicken'
    click_button 'Go!'
    fill_in 'ingredient', :with => 'Salt'
    click_button 'Add'
    click_button 'Delete'
    expect(page).to have_no_content('Saltgit a')
  end

  it('allows a user to edit the instructions for their recipe') do
    visit '/'
    fill_in 'name', :with => 'Jerk Chicken'
    click_button 'Go!'
    fill_in 'instruction', :with => 'Wash the chicken, salt (pinch) and let sweat for 10 min. Add pepper and bake at 350 for 2 hours'
    click_button 'Submit'
    click_link 'Edit Instructions'
    fill_in 'instruction', :with => 'Wash chicken, salt, sweat, bake, eat!'
    click_button 'Update instructions'
    expect(page).to have_content('Wash chicken, salt, sweat, bake, eat!')
  end
end
