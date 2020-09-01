class CreateStudents < ActiveRecord::Migration[6.0]
  def up
    create_table :students do |t|
      t.string :name
      t.string :username
      t.integer :age
      t.string :kelas
      t.text :address
      t.string :city
      t.string :nik

      t.timestamps
    end
  end
  def down
    drop_table = students
  end
end
