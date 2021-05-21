// part of 'authentication_bloc.dart';
//
// abstract class AuthenticationEvent extends Equatable {
//   AuthenticationEvent([List props = const []]) : super(props);
// }
//
// class AppStarted extends AuthenticationEvent {
//   @override
//   String toString() => 'AppStarted';
//
//   @override
//   List<Object?> get props => [];
// }
//
// class LoggedIn extends AuthenticationEvent {
//   final String token;
//
//   LoggedIn({@required this.token}) : super([token]);
//
//   @override
//   String toString() => 'LoggedIn { token: $token }';
//
//   @override
//
//   List<Object?> get props => [];
// }
//
// class LoggedOut extends AuthenticationEvent {
//   @override
//   String toString() => 'LoggedOut';
//
//   @override
//   List<Object?> get props => [];
// }
//
// // abstract class AuthenticationEvent extends Equatable {
// //   const AuthenticationEvent();
//
// //   @override
// //   List<Object> get props => [];
// // }
//
// // class Login extends AuthenticationEvent {
// //   final String email;
// //   final String password;
//
// //   Login(this.email, this.password);
// //   @override
// //   List<Object> get props => [email,password];
// // }
//
// // class Register extends AuthenticationEvent {
// //   final String email;
// //   final String password;
//
// //   Register(this.email, this.password);
// //   @override
// //   List<Object> get props => [email,password];
// // }
