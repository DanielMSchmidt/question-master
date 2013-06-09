class Question < ActiveRecord::Base
  attr_accessible :content, :count, :subject_id, :difficulty, :answer, :tex
  belongs_to :subject

  def increment
    self.count += 1
    self.save!
  end

  def tex_answer
    "$" + self.answer.gsub(/\n/, '\\\\') + "$"
  end

end
