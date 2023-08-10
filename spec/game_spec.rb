require_relative '../classes/game'

describe Game do
  context '#new' do
    it 'takes three parameters and returns a Game object' do
      game = Game.new('Jon', Date.new(2023, 8, 10), publish_date: Date.new(2023, 8, 7))
      game.should be_an_instance_of Game
    end
  end

  context 'test can_be_archived? method' do
    it 'returns false when publish date is not older than 10 years' do
      game = Game.new('Jon', Date.new(2020, 12, 12), publish_date: Date.new(2016, 2, 13))
      expect(game.send(:can_be_archived?)).to be false
    end

    it 'returns false when last played at no older than 2 years' do
      game = Game.new('Jon', Date.new(2022, 12, 12), publish_date: Date.new(2011, 2, 13))
      expect(game.send(:can_be_archived?)).to be false
    end

    it 'returns true when last played at older than 2 years and publish date is older than 10 years' do
      game = Game.new('Jon', Date.new(2020, 12, 12), publish_date: Date.new(2011, 2, 13))
      expect(game.send(:can_be_archived?)).to be true
    end
  end
end
