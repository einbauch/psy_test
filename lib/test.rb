class Test

  attr_reader :score

  def initialize
    current_path = File.dirname(__FILE__)
    file_name = current_path + '/../data/questions.txt'

    begin
      f = File.new(file_name,"r:UTF-8")
      @questions = f.readlines
      f.close
    rescue Errno::ENOENT
      abort "Файл #{file_name} не найден!"
    end

    @score = 0
    @counter = 0 #Переменная для подсчета номера текущего вопроса
  end

  def greet
    puts
    puts "Тест \"Ваш уровень общительности\""
    puts "ИНСТРУКЦИЯ"
    puts
    puts "Тест поможет определить ваш уровень коммуникабельности."
    puts "Для этого необходимо правдиво ответить на следующие вопросы."
    puts "нажмите ENTER, чтобы начать тест"
    STDIN.gets
  end

  def ask_question
    puts
    puts @questions[@counter]

    choice = nil

    until choice == "да" || choice == "нет" || choice == "иногда" do
      puts "Введите \"да\", \"нет\" или \"иногда\""
      choice = STDIN.gets.chomp.encode("UTF-8")
    end

    case choice
      when "да" then @score += 2
      when "иногда" then @score += 1
    end

    @counter += 1 
  end
  
  def finished?
    @counter >= @questions.size
  end

end