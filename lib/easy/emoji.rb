require "easy/emoji/engine"
module EasyEmoji
  extend self
  def images_path
    File.expand_path("../../../images", __FILE__)
  end
end