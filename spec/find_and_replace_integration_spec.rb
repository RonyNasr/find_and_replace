# This is the Integration test page
# It contains a sample of the tests you need to run

require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('',{:type => :feature}) do
  it ("enter a sentence a word to find and a word to replace") do
    visit ('/')
    fill_in('sentence' , :with => "I am walking my cat to the cathedral")
    fill_in('find' , :with => "cat")
    fill_in('replace' , :with => "dog")
    click_button('Go') # to submit the form
    expect(page).to have_content ("I am walking my dog to the doghedral")
  end
end
