source "https://rubygems.org"

gem "fastlane"
gem "trainer"
gem "overcommit"
gem "xcpretty-json-formatter"
gem "cocoapods"
gem "danger"
gem "danger-xcodebuild"
gem "danger-swiftlint"
gem "danger-xcov"
gem "danger-junit"
gem "danger-xcode_summary"
gem "danger-bq_helpers", git: "https://github.com/bq/danger-bq_helpers"

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval_gemfile('./fastlane/Pluginfile') if File.exist?(plugins_path)
