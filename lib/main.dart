import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('ABC Restaurant'),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.black),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Super and Delicious Food!',
              style: TextStyle(fontSize: 26,color: Colors.black,backgroundColor: Colors.blue),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add navigation or functionality for each button
              },
              child: Text('South Indian Cuisine'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Add navigation or functionality for each button
              },
              child: Text('Chinese Cuisine'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Add navigation or functionality for each button
              },
              child: Text('North Indian Cuisine'),
            ),
            // Add more buttons or widgets as needed
          ],
        ),
      ),
      drawer: Drawer(
        elevation: 8.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: Text('Srinivas'), accountEmail: Text('srinivas@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('Profile'),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('XY'),
                )
              ],
            ),
            ListTile(
              title: Text('My Account'),
              leading: Icon(Icons.house_rounded),
            ),
            Divider(
              height: 1.0,
            ),
            ListTile(
              title: Text('My Orders'),
              leading: Icon(Icons.shopping_bag_outlined),
            ),
            Divider(
              height: 1.0,
            ),
            ListTile(
              title: Text('Offers'),
              leading: Icon(Icons.local_offer_outlined),
            ),
            Divider(
              height: 1.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        fixedColor: Colors.green,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.table_bar_rounded),
            label: 'Dining',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining),
            label: 'Delivery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Money',
          ),
        ],
        onTap: (int index){
          print(index.toString());
        },
      ),
    );
  }
}

