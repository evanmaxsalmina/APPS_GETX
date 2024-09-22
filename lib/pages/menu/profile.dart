import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 21, 36),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Profile picture
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
            SizedBox(height: 20),
            // Username
            Text(
              'Username : Dapara',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 10),
            // Bio
            Text(
              'Bio : YUNG IYUNG IYUNG',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20),
            // Watchlist
            Text(
              'Watchlist:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 10),
            // Watchlist items
            GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              shrinkWrap: true,
              children: <Widget>[
                // Watchlist item 1
                Card(
                  child: Column(
                    children: <Widget>[
                      // Image.network('https://via.placeholder.com/150'),
                      Text('Movie 1'),
                    ],
                  ),
                ),
                // Watchlist item 2
                Card(
                  child: Column(
                    children: <Widget>[
                      // Image.network('https://via.placeholder.com/150'),
                      Text('Movie 2'),
                    ],
                  ),
                ),
                // Watchlist item 3
                Card(
                  child: Column(
                    children: <Widget>[
                      // Image.network('https://via.placeholder.com/150'),
                      Text('Movie 3'),
                    ],
                  ),
                ),
                // Add more watchlist items here
              ],
            ),
          ],
        ),
      ),
    );
  }
}
