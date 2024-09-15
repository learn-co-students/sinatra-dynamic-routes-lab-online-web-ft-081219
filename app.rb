require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    "#{num**2}"
  end

  get '/say/:num/:phrase' do
    num = params[:num].to_i
    str = params[:phrase]
    new_str=""
    num.times do
      new_str.concat(str)
    end
    new_str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    holder=[]
    holder << params[:word1]
    holder << params[:word2]
    holder << params[:word3]
    holder << params[:word4]
    holder << params[:word5]

    holder.join(" ") << "."
  end

  get '/:operation/:number1/:number2' do
    # # raise params.inspect
    # opp = params[:operation]
    # num1 = params[:number1].to_i
    # num2 = params[:number2].to_i
    # # raise [opp,num1,num2].inspect

    # if opp == "add"
    #   "#{num1+num2}"
    # elsif opp == "multiply"
    #   "#{num1*num2}"
    # elsif opp == "subtract"
    #   "#{num1-num2}"
    # elsif opp == "divide"
    #   "#{num1/num2}"
    # else
    #   "error"
    # end

    case params[:operation]
    when "add"
      "#{params[:number1].to_i+params[:number2].to_i}"
    when "subtract"
      "#{params[:number1].to_i-params[:number2].to_i}"
    when "multiply"
      "#{params[:number1].to_i*params[:number2].to_i}"
    when "divide"
      "#{params[:number1].to_i/params[:number2].to_i}"
    else
      "error"
    end

  end

end