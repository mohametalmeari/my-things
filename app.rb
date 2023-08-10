require './app-management/list'
require './app-management/create'
require './app-management/delete'
require './app-management/save'
require './app-management/open'
require './app-management/ui_class'
require './modules/apply_options'
require './modules/menus'
require './modules/list'
require './modules/create'
require './modules/delete'

class App
  def initialize
    @ui = UI.new
    @list = List.new
    @create = Create.new
    @delete = Delete.new
    @save = Save.new
    @open = Open.new

    @books_and_labels = @open.books
    @albums_and_genres = @open.music_albums
    @games_and_authors = @open.games
  end

  def run
    @ui.welcome
    loop do
      @ui.main_options
      option = gets.chomp
      break if option.downcase == 'exit'

      apply_main_option(option.to_i)
    end
    exit_app
  end

  def exit_app
    @save.books(@books_and_labels[:books_list])
    @save.music_albums(@albums_and_genres[:music_albums_list])
    @save.games(@games_and_authors[:games_list])
    puts 'Exiting the application....'
    puts 'Goodbye!👋'
    exit
  end
end
