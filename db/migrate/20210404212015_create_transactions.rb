class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.date :date
      t.integer :amount
      t.string :category
      t.text :comment
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
