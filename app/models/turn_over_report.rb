class TurnOverReport < ActiveRecord::Base
  attr_accessible :cash_amount, :check_amount, :check_number, :contact_number, :date, :date_received, :is_cash, :is_check, :issuing_bank, :payer, :received_by, :request_by, :to, :total_amount, :unit, :dcb_account_id
  belongs_to  :dcb_account

  validates :date, 
    :presence => true

    validates :to, 
    :presence => true 

    validates :date, 
    :presence => true 

    validates :date_received, 
    :presence => true

    validates :payer, 
    :presence => true

    validates :received_by, 
    :presence => true 

    validates :cash_amount, 
    :numericality => true

     validates :total_amount, 
    :numericality => true,
    :presence => true

    validates :check_number,
    :uniqueness => true

    validates :dcb_account_id,
    :presence => true

    validates :check_amount, 
    :numericality => true

end
