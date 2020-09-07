class User < ApplicationRecord
  has_many :decks, dependent: :destroy
  has_and_belongs_to_many :cards, join_table: :users_cards

  has_secure_password

  validates_presence_of :email
  validates_uniqueness_of :email
end
