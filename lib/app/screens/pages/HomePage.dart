import 'package:flutter/material.dart';

/*
  Project: Mighty Browser
  Author: Muhammad Fiaz
  GitHub: https://github.com/muhammad-fiaz
*/
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Set to false to prevent body resizing
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey[400],
                ),
                onPressed: () {
                  // TODO: Implement search functionality
                },
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.mic,
                  color: Colors.grey[400],
                ),
                onPressed: () {
                  // TODO: Implement voice search functionality
                },
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Image.asset(
                  'assets/images/logo_rounded.png', // Replace with your image path
                  width: 20,
                  height: 20,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                SizedBox.expand(
                  child: Image.asset(
                    'assets/images/bg/bg1.jpg', // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: kToolbarHeight,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey[800]!.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '12,343',
                              style: TextStyle(
                                color: Colors.red, // Red color for trackers
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Trackers & ads blocked',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '18.2 GB',
                              style: TextStyle(
                                color: Colors.yellow, // Yellow color for bandwidth saved
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Bandwidth saved',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '331 Hours',
                              style: TextStyle(
                                color: Colors.green, // Green color for time saved
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Time saved',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[900],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home_outlined,
                size: 24,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.bookmark_border_outlined,
                size: 24,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 24,
                color: Colors.white,
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                Text(
                  '1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
      PopupMenuButton(
        itemBuilder: (context) => [
          PopupMenuItem(
            child: Row(
              children: [
                Icon(Icons.download, color: Colors.white), // Icon for Item 1 (Download)
                SizedBox(width: 8),
                Text('Download', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          PopupMenuItem(
            child: Row(
              children: [
                Icon(Icons.settings, color: Colors.white), // Icon for Item 2 (Settings)
                SizedBox(width: 8),
                Text('Settings', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          PopupMenuItem(
            child: Row(
              children: [
                Icon(Icons.info, color: Colors.white), // Icon for Item 3 (Info)
                SizedBox(width: 8),
                Text('Info', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ],
        icon: Icon(Icons.more_vert, color: Colors.white),
        color: Colors.grey[800], // Set the background color for the popup menu
        offset: Offset(0, -24), // Adjust the dy value according to your UI layout
      ),


      ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
