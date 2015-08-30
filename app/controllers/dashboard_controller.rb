class DashboardController < ApplicationController
	def amount_borrowed
		@sum = 0
		current_user.deals.each do |deal|
			@sum += deal.amount
		end
		@sum.to_json
	end

	def interest_owed
		@deals = current_user.deals
	end
end