require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
	test "quote show page" do
		quote = Quote.create(:author => 'Bugs Bunny', :saying => 'Whats up Doc?')
		get :show, :id => quote.id
		assert_response :success
	end

	test "quote show apge, not found" do
		get :show, :id => 'OMG'
		assert_response :not_found
	end
end
