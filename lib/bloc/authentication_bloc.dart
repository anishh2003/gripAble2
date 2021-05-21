import 'dart:async';

// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

import 'authentication.dart';

// part 'authentication_event.dart';
// part 'authentication_state.dart';

// class AuthenticationBloc
//     extends Bloc<AuthenticationEvent, AuthenticationState> {
//   final UserRepository userRepository;

//   // AuthenticationBloc(this.userRepository) : assert(userRepository != null);
//   AuthenticationBloc(this.userRepository) : super(AuthenticationUninitialized());

//   // @override
//   // AuthenticationState get initialState => AuthenticationUninitialized();

//   @override
//   Stream<AuthenticationState> mapEventToState(
//     AuthenticationState currentState,
//     AuthenticationEvent event,
//   ) async* {
//     if (event is AppStarted) {
//       final bool hasToken = await userRepository.hasToken();

//       if (hasToken) {
//         yield AuthenticationAuthenticated();
//       } else {
//         yield AuthenticationUnauthenticated();
//       }
//     }

//     if (event is LoggedIn) {
//       yield AuthenticationLoading();
//       await userRepository.persistToken(event.token);
//       yield AuthenticationAuthenticated();
//     }

//     if (event is LoggedOut) {
//       yield AuthenticationLoading();
//       await userRepository.deleteToken();
//       yield AuthenticationUnauthenticated();
//     }
//   }
// }

// class AuthenticationBloc
//     extends Bloc<AuthenticationEvent, AuthenticationState> {
//   AuthenticationBloc() : super(AuthenticationInitial());

//   @override
//   Stream<AuthenticationState> mapEventToState(
//     AuthenticationEvent event,
//   ) async* {
//     //yield CheckingAutherntication();
//     if (event is Login) {
//       yield LoginAuthentication();
//     } else if (event is Register) {
//       yield RegisterAuthentication();
//     }
//   }
// }
