class AwardMailer < ActionMailer::Base
  default from: "exvetsailor@gmail.com"

  def award_email(award)
  	@award = award
  	mail(:to => 'Vishal Anand <vishal544@hotmail.com>', :subject => "Award from Learning Rails")
  end
end
