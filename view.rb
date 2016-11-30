class View
	def desk
      puts "Elige la opcion para jugar"
      puts "1.- Cine"
      puts "2.- Informatica"
      puts "3.- Cultura General"
      answer_desk = gets.chomp
    end

    def show_questions(question, a, b, c)
        puts "#{question}"
        puts "1.- #{a} 2.- #{b} 3.- #{c}"
        answer = gets.chomp
 	end
	
	def show_message(task)
        puts "Intento: #{task}"
    end
    
    def show_message_warning
        puts "Incorrecto!"
    end	
    
    def show_sumary(var1, var2)
      puts "Acabaste:\n"
      puts "tuviste #{var1} correctos y #{var2} Incorrectas"
    end

    def show_welcome
      puts "Bienvenido a Maratón. Te daremos una pregunta y deberas adivinar la respuesta correcta" 
      puts "Listo?, Arranca el juego"
    end
end



