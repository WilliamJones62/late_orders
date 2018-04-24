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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171101142015) do

  create_table "lateorders", force: :cascade do |t|
    t.string "cost_ctr"
    t.string "sls_rep"
    t.string "group_id"
    t.string "route_code"
    t.string "route_desc"
    t.string "cust_code"
    t.string "bus_name"
    t.string "shipto_code"
    t.datetime "dueout_date"
    t.datetime "sale_date"
    t.datetime "date_entered"
    t.datetime "time_entered"
    t.string "order_numb"
    t.string "rel_numb"
    t.string "invoice_numb"
    t.float "sales_dol"
    t.datetime "cutoff_time"
    t.datetime "datetime"
    t.string "user_so"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
