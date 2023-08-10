require 'json'

class Save
  def books(list)
    File.open('./data-files/books.json', 'w', &:write) if list.empty?
    data = []
    list.each do |book|
      data << [book.publisher, book.cover_state, book.publish_date, book.label.title]
    end
    File.write('./data-files/books.json', JSON.generate(data))
  end

  def music_albums(list)
    File.open('./data-files/music_albums.json', 'w', &:write) if list.empty?
    data = []
    list.each do |album|
      data << [album.on_spotify, album.publish_date, album.genre.name]
    end
    File.write('./data-files/music_albums.json', JSON.generate(data))
  end

  def games(list)
    File.open('./data-files/games.json', 'w', &:write) if list.empty?
    data = []
    list.each do |game|
      data << [game.multiplayer, game.last_played_at, game.publish_date,
               [game.author.first_name, game.author.last_name]]
    end
    File.write('./data-files/games.json', JSON.generate(data))
  end
end
