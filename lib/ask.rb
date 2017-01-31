module Ask
  def welcome_player
    puts "Приветствую тебя, игрок. Как твое имя?\n\n"
    name = gets.chomp

    puts "\n#{name}, сегодня мы с тобой будем играть в игру 21 (Очко).\n\nСейчас твой ход, нажми 'Enter'."
    gets.chomp
  end

  def get_the_answer_player
    puts "\nЖелаешь еще одну карту? Напиши 'Yes' или 'No'.\n\n"
    @distribution = gets.chomp
  end

  def report_on_completion_of_the_game(machine_points, player_points)
    puts "\nИгра окончена! У меня #{machine_points} очк#{ending_word(machine_points)}, а у тебя #{player_points} очк#{ending_word(player_points)}.\n\n"
  end

  def ending_word(points)
    if points == 21 || points == 31
      "о"
    elsif points >= 2 && points <= 4 || points >= 22 && points <= 24
      "а"
    elsif points >= 5 && points <= 20 || points >= 25 && points <= 30
      "ов"
    end
  end
  
  def report_the_number_of_points_at_the_player(machine_points, player_points)
    puts "\nТебе выпала вот эта карта #{color_card(card_player)}, у тебя #{player_points} очк#{ending_word(player_points)}.\n"
  end
  
  def report_the_number_of_points_at_the_machine(machine_points, player_points)
    puts "Мне выпала вот эта карта #{color_card(card_machine)}, у меня #{machine_points} очк#{ending_word(machine_points)}.\n"
  end
end
