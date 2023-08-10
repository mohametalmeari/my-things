require_relative '../classes/music_album'

describe MusicAlbum do
  context '#new' do
    it 'takes two parameters and returns a MusicAlbum object' do
      album = MusicAlbum.new(on_spotify: false, publish_date: Date.new(2015,12, 1))
      album.should be_an_instance_of MusicAlbum
    end
  end

  context 'test can_be_archived? method' do
    it 'returns false when publish date is not older than 10 years' do
      album = MusicAlbum.new(on_spotify: true, publish_date: Date.new(2017, 5, 26))
      expect(album.send(:can_be_archived?)).to be false
    end

    it 'returns false when on_spotify is false' do
      album = MusicAlbum.new(on_spotify: false, publish_date: Date.new(2011, 8, 7))
      expect(album.send(:can_be_archived?)).to be false
    end

    it 'returns true when on_spotify is true and publish date is older than 10 years' do
      album = MusicAlbum.new(on_spotify: true, publish_date: Date.new(2011, 8, 7))
      expect(album.send(:can_be_archived?)).to be true
    end
  end
end