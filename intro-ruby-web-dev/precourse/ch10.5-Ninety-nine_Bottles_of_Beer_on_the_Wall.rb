def english_number number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!
  num_string = '' # This is the string we will return.
  ones_place = ['one',       'two',      'three',
                'four',      'five',     'six',
                'seven',     'eight',    'nine']
  tens_place = ['ten',       'twenty',   'thirty',
                'forty',     'fifty',    'sixty',
                'seventy',   'eighty',   'ninety']
  teenagers  = ['eleven',    'twelve',   'thirteen',
                'fourteen',  'fifteen',  'sixteen',
                'seventeen', 'eighteen', 'nineteen']
  # big_numbers -- [name, number]
  big_numbers = [['hundred',  100],
                 ['thousand', 1000],
                 ['million',  1000000],
                 ['billion',  1000000000],
                 ['trillion', 1000000000000]
                ]


  # "left" is how much of the number
  #         we still have left to write out.
  #  "write" is the part we are
  #          writing out right now.
  #  write and left...get it?  :)
  left = number

  while big_numbers.length > 0
    big_number = big_numbers.pop
    number_name = big_number[0]
    number_nr = big_number[1]

    write = left/number_nr        # How many thousands left?
    left = left - write*number_nr # Subtract off those hundreds.

    if write > 0
      # Now here's the recursion:
      numbers = english_number write
      num_string = num_string + numbers + ' ' + number_name
      if left > 0
        #  So we don't write 'two hundredfifty-one'...
        num_string = num_string + ' and '
      end 
    end
  end

  write = left/10         # How many tens left?
  left = left - write*10  # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      #  Since we can't write "twenty-two" instead of
      #  "twelve", we have to make a special exception
      #  for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is
      # 'fourteen', not 'thirteen'.
      # Since we took care of the digit in the
      # ones place already, we have nothing left to write. left = 0
    else
      num_string = num_string + tens_place[write-1]
      #  The "-1" is because tens_place[3] is
      # 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'... num_string = num_string + '-'
    end
  end

  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.

  if write > 0
    num_string = num_string + ones_place[write-1]
    # The "-1" is because ones_place[3] is
    # 'four', not 'three'.
  end
  
  #  Now we just return "num_string"...
  num_string
end

bottles = 999
while bottles > 90
  bottles_nr = english_number(bottles)
  puts bottles_nr + ' bottles of beer on the wall, ' + bottles_nr + ' bottles of beer.'

  bottles = bottles - 1
  bottles_nr = english_number(bottles)

  puts 'Take one down, pass it around, ' + bottles_nr + ' bottles of beer on the wall...'
end
