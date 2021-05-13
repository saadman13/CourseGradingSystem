class Student

    attr_accessor :name, :courses 

    def initialize(name,courses = [])
        @name = name
        @courses = courses 
    end

    def show_courses()
        puts "Course List for #{@name}"
        @courses.each do |course|
            puts course.name
        end
    end

    def show_mark(course_name)
        @courses.each do |course|
            if course.name == course_name 
                puts course.marks_received
                break
            end
        end
    end


    def update_mark(course_name)
        @courses.each do |course|
			if course.name == course_name
                puts "which component do you want to update?"
                component = gets.chomp()
                puts "How much did you score?"
                percentage = gets.chomp().to_f

				course.update_mark(component,percentage)
				break
			end
		end
    end

    def show_mark(course_name)
        @courses.each do |course|
            if course.name == course_name
                course.show_mark()
                break
            end
        end
    end
    def calc_gpa()
        
    end
end
