require_relative 'runner_helper.rb'

include RunnerHelper

while true do 
	puts "Welcome!"
	puts "'n' -> new semester record"
	puts "'u' -> update marks for a course" 
	puts "'s' -> show marks for a course" 
	puts " 'sc' -> show all courses"

	command = gets.chomp()

	case command 
	when 'n'
		$student = prompt()#add_record()
	when 'u'
		update_record($student)
	when 's'
		show_record($student)
	when 'sc'
		show_all($student)
	else
		puts "Invalid Command!"
	end

	puts()
	puts()
end

