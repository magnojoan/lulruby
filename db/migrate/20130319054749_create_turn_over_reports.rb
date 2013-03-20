class CreateTurnOverReports < ActiveRecord::Migration
  def change
    create_table :turn_over_reports do |t|
      t.string :to
      t.date :date
      t.string :payer
      t.decimal :total_amount
      t.string :request_by
      t.string :contact_number
      t.string :received_by
      t.string :unit
      t.boolean :is_cash
      t.boolean :is_check
      t.date :date_received
      t.decimal :cash_amount
      t.decimal :check_amount
      t.string :check_number
      t.string :issuing_bank
      t.integer :db_account_id

      t.timestamps
    end
  end
end
