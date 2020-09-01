class CreatePayments < ActiveRecord::Migration[6.0]
  def up
    create_table :payments do |t|
      t.string :id_transaction
      t.string :status
      t.string :upload

      t.timestamps
    end
  end
  def down
    drop_table = payments
  end
end
