def fill(solution, numbers, index)
	numbers.size.times do |i|		
		solution[index] = numbers[i]
    n = Array.new(numbers)
		n.delete_at(i)		   
	  if n.any?  
      fill(Array.new(solution), n, index+1) if test(solution)
    else
      print solution.inspect+"\n" if test(solution)
    end    
	end   	
end

def test s
  case s.size
    when 1
      return  s[0]%7 == 0 #h1
    when 4
      return  (s[1]*100 + s[2]*10 + s[3]) %7 == 0  #h2
    when 9 
      return  (s[4]*10000 + s[5]*1000 + s[6]*100 + s[7]*10 + s[8]) %7 == 0 #h3
    when 12
      return  (s[1]*100 + s[5]*10 + s[11]) %7 == 0    #v3
    when 13
      return  (s[0]*1000 + s[2]*100 + s[6]*10 + s[12]) %7 == 0   #v4
    when 14   
      return  (s[3]*100 + s[7]*10 + s[13]) %7 == 0    #v5
    when 16  
      return  (s[9]*1000000 + s[10]*100000+ s[11]*10000 + s[12]*1000 + s[13]*100 + s[14]*10 + s[15]) %7 == 0 #h4
    when 17
      return  (s[9]*10 + s[16]) %7 == 0  #v1            
    when 18
      return  ((s[16]*10 + s[17]) %7 == 0) && ((s[4]*100 +s[10]*10 + s[17]) %7 == 0)
    when 19
      return  (s[8]*100 + s[14]*10 + s[18]) %7 == 0  #v6            
    when 20  
      return  ((s[18]*10 + s[19]) %7 == 0) && ((s[15]*10 + s[19]) %7 == 0)  
    else
      return true
  end
end