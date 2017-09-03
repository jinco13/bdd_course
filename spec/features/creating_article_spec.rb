require 'rails_helper'

RSpec.feature "Creating artile" do
  scenario "A user creates a new article" do
    visit "/"
    click_link "New Article"
    fill_in "Title", with: "Creating a blog"
    fill_in "Body", with: "This is test!"

    click_button "Create Article"
    expect(page).to have_content("Article has been created")
    expect(page.current_path).to eql(articles_path)
  end
end
