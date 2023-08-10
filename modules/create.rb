def create_book
  return unless (new_item = @create.new_book(@books_and_labels))

  @books_and_labels = new_item
  puts 'Press ENTER to get back to the menu'
  gets.chomp
end

def create_music_album
  new_item = @create.new_music_album(@albums_and_genres)
  return unless new_item

  @albums_and_genres = new_item
  puts 'Press ENTER to get back to the menu'
  gets.chomp
end

def create_game
  new_item = @create.new_game(@games_and_authors)
  return unless new_item

  @games_and_authors = new_item
  puts 'Press ENTER to get back to the menu'
  gets.chomp
end
