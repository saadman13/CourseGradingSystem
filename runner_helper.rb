
require_relative 'student.rb'
require_relative 'course.rb'
module RunnerHelper

	def prompt()

		#so it looks better
		puts #newLine

		print "Student's Name: "
		student_name = gets.chomp()

		print "Number of courses: "
		num_of_courses = gets.chomp().to_i

		puts

		course_list = []
		sum_of_weight = 0
		mark_distribution_hash = {}

		num_of_courses.times do
				print "Course Name: "
				course_name = gets.chomp()
				puts
				puts "Enter the grade distribution below"
			
				puts "For example -> Assignment 1 and then on a seperate line say 20%. Note that the syntax must match the provided example"
			

				until sum_of_weight == 100.0 
					name_of_test = gets.chomp()
					weight_of_test = gets.chomp().to_f
					#add a if test later to check that sum of test doesn't go over 100 
					mark_distribution_hash[name_of_test] = weight_of_test
					sum_of_weight += weight_of_test
				end

				#restore sum_of_weight
				sum_of_weight = 0

				#add to course list 
				course_list.push(Course.new(course_name,mark_distribution_hash))
				puts 
				#Display
				puts "Course Name -> #{course_name}"
				puts "Course structure: "
				puts mark_distribution_hash
				puts

			
			end#TimesLoop

		student = Student.new(student_name,course_list)

		puts student.name
		puts student.courses.length

		puts "Enter a course name for which you want to see your mark received distribution"
		course_name = gets.chomp()

		puts student.show_mark(course_name)
		return student
	end#PromptFunc

	def update_record(student)

		puts "which course do you wanna update marks for?"
		course_name = gets.chomp()
		
		student.update_mark(course_name)
		
	end

	def show_record(student)
			puts "Which course do you want to see a record for?"
			student.show_mark(gets.chomp())
	end
	
	def show_all(student)
		student.show_courses()
	end

end

