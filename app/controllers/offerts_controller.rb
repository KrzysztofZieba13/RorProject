class OffertsController < ApplicationController
  def index
    @offerts = Offert.all
  end

  def show
    @offert = Offert.find(params[:id])
  end

  def new
    @offert = Offert.new 
  end

  def create
    @offert = Offert.new(offert_params)
    @offert.owner_name = current_user.name if current_user.present?

    if @offert.save
      redirect_to @offert
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @offert = Offert.find(params[:id])
  end

  def update
    @offert = Offert.find(params[:id])

    if @offert.update(offert_params)
      redirect_to @offert
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def add_cv
    @offert = Offert.find(params[:id])
    @offert.cv.attach(params[:offert][:cv])
    flash[:notice] = 'CV zostało dodane.'

    redirect_to @offert
  end

  def download_cv
    @offert = Offert.find(params[:id])
    cv = @offert.cv.find(params[:cv_id])
    send_data cv.download, filename: cv.filename.to_s, type: cv.content_type
  end

  def delete_cv
    @offert = Offert.find(params[:id])
    @cv = @offert.cv.find(params[:cv_id])
    @cv.purge
    redirect_to @offert
  end

  def destroy
    @offert = Offert.find(params[:id])
    @offert.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def offert_params
      params.require(:offert).permit(:title, :body, :phone_number, :cv)
    end

end
