require('rspec')
require('numwords')

describe('zero_to_twenty') do
  it('takes numerical input from 0-19 and returns word equivalent') do
    zero_to_twenty(1).should(eq('one'))
  end
  it('takes numerical input from 0-19 and returns word equivalent') do
    zero_to_twenty(11).should(eq('eleven'))
  end
  it('takes numerical input from 0-19 and returns word equivalent') do
    zero_to_twenty(19).should(eq('nineteen'))
  end
end

# describe('twenty_to_ninety') do
#   it('takes 20,30,...90 and returns word equivalent') do
#     twenty_to_ninety(20).should(eq('twenty'))
#   end
#   it('takes 20,30,...90 and returns word equivalent') do
#     twenty_to_ninety(90).should(eq('ninety'))
#   end
# end

# describe('hundreds') do
#   it('takes 100,200,...900 and returns word equivalent') do
#     hundreds(100).should(eq('one hundred'))
#   end
#   it('takes 100,200,...900 and returns word equivalent') do
#     hundreds(900).should(eq('nine hundred'))
#   end
# end

# describe('thousands') do
#   it('takes 1000,2000,...9000 and returns word equivalent') do
#     thousands(1000).should(eq('one thousand'))
#   end
#   it('takes 1000,2000,...9000 and returns word equivalent') do
#     thousands(9000).should(eq('nine thousand'))
#   end
# end

describe('parse') do
  it('takes 1 000 000 000... 9 000 000 000 and returns word equivalent') do
    parse(1000000000).should(eq('one billion'))
  end
  it('takes 1 000 000 000... 9 000 000 000 and returns word equivalent') do
    parse(9000000000).should(eq('nine billion'))
  end
  it('takes 1 000 000 000... 99 000 000 000 and returns word equivalent') do
    parse(99000000000).should(eq('ninety-nine billion'))
  end
  it('takes 1 000 000 000... 999 000 000 000 and returns word equivalent') do
    parse(999000000000).should(eq('nine hundred ninety-nine billion'))
  end

  # it('takes 1 000 000 ... 9 000 000  and returns word equivalent') do
  #   parse(1000000).should(eq('one million'))
  # end
  # it('takes 1 000 000 ... 9 000 000  and returns word equivalent') do
  #   parse(9000000).should(eq('nine million'))
  # end
  # it('takes 1 000 000 ... 99 000 000  and returns word equivalent') do
  #   parse(99000000).should(eq('ninety-nine million'))
  # end
end



