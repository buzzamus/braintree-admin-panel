class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.string :txn_id
      t.string :amount
      t.string :status
      t.string :date
      t.string :payment_instrument_type
      t.boolean :recurring
    end
  end
end
