class RenameDbToDcb < ActiveRecord::Migration
 def change
        rename_column :turn_over_reports, :db_account_id, :dcb_account_id
    end 
end
