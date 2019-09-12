class TweetsController < ApplicationController

  def index
    @tweet = Tweet.all
    # @user = User.all.order("id ASC").limit(1)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.create(tweet_params)
    redirect_to tweets_path
  end

  def show
    @tweets = Tweet.find(params[:id])
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(profile_params)
    redirect_to tweets_path
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    if @tweet.user_id == current_user.id
      @tweet.destroy
    end
    redirect_to tweets_path
  end


  private
  def tweet_params
    params.require(:tweet).permit(:image, :text).merge(user_id: current_user.id)
  end

  def profile_params
    params.require(:user).permit(:nickname ,:image, :explain)
  end
end
