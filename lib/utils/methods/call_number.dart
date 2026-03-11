import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

Future<bool> callNumber(String number) async {
  return await FlutterPhoneDirectCaller.callNumber(number) ?? false;
}
