gen:
	flutter pub run pigeon \
	--input pigeons/messages.dart \
	--dart_out lib/src/gen/pigeon.dart \
	--objc_source_out ios/Classes/FlutterLibPhoneNumberApi.m \
	--objc_header_out ios/Classes/FlutterLibPhoneNumberApi.h