aFile = File.new('resume.txt', 'w')
print "Enter Name:"
name = gets
print "Enter Email:"
email = gets
print "Enter Phone Number:"
pnumber = gets
print "Enter Skills:"
skills = gets
aFile.write("Name: #{name}")
aFile.write("Email: #{email}")
aFile.write("Phone Number: #{pnumber}")
aFile.write("Skills: #{skills}")


aFile.close