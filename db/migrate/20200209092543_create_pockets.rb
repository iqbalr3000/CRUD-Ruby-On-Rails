class CreatePockets < ActiveRecord::Migration[6.0]
  def up
    create_table :pockets do |t|
      t.string :balance
      t.integer :student_id
      t.integer :teacher_id

      t.timestamps
    end
  end
  def down
    drop_table = pockets
  end
end
