class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.text :address
      t.text :problem
      t.references :state, foreign_key: true
      t.references :lawyer, foreign_key: true

      t.timestamps
    end
  end
end
