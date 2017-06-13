update:
	@carthage bootstrap --platform iOS
tests:
	@xcodebuild -project "basicQuickTemplate.xcodeproj" -scheme "basicQuickTemplate" -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 5s'  clean build test
