// ignore_for_file: not_initialized_non_nullable_instance_field

import 'package:pigeon/pigeon.dart';

class FormatRequest {
  String phone;
  String region;
}

class FormatResponse {
  String formatted;
}

class ApiCountryWithPhoneCode {
  String phoneCode;
  String countryCode;
  String exampleNumberMobileNational;
  String exampleNumberFixedLineNational;
  String phoneMaskMobileNational;
  String phoneMaskFixedLineNational;
  String exampleNumberMobileInternational;
  String exampleNumberFixedLineInternational;
  String phoneMaskMobileInternational;
  String phoneMaskFixedLineInternational;
  String countryName;
}

class GetAllSupportedRegionsReponse {
  /// Workaround for https://github.com/flutter/flutter/issues/88987
  ApiCountryWithPhoneCode _; // ignore: unused_field
  List<ApiCountryWithPhoneCode?>? countries;
}

@HostApi()
abstract class FlutterLibPhoneNumberApi {
  @async
  FormatResponse format(FormatRequest request);

  @async
  GetAllSupportedRegionsReponse getAllSupportedRegions();
}
