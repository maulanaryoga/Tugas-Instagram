import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_instagram/widget/widget.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 0,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          backgroundColor: Colors.white,
          iconSize: 30,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Align(
                alignment: Alignment.bottomCenter,
                child: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
                color: Colors.black,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.black,
              ),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.black,
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: 'Profile',
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: 9,
          itemBuilder: (BuildContext context, int index) {
            return const Tiles();
          },
        ),
      ),
    );
  }
}

class Tiles extends StatelessWidget {
  const Tiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double imageSize = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          const Divider(
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const CircularProfile(
                  outline: 60,
                  size: 50,
                  image: 'assets/images/pp.png',
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Maulana Arya Yoga J.',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            'assets/images/foto.jpg',
            width: imageSize,
            height: imageSize,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.favorite,
                          size: 25,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.comment_outlined,
                          size: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.send,
                          size: 25,
                        )
                      ],
                    ),
                    const Icon(
                      Icons.bookmark_outline,
                      size: 25,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  '123 Likes',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: const [
                    Text(
                      'Maulana Arya Yoga J.',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Hello World',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  '1 Januari 2021',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}