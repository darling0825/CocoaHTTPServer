Pod::Spec.new do |s|
  s.name                    = 'CocoaHTTPServer'
  s.version                 = '2.4'
  s.summary                 = 'A small, lightweight, embeddable HTTP server for Mac OS X or iOS applications.'

  s.description             = <<-DESC
                            A small, lightweight, embeddable HTTP server for Mac OS X or iOS applications.
                            DESC

  s.homepage                = 'https://github.com/darling0825/CocoaHTTPServer.git'
  s.license                 = { :type => 'MIT', :file => 'LICENSE' }
  s.author                  = { "darling0825" => "darling0825@163.com" }
  s.ios.deployment_target   = '7.0'
  s.osx.deployment_target   = '10.9'
  s.source                  = { :git => 'https://github.com/darling0825/CocoaHTTPServer.git', :tag => s.version, :submodules => true }
  s.public_header_files     = '{Core,Extensions,Vendor/CocoaAsyncSocket}/**/*.h'
  s.source_files            = '{Core,Extensions,Vendor/CocoaAsyncSocket}/**/*.{h,m}'
  s.ios.frameworks          = 'CFNetwork','Security'
  s.osx.frameworks          = 'CoreServices','Security'
  s.requires_arc            = true
  s.dependency              'CocoaLumberjack'
  s.libraries               = 'xml2'
  s.xcconfig                = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
end
