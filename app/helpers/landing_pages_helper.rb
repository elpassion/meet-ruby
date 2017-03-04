module LandingPagesHelper
  def suit_symbol(suit)
    case suit
      when :hearts    then '♥'
      when :diamonds  then '♦'
      when :clubs     then '♣'
      when :spades    then '♠'
      else                 ''
    end
  end
end
