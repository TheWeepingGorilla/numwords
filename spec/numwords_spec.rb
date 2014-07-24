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

describe('ten_to_ninety') do
  it('takes an index from 0-9 and returns zero, ten, twenty...ninety') do
    ten_to_ninety(9).should(eq('ninety'))
  end
end

describe('numwords') do
  it('takes 1 000 000 000... 9 000 000 000 and returns word equivalent') do
    numwords(1000000000).should(eq('one billion'))
  end
  it('takes 1 000 000 000... 9 000 000 000 and returns word equivalent') do
    numwords(9000000000).should(eq('nine billion'))
  end
  it('takes 1 000 000 000... 99 000 000 000 and returns word equivalent') do
    numwords(99000000000).should(eq('ninety-nine billion'))
  end
  it('takes 1 000 000 000... 999 000 000 000 and returns word equivalent') do
    numwords(999000000000).should(eq('nine hundred ninety-nine billion'))
  end
  it('takes 1 000 000 ... 9 000 000 and returns word equivalent') do
    numwords(1000000).should(eq('one million'))
  end
  it('takes 1 000 000... 9 000 000 and returns word equivalent') do
    numwords(9000000).should(eq('nine million'))
  end
  it('takes 1 000 000 000... 99 000 000 000 and returns word equivalent') do
    numwords(99000000).should(eq('ninety-nine million'))
  end
  it('takes 1 000 000... 999 000 000 and returns word equivalent') do
    numwords(999000000).should(eq('nine hundred ninety-nine million'))
  end
  it('takes 1 000... 9 000 000 and returns word equivalent') do
    numwords(1000).should(eq('one thousand'))
  end
  it('takes 1 000... 9 000 000 and returns word equivalent') do
    numwords(9000).should(eq('nine thousand'))
  end
  it('takes 1 000 000 000... 99 000 000 000 and returns word equivalent') do
    numwords(99000).should(eq('ninety-nine thousand'))
  end
  it('takes 1 000 000... 999 000 000 and returns word equivalent') do
    numwords(999000).should(eq('nine hundred ninety-nine thousand'))
  end
  it('takes 1 000... 9 000 000 and returns word equivalent') do
    numwords(1).should(eq('one'))
  end
  it('takes 1 000... 9 000 000 and returns word equivalent') do
    numwords(9).should(eq('nine'))
  end
  it('takes 1 000 000 000... 99 000 000 000 and returns word equivalent') do
    numwords(105).should(eq('one hundred five'))
  end
  it('takes 1 000 000... 999 000 000 and returns word equivalent') do
    numwords(205).should(eq('two hundred five'))
  end
  it('takes 0 and returns word equivalent') do
    numwords(0).should(eq('zero'))
  end


end



