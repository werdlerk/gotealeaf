
chapters = [['Getting Started',  1],
            ['Numbers',          9],
            ['Letters',         13]]

puts 'Table of Contents'.center(50)
puts ''

chap_num = 1
chapters.each do |chapter|
  	toc_line = 'Chapter ' + chap_num.to_s + ':  ' + chapter[0]
  	page_line = 'page ' + chapter[1].to_s
  	puts toc_line.ljust(30) + page_line.rjust(20)
  	chap_num = chap_num + 1
end