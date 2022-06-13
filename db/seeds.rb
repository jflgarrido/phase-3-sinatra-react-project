puts "🌱 Seeding spices..."

# Seed your database here
Deck.create(name: "Mono Green Aggro")
Deck.create(name: "Blue-White Control" )
Card.create(name: "Ascendant Pack Leader", color:"Green", card_type:"Creature", deck_id: 1)
Card.create(name: "Lotus Cobra", color:"Green", card_type:"Creature", deck_id: 1)
Card.create(name: "Inscription of Abundance", color:"Green", card_type:"Instant", deck_id: 1)
Card.create(name: "Ranger Class", color:"Green", card_type:"Enchantment", deck_id: 1)
Card.create(name: "Jewel Thief", color:"Green", card_type:"Creature", deck_id: 1)
Card.create(name: "Blizzard Brawl", color:"Green", card_type:"Sorcery", deck_id: 1)
Card.create(name: "Negate", color:"Blue", card_type:"Instant", deck_id: 2)
Card.create(name: "Sunset Revelry", color:"White", card_type:"Sorcery", deck_id: 2)
Card.create(name: "Malevolent Hermit", color:"Blue", card_type:"Creature", deck_id: 2)

puts "✅ Done seeding!"
