class CreateExams < ActiveRecord::Migration[6.0]
  def up
    create_table :exams do |t|
      t.string :title
      t.string :mapel
      t.integer :duration
      t.float :nilai
      t.string :keaktifan
      t.string :level
      t.integer :student_id

      t.timestamps
    end
  end

  def down
    drop_table = exams
  end
end
