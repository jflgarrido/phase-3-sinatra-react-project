class DecksController < ApplicationController
    get "/decks" do
        decks = Deck.all
        decks.to_json(include: [cards: {only: [:name]}])
    end

    get "/decks/:id" do
        find_decks
        deck_to_json
    end

    post "/decks" do
        @deck = Deck.new(params)
        if @deck.save
          deck_to_json
        else
          deck_error_messages
        end
    end

    patch "/decks/:id" do
        find_deck
        if @deck.update(params)
          deck_to_json
        else
          deck_error_messages
        end
      end
    
      delete "/decks/:id" do
        find_deck
        if @deck
          @deck.destroy
          @deck.to_json
        else
          { errors: ["Deck Doesn't Exist"] }.to_json
        end
      end

    private
    def find_decks
      @deck = Deck.find_by_id(params["id"])
    end

    def deck_to_json
      @deck.to_json(include: [:cards])
    end

    def deck_error_messages
      { errors: @deck.errors.full_messages }.to_json
    end
end