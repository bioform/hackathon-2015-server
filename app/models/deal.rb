class Deal < ActiveRecord::Base
	belongs_to :user
	has_many :requests

	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  before_create :assign_rate

  def assign_rate
  	self.rate = rand(10.0..20.0).round(2)
  end

  state_machine :state, :initial => :new do

  	before_transition :funding => :funded do
  		deal.updated_at = DateTime.now
  	end

  	event :deny do
  		transition any => :denied
  	end

  	event :begin_funding do
      transition any => :funding
    end

    event :complete_funding do
      transition :funding => :funded
    end

    event :funding_incomplete do
    	transition :funding => :denied
    end

  end

  def interest_owed
		days = (DateTime.now.to_date - self.updated_at.to_date).to_i
		return  self.amount * ((self.rate / 100) / 365) * days
	end

end
