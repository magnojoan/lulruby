class TurnOverReport < ActiveRecord::Base
  attr_accessible :cash_amount, :check_amount, :check_number, :contact_number, :date, :date_received, :is_cash, :is_check, :issuing_bank, :payer, :received_by, :request_by, :to, :total_amount, :unit, :dcb_account_id
  belongs_to  :dcb_account
end
