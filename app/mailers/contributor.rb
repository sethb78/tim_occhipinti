class Contributor < ActionMailer::Base
  default from: "sethb78@gmail.com"

  def contributor_information(contributor)
    @contributor = contributor
    mail to: contributor.email, subject: "Contribution made to Tim Occhipinti by #{contributor.name}"
  end
end

