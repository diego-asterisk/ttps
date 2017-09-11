def a_ul(hash)
   if hash.size > 0
	  '<ul>' + hash.reduce('') { |acum, (key, value)| acum << "<li>#{key}: #{value}</li>" } + '</ul>'
   else
      ''
   end
end

