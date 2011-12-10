class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :address
      t.string :city
      t.string :state
      t.integer :user_id

      t.timestamps
    end
  end
end
