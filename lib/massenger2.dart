import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'massenger1.dart';
import 'massenger3.dart';
import'package:messnger_sample/layout/buttonbar.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {

  var phonenumber = TextEditingController();
  var password= TextEditingController();

  Map <int,List> logininfo =
    {
    1:['kholousnashaat32@gmail.com','pass32pass','noneed'],
    2:['kholoudnashaat50@gmail.com','pass50pass','noneed']
    };
 /* validation(){
     for (int i=0; i<logininfo.length;i++){
        var x=logininfo.values.toList;
          if(
            x [i][0] == phonenumber
                && 
            x [i][1] == password
            ){
                Navigator.push(context, MaterialPageRoute(builder: ((context) => MyWidget())));
              }
          else{
            print('INVALID EMAIL OR PASSWORD');
          }
                      
                   };}*/

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: [
            Text(
              "Sign up with Messenger",
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.w100),
            ),
            SizedBox(
              height: 60,
            ),
            TextFormField(
              controller: phonenumber,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "phone number",
                  hintText: "01084028475",
                  prefixIcon: Icon(Icons.phone)),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: password,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "hnfoeyf",
                  prefixIcon: Icon(Icons.password),
                )),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: (() {
                 setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => MyWidget())));
                 });
                }),
                child: Text("Continue")),
            SizedBox(
              height: 20,
            ),
            Text("By continuing,you are indicating that you agree to"),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("the "),
                  TextButton(onPressed: (() {}), child: Text("Privacy Policy")),
                  Text(" and "),
                  TextButton(onPressed: (() {}), child: Text("Terms")),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            TextButton.icon(
                onPressed: (() {}),
                icon: Icon(Icons.facebook),
                label: Text("Log in with Facebook"))
          ],
        ),
      ),
    )));
    
  }
}