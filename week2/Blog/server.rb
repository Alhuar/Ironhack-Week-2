require 'sinatra'
require 'sinatra/reloader' if development?
require 'haml'
require 'pry'
require_relative './lib/blog.rb'
require_relative './lib/post.rb'

@@blog = Blog.new
@@blog.add_post Post.new("Post 1 Title", "1985-04-30", "Sed ut perspiciatis unde omnis ist...")
@@blog.add_post Post.new("Post 2 Title", "1990-09-10", "Totam rem aperiam, eaque ipsa quae ab illo inventore verit...")
@@blog.add_post Post.new("Post 3 Title", "1992-05-01", "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis...")
@@blog.add_post Post.new("Post 4 Title", "1960-02-28", "Nam libero tempore, cum soluta nobis est eligendi....")
@@blog.add_post Post.new("Post 5 Title", "1978-10-28", "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis  ex ea commodi consequatur?....")
@@blog.add_post Post.new("Post 6 Title", "1988-02-18", "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis  ex ea commodi consequatur?....")
@@blog.add_post Post.new("Post 7 Title", "1973-01-05", "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis  ex ea commodi consequatur?....")


get '/' do
  @posts = @@blog.latest_posts
  erb(:index)
end











=begin
@@courses = [
  { id: 1, name: 'Introduction to ruby', level: 'false' },
  { id: 2, name: 'Introduction to Javascript', level: 'false' },
  { id: 3, name: 'Introduction to HTML & CSS', level: 'false' },
  { id: 4, name: 'Ruby on Rails', level: 'true' },
  { id: 5, name: 'AngularJS', level: 'true' },
  { id: 6, name: 'Hashes over Arrays over Hashes over Hashes over Arrays', level: 'true' }
]

get '/' do
  erb(:index)
end

post '/login' do
  # if params[:student_name]
  # redirect ()
  session[:name] = params[:student_name]
  session[:date] = params[:student_birth_date]
  session[:experience] = params[:student_experience]
  # binding.pry
  session[:email] = params[:student_email]
  Student.new(session[:name], session[:date], session[:experience], session[:email])
  redirect '/show_courses'

  # if session[:experience] == 'true'
  #   redirect '/profile_exp'
  # elsif
  #   redirect '/profile_newbie'
  # end
end

get '/show_courses' do
  @name = session[:name]
  @your_courses = @@courses.select do |course|
    session[:experience] == course[:level]
  end

  erb(:show_courses)
end

# get '/profile_newbie' do
#   @name = session[:name]
#   @age = session[:date]
#   erb(:profile_newbie)
# end

# get '/profile_exp' do
#   @name = session[:name]
#   erb(:profile_exp)
# end

post '/reset' do
  session[:name] = nil
  session[:date] = nil
  session[:experience] = nil
  session[:email] = nil
  redirect '/'
end
=end