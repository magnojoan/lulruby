class DcbAccount < ActiveRecord::Base
  attr_accessible :account_name, :account_number, :amount
  has_many :turn_over_reports
end
