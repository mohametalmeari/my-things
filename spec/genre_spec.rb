require_relative '../classes/genre'

describe Genre do
  context '#new' do
    it 'takes one parameter and returns a Genre object' do
      genre = Genre.new('Comedy')
      genre.should be_an_instance_of Genre
    end
  end

  context 'test add_item method' do
    it 'adds music album to genre' do
      album = MusicAlbum.new(on_spotify: true, publish_date: Date.new(2017, 5, 26))
      genre = Genre.new('Comedy')
      genre.add_item(album)
      expect(album.genre.name).to be == 'Comedy'
    end
  end
end
