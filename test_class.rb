class Test

  def initialize
    # Массив вопросов
    @question = [
      "Вам предстоит ординарная или деловая встреча. Выбивает ли Вас ее ожидание из колеи?",
      "Вызывает ли у Вас смятение и неудовольствие поручение выступить с " +
      "докладом, сообщением, информацией на каком-либо совещании, собрании " +
      "или тому подобном мероприятии?",
      "Не откладываете ли Вы визит к врачу до последнего момента?",
      "Вам предлагают выехать в командировку в город, где Вы никогда не бывали. "+
      "Приложите ли Вы максимум усилий, чтобы избежать этой командировки?",
      "Любите ли Вы делиться своими переживаниями с кем бы то ни было?",
      "Раздражаетесь ли Вы, если незнакомый человек на улице обратится к Вам с"+ 
      " просьбой (показать дорогу, назвать время, ответить на какой-то вопрос)?",
      "Верите ли Вы, что существует проблема \"отцов и детей\" и что людям разных " +
      "поколений трудно понимать друг друга?",
      "Постесняетесь ли Вы напомнить знакомому, что он забыл Вам вернуть деньги,"+ 
      " которые занял несколько месяцев назад?",
      "В ресторане либо в столовой Вам подали явно недоброкачественное блюдо. "+
      "Промолчите ли Вы, лишь рассерженно отодвинув тарелку?",
      "Оказавшись один на один с незнакомым человеком, Вы не вступите с ним в "+
      "беседу и будете тяготиться, если первым заговорит он. Так ли это?",
      "Вас приводит в ужас любая длинная очередь, где бы она ни была (в магазине, "+
      "библиотеке, кассе кинотеатра). Предпочитаете ли Вы отказаться от своего намерения "+
      "или встанете в хвост и будете томиться в ожидании?",
      "Боитесь ли Вы участвовать в какой-либо комиссии по рассмотрению " +
      "конфликтных ситуаций?",
      "У Вас есть собственные сугубо индивидуальные критерии оценки произведений " +
      "литературы, искусства, культуры и никаких чужих мнений на этот счет " +
      "Вы не приемлете. Это так?",
      "Услышав где-либо в кулуарах высказывание явно ошибочной точки зрения по хорошо " +
      "известному Вам вопросу, предпочитаете ли Вы промолчать и не вступать в разговор?",
      "Вызывает ли у Вас досаду чья-либо просьба помочь разобраться в том или ином "+
      "служебном вопросе или учебной теме?",
      "Охотнее ли Вы излагаете свою точку зрения (мнение, оценку) в письменной форме, " +
      "чем в устной?"
    ]
    # Поле для хранения кол-ва очков
    @points = 0
    # Счетчик вопросов
    @present_question = 0
  end
  # Интервью
  def interview
    puts @question[@present_question]
    user_input = 0
    
    until (user_input == 1 || user_input == 2 || user_input == 3)
      puts "Введите 1 - Да, 2 - Нет или 3 - Иногда"
      user_input = gets.to_i
    end

    if user_input == 1
      @points += 2
    elsif user_input == 3
      @points += 1
    end       
    # Счетчик вопросов
    @present_question += 1
    # Кол-во вопросов
    if @present_question >= @question.size
      return false
    else
      return true
    end

  end
  # Очки 
  def points
    return @points
  end

end
