def one_to_twenty (number)
  one_to_twenty = ['zero','one','two','three','four','five','six','seven','eight','nine','ten','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
  return one_to_twenty[number]
end

def twenty_to_ninety (number)
  twenty_to_ninety = {20=>'twenty', 30=>'thirty',40=>'fourty',50=>'fifty',60=>'sixty',70=>'seventy',80=>'eighty',90=>'ninety'}
  return twenty_to_ninety[number]
end

def hundreds (number)
  hundreds = {100=>'one hundred',200=>'two hundred',300=>'three hundred',400=>'four hundred',500=>'five hundred',600=>'six hundred',700=>'seven hundred',800=>'eight hundred',900=>'nine hundred'}
  return hundreds[number]
end
