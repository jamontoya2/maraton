class View
	def show_questions(task)
        puts task
        answer = gets.chomp
        #answer
	end
	
	def show_message(task)
        puts "Intento: #{task}"
    end
    
    def show_message_warning
        puts "Incorrecto!"
    end	
    

    def show_sumary(var1, var2)
      puts "Acabaste:\n"
      puts "tuviste #{var1} y #{var2} Incorrectas"
    end
end


