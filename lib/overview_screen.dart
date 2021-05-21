import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gripable_test1/reps.dart';

final _firestore = FirebaseFirestore.instance;
var loggedInUser; //TODO : may need to change this

class OverViewScreen extends StatefulWidget {
  static const String id = 'overview_screen';
  @override
  _OverViewScreenState createState() => _OverViewScreenState();
}

class _OverViewScreenState extends State<OverViewScreen> {
  final messageTextController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  String messageText;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        //print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () async {
                await _auth.signOut();
                Navigator.pop(context);
                //Implement logout functionality
              }),
        ],
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MessagesStream(),
            Padding(
              padding: const EdgeInsets.only(left: 80.0, right: 40.0),
              child: ElevatedButton(
                child: Text('Do Reps'),
                style:
                    ElevatedButton.styleFrom(primary: Colors.lightBlueAccent),
                onPressed: () async {
                  Navigator.pushNamed(context, RepsScreen.id);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessagesStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: _firestore.collection('messages').snapshots(),
        builder: (context, snapshot) {
          List<Text> userData = [];
          if (!snapshot.hasData) {
            return CircularProgressIndicator(
              backgroundColor: Colors.lightBlueAccent,
            );
          }
          final messages = snapshot.data.docs;

          for (var message in messages) {
            final totalreps = message.data()['totalreps'];
            final username = message.data()['username'];
            // final totalreps = 1234;
            // final username = 'anish';

            final currentUser = loggedInUser.email;

            final messageWidget =
                Text('$username         total reps: $totalreps');
            userData.add(messageWidget);
          }
          return Expanded(
            child: ListView(
              reverse: true,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              children: userData,
            ),
          );
        });
  }
}
