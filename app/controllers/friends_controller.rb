class FriendsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_friend, only: %i[edit update show destroy]
  before_action :set_query

  include Pagination
  FRIENDS_PER_PAGE = 12

  def index
    if @query
      search
    else
      all_friends
    end
  end

  def show; end

  def new
    @friend = Friend.new
  end

  def create
    @friend = current_user.friends.create(friend_params)
    if @friend.save
      redirect_to(
        @friend,
        notice: "#{@friend.first_name} #{@friend.last_name} was successfully created!"
      )
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @friend.update(friend_params)
      redirect_to(
        @friend,
        notice: "#{@friend.first_name} #{@friend.last_name} was successfully updated!"
      )
    else
      render :edit
    end
  end

  def destroy
    @friend.destroy
    redirect_to(
      root_path,
      status: :see_other,
      notice: "#{@friend.first_name} #{@friend.last_name} was successfully deleted!"
    )
  end

  private

  def set_friend
    @friend = Friend.find(params[:id])
  end

  def friend_params
    params.require(:friend).permit(:first_name, :last_name, :email, :phone, :twitter, :photo)
  end

  def page_params
    params.permit(:page).merge(per_page: FRIENDS_PER_PAGE)
  end

  def set_query
    @query = params[:query]
  end

  def search
    @pagination, @friends = paginate(
      collection: current_user.friends
      .where('first_name LIKE ? OR last_name LIKE ?', "%#{@query}%", "%#{@query}%")
      .order(created_at: :desc),
      params: page_params
    )
  end

  def all_friends
    @pagination, @friends = paginate(collection: current_user.friends.all.order(created_at: :desc), params: page_params)
  end
end
