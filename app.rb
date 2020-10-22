require_relative 'config/environment'

class App < Sinatra::Base
  
  get  '/reversename/:name' do 
    @reversename = params[:name].reverse
    erb :reverse
  end
  
  get '/square/:number' do 
    @square = params[:number].to_i ** 2
    erb :square
  end 
  
  get '/say/:number/:phrase' do 
      @array = Array.new(params[:number].to_i, params[:phrase])
      erb :say
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    erb :say_word
  end 
  
  get '/:operation/:number1/:number2' do 
    @operation = params[:operation] 
    @number1 = params[:number1] 
    @number2 = params[:number2] 
    
    case @operation 
      when "add" 
        @result = @number1.to_i + @number2.to_i
      when "subtract"
        @result = @number1.to_i - @number2.to_i
      when "multiply"
        @result = @number1.to_i * @number2.to_i
      when "divide"
        @result = @number1.to_i / @number2.to_i
    end
    erb :operation
  end

end