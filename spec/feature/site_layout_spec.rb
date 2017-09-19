require 'spec_helper'

RSpec.describe StaticPagesController, type: :feature do

  describe "layout links" do
    before do
      visit root_path
    end

    it "root_path" do
      expect(page).to have_link 'Home', href: root_path
    end

    it "help_path" do
      expect(page).to have_link 'Help', href: help_path
    end

    it "about_path" do
      expect(page).to have_link 'About', href: about_path
    end

    it "contact_path" do
      expect(page).to have_link 'Contact', href: contact_path
    end
  end
end
