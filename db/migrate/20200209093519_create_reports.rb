class CreateReports < ActiveRecord::Migration[6.0]
  def up
    create_table :reports do |t|
      t.string :title
      t.float :hasil
      t.string :mapel
      t.integer :teacher_id
      t.integer :student_id
      t.integer :date

      t.timestamps
    end
  end
  def down
    drop_table = reports
  end
end
