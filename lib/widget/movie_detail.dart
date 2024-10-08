import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apps_getx/database_helper.dart';

class MovieDetail extends StatefulWidget {
  final String title;
  final String imagePath;
  final String description;

  const MovieDetail({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.description,
  }) : super(key: key);

  @override
  _MovieDetailState createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  bool isBookmarked = false;
  final dbHelper = DatabaseHelper();

  @override
  void initState() {
    super.initState();
    _checkIfBookmarked();
  }

  void _checkIfBookmarked() async {
    final favourites = await dbHelper.getFavourites();
    final isFavourite = favourites.any((movie) => movie['title'] == widget.title);
    setState(() {
      isBookmarked = isFavourite;
    });
  }

  void _toggleBookmark() async {
    if (isBookmarked) {
      await dbHelper.removeFavourite(widget.title);
    } else {
      await dbHelper.insertFavourite({
        'title': widget.title,
        'image': widget.imagePath,
      });
    }
    setState(() {
      isBookmarked = !isBookmarked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(fontFamily: 'Georgia', fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple[900],
        actions: [
          IconButton(
            icon: Icon(
              isBookmarked ? Icons.bookmark : Icons.bookmark_border,
              color: Colors.white, // Ubah warna ikon menjadi putih
            ),
            onPressed: _toggleBookmark,
          ),
        ],
      ),
      body: Container(
        color: Colors.black, // Warna latar belakang gelap
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: 'movie-image-${widget.title}',
              child: Image.asset(
                widget.imagePath,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),

            // Judul dan Tombol "Tonton"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontFamily: 'Georgia',
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    onPressed: () {
                      Get.snackbar('Watch Movie', 'Anda menonton ${widget.title}');
                    },
                    child: Text(
                      'Tonton!',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Deskripsi
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: SingleChildScrollView(
                  child: Text(
                    widget.description,
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.5,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
