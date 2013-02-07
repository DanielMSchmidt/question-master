require 'spec_helper'

describe TestController do

  describe "GET 'take'" do
    it "returns http success" do
      get 'take'
      response.should be_success
    end
  end

end
