class CreateBoardUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :board_users do |t|
      t.text :display_name
      t.integer :account_id
      t.integer :store_id
      t.integer :level

      t.timestamps
    end
  end
end
