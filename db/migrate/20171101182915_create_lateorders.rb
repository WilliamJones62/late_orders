class CreateLateorders < ActiveRecord::Migration[5.1]
  def change
    create_table :lateorders do |t|
      t.string :cost_ctr
      t.string :sls_rep
      t.string :group_id
      t.string :route_code
      t.string :route_desc
      t.string :cust_code
      t.string :bus_name
      t.string :shipto_code
      t.datetime :dueout_date
      t.datetime :sale_date
      t.datetime :date_entered
      t.datetime :time_entered
      t.string :order_numb
      t.string :rel_numb
      t.string :invoice_numb
      t.float :sales_dol
      t.datetime :cutoff_time
      t.datetime :datetime
      t.string :user_so

      t.timestamps
    end
  end
end
