import 'package:demo_integration/services/starwars_people.dart';
import 'package:flutter/material.dart';

import 'models/firebase_users.dart';
import 'models/starwars_people.dart';
import 'services/firebase_users.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);
// 'V9CCvTHhcupAGZq8hcsr'
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo APP'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () async {
                await createUser('User 2');
              }),
          IconButton(
              icon: Icon(Icons.update),
              onPressed: () async {
                await updateUser('V9CCvTHhcupAGZq8hcsr', 'Shubham Patel');
              }),
        ],
      ),
      body: StreamBuilder<List<Users>>(
        stream: fetchFromFirestore(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(snapshot.data[index].name),
              subtitle: Text(snapshot.data[index].id),
              trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () async {
                    await deleteUser(snapshot.data[index].id);
                  }),
            ),
          );
        },
      ),
    );
    //   body: FutureBuilder<List<People>>(
    //       future: getAllPeople(),
    //       builder: (context, snapshot) {
    //         if (snapshot.hasError) {
    //           return Center(
    //             child: Text('There was some Error'),
    //           );
    //         }
    //         if (snapshot.connectionState == ConnectionState.done) {
    //           return ListView.builder(
    //             itemBuilder: (context, index) {
    //               return ListTile(
    //                 title: Text(snapshot.data[index].name),
    //                 subtitle: Text(snapshot.data[index].gender),
    //               );
    //             },
    //             itemCount: snapshot.data.length,
    //           );
    //         }
    //         return Center(
    //           child: CircularProgressIndicator(),
    //         );
    //       }),
    // );
  }
}
