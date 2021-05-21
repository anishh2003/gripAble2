import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RepsScreen extends StatefulWidget {
  static const String id = 'reps_screen';
  @override
  _RepsScreenState createState() => _RepsScreenState();
}

class _RepsScreenState extends State<RepsScreen> {
  int counter1 = 0;
  int counter2 = 1;
  int counter3 = 2;
  int counter4 = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
                //Implement logout functionality
              }),
        ],
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button('flexion_extension.svg', counter1),
                  Button('grip_release.svg', counter2),
                  Button('pronation_supination.svg', counter3),
                  Button('ulnar_radial_deviation.svg', counter4),
                ],
              ),
              // Text('Reps this session :')
            ],
          ),
        ),
      ),
    );
  }
}

class Button extends StatefulWidget {
  String image;
  int counter;

  Button(this.image, this.counter);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              widget.counter++;
              print(widget.counter);
            });
          },
          child: SvgPicture.asset(
            'asset/${widget.image}',
            fit: BoxFit.contain,
            width: 80.0,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(widget.counter.toString()),
      ],
    );
  }
}
