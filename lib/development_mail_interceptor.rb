require 'development_mail_interceptor'
class DevelopmentMailInterceptor
	def self.delivering_email(message)
		message.subject = "#{message.to} #{message.subject}"
		message.to = "michelhansen75@hotmail.com"		
	end
end