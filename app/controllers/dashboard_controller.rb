class DashboardController < ApplicationController
	def amount_borrowed
		@sum = current_user.deals.sum(:amount)
	end

	def interest_owed
		@total_interest = 0.0
		current_user.deals.each do |deal|
			@total_interest += deal.interest_owed
		end
	end

	def funding_activity
		@current_deals = current_user.deals.where(state: :funding)
	end
end