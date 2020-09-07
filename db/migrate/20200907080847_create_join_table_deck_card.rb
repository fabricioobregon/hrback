class CreateJoinTableDeckCard < ActiveRecord::Migration[6.0]
  def change
    create_join_table :decks, :cards, table_name: 'decks_cards' do |t|
      t.index [:deck_id, :card_id]
      t.index [:card_id, :deck_id]
    end
  end
end
