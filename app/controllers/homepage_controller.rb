class HomepageController < ApplicationController
  def index

    @comments = Comment.all.order('created_at DESC')
  end

  def create
    Comment.create!(
        content:  params[:commentaire]
    )

    redirect_to homepage_index_path
  end
end