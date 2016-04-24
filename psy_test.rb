require_relative 'lib/win_cp_fix'
require_relative 'lib/test.rb'
require_relative 'lib/result_printer.rb'

test = Test.new
result = ResultPrinter.new

test.greet

until test.finished? do
  test.ask_question
end

result.print(test)
