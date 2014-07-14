class Deck
  DECK = %w[A 2 3 4 5 6 7 8 9 T J Q K].product(%w[c d h s]).map(&:join)

  def initialize(num_decks=1)
    @num_decks = num_decks
  end

  def shuffle
    @shuffled_deck = (DECK*@num_decks).shuffle
  end

  def deal(players=1, cards=5)
    shuffle
    @dealt = Array.new(players) { Array.new }

    @dealt.map { |hand| cards.times { hand << @shuffled_deck.pop } }
  end

  def display
    @dealt.each_with_index { |cards, i| puts "Player #{i+1}: #{cards.join(' , ')}" }
   
  end

  
end

game1 = Deck.new     
puts 
game1.deal(5)  
game1.display   
