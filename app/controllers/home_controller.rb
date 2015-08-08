class HomeController < ApplicationController
  def index
    path = "#{Rails.public_path}/barcode.jpg"
    jpeg = File.binread(path)
    z = ZBar::Image.from_jpeg(jpeg)
    r = z.process
    @barcode = r.first.data
  end
end
