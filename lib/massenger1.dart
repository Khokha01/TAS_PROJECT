import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'massenger2.dart';
import 'massenger3.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.messenger_outline_rounded,
                size: 100,
                color: Colors.blue,
              ),
              Text(
                "Welcome to ",
                style: TextStyle(fontSize: 60),
              ),
              Text(
                "Messenger",
                style: TextStyle(fontSize: 60),
              ),
              SizedBox(
                height: 80,
                width: 60,
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton.icon(
                    onPressed: (() {}),
                    icon: Icon(Icons.facebook),
                    label: Text("Login with facebook")),
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => screen2())));
                    }),
                    child: Text("Sign up with messenger")),
              )
            ],
          ),
        ),
      )),
    );
  }
}