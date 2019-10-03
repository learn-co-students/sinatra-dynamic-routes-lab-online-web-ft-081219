require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get '/square/:number' do
    @n = params[:number].to_i
    "#{@n ** 2}"
  end
  
  get '/say/:number/:phrase' do
    @n = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}" * @n
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
  
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    case @operation
    when "add"
      "#{@n1 + @n2}"
    when "subtract"
      "#{@n1 - @n2}"
    when "divide"
      "#{@n1 / @n2}"
    when "multiply"
      "#{@n1 * @n2}"
    end
  end
  
end