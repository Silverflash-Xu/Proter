require 'rails_helper'
require 'monkeypatch'
require 'clearance/rspec'

RSpec.describe UsersController, type: 'controller' do

    
    describe "POST #create" do
        it "should post new test user" do
        post :create, :user => {:email => "Bob@gmail.com", :password => "bobalice", :first_name => "Alice", :last_name => "Bob", :city => "New York", :state => "NY", :address => "100 W, 100 ST", :card_number => "1111 1111 1111 1111", :card_cvv => "111", :card_expired_date => "2021.11.4"}
            expect(User).to redirect_to(Clearance.configuration.redirect_url)
        end
    end
end