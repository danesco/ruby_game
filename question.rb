class Question

  def ask_question
    a = rand(20)
    b = rand(20)
    puts "what is #{a} + #{b}?"
    answer = $stdin.gets.chomp
    if answer.to_i == a + b
      return true
    else
      return false
    end
  end
end

# new_q = Question.new

# puts new_q.ask_question