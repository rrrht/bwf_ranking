class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.references :player, null: false, foreign_key: true
      t.references :tournament, null: false, foreign_key: true
      t.string :round
      t.integer :points

      t.timestamps
    end
  end
end
