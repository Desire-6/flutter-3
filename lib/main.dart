import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VehicleInfoPage(),
    );
  }
}

class VehicleInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Vehicle Information',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Edit',
              style: TextStyle(
                fontSize: 24,
                color: Colors.lightGreen,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                'https://cdn.pixabay.com/photo/2015/01/19/13/51/car-604019_1280.jpg',
                width: 300,
                height: 400,
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.only(top: 10, right: 16, bottom: 8),
              child: Text(
                'Car Name',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Mercedes-BMW',
                hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                contentPadding: const EdgeInsets.all(14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.only(right: 16, bottom: 8),
              child: Text(
                'Model',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'AB XXX XXX XXX',
                hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                contentPadding: const EdgeInsets.all(14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.only(right: 16, bottom: 8),
              child: Text(
                'Number Plate',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Type',
                hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                contentPadding: const EdgeInsets.all(14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.only(right: 16, bottom: 8),
              child: Text(
                'Color',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Green',
                hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                contentPadding: const EdgeInsets.all(14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Icon(Icons.check_box_outline_blank, color: Colors.grey),
                Text(
                  'Air Condition',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 20),
                Icon(Icons.check_box_outlined),
                Text(
                  'Heater',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
              ),
              child:
                  const Text('Update', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
