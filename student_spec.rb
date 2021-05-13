RSpec.describe Student do

  student = Student.new("Saadman")
  it 'has a name' do 
    expect(student.name).to eq("Saadman")
  end
end