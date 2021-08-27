class CompaniesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]


  def index
    @companies = Company.order("created_at DESC")
  end

  def new
    @company = Company.new
  end

  def show
    @company = Company.find(params[:id])
    @comment = Comment.new
    @comments = @company.comments.includes(:user)
  end
  

end
