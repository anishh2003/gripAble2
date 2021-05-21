// import 'package:flutter/material.dart';

// import 'package:bloc/bloc.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:gripable_test1/authentication.dart';
// import 'package:gripable_test1/welcome_screen.dart';
// import 'package:user_repository/user_repository.dart';

// import 'bloc/authentication_bloc.dart';
// import 'overview_screen.dart';

// // class SimpleBlocDelegate extends BlocDelegate {
// //   @override
// //   void onTransition(Transition transition) {
// //     print(transition.toString());
// //   }
// // }

// void main() {
//   BlocSupervisor().delegate = SimpleBlocDelegate();
//   runApp(App(userRepository: UserRepository()));
// }

// class App extends StatefulWidget {
//   final UserRepository userRepository;

//   App({Key key, @required this.userRepository}) : super(key: key);

//   @override
//   State<App> createState() => _AppState();
// }

// class _AppState extends State<App> {
//   AuthenticationBloc authenticationBloc;
//   UserRepository get userRepository => widget.userRepository;

//   @override
//   void initState() {
//     authenticationBloc = AuthenticationBloc(userRepository: userRepository);
//     authenticationBloc.dispatch(AppStarted());
//     super.initState();
//   }

//   @override
//   void dispose() {
//     authenticationBloc.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {

//     return BlocProvider(
//       create: (BuildContext context) => AuthenticationBloc(UserRepository()),
//       child: MaterialApp(
//         home: BlocBuilder<AuthenticationEvent, AuthenticationState>(
//           builder: (BuildContext context, AuthenticationState state) {
//             if (state is AuthenticationUninitialized) {
//               return WelcomeScreen();
//             }
//             else if (state is AuthenticationUnauthenticated) {
//               return LoginPage(userRepository: userRepository);
//             }
//             else if (state is AuthenticationAuthenticated) {
//               return OverViewScreen();
//             }
//             else if (state is AuthenticationLoading) {
//               return LoadingIndicator();
//             }
//           },
//         ),
//       ),

//     );
//   }
// }

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gripable_test1/registration_screen.dart';
import 'package:gripable_test1/reps.dart';
import 'package:gripable_test1/welcome_screen.dart';

import 'bloc/authentication_bloc.dart';
import 'login_screen.dart';
import 'overview_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        OverViewScreen.id: (context) => OverViewScreen(),
        RepsScreen.id: (context) => RepsScreen(),
      },
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: BlocProvider(
//         create: (BuildContext context) => AuthenticationBloc(),
//         child: WelcomeScreen()),
//     );
//   }
// }
