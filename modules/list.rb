def list_all_books
  @list.books(@books_and_labels[:books_list])
  puts 'Press ENTER to get back to the menu'
  gets.chomp
end

def list_all_music_albums
  @list.music_albums(@albums_and_genres[:music_albums_list])
  puts 'Press ENTER to get back to the menu'
  gets.chomp
end

def list_all_games
  @list.games(@games_and_authors[:games_list])
  puts 'Press ENTER to get back to the menu'
  gets.chomp
end

def list_all_genres
  @list.genres(@albums_and_genres[:genres_list])
  puts 'Press ENTER to get back to the menu'
  gets.chomp
end

def list_all_labels
  @list.labels(@books_and_labels[:labels_list])
  puts 'Press ENTER to get back to the menu'
  gets.chomp
end

def list_all_authors
  @list.authors(@games_and_authors[:authors_list])
  puts 'Press ENTER to get back to the menu'
  gets.chomp
end
