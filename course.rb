class Course 

	attr_reader :name, :cumulative_average, :mark_distribution, :marks_received

	def initialize(name,mark_distribution)
		@name = name 
		@mark_distribution = mark_distribution
		@marks_received = {}
		mark_distribution.each do |key, value|
			@marks_received[key] = 0
		end
	end

	def update_mark(component,percentage)
		if marks_received.has_key?(component)
			marks_received[component] = percentage
			show_mark()
			calculate_average()
		else
			puts "#{@name} doesn't have a component called #{component}"
		end
	end

	def show_mark()
		puts marks_received
	end

	def calculate_average()
			average = 0
			mark_distribution.each do |key,value|
				average += (mark_distribution[key] / 100) * marks_received[key]
			end
			puts "Your average is #{average}"
			puts()
	end
end