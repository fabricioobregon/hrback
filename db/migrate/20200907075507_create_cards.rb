class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.boolean :golden
      t.string :cardType
      t.string :race
      t.string :classone
      t.string :classtwo
      t.string :rarity
      t.string :attack
      t.string :cost
      t.string :health
      t.string :set
      t.string :description

      t.timestamps
    end
  end
end
