require 'spec_helper'

describe SubscriptionsController do

  def mock_subscription(stubs={})
    @mock_subscription ||= mock_model(Subscription, stubs)
  end

  describe "GET index" do
    it "assigns all subscriptions as @subscriptions" do
      Subscription.stub!(:find).with(:all).and_return([mock_subscription])
      get :index
      assigns[:subscriptions].should == [mock_subscription]
    end
  end

  describe "GET show" do
    it "assigns the requested subscription as @subscription" do
      Subscription.stub!(:find).with("37").and_return(mock_subscription)
      get :show, :id => "37"
      assigns[:subscription].should equal(mock_subscription)
    end
  end

  describe "GET new" do
    it "assigns a new subscription as @subscription" do
      Subscription.stub!(:new).and_return(mock_subscription)
      get :new
      assigns[:subscription].should equal(mock_subscription)
    end
  end

  describe "GET edit" do
    it "assigns the requested subscription as @subscription" do
      Subscription.stub!(:find).with("37").and_return(mock_subscription)
      get :edit, :id => "37"
      assigns[:subscription].should equal(mock_subscription)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created subscription as @subscription" do
        Subscription.stub!(:new).with({'these' => 'params'}).and_return(mock_subscription(:save => true))
        post :create, :subscription => {:these => 'params'}
        assigns[:subscription].should equal(mock_subscription)
      end

      it "redirects to the created subscription" do
        Subscription.stub!(:new).and_return(mock_subscription(:save => true))
        post :create, :subscription => {}
        response.should redirect_to(subscription_url(mock_subscription))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved subscription as @subscription" do
        Subscription.stub!(:new).with({'these' => 'params'}).and_return(mock_subscription(:save => false))
        post :create, :subscription => {:these => 'params'}
        assigns[:subscription].should equal(mock_subscription)
      end

      it "re-renders the 'new' template" do
        Subscription.stub!(:new).and_return(mock_subscription(:save => false))
        post :create, :subscription => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested subscription" do
        Subscription.should_receive(:find).with("37").and_return(mock_subscription)
        mock_subscription.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :subscription => {:these => 'params'}
      end

      it "assigns the requested subscription as @subscription" do
        Subscription.stub!(:find).and_return(mock_subscription(:update_attributes => true))
        put :update, :id => "1"
        assigns[:subscription].should equal(mock_subscription)
      end

      it "redirects to the subscription" do
        Subscription.stub!(:find).and_return(mock_subscription(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(subscription_url(mock_subscription))
      end
    end

    describe "with invalid params" do
      it "updates the requested subscription" do
        Subscription.should_receive(:find).with("37").and_return(mock_subscription)
        mock_subscription.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :subscription => {:these => 'params'}
      end

      it "assigns the subscription as @subscription" do
        Subscription.stub!(:find).and_return(mock_subscription(:update_attributes => false))
        put :update, :id => "1"
        assigns[:subscription].should equal(mock_subscription)
      end

      it "re-renders the 'edit' template" do
        Subscription.stub!(:find).and_return(mock_subscription(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested subscription" do
      Subscription.should_receive(:find).with("37").and_return(mock_subscription)
      mock_subscription.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the subscriptions list" do
      Subscription.stub!(:find).and_return(mock_subscription(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(subscriptions_url)
    end
  end

end
