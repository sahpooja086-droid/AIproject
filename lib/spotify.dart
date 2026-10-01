import 'package:flutter/material.dart';

class SpotifyScreen extends StatelessWidget {
  const SpotifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // TOP BAR
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recently played",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Row(
                    children: const [
                      Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                        size: 26,
                      ),
                      SizedBox(width: 18),
                      Icon(
                        Icons.history,
                        color: Colors.white,
                        size: 26,
                      ),
                      SizedBox(width: 18),
                      Icon(
                        Icons.settings_outlined,
                        color: Colors.white,
                        size: 26,
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // RECENTLY PLAYED ARTISTS
              Row(
                children: [
                  artist(
                    "assets/images/lana.png",
                    "Lana Del Rey",
                  ),

                  const SizedBox(width: 25),

                  artist(
                    "assets/images/marvin.png",
                    "Marvin Gaye",
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // WRAPPED
              Row(
                children: [
                  Image.asset(
                    "assets/images/wrapped.png",
                    height: 70,
                    width: 70,
                  ),

                  const SizedBox(width: 12),

                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "#SPOTIFYWRAPPED",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),

                      Text(
                        "Your 2021 in review",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // TOP SONGS / ARTISTS
              Row(
                children: [
                  Expanded(
                    child: musicCard(
                      "assets/images/top_songs.png",
                      "Your Top Songs 2021",
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: musicCard(
                      "assets/images/top_artists.png",
                      "Your Artists Revealed",
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 35),

              // EDITOR'S PICKS
              const Text(
                "Editor's picks",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    child: editorCard(
                      "assets/images/ed_sheeran.png",
                      "Ed Sheeran, Big Sean,\nJuice WRLD, Post Malone",
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: editorCard(
                      "assets/images/front_left.png",
                      "Mitski, Tame Impala,\nGlass Animals, Charli XCX",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ARTIST CIRCLE
  static Widget artist(String image, String name) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            image,
            width: 105,
            height: 105,
            fit: BoxFit.cover,
          ),
        ),

        const SizedBox(height: 8),

        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  // MUSIC CARD
  static Widget musicCard(String image, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),

        const SizedBox(height: 8),

        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  // EDITOR CARD
  static Widget editorCard(String image, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),

        const SizedBox(height: 8),

        Text(
          description,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}