require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name].reverse
    "Hi #{@user_name}"
  end

  get "/square/:num" do
    @square = params[:num].to_i
    " #{@square * @square}"
  end

  get '/say/:number/:phrase' do
    str = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    
    @num.times { str += "#{@phrase}\n" }
    str
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @a = params[:word1]
    @b = params[:word2]
    @c = params[:word3]
    @d = params[:word4]
    @e = params[:word5]

    "#{@a + ' ' + @b + ' ' + @c + ' ' + @d + ' ' + @e}."
  end

  get "/:operation/:number1/:number2" do
    @oper = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @oper == "add"
      (@num1 + @num2).to_s
    elsif @oper == "subtract"
      (@num2 - @num1).to_s
    elsif @oper == "multiply"
      (@num2 * @num1).to_s
    elsif @oper == "divide"
      (@num1 / @num2).to_s
    end
  end

end