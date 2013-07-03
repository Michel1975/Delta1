class MemberMailer < ActionMailer::Base
  default from: "michel@clubnovus.dk"

  def registration_confirmation(merchant, member)
  	@member = member
  	@merchant = merchant
  	attachments["404.html"] = File.read("#{Rails.root}/public/404.html")
  	mail(to: "#{member.name} <#{member.email}>", subject:"Velkommen som nyt medlem i Club Novus")
  end 
end
