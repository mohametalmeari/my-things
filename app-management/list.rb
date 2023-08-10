class List
  def books(list)
    puts 'List of books:'
    puts 'No books' if list.empty?
    list.each_with_index do |book, index|
      print "#{index + 1} ) Publisher: \"#{book.publisher}\", "
      puts "Publish Date: #{book.publish_date}, Label: \"#{book.label.title}\""
    end
  end

  def labels(list)
    puts 'List of labels:'
    puts 'No Labels' if list.empty?
    list.each_with_index do |label, index|
      puts "#{index + 1} ) Title: \"#{label.title}\", Color: #{label.color}"
    end
  end

  def music_albums(list)
    puts 'List of music albums:'
    puts 'No MusicAlbums' if list.empty?
    list.each_with_index do |album, index|
      if album.on_spotify
        print "#{index + 1} ) On Sopotify: Yes, "
      else
        print "#{index + 1} ) On Sopotify: NO, "
      end
      puts "Publish Date: #{album.publish_date}, Genre: \"#{album.genre.name}\""
    end
  end

  def genres(list)
    puts 'List of genres:'
    puts 'No Genres' if list.empty?
    list.each_with_index do |genre, index|
      puts "#{index + 1} ) Genre: \"#{genre.name}\""
    end
  end

  def games(list)
    puts 'List of games:'
    puts 'No Games' if list.empty?
    list.each_with_index do |game, index|
      print "#{index + 1} ) Multiplayer: \"#{game.multiplayer}\", Last played at: #{game.last_played_at}, "
      puts "Publish Date: #{game.publish_date}, Author: \"#{game.author.first_name} #{game.author.last_name}\""
    end
  end

  def authors(list)
    puts 'List of authors:'
    puts 'No Authors' if list.empty?
    list.each_with_index do |author, index|
      puts "#{index + 1} ) Author's first name: \"#{author.first_name}\", Author's last name: #{author.last_name}"
    end
  end
end
