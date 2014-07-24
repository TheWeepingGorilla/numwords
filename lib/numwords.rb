def zero_to_twenty (number)
  zero_to_twenty = ['zero','one','two','three','four','five','six','seven','eight','nine','ten','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
  return zero_to_twenty[number]
end

def ten_to_ninety (index)
  ten_to_ninety = ['zero','ten','twenty','thirty','fourty','fifty','sixty','seventy','eighty','ninety']
  return ten_to_ninety[index]
end

def parse (num, divisor, name)
  return_string = []
  num_to_parse = num / divisor

  if ( (num_to_parse > 99) && (num_to_parse < 1000) )
    return_string.push(zero_to_twenty(num_to_parse / 100))
    return_string.push(" hundred ")
  end
  # if (num_to_parse % 100 > 0)
  #     return_string.push(" ")
  # end
  if (num_to_parse < 1000)
      num_to_parse = num_to_parse % 100
  else
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

  if ( (num_to_parse > 0) && (name != "") )
    return_string.push(" " + name)
  end
  return return_string.join
end

def numwords (number_to_convert)
  result = parse(number_to_convert, 1000000000, "billion")
  number_to_convert = number_to_convert % 1000000000
  result = result + parse(number_to_convert, 1000000, "million")
  number_to_convert = number_to_convert % 1000000
  result = result + parse(number_to_convert, 1000, "thousand")
  number_to_convert = number_to_convert % 1000
  result = result + parse(number_to_convert, 1, "")


  return result
end

