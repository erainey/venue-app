require 'spec_helper'

describe Admin::BaseController do
  let(:user) {User.create}
  describe "GET 'admin'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end
end