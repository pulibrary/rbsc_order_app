class Order < ActiveRecord::Base
  belongs_to :status
  belongs_to :staff
end
