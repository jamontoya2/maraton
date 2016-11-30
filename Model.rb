require 'csv'

class Task
  attr_reader :question, :answer

	  def initialize(question, answer)  
    		@question = question
   	  	@answer = answer
    end
end


class Record
	def initialize
		@list = Array.new
	end

	def ask
		CSV.foreach("maraton.csv", "r") do |row| 
      @list << Task.new(row[0], row[1])  
    end
    @list
  end
end 
