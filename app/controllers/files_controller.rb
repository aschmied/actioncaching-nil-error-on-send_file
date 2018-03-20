class FilesController < ApplicationController
  caches_action :index

  def index
    respond_to do |format|
      format.zip { send_zip }
    end
  end

  def send_zip
    send_file(Rails.root.join("test_file.zip"), type: "application/zip", disposition: "attachment", filename: "download.zip")
  end
end
