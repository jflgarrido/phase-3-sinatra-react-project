class DecksController < ApplicationController
    get "/decks" do
        decks = Deck.all
        decks.to_json(include: [cards: {only: [:name]}])
    end
end