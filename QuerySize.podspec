Pod::Spec.new do |s|
  s.name = 'QuerySize'
  s.version = '1.0.0'
  s.license = 'Apache 2.0'
  s.summary = 'A tasty bit of Swift to make writing device and/or screen size specific code.'
  s.homepage = 'https://github.com/robertjpayne/QuerySize'
  s.authors = { 'Robert Payne' => 'robertpayne@me.com' }
  s.social_media_url = 'http://twitter.com/robertjpayne'
  s.source = { :git => 'https://github.com/QuerySize/QuerySize.git', :tag => '1.0.0' }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'

  s.source_files = 'QuerySize.swift'

  s.requires_arc = true
end