import 'package:flutter/material.dart';
import 'package:apps_getx/database_helper.dart';
import 'package:get/get.dart';

class Favourite extends StatefulWidget {
  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  final dbHelper = DatabaseHelper();
  List<Map<String, dynamic>> favouriteMovies = [];

  @override
  void initState() {
    super.initState();
    _loadFavourites();
  }

  void _loadFavourites() async {
    final favourites = await dbHelper.getFavourites();
    setState(() {
      favouriteMovies = favourites;
    });
  }

  void _removeFavourite(String title) async {
    bool confirm = await _showDeleteConfirmationDialog(title);
    if (confirm) {
      await dbHelper.removeFavourite(title);
      Get.snackbar('Deleted', '$title telah dihapus dari favorit');
      _loadFavourites(); // Reload list setelah penghapusan
    }
  }

  Future<bool> _showDeleteConfirmationDialog(String title) async {
    return await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Hapus Favorit'),
          content: Text('Apakah Anda yakin ingin menghapus $title dari daftar favorit?'),
          actions: [
            TextButton(
              child: Text('Tidak'),
              onPressed: () {
                Navigator.of(context).pop(false); 
              },
            ),
            TextButton(
              child: Text('Iya'),
              onPressed: () {
                Navigator.of(context).pop(true); 
              },
            ),
          ],
        );
      },
    ) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite"),
      ),
      backgroundColor: Color.fromARGB(255, 28, 21, 36),
      body: favouriteMovies.isEmpty
          ? Center(
              child: Text(
                'Belum ada film favorit',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            )
          : ListView.builder(
              itemCount: favouriteMovies.length,
              itemBuilder: (context, index) {
                final movie = favouriteMovies[index];
                return ListTile(
                  leading: Image.asset(
                    movie['image'],
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    movie['title'],
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      _removeFavourite(movie['title']);
                    },
                  ),
                );
              },
            ),
    );
  }
}
