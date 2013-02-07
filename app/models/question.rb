class Question < ActiveRecord::Base
  attr_accessible :content, :count, :subject_id, :difficulty
  belongs_to :subject

  def increment
    self.count += 1
    self.save!
  end

end
