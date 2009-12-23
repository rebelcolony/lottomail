require 'spec_helper'

describe UsersController do

  #Delete these examples and add some real ones
  it "should use UsersController" do
    controller.should be_an_instance_of(UsersController)
  end


  describe "GET 'name:string'" do
    it "should be successful" do
      get 'name:string'
      response.should be_success
    end
  end

  describe "GET 'email:string'" do
    it "should be successful" do
      get 'email:string'
      response.should be_success
    end
  end
end
