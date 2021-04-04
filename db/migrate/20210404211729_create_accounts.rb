class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :bank
      t.string :type
      t.string :name
      t.integer :maximum_capital
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
