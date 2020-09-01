class CreateTeachers < ActiveRecord::Migration[6.0]
  def up
    create_table :teachers do |t|
      t.string :nik
      t.string :name
      t.integer :age
      t.string :kelas
      t.string :mapel

      t.timestamps
    end
  end
  def down
    drop_table = teachers
  end
end
