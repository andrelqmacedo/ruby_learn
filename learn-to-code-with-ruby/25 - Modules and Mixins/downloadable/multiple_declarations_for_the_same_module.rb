require_relative "low_quality"
require_relative "high_quality"

class Song
  include Downloadable
end

s1 = Song.new
p s1.download_high_quality
p s1.download_low_quality
