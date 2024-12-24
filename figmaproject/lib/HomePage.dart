import 'package:figmaproject/PropertyDetailsPage.dart';
import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Row(
          children: [
            // Sidebar (Increased width)
            Container(
              width: 130, // Increased sidebar width
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 40),
                      _buildSidebarItem(
                        icon: Icons.home,
                        label: "Home",
                        isSelected: true,

                      ),
                      _buildSidebarItem(icon: Icons.person, label: "Profile"),
                      _buildSidebarItem(icon: Icons.location_on, label: "Nearby"),
                      const Divider(color: Colors.white70, thickness: 1, indent: 10, endIndent: 10),
                      _buildSidebarItem(icon: Icons.bookmark, label: "Bookmark"),
                      _buildSidebarItem(icon: Icons.notifications, label: "Notification"),
                      _buildSidebarItem(icon: Icons.message, label: "Message"),
                    ],
                  ),
                  Column(
                    children: [
                      const Divider(color: Colors.white70, thickness: 1, indent: 10, endIndent: 10),
                      _buildSidebarItem(icon: Icons.settings, label: "Setting"),
                      _buildSidebarItem(icon: Icons.help, label: "Help"),
                      _buildSidebarItem(icon: Icons.logout, label: "Logout"),
                      const SizedBox(height: 40),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Top Bar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Location",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Jakarta",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.notifications,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Search Bar
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 16),
                          const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 8),
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search address, or near you",
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.filter_alt,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Category Tabs
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _buildCategoryTab("House", isSelected: true),
                          _buildCategoryTab("Apartment"),
                          _buildCategoryTab("Hotel"),
                          _buildCategoryTab("Villa"),
                          _buildCategoryTab("Condo"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),

                    // "Near from you" Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Near from you",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "See more",
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _buildPropertyCard(
                            imageUrl: "https://images.unsplash.com/photo-1564013799919-ab600027ffc6?w=600",
                            title: "Dreamsville House",
                            location: "Jl Sultan Iskandar Muda",
                            distance: "18 km",
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => PropertyDetailsPage()));
                            },
                          ),
                          _buildPropertyCard(
                            imageUrl: "https://images.unsplash.com/photo-1531971589569-0d9370cbe1e5?w=600",
                            title: "Ascot House",
                            location: "Jl Cilandak Tengah",
                            distance: "22 km",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),

                    // "Best for you" Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Best for you",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "See more",
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: ListView(
                        children: [
                          _buildListProperty(
                            imageUrl: "https://images.unsplash.com/photo-1571213721752-d5a819237d3b?w=600",
                            title: "Orchard House",
                            price: "Rp. 2.500.000.000 / Year",
                            bedrooms: 6,
                            bathrooms: 4,
                          ),
                          _buildListProperty(
                            imageUrl: "https://images.unsplash.com/photo-1628625251833-04eeafb7a2db?w=600",
                            title: "The Hollies House",
                            price: "Rp. 2.000.000.000 / Year",
                            bedrooms: 6,
                            bathrooms: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSidebarItem({
    required IconData icon,
    required String label,
    bool isSelected = false,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      decoration: isSelected
          ? BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      )
          : null,
      child: Row(
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.blue : Colors.white,
            size: 20,
          ),
          if (!isSelected) const SizedBox(width: 10),
          if (!isSelected)
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildCategoryTab(String label, {bool isSelected = false}) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue : Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.grey,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }

  Widget _buildPropertyCard({
    required String imageUrl,
    required String title,
    required String location,
    required String distance,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                imageUrl,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                location,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                distance,
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListProperty({
    required String imageUrl,
    required String title,
    required String price,
    required int bedrooms,
    required int bathrooms,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              imageUrl,
              height: 100,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(Icons.bed, size: 14, color: Colors.grey),
                      const SizedBox(width: 4),
                      Text(
                        "$bedrooms BR",
                        style: const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      const SizedBox(width: 10),
                      const Icon(Icons.bathtub, size: 14, color: Colors.grey),
                      const SizedBox(width: 4),
                      Text(
                        "$bathrooms BA",
                        style: const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
