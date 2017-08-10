class Video < ApplicationRecord
	has_attached_file :attachment, styles: {
    medium: {geometry: "640x480", format:'mp4'},
    thumb: {geometry: "100x100#", format:'jpg', time: 10}
    }, processors: [:transcoder]

  validates_attachment_content_type :attachment, content_type: /\Avideo\/.*\Z/
  validates_attachment :attachment, size: {less_than: 130.megabytes}	
end
