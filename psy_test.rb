require_relative 'lib/win_cp_fix'
require_relative 'lib/test.rb'
require_relative 'lib/result_printer.rb'

test = Test.new
result = ResultPrinter.new

test.greet

while test.ask_question do
end

result.print(test)
