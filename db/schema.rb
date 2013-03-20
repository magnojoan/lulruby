# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130320164227) do

  create_table "dcb_accounts", :force => true do |t|
    t.string   "account_name"
    t.string   "account_number"
    t.decimal  "amount",         :precision => 10, :scale => 0
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "turn_over_reports", :force => true do |t|
    t.string   "to"
    t.date     "date"
    t.string   "payer"
    t.decimal  "total_amount",   :precision => 10, :scale => 0
    t.string   "request_by"
    t.string   "contact_number"
    t.string   "received_by"
    t.string   "unit"
    t.boolean  "is_cash"
    t.boolean  "is_check"
    t.date     "date_received"
    t.decimal  "cash_amount",    :precision => 10, :scale => 0
    t.decimal  "check_amount",   :precision => 10, :scale => 0
    t.string   "check_number"
    t.string   "issuing_bank"
    t.integer  "dcb_account_id"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

end
