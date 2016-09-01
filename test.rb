require './test_result.rb' # подключаем файлы с классами
require './test_class.rb'

# Приветствие. Начало работы.
puts "Здравствуйте, мы зададим Вам вопросы, для определения Вашей коммуникабельности."

test = Test.new

results = Test_results.new

while test.interview == true do 
end
  
results.upshot(test)