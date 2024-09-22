import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 21, 36),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 60),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  color: Colors.white10,
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.search, color: Colors.white),
                      onPressed: () {
                        print('Search button pressed');
                      },
                    ),
                    SizedBox(width: 10),
                    Text("Search Movies",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Action", style: TextStyle(color: Colors.white)),
                    Text("Comedy", style: TextStyle(color: Colors.white)),
                    Text("Romance", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(right: 170),
                child: Text(
                  "Latest Movie",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 140,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              20),
                          image: DecorationImage(
                            image: AssetImage('assets/images/civil.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Civil War", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 140,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              20),
                          image: DecorationImage(
                            image: AssetImage('assets/images/ugliest.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Uglies", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
