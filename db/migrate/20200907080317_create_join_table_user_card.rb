class CreateJoinTableUserCard < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :cards, table_name:'users_cards' do |t|
      t.index [:user_id, :card_id]
      t.index [:card_id, :user_id]
    end
  end
end
