class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.integer :merchant_id
      t.integer :user_id
      t.datetime :transaction_date
      t.decimal :amount, precision: 10, scale: 2
      t.integer :device_id
      t.boolean :cbk, default: false

      t.timestamps
    end
  end
end
