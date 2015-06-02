class WelcomeController < ApplicationController
  skip_before_filter :authenticate_user!
  layout 'welcome'
  def index
  end

  def download_resume
    send_file(
      "#{Rails.root}/public/resume.pdf",
      filename: "Resume-CatalinMititiuc.pdf",
      type: "application/pdf"
    )
  end
end
