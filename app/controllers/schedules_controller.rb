class SchedulesController < ApplicationController
  
  def index
    @schedules = Schedule.order(:endday)
  end
  
  def new
    @schedules = Schedule.new
  end
 
  def create
    @schedules = Schedule.new(params.require(:schedule).permit( :title, :startday, :endday, :allday, :note))
     if @schedules.save
       flash[:notice] = "スケジュールを新規登録しました"
       redirect_to :schedules
     else
       flash[:register] = "スケジュールを登録できませんでした"
       render "new"
     end
  end
 
  def show
    @schedules = Schedule.find(params[:id])
  end
 
  def edit
     @schedules = Schedule.find(params[:id])
  end
 
  def update
    @schedules = Schedule.find(params[:id])
     if @schedules.update(params.require(:schedule).permit( :title, :startday, :endday, :allday, :note))
       flash[:notice] = "スケジュールを更新しました"
       redirect_to :schedules
     else
       flash[:renewal] = "スケジュールを編集できませんでした"
       render "edit"
     end
  end
 
  def destroy
    @schedules = Schedule.find(params[:id])
    @schedules.destroy
    flash[:register] = "スケジュールを削除しました"
    redirect_to :schedules
  end
   
end
