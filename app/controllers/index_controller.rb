class IndexController < ApplicationController
skip_before_action :verify_authenticity_token
HASH_INIT = {:email=>"defaut"}
	
	
	def effacer_inscription
		@profil=Inscription.find(params[:id])
		@profil.destroy
		redirect_to tous_path
	end

	def tous
	@lesinscrits=Inscription.all
		
	end
	
	def create
		if Inscription.exists?(email:inscription_params[:email])
			deja_inscrit=true
		
		else
	
			@profil=Inscription.new(inscription_params)
			@profil.save
			deja_inscrit=false
		end
		
		redirect_to index_index_path(:email => inscription_params[:email], :deja_inscrit=>deja_inscrit)
		
	end
	
	def index
		 if params[:email]
				@profil=params[:email]
		 else
		  		@profil="default"
		 end
		 
		 @deja_inscrit=params[:deja_inscrit]
	end
	
private

	def inscription_params
		params.require(:inscription).permit(:nom,:prenom, :etudiant, :email, :datenaissance)
	end
	
	
	
end
	

	


