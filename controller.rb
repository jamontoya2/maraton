require_relative 'model.rb'
require_relative 'view.rb'

class Controller
	def initialize(input)
		#@input = input[0..-1]
		@model = Record.new
		@view = View.new
    menu(@input)
  end

  def menu(input)
  	a = "Bienvenido a Maratón. Te daremos una pregunta y deberás adivinar la respuesta correcta.\n"
    @view.show_questions(a)
    ask
   # task = @input[0..-1].join(" ")
  end
  
  def ask
  ok = 0
  no = 0  
  all_task = @model.ask
  	all_task.each do |item|
      answer = @view.show_questions(item.question)  
      @view.show_message(answer)  
        if item.answer.upcase == answer.upcase
          ok += 1      
        else
          no += 1
          @view.show_message_warning
        end 
    end
    @view.show_sumary(ok, no)
  end

end

input = ARGV
Controller.new(input)

    
