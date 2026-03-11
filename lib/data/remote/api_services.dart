import 'dart:convert';
import 'package:http/http.dart';

class APIServices {
  // static const baseUrl = 'https://medone-backend-4ru7.onrender.com';
  static const baseUrl = 'https://new-api.dutydoctor.com';
  // static const baseUrl = 'http://192.168.0.119:5000';

  static Future<Response> getAPIWithoutToken(String url) async {
    final response = await get(Uri.parse(baseUrl + url), headers: {
      'Content-type': 'application/json;charset=utf-8',
    }).timeout(
      const Duration(seconds: 8),
      onTimeout: () {
        throw 'Server is taking too long to respond!Please try again.';
      },
    );
    return response;
  }

  static Future<Response> getAPIWithToken(String url, String token,
      [Map<String, dynamic> header = const {}]) async {
    final response = await get(Uri.parse(baseUrl + url), headers: {
      'Content-type': 'application/json;charset=utf-8',
      'authorization': 'Bearer $token',
      ...header
    }).timeout(
      const Duration(seconds: 8),
      onTimeout: () {
        throw 'Server is taking too long to respond!Please try again.';
      },
    );
    return response;
  }

  static Future<Response> postAPIWithoutToken(String url, dynamic body,
      [String? cookies]) async {
    final response = await post(Uri.parse(baseUrl + url),
            headers: {
              'Cookie': cookies ?? '',
              'Content-type': 'application/json;charset=utf-8',
            },
            body: jsonEncode(body))
        .timeout(
      const Duration(seconds: 8),
      onTimeout: () {
        throw 'Server is taking too long to respond!Please try again.';
      },
    );
    return response;
  }

  static Future<Response> postWithToken(
      String url, String token, dynamic body) async {
    final response = await post(Uri.parse(baseUrl + url),
            headers: {
              'Content-type': 'application/json;charset=utf-8',
              'authorization': 'Bearer $token'
            },
            body: jsonEncode(body))
        .timeout(
      const Duration(seconds: 8),
      onTimeout: () {
        throw 'Server is taking too long to respond!Please try again.';
      },
    );
    return response;
  }

  static Future<Response> patchWithoutToken(String url, dynamic body) async {
    final response = await patch(Uri.parse(baseUrl + url),
            headers: {
              'Content-type': 'application/json;charset=utf-8',
            },
            body: jsonEncode(body))
        .timeout(
      const Duration(seconds: 8),
      onTimeout: () {
        throw 'Server is taking too long to respond!Please try again.';
      },
    );
    return response;
  }

  static Future<Response> patchWithToken(
      String url, String token, dynamic body) async {
    final response = await patch(Uri.parse(baseUrl + url),
            headers: {
              'Content-type': 'application/json;charset=utf-8',
              'authorization': 'Bearer $token'
            },
            body: jsonEncode(body))
        .timeout(
      const Duration(seconds: 8),
      onTimeout: () {
        throw 'Server is taking too long to respond!Please try again.';
      },
    );
    return response;
  }

  static Future<Response> deleteAPIWithToken(String url, String token) async {
    final response = await delete(
      Uri.parse(baseUrl + url),
      headers: {
        'Content-type': 'application/json;charset=utf-8',
        'authorization': 'Bearer $token'
      },
    ).timeout(
      const Duration(seconds: 8),
      onTimeout: () {
        throw 'Server is taking too long to respond!Please try again.';
      },
    );
    return response;
  }

  static Future<Response> deleteAPIWithoutToken(String url) async {
    final response = await delete(
      Uri.parse(baseUrl + url),
      headers: {
        'Content-type': 'application/json;charset=utf-8',
      },
    ).timeout(
      const Duration(seconds: 8),
      onTimeout: () {
        throw 'Server is taking too long to respond!Please try again.';
      },
    );
    return response;
  }

  static Future<Response> getPinCodeDetails(String pinCode) async {
    final response = await get(
        Uri.parse('http://www.postalpincode.in/api/pincode/$pinCode'),
        headers: {
          'Content-type': 'application/json;charset=utf-8',
        }).timeout(
      const Duration(seconds: 8),
      onTimeout: () {
        throw 'Server is taking too long to respond!Please try again.';
      },
    );
    return response;
  }

  static Future<Response> getIFSCCodeDetails(String ifscCode) async {
    final response =
        await get(Uri.parse('https://ifsc.razorpay.com/$ifscCode'), headers: {
      'Content-type': 'application/json;charset=utf-8',
    }).timeout(
      const Duration(seconds: 8),
      onTimeout: () {
        throw 'Server is taking too long to respond!Please try again.';
      },
    );
    return response;
  }
}
