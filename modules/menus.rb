def list_menu
  loop do
    @ui.list_options
    option = gets.chomp
    break if option.downcase == 'exit'

    apply_list_option(option.to_i)
  end
end

def create_menu
  loop do
    @ui.create_options
    option = gets.chomp
    break if option.downcase == 'exit'

    apply_create_option(option.to_i)
  end
end

def delete_menu
  loop do
    @ui.delete_options
    option = gets.chomp
    break if option.downcase == 'exit'

    apply_delete_option(option.to_i)
  end
end
