class UI
  def welcome
    puts '---------------------------'
    puts ' 👋 WELCOME TO MY THINGS'
    puts '---------------------------'
  end

  def main_options
    puts 'Please choose one of the following options:'
    puts '...........................................'
    puts '1 - List items'
    puts '2 - Create item'
    puts '3 - Delet item'
    puts '0 - Exit'
  end

  def list_options
    puts 'Please choose one of the following options:'
    puts '...........................................'
    puts '1 - List all books'
    puts '2 - List all music albums'
    puts '3 - List all games'
    puts '4 - List all genres'
    puts '5 - List all labels'
    puts '6 - List all authors'
    puts '7 - Go back to the main menu'
    puts '0 - Exit'
  end

  def create_options
    puts 'Please choose one of the following options:'
    puts '...........................................'
    puts '1 - Create a book'
    puts '2 - Create a music album'
    puts '3 - Create a game'
    puts '4 - Go back to the main menu'
    puts '0 - Exit'
  end

  def delete_options
    puts 'Please choose one of the following options:'
    puts '...........................................'
    puts '1 - Delete a book'
    puts '2 - Delete a music album'
    puts '3 - Delete a game'
    puts '4 - Go back to the main menu'
    puts '0 - Exit'
  end
end
