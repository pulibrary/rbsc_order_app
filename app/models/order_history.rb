class OrderHistory < ActiveRecord::Base
  belongs_to :order
  belongs_to :status
  belongs_to :staff
end
