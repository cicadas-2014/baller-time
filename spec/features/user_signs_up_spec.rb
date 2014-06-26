require 'spec_helper'

feature "User signs up" do 
    scenario "logs in user when valid parameters are passed" do
        visit '/users/new'

        fill_in "Email", with: "rebecca@devbootcamp.com"
        click_button "Sign up"

        expect(paSge).to have_content("logged in as rebecca@devbootcamp.com")
    end
end