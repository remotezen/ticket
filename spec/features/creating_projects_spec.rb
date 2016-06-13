require 'rails_helper'
RSpec.feature 'Creating Projects', :type => feature do
  scenario "Can create a project" do
    visit '/'
    click_link 'New Project'
    fill_in 'Name', with: 'vim'
    fill_in 'Description', with: 'best text editor alive'
    click_button 'Create Project'
    expect(page).to have_content('Projects has been created')
  end
end

