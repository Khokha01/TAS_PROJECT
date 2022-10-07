import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:messnger_sample/modules/calls.dart';
import 'package:messnger_sample/modules/people.dart';
import 'package:messnger_sample/modules/stories.dart';
import 'massenger1.dart';
import 'massenger2.dart';
import'package:messnger_sample/layout/buttonbar.dart';

class screen3 extends StatefulWidget {
  const screen3({super.key});

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Center(
                  child: Container(
                    height: 100,
                    width: 900,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          hintText: "           Search", prefix: Icon(Icons.search),
                          ),
                    ),
                  ),
                ),
                new_methood("Engi Hesham", "Ana nazla delw2ty aho"),
                new_methood("Kholoud Nashaat", "3amla eIh"),
                new_methood("Nada Shafiee ", "Kont nayma w lesa sahya w hnam tane"),
                new_methood("Mai Moustafa", "Etfo 3aleky"),
                new_methood("Maryam Tarek", "kont fe event"),
                new_methood("Ahmed Kamel", "khlast lecture w mshet 3la tol"),
                new_methood("Mariam Abdelnaser", "Ana zeh2t"),
                new_methood("Layla Haitham", " ana msh tay2a nouran"),
                new_methood("Nouran", "Ana m3rfsh layla malha begd"),
              ],
              
            ),
          ),
        ),
        
       
        );
  }

  ListTile new_methood(String Fullname, String Chat) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.add_a_photo),
      ),
      title: Text(Fullname),
      subtitle: Text(Chat),
      onTap: () {},
    );
  }
}