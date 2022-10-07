import 'package:flutter/material.dart';
import 'package:messnger_sample/massenger3.dart';
import 'package:messnger_sample/modules/calls.dart';
import 'package:messnger_sample/modules/people.dart';
import 'package:messnger_sample/modules/stories.dart';
class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
   List < Widget> screens=
  [
  screen3(),
  Screen6(),
  screen4(),
  screen5()
  ];
  int idx =0;
  List <String> titels=[
'Chats','Calls','people','stories'
  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          /*leading: CircleAvatar(
            child: Icon(Icons.add_a_photo,color: Colors.black,),backgroundColor:Color.fromARGB(255, 214, 214, 214) ,
            
          ),*/
          title: Text(titels[idx]),
          actions: [
            CircleAvatar(
                child: Icon(Icons.facebook,color: Colors.black,), backgroundColor: Color.fromARGB(255, 214, 214, 214),),
            SizedBox(
              width: 15,
            ),
            CircleAvatar(
              child: Icon(Icons.edit,color: Colors.black,),backgroundColor: Color.fromARGB(255, 214, 214, 214)),
          SizedBox(width:8)
          ],
        ),
       bottomNavigationBar: BottomNavigationBar( 
          currentIndex:idx,
          onTap: (value){
            setState(() {
               idx=value;
            });
            print(value);
          },
        unselectedItemColor: Colors.grey,fixedColor:Color.fromARGB(255, 110, 189, 253), 
        items: [
        BottomNavigationBarItem(label: 'chats',icon: Icon(Icons.chat_bubble),),
        BottomNavigationBarItem(label: 'Calls',icon: Icon(Icons.video_call_rounded),),
        BottomNavigationBarItem(label: 'People',icon: Icon(Icons.people_alt_rounded),),
        BottomNavigationBarItem(label: 'Stories',icon: Icon(Icons.amp_stories_rounded),)
      ]),
      body: screens[idx], 
      drawer: Container(
          color: Colors.black,
          child: Drawer(
            child: ListView(
              children:[
                DrawerHeader(
                  child: Text('Me', style: TextStyle(fontWeight:FontWeight.bold),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10)
                  ),
                ),
                Column(
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.add_a_photo_rounded),
                      radius: 50,
                    ),
                    SizedBox(height: 10,),
                    Text("Kholoud Nashaat"),
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.dark_mode),
                        backgroundColor: Colors.black,
                      ),
                      title: Text("Drak mode"),
                      subtitle: Text("System"),
                    ),
                    SizedBox(height: 10,),
                     ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.message_rounded),
                        backgroundColor: Color.fromARGB(255, 131, 193, 245),
                      ),
                      title: Text("Message requests"),
                    ),
                       SizedBox(height: 10,),
                     ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.archive_rounded),
                        backgroundColor: Colors.purple,
                      ),
                      title: Text("Archieved chats"),
                    ),
                  ],
                )
              ]
            )
          ),
        ),
    );
  }
}