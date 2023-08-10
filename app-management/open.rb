require_relative '../classes/book'
require_relative '../classes/label'
require_relative '../classes/music_album'
require_relative '../classes/genre'
require_relative '../classes/game'
require_relative '../classes/author'

class Open
  def books
    lists = {
      books_list: [],
      labels_list: []
    }

    return lists unless File.exist?('./data-files/books.json')

    list = JSON.parse(File.read('./data-files/books.json'))
    list.each do |detail|
      book = Book.new(detail[0], detail[1], publish_date: Date.parse(detail[2]))
      saved_label = lists[:labels_list].find { |label| label.title == detail[3] }
      unless saved_label
        saved_label = new_label(detail[3])
        lists[:labels_list] << saved_label
      end
      saved_label.add_item(book)
      lists[:books_list] << book
    end
    lists
  end

  def new_label(label)
    colors = %w[Red Green Blue Yellow Orange Purple]
    Label.new(label, colors.sample)
  end

  def music_albums
    lists = {
      music_albums_list: [],
      genres_list: []
    }

    return lists unless File.exist?('./data-files/music_albums.json')

    list = JSON.parse(File.read('./data-files/music_albums.json'))
    list.each do |detail|
      music_album = MusicAlbum.new(on_spotify: detail[0], publish_date: Date.parse(detail[1]))
      saved_genre = lists[:genres_list].find { |genre| genre.name == detail[2] }
      unless saved_genre
        saved_genre = new_genre(detail[2])
        lists[:genres_list] << saved_genre
      end
      saved_genre.add_item(music_album)
      lists[:music_albums_list] << music_album
    end
    lists
  end

  def new_genre(name)
    Genre.new(name)
  end

  def games
    lists = {
      games_list: [],
      authors_list: []
    }

    return lists unless File.exist?('./data-files/games.json')

    list = JSON.parse(File.read('./data-files/games.json'))
    list.each do |detail|
      game = Game.new(detail[0], detail[1], publish_date: Date.parse(detail[2]))
      saved_author = lists[:authors_list].find do |author|
        author.first_name == author_fn && author.last_name == author_ln
      end
      unless saved_author
        saved_author = new_author(detail[3][0], detail[3][1])
        lists[:authors_list] << saved_author
      end
      saved_author.add_item(game)
      p 'gooooo'
      lists[:games_list] << game
    end
    lists
  end

  def new_author(author_fn, _author_ln)
    Author.new(author_fn, author_fn)
  end
end
