class LineItem < ActiveRecord::Base
  belongs_to :manifest
  belongs_to :order
end
