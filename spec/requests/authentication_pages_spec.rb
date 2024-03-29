require 'spec_helper'

describe "Authentication" do

  subject { page }
  before { visit signin_path }
  
  describe "signin page" do

    it { should have_selector('h1',    text: 'Sign In') }
    it { should have_selector('title', text: 'Sign In') }
  end

  describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Email",    with: user.email.upcase
        fill_in "Password", with: user.password
        click_button "Sign in"
      end

      it { should have_selector('title', text: user.name) }
      it { should have_link('Profile', href: user_path(user)) }
      it { should have_link('Sign out', href: signout_path) }
      it { should_not have_link('Sign in', href: signin_path) }
    
      describe "followed by signout" do
        before {click_link "Sign out"}
        it {should have_link("Sign in")}
      end
  end

  
end