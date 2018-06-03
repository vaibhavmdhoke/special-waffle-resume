class ResumeParserController < ApplicationController


  def parser
    file = params[:file]
    if file.content_type != 'application/json'
      flash[:danger] = 'Only JSON file type supported'
      redirect_to root_path and return
    end
    begin
      @read_file_contents = JSON.parse file.tempfile.read
    rescue => e
      flash[:danger] = "Could Not Parse File, Error #{e}"
      redirect_to root_path
    end
  end

end
