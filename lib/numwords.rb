def zero_to_twenty (number)
  zero_to_twenty = ['zero','one','two','three','four','five','six','seven','eight','nine','ten','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
  return zero_to_twenty[number]
end

# def twenty_to_ninety (number)
#   twenty_to_ninety = {20=>'twenty', 30=>'thirty',40=>'fourty',50=>'fifty',60=>'sixty',70=>'seventy',80=>'eighty',90=>'ninety'}
#   return twenty_to_ninety[number]
# end

# def hundreds (number)
#   hundreds = {100=>'one hundred',200=>'two hundred',300=>'three hundred',400=>'four hundred',500=>'five hundred',600=>'six hundred',700=>'seven hundred',800=>'eight hundred',900=>'nine hundred'}
#   return hundreds[number]
# end

# def thousands (number)
#   thousands = {1000=>'one thousand',2000=>'two thousand',3000=>'three thousand',4000=>'four thousand',5000=>'five thousand',6000=>'six thousand',7000=>'seven thousand',8000=>'eight thousand',9000=>'nine thousand'}
#   return thousands[number]
# end

def ten_to_ninety (index)
  ten_to_ninety = ['zero','ten','twenty','thirty','fourty','fifty','sixty','seventy','eighty','ninety']
  return ten_to_ninety[index]
end


def parse (num, divisor, name)

  return_string = []
  num_to_parse = num / divisor

  if ( (num_to_parse > 99) && (num_to_parse < 1000) )
    return_string.push(zero_to_twenty(num_to_parse / 100) + " hundred")
    if (num_to_parse % 100 > 0)
      return_string.push(" ")
    end
    num_to_parse = num_to_parse / 10
  end

  if ( (num_to_parse > 0) && (num_to_parse < 21) )
    return_string.push(zero_to_twenty(num_to_parse))
  elsif ( (num_to_parse > 20) && (num_to_parse < 100) )
    return_string.push(ten_to_ninety(num_to_parse / 10))
    if (num_to_parse % 10 != 0)
      return_string.push("-" + zero_to_twenty(num_to_parse % 10))
    end
  end

  if (num_to_parse > 0)
    return_string.push(" " + name)
  end
  return return_string.join
end

def numwords (number_to_convert)
  result = parse(number_to_convert, 1000000000, "billion")
  number_to_convert = number_to_convert % 1000000000
  return result
end

