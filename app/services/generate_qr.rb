# frozen_string_literal: true

# Service acts as an executable for crafting a qr code from a meeting id

# Class defines the parameters for qr code
class GenerateQr < ApplicationService
  attr_reader :meeting

  def initialize(meeting)
    @meeting = meeting
  end

  include Rails.application.routes.url_helpers

  require 'rqrcode'

  def call
    qr_url = url_for(controller: 'meeting_participations',
                     action: 'new',
                     id: @meeting.meeting_name,
                     only_path: false,
                     host: 'tamu-nutrition-app.herokuapp.com',
                     protocol: 'https')
                    #  source: 'from_qr')

    qrcode = RQRCode::QRCode.new(qr_url)

    png = qrcode.as_png(
      bit_depth: 1,
      border_modules: 4,
      color_mode: ChunkyPNG::COLOR_GRAYSCALE,
      color: 'black',
      file: nil,
      fill: 'white',
      module_px_size: 6,
      resize_exactly_to: false,
      resize_gte_to: false,
      size: 360
    )

    image_name = SecureRandom.hex

    IO.binwrite("tmp/#{image_name}.png", png.to_s)

    blob = ActiveStorage::Blob.create_after_upload!(
      io: File.open("tmp/#{image_name}.png"),
      filename: image_name,
      content_type: 'png'
    )

    meeting.qr_code.attach(blob)
  end
end
