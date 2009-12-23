require 'spec_helper'

describe "/users/email:string" do
  before(:each) do
    render 'users/email:string'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/users/email:string])
  end
end
