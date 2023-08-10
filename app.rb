require './app-management/list'
require './app-management/create'
require './app-management/save'
require './app-management/open'

class App
  def initialize
    @ui = UI.new
    @list = List.new
    @create = Create.new
    @save = Save.new
    @open = Open.new

    @books_and_labels = @open.books
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
  end

  def list_all_music_albums; end

  def list_all_games; end

  def list_all_genres; end

  def list_all_labels
    @list.labels(@books_and_labels[:labels_list])
  end

  def list_all_authors; end

  def create_book
    @books_and_labels = @create.new_book(@books_and_labels)
  end

  def add_music_album; end

  def create_game; end

  def exit_app
    @save.books(@books_and_labels[:books_list])
    puts 'Exiting the application....'
    puts 'Goodbye!👋🏼'
    exit
  end
end
