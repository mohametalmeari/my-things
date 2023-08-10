require './app-management/list'
require './app-management/create'
require './app-management/save'
require './app-management/open'
require './app-management/ui_class'

class App
  def initialize
    @ui = UI.new
    @list = List.new
    @create = Create.new
    @save = Save.new
    @open = Open.new

    @books_and_labels = @open.books
    @albums_and_genres = @open.music_albums
    @games_and_authors = @open.games
  end

  def run
    @ui.welcome
    loop do
      @ui.options
      option = gets.chomp
      break if option.downcase == 'exit'

      apply_option(option.to_i)
    end
    exit_app
  end

  def apply_option(option)
    actions = {
      1 => method(:list_all_books),
      2 => method(:list_all_music_albums),
      3 => method(:list_all_games),
      4 => method(:list_all_genres),
      5 => method(:list_all_labels),
      6 => method(:list_all_authors),
      7 => method(:create_book),
      8 => method(:add_music_album),
      9 => method(:create_game),
      0 => method(:exit_app)
    }

    action = actions[option]
    if action
      action.call
    else
      puts '❌ Sorry! You have to select one of the options'
    end
  end

  def list_all_books
    @list.books(@books_and_labels[:books_list])
    gets.chomp
  end

  def list_all_music_albums
    @list.music_albums(@albums_and_genres[:music_albums_list])
    gets.chomp
  end

  def list_all_games
    @list.games(@games_and_authors[:games_list])
    gets.chomp
  end

  def list_all_genres
    @list.genres(@albums_and_genres[:genres_list])
    gets.chomp
  end

  def list_all_labels
    @list.labels(@books_and_labels[:labels_list])
    gets.chomp
  end

  def list_all_authors
    @list.authors(@games_and_authors[:authors_list])
    gets.chomp
  end

  def create_book
    return unless (new_item = @create.new_book(@books_and_labels))

    @books_and_labels = new_item
    gets.chomp
  end

  def add_music_album
    new_item = @create.new_music_album(@albums_and_genres)
    return unless new_item

    @albums_and_genres = new_item
    gets.chomp
  end

  def create_game
    new_item = @create.new_game(@games_and_authors)
    return unless new_item

    @games_and_authors = new_item
    gets.chomp
  end

  def exit_app
    @save.books(@books_and_labels[:books_list])
    @save.music_albums(@albums_and_genres[:music_albums_list])
    @save.games(@games_and_authors[:games_list])
    puts 'Exiting the application....'
    puts 'Goodbye!👋🏼'
    exit
  end
end
