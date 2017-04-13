require 'json'

file = File.read('data2.json')
data_hash = JSON.parse(file)
# p data_hash['results'].keys

number_of_users = data_hash['results'].keys.count

# Demographics
(0..number_of_users-1).each do |i|
	interviewee = data_hash['results'].keys[i]
	print "\"" + data_hash['results'].keys[i] + "\"" 
	print ', '
	print data_hash['results'][interviewee]["What is your age?"]
	print ' / '
	print data_hash['results'][interviewee]["How would you describe your race/ethnicity?"]	
	print ' / '	
	print data_hash['results'][interviewee]["What is your gender?"]
	print ' / '
	print data_hash['results'][interviewee]["What's your occupation? What do you do all day?"]
	puts
end

interviewee = data_hash['results'].keys[0]
questions = data_hash['results'][interviewee].keys
questions.each do |question|
	puts
	puts question
	(0..number_of_users-1).each do |i|
		interviewee = data_hash['results'].keys[i]
		print ' - ' + interviewee
		print ': '
		print data_hash['results'][interviewee][question]
		puts
	end
end





