class SubscriptionsController < ApplicationController

  def index
    @subscriptions = Subscription.all
  end
  
  #deliver the different subscriptions
  def deliver
    @subscription = Subscription.find(params[:id])
    @users = @subscription.users
    @subject = @subscription.subject
    for user in @users
      @lotto_numbers = (1..49).to_a.sort{rand() - 0.5 } [0..5]
      @recipients = user.email
      @subscription.deliver(@recipients, @subscription, @user, @subject, @lotto_numbers)
    end
    flash[:notice] = "Delivered Subscription"
    redirect_to subscriptions_url
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
