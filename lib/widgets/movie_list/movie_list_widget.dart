import 'package:flutter/material.dart';

class Movie {
  final int id;
  final String title;
  final String releaseDate;
  final String description;
  final String imageUrl;

  Movie({
    required this.id,
    required this.title,
    required this.releaseDate,
    required this.description,
    required this.imageUrl,
  });
}

class MovieListWidget extends StatefulWidget {

  MovieListWidget({super.key});

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  final  _movies = [
    Movie(
      id: 1,
      title: "Avatar: Fire and Ash",
      releaseDate: "December 17, 2025",
      description: 'Despite another significant victory over the humans, Jake Sully and the rest of his family are in mourning, having lost their eldest son, Neteyam. Neytiri, overcome with grief, withdraws and distances herself from her adopted son, Spider, who is already in grave danger—his oxygen mask could fail at any moment. Meanwhile, Colonel Miles Quaritch prepares to strike again with the help of a powerful ally: he has managed to recruit the Flame and Ash clan, led by the warrior Varang, who is embittered by Eywa.',
      imageUrl: "assets/images/avatar.png",
    ),
    Movie(
      id: 2,
      title: "Mortal Kombat 2",
      releaseDate: "December 17, 2025",
      description: 'Despite another significant victory over the humans, Jake Sully and the rest of his family are in mourning, having lost their eldest son, Neteyam. Neytiri, overcome with grief, withdraws and distances herself from her adopted son, Spider, who is already in grave danger—his oxygen mask could fail at any moment. Meanwhile, Colonel Miles Quaritch prepares to strike again with the help of a powerful ally: he has managed to recruit the Flame and Ash clan, led by the warrior Varang, who is embittered by Eywa.',
      imageUrl: "assets/images/avatar.png",
    ),
    Movie(
      id: 3,
      title: "Back to the Future",
      releaseDate: "December 17, 2025",
      description: 'Despite another significant victory over the humans, Jake Sully and the rest of his family are in mourning, having lost their eldest son, Neteyam. Neytiri, overcome with grief, withdraws and distances herself from her adopted son, Spider, who is already in grave danger—his oxygen mask could fail at any moment. Meanwhile, Colonel Miles Quaritch prepares to strike again with the help of a powerful ally: he has managed to recruit the Flame and Ash clan, led by the warrior Varang, who is embittered by Eywa.',
      imageUrl: "assets/images/avatar.png",
    ),
    Movie(
      id: 4,
      title: "Battle of the Five Armies",
      releaseDate: "December 17, 2025",
      description: 'Despite another significant victory over the humans, Jake Sully and the rest of his family are in mourning, having lost their eldest son, Neteyam. Neytiri, overcome with grief, withdraws and distances herself from her adopted son, Spider, who is already in grave danger—his oxygen mask could fail at any moment. Meanwhile, Colonel Miles Quaritch prepares to strike again with the help of a powerful ally: he has managed to recruit the Flame and Ash clan, led by the warrior Varang, who is embittered by Eywa.',
      imageUrl: "assets/images/avatar.png",
    ),
    Movie(
      id: 5,
      title: "From",
      releaseDate: "December 17, 2025",
      description: 'Despite another significant victory over the humans, Jake Sully and the rest of his family are in mourning, having lost their eldest son, Neteyam. Neytiri, overcome with grief, withdraws and distances herself from her adopted son, Spider, who is already in grave danger—his oxygen mask could fail at any moment. Meanwhile, Colonel Miles Quaritch prepares to strike again with the help of a powerful ally: he has managed to recruit the Flame and Ash clan, led by the warrior Varang, who is embittered by Eywa.',
      imageUrl: "assets/images/avatar.png",
    ),
    Movie(
      id: 6,
      title: "Fast X",
      releaseDate: "December 17, 2025",
      description: 'Despite another significant victory over the humans, Jake Sully and the rest of his family are in mourning, having lost their eldest son, Neteyam. Neytiri, overcome with grief, withdraws and distances herself from her adopted son, Spider, who is already in grave danger—his oxygen mask could fail at any moment. Meanwhile, Colonel Miles Quaritch prepares to strike again with the help of a powerful ally: he has managed to recruit the Flame and Ash clan, led by the warrior Varang, who is embittered by Eywa.',
      imageUrl: "assets/images/avatar.png",
    ),
    Movie(
      id: 7,
      title: "Dune: Part Two",
      releaseDate: "December 17, 2025",
      description: 'Despite another significant victory over the humans, Jake Sully and the rest of his family are in mourning, having lost their eldest son, Neteyam. Neytiri, overcome with grief, withdraws and distances herself from her adopted son, Spider, who is already in grave danger—his oxygen mask could fail at any moment. Meanwhile, Colonel Miles Quaritch prepares to strike again with the help of a powerful ally: he has managed to recruit the Flame and Ash clan, led by the warrior Varang, who is embittered by Eywa.',
      imageUrl: "assets/images/avatar.png",
    ),
  ];

  final _searchController = TextEditingController();

  var _filteredMovies = <Movie>[];

  void _searchMovies() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredMovies = _movies.where((movie) {
        return movie.title.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  void initState() {
    super.initState();
    _filteredMovies = _movies;
    _searchController.addListener(_searchMovies);
  }

  void _onMovieTap(int index) {
    final id = _movies[index].id;
    Navigator.pushNamed(context, '/main_screen/movie_details', arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: const EdgeInsets.only(top:65),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: _filteredMovies.length,
          itemExtent: 163,
          itemBuilder: (BuildContext context, int index) {
          final movie = _filteredMovies[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black.withOpacity(0.2)),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Row(
                    children: [
                      Image(image: AssetImage(movie.imageUrl), width: 100, height: 163, fit: BoxFit.cover,),
                      SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Text(movie.title, style: TextStyle(fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 5),
                          Text(movie.releaseDate, style: TextStyle(color: Colors.grey),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,),
                          SizedBox(height: 20),
                          Text(movie.description, style: TextStyle(color: Colors.black),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5),
                     ],
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      _onMovieTap(index);
                    },
                  ),
                ),
              ],
            ),
          );
         },
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: "Search",
              prefixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Colors.white.withAlpha(235),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
