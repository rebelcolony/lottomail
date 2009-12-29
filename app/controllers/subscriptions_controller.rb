class SubscriptionsController < ApplicationController
  before_filter :authorize

  def index
    @subscriptions = Subscription.all
  end
  
  def show
    @subscription = Subscription.find(params[:id])
    @subscribed_users = @subscription.users
  end

  def new
    @subscription = Subscription.new
  end

  def edit
    @subscription = Subscription.find(params[:id])
  end

  def create
    @subscription = Subscription.new(params[:subscription])
      if @subscription.save
        flash[:notice] = 'Subscription was successfully created.'
        redirect_to(@subscription)
      else
        render :action => "new"
    end
  end

  def update
    @subscription = Subscription.find(params[:id])
      if @subscription.update_attributes(params[:subscription])
        flash[:notice] = 'Subscription was successfully updated.'
        redirect_to(@subscription)
      else
        render :action => "edit"
    end
  end

 
  def destroy
    @subscription = Subscription.find(params[:id])
    @subscription.destroy
    redirect_to(subscriptions_url)
  end
  
end
