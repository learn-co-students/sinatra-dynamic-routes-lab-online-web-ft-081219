require_relative 'config/environment'

require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name]
    #binding.pry
    "#{@name.reverse}"
  end

  get '/square/:number' do 
    @num = params[:number]
    @number = @num.to_i
    @sqr =  (@number * @number)
    "#{@sqr}"
  end

  get '/say/:number/:phrase' do 
    @num = params[:number]
    @number = @num.to_i
    @phrase = params[:phrase]
    "#{@phrase * @number} "
    #binding.pry  
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @all = (@word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5)
    "#{@all}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    @add = (@number1.to_i + @number2.to_i)
    @subtract = (@number1.to_i - @number2.to_i)
    @multiply = (@number1.to_i * @number2.to_i)
    @divide = (@number1.to_i/@number2.to_i)
    if @operation == "add"
      "#{@add}"
    elsif @operation == "subtract"
      "#{@subtract}"
    elsif @operation == "multiply"
      "#{@multiply}"
    elsif @operation == "divide"
      "#{@divide}"
    end
    #binding.pry
  end


end