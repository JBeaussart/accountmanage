class CreateReccuringTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :reccuring_transactions do |t|
      t.string :category
      t.integer :amount
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
