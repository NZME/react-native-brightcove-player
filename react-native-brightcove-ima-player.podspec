require 'json'
package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                = "react-native-brightcove-ima-player"
  s.version             = package["version"]
  s.description         = package["description"]
  s.summary             = package["description"]
  s.homepage            = "https://github.com/NZME/react-native-brightcove-player"
  s.license             = package['license']
  s.authors             = "Ryota Mannari"
  s.platform            = :ios, "10.0"

  s.source              = { :git => "https://github.com/NZME/react-native-brightcove-player.git" }
  s.source_files        = 'ios/**/*.{h,m}'

  s.dependency          'React'
  s.dependency          'Brightcove-Player-IMA', '6.7.0'
  s.static_framework    = false
end
