require 'spec_helper'

describe SubscriptionsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/subscriptions" }.should route_to(:controller => "subscriptions", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/subscriptions/new" }.should route_to(:controller => "subscriptions", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/subscriptions/1" }.should route_to(:controller => "subscriptions", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/subscriptions/1/edit" }.should route_to(:controller => "subscriptions", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/subscriptions" }.should route_to(:controller => "subscriptions", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/subscriptions/1" }.should route_to(:controller => "subscriptions", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/subscriptions/1" }.should route_to(:controller => "subscriptions", :action => "destroy", :id => "1") 
    end
  end
end
