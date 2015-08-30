class DashboardController < ApplicationController
	def amount_borrowed
		@sum = 0.0
		current_user.deals.each do |deal|
			@sum += deal.amount
		end
	end

	def interest_owed
		deals = current_user.deals
		@total_interest = 0.0
		deals.each do |deal|
			if deal.rate != nil
				days = (DateTime.now.to_date - deal.updated_at.to_date).to_i
				deal_interest = deal.amount * ((deal.rate / 100) / 365) * days
				@total_interest += deal_interest
			end
		end
	end

	def funding_activity
		@current_deals = current_user.deals.where(state: :funding)
	end
end