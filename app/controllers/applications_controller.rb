class ApplicationsController < ApplicationController
  


  def index
    @applications = Application.where(user_id: current_user.id)
  end

  def new
    @application = Application.new
    @company_id = params[:x]
  end

  def create
    @application = Application.new(application_params)
    @application.user_id = current_user.id
    if @application.save
      redirect_to applications_path,notice: "送信完了しました"
    else
      render :new, alert: "送信できませんでした"
    end
  end
  
    
  def edit
    @application = Application.find(params[:id])
  end

  def update
    @application = Application.new(application_params)
    if @application.update
      redirect_to applications_path,notice: "更新完了しました"
    else
      render :new, alert: "更新できませんでした"
    end
  end



  private
  def application_params
    params.require(:application).permit(:reason,:title,:company_id)
  end

end
