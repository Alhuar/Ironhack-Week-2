require "sinatra"
require "sinatra/reloader" if development?
require_relative './lib/Calculator'

get "/add" do
  erb(:add)
end

post "/calculate_add" do
  @first = params[:first_number].to_f
  @second = params[:second_number].to_f
  "#{@first} + #{@second}"
  @result = @first + @second
  "#{@first} + #{@second} = #{@result}"
end


 post "/calculate_substract" do
   @first = params[:first_number].to_f
   @second = params[:second_number].to_f
   "#{@first} - #{@second}"
   @result = @first - @second
   "#{@first} - #{@second} = #{@result}"

 end

 post "/calculate_multiply" do
   @first = params[:first_number].to_f
   @second = params[:second_number].to_f
   "#{@first} * #{@second}"
   @result = @first * @second
   "#{@first} * #{@second} = #{@result}"
 end

 post "/calculate_divide" do
   @first = params[:first_number].to_f
   @second = params[:second_number].to_f
   "#{@first} / #{@second}"
   @result = @first / @second
   "#{@first} / #{@second} = #{@result}"
   end

  post "/supercalculator" do
  	@first = params[:first_number].to_f
  	@second = params[:second_number].to_f
  	@operator = params[:operator]
  	if @operator == "sum"
  		@result = Calculator.new.sum(@first, @second)
  		
  	elsif @operator == "substract"
  		@result = Calculator.new.substract(@first, @second)
  		
  	elsif @operator == "multiply"
  		@result = Calculator.new.mul(@first, @second)	
  		
  	elsif @operator == "divide"
  		@result = Calculator.new.div(@first, @second)
  	end
	"#{@first} / #{@second} = #{@result}"
  end

  
  	
  
  
    







