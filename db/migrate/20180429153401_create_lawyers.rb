class CreateLawyers < ActiveRecord::Migration[5.2]
  def change
    create_table :lawyers do |t|
      t.string :name
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
