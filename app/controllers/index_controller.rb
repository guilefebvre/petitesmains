class IndexController < ApplicationController
skip_before_action :verify_authenticity_token


	def accueil
	   @profil= Inscription.find_or_initialize_by(email: 'aa@aa.com')

	end
	
	def create
		@profil=Inscription.new(inscription_params)
		@profil.save
		
	
	end
	
	
private

	def inscription_params
		params.require(:inscription).permit(:nom,:prenom, :etudiant, :email, :datenaissance)
	end
	
end
	

	
	

