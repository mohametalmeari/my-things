require_relative '../classes/book'
require_relative '../classes/label'
require_relative '../classes/music_album'
require_relative '../classes/genre'
require_relative '../classes/game'
require_relative '../classes/author'

class Create
  def new_book(lists)
    print 'Publisher: '
    publisher = gets.chomp
    print 'Cover State [Good/Bad]: '
    cover_state = gets.chomp
    print 'Publish Date[YYYY-MM-DD]: '
    publish_date = Date.parse(gets.chomp)
    print 'Label: '
    label_title = gets.chomp

    book = Book.new(publisher, cover_state, publish_date: publish_date)
    saved_label = lists[:labels_list].find { |label| label.title == label_title }
    unless saved_label
      saved_label = new_label(label_title)
      lists[:labels_list] << saved_label
    end
    saved_label.add_item(book)
    lists[:books_list] << book
    puts 'Book was created successfully'
    lists
  end

  def new_label(label)
    colors = %w[Red Green Blue Yellow Orange Purple]
    Label.new(label, colors.sample)
  end

  def new_music_album(lists)
    print 'Genre: '
    genre_name = gets.chomp
    print 'On spotify [Y/N]: '
    on_spotify = gets.chomp.downcase
    on_spotify = (on_spotify == 'y')
    print 'Publish Date[YYYY-MM-DD]: '
    publish_date = Date.parse(gets.chomp)

    music_album = MusicAlbum.new(on_spotify: on_spotify, publish_date: publish_date)
    saved_genre = lists[:genres_list].find { |genre| genre.name == genre_name }
    unless saved_genre
      saved_genre = new_genre(genre_name)
      lists[:genres_list] << saved_genre
    end
    saved_genre.add_item(music_album)
    lists[:music_albums_list] << music_album
    puts 'MusicAlbum was created successfully'
    lists
  end

  def new_genre(name)
    Genre.new(name)
  end

  def new_game(lists)
    print 'Multiplayer: '
    multiplayer = gets.chomp
    print 'Last played at[YYYY-MM-DD]: '
    last_played_at = Date.parse(gets.chomp)
    print 'Publish Date[YYYY-MM-DD]: '
    publish_date = Date.parse(gets.chomp)
    print 'Author\'s first name: '
    author_fn = gets.chomp
    print 'Author\'s last name: '
    author_ln = gets.chomp
    game = Game.new(multiplayer, last_played_at, publish_date: publish_date)
    saved_author = lists[:authors_list].find do |author|
      author.first_name == author_fn && author.last_name == author_ln
    end
    unless saved_author
      saved_author = new_author(author_fn, author_ln)
      lists[:authors_list] << saved_author
    end
    saved_author.add_item(game)
    lists[:games_list] << game
    puts 'Game was created successfully'
    lists
  end

  def new_author(author_fn, author_ln)
    Author.new(author_fn, author_ln)
  end
end
