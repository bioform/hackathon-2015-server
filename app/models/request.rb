class Request < ActiveRecord::Base
	belongs_to :deal
	belongs_to :user

	state_machine :state, :initial => :new do

		event :approve do
      transition any => :approved
    end

    event :deny do
      transition any => :denied
    end

	end

end
