class RemovebookController <ApplicationController
  def index
    @destroy_books = LibBook.all
  end
  def destroy
    @destroy_book = LibBook.find_by(id: params[:id])
    if @destroy_book&.destroy
      redirect_to dashboard_path, notice: "Sucessfully removed the book"
    else
      redirect_to dashboard_path, alert: "failed to remove sthe book"
    end
  end
end
