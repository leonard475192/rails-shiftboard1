class CreateAdminUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :admin_users do |t|
      t.text :store_name
      t.integer :wage

      t.timestamps
    end
  end
end
