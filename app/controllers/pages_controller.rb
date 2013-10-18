class PagesController < ApplicationController
  def index(from, to)
    # write code here
  end

  def count(from, to)
    # write code here
  end

  private
  def user_params
    params..permit(:from, :to)
  end
end
