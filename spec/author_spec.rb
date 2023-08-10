require_relative '../classes/author'

describe Author do
  context '#new' do
    it 'takes two parameters and returns a Author object' do
      author = Author.new('Bellamy', 'Stark')
      author.should be_an_instance_of Author
    end
  end

  context 'test add_item method' do
    it 'adds game to author' do
      game = Game.new('Jon', Date.new(2023, 8, 10), publish_date: Date.new(2023, 8, 7))
      author = Author.new('Bellamy', 'Stark')
      author.add_item(game)
      expect(game.author.first_name).to be == 'Bellamy'
      expect(game.author.last_name).to be == 'Stark'
    end
  end
end
