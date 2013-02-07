require 'spec_helper'

describe "questions/edit" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :content => "",
      :count => 1,
      :subject_id => 1
    ))
  end

  it "renders the edit question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => questions_path(@question), :method => "post" do
      assert_select "input#question_content", :name => "question[content]"
      assert_select "input#question_count", :name => "question[count]"
      assert_select "input#question_subject_id", :name => "question[subject_id]"
    end
  end
end
