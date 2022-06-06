class CardsController < ApplicationController
    get "/cards" do
        cards = Card.all
        cards.to_json
    end
end
