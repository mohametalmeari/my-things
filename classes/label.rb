class Label
  attr_accessor :title, :color
  attr_reader :items

  def initialize(title, color)
    @id = rand(1..1000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    item.add_label = self unless item.author == (self)
    @items << item
  end
end
