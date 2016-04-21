require_relative 'win_cp_fix'
require_relative 'question.rb'
require_relative 'result_printer.rb'

test = Question.new
result = ResultPrinter.new

test.greet

while test.ask_question do
end

result.print(test)
