require File.expand_path '../spec_helper', __FILE__

RSpec.describe 'the new awesome ironweb do' do
  describe 'server school' do
    it 'renders index page' do
      get('/')
      expect(last_response.body.downcase).to include('ironhack')
    end
  end

  it 'expects users name to be the same as the user input' do
    post '/login', student_name: 'Alfon'
    expect(session[:name]).to eq('Alfon')
  end

  it 'expects users age to be the same as the user input' do
    post '/login', student_age: '30'
    expect(session[:age]).to eq('30')
  end

  it 'expects users experience to be the same as the user input' do
    post '/login', student_experience: 'false'
    expect(session[:experience]).to eq('false')
  end

  it 'expects users email to be the same as the user input' do
    post '/login', student_email: 'alfon@alfon.com'
    expect(session[:email]).to eq('alfon@alfon.com')
  end
end
