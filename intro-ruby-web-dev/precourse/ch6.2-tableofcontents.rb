column1 = 12
column2 = 30
column3 = 6
column4 = 2
total_width = column1 + column2 + column3 + column4
puts('Table of Contents'.center(total_width))
puts('')
puts('Chapter 1:'.ljust(column1) + 'Getting Started'.ljust(column2) + 'page'.ljust(column3) + '1'.ljust(column4))
puts('Chapter 2:'.ljust(column1) + 'Numbers'.ljust(column2) + 'page'.ljust(column3) + '9'.ljust(column4))
puts('Chapter 3:'.ljust(column1) + 'Letters'.ljust(column2) + 'page'.ljust(column3) + '13'.ljust(column4))
