class TestController < ApplicationController
  def take
    @subject = Subject.find(params[:subject])
    size = params[:size].to_i || 10
    questions = @subject.questions

    if questions.count > size
      @asked_questions = questions.shuffle.sort_by{|x| x.count}.shift(size)
    else
      @asked_questions = questions
    end

    @asked_questions.each{|x| x.increment}
  end
end
