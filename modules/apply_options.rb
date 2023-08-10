def apply_create_option(option)
  actions = {
    1 => method(:create_book),
    2 => method(:create_music_album),
    3 => method(:create_game),
    4 => method(:run),
    0 => method(:exit_app)
  }

  action = actions[option]
  if action
    action.call
  else
    puts '❌ Sorry! You have to select one of the options'
  end
end

def apply_delete_option(option)
  actions = {
    1 => method(:delete_book),
    2 => method(:delete_music_album),
    3 => method(:delete_game),
    4 => method(:run),
    0 => method(:exit_app)
  }

  action = actions[option]
  if action
    action.call
  else
    puts '❌ Sorry! You have to select one of the options'
  end
end

def apply_list_option(option)
  actions = {
    1 => method(:list_all_books),
    2 => method(:list_all_music_albums),
    3 => method(:list_all_games),
    4 => method(:list_all_genres),
    5 => method(:list_all_labels),
    6 => method(:list_all_authors),
    7 => method(:run),
    0 => method(:exit_app)
  }

  action = actions[option]
  if action
    action.call
  else
    puts '❌ Sorry! You have to select one of the options'
  end
end

def apply_main_option(option)
  actions = {
    1 => method(:list_menu),
    2 => method(:create_menu),
    3 => method(:delete_menu),
    0 => method(:exit_app)
  }

  action = actions[option]
  if action
    action.call
  else
    puts '❌ Sorry! You have to select one of the options'
  end
end
