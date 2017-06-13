update:
	@carthage bootstrap --platform iOS
tests:
	@xcodebuild -project "tableViewTemplate.xcodeproj" -scheme "tableViewTemplate" -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 5s'  clean build test
