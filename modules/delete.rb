def delete_book
  puts 'Choose a book number to delete! '
  @list.books(@books_and_labels[:books_list])
  unless @books_and_labels[:books_list].empty?
    index = gets.chomp.to_i
    @delete.book(index - 1, @books_and_labels[:books_list])
  end
  puts 'Press ENTER to get back to the menu'
  gets.chomp
end

def delete_music_album
  puts 'Choose a music album number to delete! '
  @list.music_albums(@albums_and_genres[:music_albums_list])
  unless @albums_and_genres[:music_albums_list].empty?
    index = gets.chomp.to_i
    @delete.music_album(index - 1, @albums_and_genres[:music_albums_list])
  end
  puts 'Press ENTER to get back to the menu'
  gets.chomp
end

def delete_game
  puts 'Choose a game number to delete! '
  @list.games(@games_and_authors[:games_list])
  unless @games_and_authors[:games_list].empty?
    index = gets.chomp.to_i
    @delete.game(index - 1, @games_and_authors[:games_list])
  end
  puts 'Press ENTER to get back to the menu'
  gets.chomp
end
