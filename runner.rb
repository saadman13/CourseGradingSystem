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

# require_relative 'student.rb'
# require_relative 'course.rb'
# class Runner


# 	#so it looks better
# 	puts #newLine

# 	print "Student's Name: "
# 	student_name = gets.chomp()

# 	print "Number of courses: "
# 	num_of_courses = gets.chomp().to_i

# 	puts
	
# 	course_list = []
# 	sum_of_weight = 0
# 	mark_distribution_hash = {}
# 	num_of_courses.times do
# 			print "Course Name: "
# 			course_name = gets.chomp()
# 			puts
# 			puts "Enter the grade distribution below"
		
# 			puts "For example -> Assignment 1 and then on a seperate line say 20%. Note that the syntax must match the provided example"
		
# 			until sum_of_weight == 100.0 
# 				name_of_test = gets.chomp()
# 				weight_of_test = gets.chomp().to_f
# 				#add a if test later to check that sum of test doesn't go over 100 
# 				mark_distribution_hash[name_of_test] = weight_of_test
# 				sum_of_weight += weight_of_test
# 			end

# 			#add to course list 
# 			course_list.push(Course.new(course_name,mark_distribution_hash))
# 			puts 
# 			#Display
# 			puts "Course Name -> #{course_name}"
# 			puts "Course structure: "
# 			puts mark_distribution_hash
# 			puts

		
# 	end#TimesLoop

# 	student = Student.new(student_name,course_list)

# 	puts student.name
# 	puts student.courses.length

# 	def display_course(name,hash) 

# 	end

# end