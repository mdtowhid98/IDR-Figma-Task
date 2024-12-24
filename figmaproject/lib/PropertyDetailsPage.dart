import 'package:figmaproject/HomePage.dart';
import 'package:flutter/material.dart';



class PropertyDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.bookmark_border, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Property Image
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                'https://images.unsplash.com/photo-1623005329426-9ee5d7fb2ba8?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTY3fHxiZWF1dGlmdWwlMjBob3VzZXxlbnwwfHwwfHx8MA%3D%3D',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            // Property Title and Address
            Text(
              'Dreamsville House',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(
              'Jl. Sultan Iskandar Muda, Jakarta Selatan',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            SizedBox(height: 16),
            // Features (Bedrooms and Bathrooms)
            Row(
              children: [
                Icon(Icons.bed, color: Colors.blue),
                SizedBox(width: 8),
                Text('6 Bedroom'),
                SizedBox(width: 16),
                Icon(Icons.bathtub, color: Colors.blue),
                SizedBox(width: 8),
                Text('4 Bathroom'),
              ],
            ),
            SizedBox(height: 16),
            // Description
            Text(
              'Description',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'The 3-level house has a modern design, a large pool, and a garage that fits up to four cars.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            // Owner Info
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://i.postimg.cc/yYxpN7qZ/2388f055-10d1-440d-81ce-9f98d2a99959.jpg'),
                  radius: 25,
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Towhid', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('Owner', style: TextStyle(fontSize: 14, color: Colors.grey[600])),
                  ],
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.call, color: Colors.blue),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.message, color: Colors.blue),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 16),
            // Gallery
            Text(
              'Gallery',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1623005329287-0848374575d3?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTg0fHxiZWF1dGlmdWwlMjBob3VzZXxlbnwwfHwwfHx8MA%3D%3D',
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1561995704-b0fa600f7771?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTk1fHxiZWF1dGlmdWwlMjBob3VzZXxlbnwwfHwwfHx8MA%3D%3D',
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1623005470778-6d6e27b75186?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjA0fHxiZWF1dGlmdWwlMjBob3VzZXxlbnwwfHwwfHx8MA%3D%3D',
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Colors.black54,
                        alignment: Alignment.center,
                        child: Text(
                          '+5',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            // Location Map
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                'https://i.postimg.cc/9FsbFTt6/bashundhara-map.png',
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            // Price and Rent Now Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rp. 2.500.000.000 / Year',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text('Rent Now'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
