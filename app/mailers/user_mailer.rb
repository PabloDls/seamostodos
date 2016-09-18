class UserMailer < ApplicationMailer

	default from: "info@noxu.mx"

	def contact_email(name, email, tel, body)
		@name = name
		@email = email
		@tel = tel
		@body = body
		mail(to: "pablodls96@gmail.com", subject: "Contacto Página Seamos Todos")
	end
end
