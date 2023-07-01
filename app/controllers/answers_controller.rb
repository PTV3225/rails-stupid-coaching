# frozen_string_literal: true

# This is the controller responsible for handling answers.
class AnswersController < ApplicationController
  def answer
    stop = 'I am going to work'
    your_message = params[:question].upcase

    @response = if your_message == stop || your_message == stop.upcase
                  'Great!'
                elsif your_message.end_with?('?')
                  'Silly question, get dressed and go to work!'
                else
                  "I don't care, get dressed and go to work!"
                end
  end
end
