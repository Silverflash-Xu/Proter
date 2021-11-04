require 'rails_helper'
require 'monkeypatch'
require "clearance/rspec"

RSpec.describe UsersController, type: 'controller' do
    
    describe "GET #new" do
        let!(:user) {User.new}
        it "should render new template" do
            expect(response).to be_successful
        end
    end
    
    describe "POST #create" do
        it "should post new test user" do
            post :create, :user => {:email => "Bob@gmail.com", :password => "Bob", :first_name => "Bob", :last_name => "Bober", :city => "Bob@gmail.com", :state => "New York", :address => "100W 100ST", :card_number => "1111111111111111", :card_cvv => "111", :card_expired_date => "2030.1.1"}
            expect(User).to redirect_to(Clearance.configuration.redirect_url)
        end
    end
    
end