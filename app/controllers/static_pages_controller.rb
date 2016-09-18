class StaticPagesController < ApplicationController

	def home
	end

	def nosotros
	end

	def comocontribuir
	end

	def programasocial
	end

	def contacto
	end

	def send_mail
		name = params[:name]
		email = params[:email]
		tel = params[:tel]
		body = params[:comments]

		unless email.blank? or body.blank?
			UserMailer.contact_email(name, email, tel, body).deliver_later
			flash[:mensaje_enviado] = "Agradecemos que nos hayas enviado tu mensaje. Nos pondremos en contacto lo antes posible"
		end
		redirect_to root_path
	end

end
