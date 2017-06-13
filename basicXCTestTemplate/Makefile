update:
	@carthage bootstrap --platform iOS
tests:
	@xcodebuild -project "basicXCTestTemplate.xcodeproj" -scheme "basicXCTestTemplate" -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 5s'  clean build test
