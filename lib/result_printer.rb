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
    
    case score
      when 30..32 then puts @results[0]
      when 25..29 then puts @results[1]
      when 19..24 then puts @results[2]
      when 14..18 then puts @results[3]
      when 9..13 then puts @results[4]
      when 4..8 then puts @results[5]
      else puts @results[6]
    end
  end

  def cls
    system "clear" or system "cls"
  end

end
