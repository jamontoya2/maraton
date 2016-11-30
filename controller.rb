require_relative 'model.rb'
require_relative 'view.rb'

class Controller
	def initialize
		@model = Record.new
		@view = View.new
    menu
  end

  def menu
  	@view.show_welcome
    sleep(5)
    answer_desk = @view.desk
    ask(answer_desk)    
    
  end
  
  def ask(answer_desk)
  ok = 0
  no = 0  
  all_task = @model.ask
    all_task.select do |item| 
      if item.category == answer_desk
        answer = @view.show_questions(item.question, item.answer_a, item.answer_b, item.answer_c) 
           case answer.to_i
             when 1 then var = item.answer_a
             when 2 then var = item.answer_b
             when 3 then var = item.answer_c     
           end 
          @view.show_message(var)
          if item.answer_ok == var
            ok += 1      
          else
            no += 1
            @view.show_message_warning
          end
       end
    end
    @view.show_sumary(ok, no)
  end
end

Controller.new

    
