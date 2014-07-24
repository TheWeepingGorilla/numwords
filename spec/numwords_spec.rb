require('rspec')
require('numwords')

describe('one_to_twenty') do
  it('takes numerical input from 0-19 and returns word equivalent') do
    one_to_twenty(1).should(eq('one'))
  end
  it('takes numerical input from 0-19 and returns word equivalent') do
    one_to_twenty(11).should(eq('eleven'))
  end
  it('takes numerical input from 0-19 and returns word equivalent') do
    one_to_twenty(19).should(eq('nineteen'))
  end
end

describe('twenty_to_ninety') do
  it('takes 20,30,...90 and returns word equivalent') do
    twenty_to_ninety(20).should(eq('twenty'))
  end
end
