Rails.application.routes.draw do
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root to: 'resume_parser#index'
	post '/parse' =>  'resume_parser#parser'

end
