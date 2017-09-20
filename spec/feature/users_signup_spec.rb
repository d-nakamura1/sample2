require 'spec_helper'

RSpec.describe UsersController, type: :controller do

  describe "users_signup" do
    it "invalid signup information" do
      visit signup_path
      expect{
        post :create, params: { user: { name:  "",
                                           email: "user@invalid",
                                           password:              "foo",
                                           password_confirmation: "bar" } }
      }.not_to change(User, :count)
      expect(page).to render_template 'users/new'
    end

    it "valid signup information" do
      visit signup_path
      expect{
        post :create, params: { user: { name:  "Example User",
                                           email: "user@example.com",
                                           password:              "password",
                                           password_confirmation: "password" } }
      }.to change(User, :count).by(1)
      expect(page).to redirect_to '/users/1'
    end
  end
end
