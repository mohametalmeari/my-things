class Delete
  def book(index, list)
    if index >= 0 && index < list.length
      deleted_item = list.delete_at(index)
      puts 'The following book has been deleted 🗑️'
      print "#{index + 1} ) Publisher: \"#{deleted_item.publisher}\", "
      puts "Publish Date: #{deleted_item.publish_date}, Label: \"#{deleted_item.label.title}\""
    else
      puts 'Invalid book number'
    end
  end

  def music_album(index, list)
    if index >= 0 && index < list.length
      deleted_item = list.delete_at(index)
      puts 'The following music album has been deleted 🗑️'
      if deleted_item.on_spotify
        print "#{index + 1} ) On Sopotify: Yes, "
      else
        print "#{index + 1} ) On Sopotify: NO, "
      end
      puts "Publish Date: #{deleted_item.publish_date}, Genre: \"#{deleted_item.genre.name}\""
    else
      puts 'Invalid book number'
    end
  end

  def game(index, list)
    if index >= 0 && index < list.length
      list.delete_at(index)
      puts 'The following game has been deleted 🗑️'
      print "#{index + 1} ) Multiplayer: \"#{game.multiplayer}\", Last played at: #{game.last_played_at}, "
      puts "Publish Date: #{game.publish_date}, Author: \"#{game.author.first_name} #{game.author.last_name}\""
    else
      puts 'Invalid book number'
    end
  end
end
