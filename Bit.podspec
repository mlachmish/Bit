Pod::Spec.new do |s|
  s.name             = 'Bit'
  s.version          = '1.0.1'
  s.summary          = 'Bit operation library in Swift.'

  s.description      = <<-DESC
A handy tool for anyone messing with bits and bytes.
                       DESC

  s.homepage         = 'https://github.com/mlachmish/Bit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Matan Lachmish' => 'mlachmish@gmail.com' }
  s.source           = { :git => 'https://github.com/mlachmish/Bit.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/mlachmish'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Bit/**/*'
  s.requires_arc = true

end
