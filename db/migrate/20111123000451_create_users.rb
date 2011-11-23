class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :address
      t.string :city
      t.string :state
      t.string :password

      t.timestamps
    end
  end
end
