class PagesController < ApplicationController

  def ask

  end

  def answer
    @question = params[:question].downcase
    @answer = ''
    if @question == 'hello'
      @answer = 'Hello, my athlete'
    elsif @question == 'what time is it?'
      @answer = Time.now
    else
      @answer = "I don't know what you said. Do some push-ups!"
    end
    @answer
  end
end
