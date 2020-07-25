class CreateShiftBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :shift_boards do |t|
      t.integer :store_id
      t.integer :user_id
      t.date :date

      t.timestamps
    end
  end
end
