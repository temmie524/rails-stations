class SheetsController < ApplicationController
  def index
    @sheets = Sheet.all
  end

  private
  def sheet_params
    params.require(:sheet).permit(:id, :colums, :row )
  end           
end
