class ResultPrinter

  def initialize
    current_path = File.dirname(__FILE__)
    file_name = current_path + '/../data/results.txt'

    begin
      f = File.new(file_name,"r:UTF-8")
      @results = f.readlines
      f.close
    rescue Errno::ENOENT
      abort "Файл #{file_name} не найден!"
    end
  end

  def print(test)
    score = test.score
    cls
    puts "\nВАШ РЕЗУЛЬТАТ - #{score} баллов"

    if score >= 30
      puts @results[0]
    elsif score >= 25 && score <= 29
      puts @results[1]
    elsif score >= 19 && score <= 24
      puts @results[2]
    elsif score >= 14 && score <= 18
      puts @results[3]
    elsif score >= 9  && score <= 13
      puts @results[4]
    elsif score >= 4  && score <= 8
      puts @results[5]
    else
      puts @results[6]
    end
  end

  def cls
    system "clear" or system "cls"
  end

end
