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

def parse (num)
  return_string = []

  num_billions = num / 1000000000
  num = num % 1000000000

  if ( (num_billions > 0) && (num_billions < 21) )
    return_string.push(zero_to_twenty(num_billions))
  elsif ( (num_billions > 20) && (num_billions < 100) )
    return_string.push(ten_to_ninety(num_billions / 10))
    if (num_billions % 10 != 0)
      return_string.push("-" + zero_to_twenty(num_billions % 10))
    end
  end
  if (num_billions > 0)
    return_string.push(" billion")
  end
return return_string.join
end
