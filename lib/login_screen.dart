// import 'package:flutter/material.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'authentication.dart';
// import 'bloc/authentication_bloc.dart';

// class LoginPage extends StatefulWidget {
//   final UserRepository userRepository;

//   LoginPage({Key key, @required this.userRepository})
//       : assert(userRepository != null),
//         super(key: key);

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   LoginBloc _loginBloc;
//   AuthenticationBloc _authenticationBloc;

//   UserRepository get _userRepository => widget.userRepository;

//   @override
//   void initState() {
//     _authenticationBloc = BlocProvider.of<AuthenticationBloc>(context);
//     _loginBloc = LoginBloc(
//       userRepository: _userRepository,
//       authenticationBloc: _authenticationBloc,
//     );
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//       ),
//       body: LoginForm(
//         authenticationBloc: _authenticationBloc,
//         loginBloc: _loginBloc,
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _loginBloc.dispose();
//     super.dispose();
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gripable_test1/overview_screen.dart';

import 'bloc/authentication_bloc.dart';
import 'constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Align(
              child: Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your email',
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your password.',
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            ElevatedButton(
              child: Text('Continue'),
              style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent),
              onPressed: () async {
                try {
                  final newUser = await _auth.signInWithEmailAndPassword(
                      email: email, password: password);
                  if (newUser != null) {
                    Navigator.pushNamed(context, OverViewScreen.id);
                  }
                } catch (e) {
                  print(e);
                }
              },
            ),
          ],
        ),
        // BlocBuilder<AuthenticationBloc, AuthenticationState>(
        //   builder: (context, state) {
        //     if (state is LoginAuthentication) {
        //       return buildColumnWithData(context , auth);
        //     } else {
        //       return buildColumnWithData();
        //     }
        //   },
        // ),
      ),
    );
  }
}
