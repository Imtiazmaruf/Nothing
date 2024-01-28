import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // MySnacbar(message, context) {
  //   return ScaffoldMessenger.of(context)
  //       .showSnackBar(SnackBar(content: Text(message)));
  // }
  MySnacbar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  MyAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
            title: Text('Alert !'),
            content: Text('Do you want to delet'),
            actions: [
              TextButton(
                  onPressed: () {
                    MySnacbar("Delet", context);
                    Navigator.of(context).pop();
                  },
                  child: Text('Yes')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('No')),
            ],
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.green,
    );

    return Scaffold(
        appBar: AppBar(
          title: Text("Inventory"),
          titleSpacing: 10,
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
                onPressed: () {
                  MySnacbar("comments", context);
                },
                icon: Icon(Icons.comment)),
            IconButton(
                onPressed: () {
                  MySnacbar("search", context);
                },
                icon: Icon(Icons.search)),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 10,
          backgroundColor: Colors.blue,
          child: Icon(Icons.add),
          onPressed: () {
            MySnacbar("floating", context);
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "person"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "settings"),
          ],
          onTap: (int index) {
            if (index == 0) {
              MySnacbar("Home", context);
            }
            if (index == 1) {
              MySnacbar("person", context);
            }
            if (index == 2) {
              MySnacbar("settings", context);
            }
          },
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: DrawerHeader(
                  child: UserAccountsDrawerHeader(
                    accountName: Text("Imtiaz Rahman"),
                    accountEmail: Text("imtiazmaruf016@gmail.com"),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  MySnacbar('home', context);
                },
              ),
              ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('phone'),
                  onTap: () {
                    MySnacbar('phone', context);
                  }),
            ],
          ),
        ),
        // body: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     TextButton(
        //       onPressed: () {
        //         MySnacbar("Text Button", context);
        //       },
        //       child: Text('textButton'),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //        MyAlertDialog(context);
        //       },
        //       child: Text(
        //         'ElevatedButton',
        //
        //       ),style: buttonStyle,
        //     ),
        //     OutlinedButton(
        //       onPressed: () {
        //         MySnacbar("message", context);
        //       },
        //       child: Text('Outline Button'),
        //     ),
        //   ],
        // ),
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: TextField(
        //         decoration: InputDecoration(
        //           labelText: "First Name",
        //           border: OutlineInputBorder(),
        //         ),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: TextField(
        //         decoration: InputDecoration(
        //           labelText: "Last Name",
        //           border: OutlineInputBorder(),
        //         ),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: TextField(
        //         decoration: InputDecoration(
        //           labelText: "Email",
        //           border: OutlineInputBorder(),
        //         ),
        //       ),
        //     ),
        //   ],
        // ));
    body: Container(
    padding: EdgeInsets.all(8),
    height: 200,
    width: 200,
      child: Image.network("https://assets.ajio.com/medias/sys_master/root/20230624/cog9/6496592feebac147fcf098ea/-473Wx593H-465330195-green-MODEL.jpg"),
    ),
    );
  }
}
