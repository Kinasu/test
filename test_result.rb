class Test_results

  def initialize
    current_path = File.dirname(__FILE__)
    file_path = current_path + '/result_test.txt'

    result_test = File.new(file_path, "r:UTF-8")
    @result_test_finaly = result_test.readlines
    result_test.close
  end

  def upshot(test)
    puts "Результат теста: \nВсего баллов - #{test.points}:"
    # Расчет результатов
    if (test.points >= 30)
      puts @result_test_finaly[0]
    elsif (test.points >= 25)
      puts @result_test_finaly[1]
    elsif (test.points >= 19)
      puts @result_test_finaly[2]
    elsif (test.points >= 14)
      puts @result_test_finaly[3]
    elsif (test.points >= 9)
      puts @result_test_finaly[4]
    elsif (test.points >= 4)
      puts @result_test_finaly[5]
    elsif (test.points <= 3)
      puts @result_test_finaly[6]
    end        
  end

end