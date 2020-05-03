Pod::Spec.new do |spec|
  spec.name         = "FluentBuilder"
  spec.version      = "0.2.0"
  spec.summary      = "Generic fluent interface builder."

  spec.description  = <<-DESC
                      Generic fluent interface builder.
                    DESC

  spec.homepage     = "https://github.com/hectr/FluentBuilder"

  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = "hectr"
  spec.social_media_url   = "https://twitter.com/elnetus"

  spec.source       = { :git => "https://github.com/hectr/FluentBuilder.git", :tag => "#{spec.version}" }

  spec.ios.deployment_target = "8.0"
  spec.osx.deployment_target = "10.10"
  spec.tvos.deployment_target = "9.0"
  spec.watchos.deployment_target = "2.0"
  spec.swift_version = "5.2"
  spec.source_files  = "Sources/FluentBuilder/**/*.swift"

  spec.dependency 'Features'
end
