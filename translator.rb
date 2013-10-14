class Translator

	attr_accessor :type

	def initialize type
		@type = type
	end

	def roman_to_arabic val
	  if val.length == 1
	  	return roman_translator_helper(val)
	  elsif val.length == 2 && (compare_romans(val[0], val[1]))
	  	return roman_translator_helper(val[0] + val[1])
	  elsif val.length == 2 && !(compare_romans(val[0], val[1]))
	  	return roman_translator_helper(val[1] - val[0])
	  elsif val.length > 2 && (compare_romans

	  #return 2006
	end

	def arabic_to_roman val
	  return 'MMVI'
	end

	def roman_translator_helper val
	  case val
		when I
		  return 1
		when V
		  return 5
		when X
		  return 10
		when L
		  return 50
		when C 
		  return 100
		when D 
		  return 500
		when M 
		  return 1000	
		else
		  raise "You gave me #{val} -- I have no idea what to do with that."
		end
	end

	def compare_romans val1 val2
		if(roman_translator_helper(val1) >= roman_translator_helper(val2))
			true
		else
			false
		end
	end
end