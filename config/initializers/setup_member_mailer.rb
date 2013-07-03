require 'development_mail_interceptor'
ActionMailer::Base.smtp_settings = {
	:address              => "smtp.gmail.com",
	:port                 => 587,
	:domain				  => "clubnovus.dk",
	:user_name			  => "michelhansen75@gmail.com",
	:password 			  => "xheroM178?",
	:authentication		  => "plain",
	:enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "localhost:3000"
ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
