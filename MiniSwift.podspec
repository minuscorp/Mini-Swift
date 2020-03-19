# frozen_string_literal: true

Pod::Spec.new do |s|
  s.name             = 'MiniSwift'
  s.version          = '1.0.0'
  s.swift_version    = '5.0'
  s.summary          = 'A minimal Flux-Redux architecture designed for Swift applications.'

  s.description      = <<~DESC
  A minimal Flux-Redux architecture designed for Swift applications.

    Mini is built to make Swift a first class citizen in Redux-Flux architecture for macOS, iOS and tvOS.
    With Mini, you can create a thread-safe application with a predictable unidirectional data flow,
    focusing on what really matters: build awesome applications.
  DESC

  s.homepage         = 'https://github.com/minuscorp/Mini-Swift'
  s.license          = { type: 'APACHE', file: 'LICENSE' }
  s.author           = { 'jorge.revuelta' => 'minuscorp@gmail.com' }
  s.source           = { git: 'https://github.com/minuscorp/Mini-Swift.git', tag: "v#{s.version}" }
  s.social_media_url = 'https://twitter.com/minuscorp'

  s.ios.deployment_target = '11.0'

  s.osx.deployment_target = '10.13'

  s.tvos.deployment_target = '11.0'

  s.frameworks = 'Foundation'

  s.dependency('RxSwift', '~> 5')
  s.dependency('SwiftNIOConcurrencyHelpers', '~> 2.10.0')

  s.default_subspec = 'Core'

  s.module_name = 'Mini'

  s.subspec('Core') do |ss|
    ss.ios.source_files = 'Sources/Mini/**/*.swift'

    ss.osx.source_files = 'Sources/Mini/**/*.swift'

    ss.tvos.source_files = 'Sources/Mini/**/*.swift'
  end

  s.subspec('Log') do |ss|
    ss.ios.dependency('MiniSwift/Core')
    ss.ios.source_files = 'Sources/LoggingService/*.swift'

    ss.osx.dependency('MiniSwift/Core')
    ss.osx.source_files = 'Sources/LoggingService/*.swift'

    ss.tvos.dependency('MiniSwift/Core')
    ss.tvos.source_files = 'Sources/LoggingService/*.swift'
  end

  s.subspec('Test') do |ss|
    ss.ios.dependency('MiniSwift/Core')
    ss.ios.source_files = 'Sources/TestMiddleware/*.swift'

    ss.osx.dependency('MiniSwift/Core')
    ss.osx.source_files = 'Sources/TestMiddleware/*.swift'

    ss.tvos.dependency('MiniSwift/Core')
    ss.tvos.source_files = 'Sources/TestMiddleware/*.swift'
  end
  
  s.subspec('MiniTasks') do |ss|
    ss.ios.dependency('MiniSwift/Core')
    ss.ios.source_files = 'Sources/MiniTasks/*.swift'

    ss.osx.dependency('MiniSwift/Core')
    ss.osx.source_files = 'Sources/MiniTasks/*.swift'

    ss.tvos.dependency('MiniSwift/Core')
    ss.tvos.source_files = 'Sources/MiniTasks/*.swift'
  end
  
  s.subspec('MiniPromises') do |ss|
    ss.ios.dependency('MiniSwift/Core')
    ss.ios.source_files = 'Sources/MiniPromises/*.swift'

    ss.osx.dependency('MiniSwift/Core')
    ss.osx.source_files = 'Sources/MiniPromises/*.swift'

    ss.tvos.dependency('MiniSwift/Core')
    ss.tvos.source_files = 'Sources/MiniPromises/*.swift'
  end

  s.preserve_paths = ['Templates/*.stencil']
end
