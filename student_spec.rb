require_relative "student.rb"
require_relative "course.rb"

RSpec.describe Student do 

  
  let(:course){ double( "New Course", update_mark: nil , show_mark: nil, calculate_average: nil, name: "Cmput201" ) }
  let(:student){ Student.new("Saadman", [])}

  context "object with only name argument" do
  
    it 'should have a name' do 
      expect(student.name).to eq("Saadman")
    end

    it 'should have an empty list of courses' do
      expect(student.courses.length).to eq(0)
    end
  end

  it 'should be able to call instance methods' do
    
    expect(student).to respond_to(:show_courses)
    expect(student).to respond_to(:show_mark)
  end
end
  context "object with courses" do
    
    #let(:course){ double( "New Course", update_mark: nil , show_mark: nil, calculate_average: nil, name: "Cmput201" ) }
   # let(:course){ Course.new( "Cmput201", {} ) }
    let(:course) {  instance_double(Course) }
    let(:student){ Student.new("Saadman", [course])}

    it 'should be able to talk to courses' do
     
      expect(student.name).to eq("Saadman") 
      allow(course).to receive(:name).and_return("Cmput201")
      expect(course.name).to eq("Cmput201") 
      expect(course).to receive(:name).twice
      expect(course).to receive(:show_mark).once
      student.show_mark(course.name)
    end
end


