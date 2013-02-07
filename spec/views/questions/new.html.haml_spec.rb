require 'spec_helper'

describe "questions/new" do
  before(:each) do
    assign(:question, stub_model(Question,
      :content => "",
      :count => 1,
      :subject_id => 1
    ).as_new_record)
  end

  it "renders new question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => questions_path, :method => "post" do
      assert_select "input#question_content", :name => "question[content]"
      assert_select "input#question_count", :name => "question[count]"
      assert_select "input#question_subject_id", :name => "question[subject_id]"
    end
  end
end
