class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end


class Deck

	attr_accessor :cards

	def initialize
		@numbers = ['ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king']
		@suits = ['hearts', 'diamonds', 'clubs', 'spades']
		@cards = []
		@numbers.each do |number|
			@suits.each do |suit|
				@cards << Card.new(number, suit)
			end
		end
	end

	def output_deck
		@cards.each do |card|
			card.output_card
		end
	end


	def shuffle
		@cards.shuffle!
	end

	def deal_card
		@cards.shift
	end
end

deck = Deck.new
deck.shuffle
card = deck.deal_card
card.output_card
card = deck.deal_card
card.output_card
puts deck.cards.count
puts ' ---------------'
# deck.output_deck