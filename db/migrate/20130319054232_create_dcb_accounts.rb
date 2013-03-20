class CreateDcbAccounts < ActiveRecord::Migration
  def change
    create_table :dcb_accounts do |t|
      t.string :account_name
      t.string :account_number
      t.decimal :amount

      t.timestamps
    end
  end
end
