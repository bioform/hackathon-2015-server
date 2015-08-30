class User < ActiveRecord::Base
	include Gravtastic
	gravtastic

	has_many :deals
	has_many :requests

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
         
   def to_json(options)
     {
       id: self.id,
       email: self.email,
       name: self.name,
       phone_number: self.phone_number,
       last_sign_in_at: self.last_sign_in_at,
       gravatar_url: self.gravatar_url
     }.to_json
   end         
end
