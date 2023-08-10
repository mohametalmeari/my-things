class List
  def books(list)
    puts 'No books' if list.empty?
    list.each do |book|
      puts "- Publisher: \"#{book.publisher}\", Publish Date: #{book.publish_date}, Label: \"#{book.label.title}\""
    end
  end

  def labels(list)
    puts 'No Labels' if list.empty?
    list.each do |label|
      puts "- Title: \"#{label.title}\", Color: #{label.color}"
    end
  end

  def music_albums(list)
    puts 'No MusicAlbums' if list.empty?
    list.each do |album|
      if album.on_spotify
        print '- On Sopotify: \"Yes\", '
      else
        print '- On Sopotify: \"NO\", '
      end
      puts "Publish Date: #{album.publish_date}, Genre: \"#{album.genre.name}\""
    end
  end

  def genres(list)
    puts 'No Genres' if list.empty?
    list.each do |genre|
      puts "- Genre: \"#{genre.name}\""
    end
  end

  def games(list)
    puts 'No Games' if list.empty?
    list.each do |game|
      print "- Multiplayer: \"#{game.multiplayer}\", Last played at: #{game.last_played_at}, "
      puts "Publish Date: #{game.publish_date}, Author: \"#{game.author.first_name} #{game.author.last_name}\""
    end
  end

  def authors(list)
    puts 'No Authors' if list.empty?
    list.each do |author|
      puts "- Author's first name: \"#{author.first_name}\", Author's last name: #{author.last_name}"
    end
  end
end
