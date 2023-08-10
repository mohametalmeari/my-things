class Genre
  attr_accessor :name
  attr_reader :items

  def initialize(name)
    @id = rand(1...100)
    @name = name
    @items = []
  end

  def add_item(item)
    item.add_genre = self unless item.genre == (self)
    @items << item
  end
end
