# require 'pry'



class Comment
  attr_accessor :user, :time, :text

  def initialize(user, time, text)
    @user = user
    @time = time
    @text = text
  end
end

