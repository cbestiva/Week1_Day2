pages_with_questions = {}
key = ""
lines_grabbed = ""

File.open("story.txt", "r") do |infile|
	while (line = infile.gets)
		if line.index("~p")
			key = line
			lines_grabbed = ""
		else
			lines_grabbed += line
		end
		pages_with_questions[key] = lines_grabbed
	end
end

#puts pages_with_questions

p1 = pages_with_questions.select do |key, value|
	key.index("~p1")
end

p1.each do |k,v|
	puts v
end

# --------- tried to add numbers in front of options -----------
#options = pages_with_questions.select do |key, value|
#	key.index("~p1:c")
#end

#options.each_with_index do |item, i|
#	puts "#{i+1}) #{item[1]}"
#end
# --------------------------------------------------------------

# Ask user to choose option
prompt = "> Choose and Enter 1, 2, or 3 accordingly"
puts prompt
choice = gets.to_i + 1

px = pages_with_questions.select do |key, value|
	key.index("~p#{choice}")
end

px.each do |k,v|
	puts v
end
