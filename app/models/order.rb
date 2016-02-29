class Order < ActiveRecord::Base
  belongs_to :status
  belongs_to :staff
  has_many :line_items
  has_many :manifests, through: :line_items
  validates :payment_fname, :payment_lname, :payment_email, presence: true
end
