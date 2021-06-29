require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse!
    "#{@user_name}" 
  end

  get '/square/:number' do
    @number = params[:number]
    @square = @number.to_i * @number.to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    "#{@phrase}" * @number.to_i
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
    @number1 = params[:number1]
    @number2 = params[:number2]
    @operation = params[:operation]
    case @operation
    when 'add'
      @result = @number1.to_i + @number2.to_i
    when 'subtract'
      @result = @number1.to_i - @number2.to_i
    when 'multiply'
      @result = @number1.to_i * @number2.to_i
    when 'divide'
      @result = @number1.to_i / @number2.to_i
    end

    @result.to_s
  end
end