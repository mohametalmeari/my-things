require_relative 'item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, publish_date: Date.today)
    super(publish_date: publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    return true if super && Date.today - @last_played_at >= 2 * 365.25

    false
  end
end
