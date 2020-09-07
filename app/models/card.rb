class Card < ApplicationRecord

  has_and_belongs_to_many :users, join_table: :users_cards
  has_and_belongs_to_many :decks, join_table: :decks_cards

end
