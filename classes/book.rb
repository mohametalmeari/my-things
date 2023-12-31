require_relative 'item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state, publish_date: Date.today)
    super(publish_date: publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  private

  def can_be_archived?
    return true if super || @cover_state.downcase == 'bad'

    false
  end
end
