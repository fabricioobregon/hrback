class AddInitialData < ActiveRecord::Migration[6.0]
  def up

    firstUser = User.create(name: 'Fabricio', email: 'fabricioobregon@live.com', password_digest: 'password')
    firstCard = Card.create(name: 'My first card', golden: 'true', cardType: 'Minion', race: 'Druid',
                            classone: 'no idea', classtwo: 'no idea 2', rarity: 'unique', attack: '20', cost: '10',
                            health: '50', set: 'Strongest Set', description: 'The first set')
    firstDeck = Deck.create(name: 'My first deck', user_id: firstUser.id)

    firstUser.cards << firstCard

    firstDeck.cards << firstCard


  end

  def down

    User.first.cards.clear
    Deck.first.cards.clear
    Deck.delete_all
    User.delete_all
    Card.delete_all

  end
end
