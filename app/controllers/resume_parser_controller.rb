class ResumeParserController < ApplicationController

	def index

	end

	def parser
		# file = params[:file]
		# @read_file_contents = JSON.parse file.tempfile.read
		@read_file_contents = JSON.parse File.read("resume.json")
	end

end
