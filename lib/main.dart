
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),


    );
  }
}


class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(



      //appBar

      appBar: AppBar(
        title: Text('HELLO'),
        titleSpacing: 14,
        centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 10,
        backgroundColor: Colors.black26,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.email))
        ],
      ),



      //body

      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[

            Container(
              margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
              child: Text('HELLO WORLD',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  wordSpacing: 0.6,
                  letterSpacing: 0.6,
                ),
              ),
            ),

            Container(
              width: 200,
              height: 200,
              child: Image.network("https://images.unsplash.com/photo-1618588507085-c79565432917?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhdXRpZnVsJTIwbmF0dXJlfGVufDB8fDB8fHww&w=1000&q=80"),
            ),
          ],
        ),
      ),



// floatingActionButton
      floatingActionButton: SizedBox(
        height:100,
        width:100,
        child:FloatingActionButton(
          backgroundColor: Colors.amber,
          child: Icon(Icons.add), //child widget inside this button
          shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.zero
          ),
          onPressed: (){},
        ),
      ),



      // floating action button location
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,



      //drawer
      drawer: Drawer(
        child: ListView(
          children: [

            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.amber),
                  accountName: Text('SATYAJIT BISWAS', style: TextStyle(color: Colors.black, fontSize: 17)),
                  accountEmail: Text('satyajitinfo@gmail.com', style: TextStyle(color: Colors.black,fontSize: 12)),
                  currentAccountPicture: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/2048px-Circle-icons-profile.svg.png") ,
                  onDetailsPressed: (){},
                )
            ),

            ListTile(leading:Icon(Icons.home,color: Colors.black,) ,title: Text('home', style: TextStyle(color: Colors.black))),
            ListTile(leading:Icon(Icons.contact_mail,color: Colors.black,)  ,title: Text('contact', style: TextStyle(color: Colors.black))),
            ListTile(leading: Icon(Icons.email,color: Colors.black,), title: Text('email', style: TextStyle(color: Colors.black))),
            ListTile(leading: Icon(Icons.phone,color: Colors.black,),title: Text('phone', style: TextStyle(color: Colors.black)))

          ],

        ),
      ),


    );
  }


}