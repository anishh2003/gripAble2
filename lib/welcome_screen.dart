import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gripable_test1/bloc/authentication_bloc.dart';
import 'package:gripable_test1/overview_screen.dart';
import 'login_screen.dart';
import 'registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
            SizedBox(
              height: 48.0,
            ),
            ElevatedButton(
              child: Text('Log In'),
              style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent),
              onPressed: () {
                // BlocProvider.value(
                //   value: BlocProvider.of(context),
                //   child: LoginScreen(),
                // );
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                child: Text('Register'),
                style:
                    ElevatedButton.styleFrom(primary: Colors.lightBlueAccent),
                onPressed: () {
                  //    BlocProvider.value(
                  //   value: BlocProvider.of(context),
                  //   child: RegistrationScreen(),
                  // );
                  Navigator.pushNamed(context, RegistrationScreen.id);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
