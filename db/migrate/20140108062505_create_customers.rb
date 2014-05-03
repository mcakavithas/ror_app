class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :sex
      t.text :address
      t.string :city
      t.string :state
      t.integer :pincode
      t.text :pan
      t.string :status
      t.string :image
      t.integer :user_id, :references => "users"

      t.integer :user_id

      t.timestamps
    end
#execute "CREATE SEQUENCE code_seq START 0000000001"
    #change_column :customers, :status, :string, default: "Pending"
  
  end


end
