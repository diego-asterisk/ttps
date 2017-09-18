def rot_may(string,n)
   string.gsub(/[A-Z]/) do |s| 
	  ((s.ord + n - 'A'.ord) % 26 + 'A'.ord).chr
   end
end
def rot_min(string,n)
   string.gsub(/[a-z]/) do |s| 
	  ((s.ord + n - 'a'.ord) % 26 + 'a'.ord).chr
   end
end
def rot_n(string, n)
   rot_may(rot_min(string,n),n)
end

