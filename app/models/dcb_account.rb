class DcbAccount < ActiveRecord::Base
  attr_accessible :account_name, :account_number, :amount
  has_many :turn_over_reports

    def to_s
    account_name
  end

  validates :account_name, 
    :presence => true, 
    :uniqueness => true

    validates :account_number, 
    :presence => true, 
    :uniqueness => true

    validates :amount, 
    :presence => true, 
    :numericality => true

end
