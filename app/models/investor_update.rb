class InvestorUpdate < ActiveRecord::Base
	belongs_to :deal
	belongs_to :request
end
