require 'csv'

class Task
  attr_reader :question, :answer_a, :answer_b, :answer_c, :answer_ok, :category

	  def initialize(question, answer_a, answer_b, answer_c, answer_ok, category)  
    		@question = question
   	  	@answer_a = answer_a
        @answer_b = answer_b
        @answer_c = answer_c
        @answer_ok = answer_ok
        @category = category
    end
end


class Record
	def initialize
		@list = Array.new
	end

	def ask
		CSV.foreach("maraton.csv", "r") do |row| 
      @list << Task.new(row[0], row[1], row[2], row[3], row[4], row[5])  
    end
    @list
  end
end 
