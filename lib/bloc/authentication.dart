// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:gripable_test1/auth_model.dart';
//
// class UserRepository {
//   Future<String> authenticate({
//     @required String? username,
//     @required String? password,
//   }) async {
//     await Future.delayed(Duration(seconds: 1));
//     return 'token';
//   }
//
//   Future<void> deleteToken() async {
//     /// delete from keystore/keychain
//     await Future.delayed(Duration(seconds: 1));
//     return;
//   }
//
//   Future<void> persistToken(String token) async {
//     /// write to keystore/keychain
//     await Future.delayed(Duration(seconds: 1));
//     return;
//   }
//
//   Future<bool> hasToken() async {
//     /// read from keystore/keychain
//     await Future.delayed(Duration(seconds: 1));
//     return false;
//   }
// }
//
// // abstract class AuthenticationRepository {}
//
// // class UserRepository implements AuthenticationRepository {
//
// //   final _auth = FirebaseAuth.instance;
//
// //     @override
// //   Future<AuthModel> fetchWeather(String cityName) {
// //     // Simulate network delay
// //     return Future.delayed(
// //       Duration(seconds: 1),
// //       () {
// //         final random = Random();
//
// //         // Simulate some network error
// //         if (random.nextBool()) {
// //           throw NetworkError();
// //         }
//
// //         // Since we're inside a fake repository, we need to cache the temperature
// //         // in order to have the same one returned in for the detailed weather
// //         cachedTempCelsius = 20 + random.nextInt(15) + random.nextDouble();
//
// //         // Return "fetched" weather
// //         return AuthModel(
// //           userName: _auth.us,
// //           // Temperature between 20 and 35.99
// //           password: cachedTempCelsius,
// //         );
//
//
// //  // try {
// //             //   final newUser = await _auth.signInWithEmailAndPassword(
// //             //       email: email, password: password);
// //             //   if (newUser != null) {
// //             //     Navigator.pushNamed(context, OverViewScreen.id);
// //             //   }
// //             // } catch (e) {
// //             //   print(e);
// //             // }
//
// //       },
// //     );
// //   }
// // }
//
// // class NetworkError extends Error {}
