# This is the Unit test page
# It contains a sample of the tests you need to run

require ("rspec")
require ("find_and_replace")

describe('String#find_replace') do
  it ("find the word world and replaces it with universe") do
    expect('hello world'.find_replace('world','universe')).to(eq('hello universe'))
  end
  it ("find all occurences of the word cat and replaces them with dog") do
    expect('I am walking my cat to the cathedral'.find_replace('cat','dog')).to(eq('I am walking my dog to the doghedral'))
  end

end
