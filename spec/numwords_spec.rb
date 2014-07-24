require('rspec')
require('numwords')

describe('numwords') do
  it('parses numerical input from 0-19 and returns word equivalent') do
    numwords(1).should(eq('one'))
  end
end
