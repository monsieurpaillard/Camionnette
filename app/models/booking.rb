class Booking < ActiveRecord::Base
  belongs_to :truck
  belongs_to :customer, :class_name => :User, :foreign_key => 'user_id'
end
