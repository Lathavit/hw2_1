import 'package:flutter/material.dart';
import 'dart:math';

class ImageData {
  final String name;
  final String imagePath;

  ImageData(this.name, this.imagePath);
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<ImageData> images = [
    ImageData('Doberman', 'assets/images/Doberman.jpg'),
    ImageData('German Shepherd', 'assets/images/german-shepherd.jpeg'),
    ImageData('Pomeranian', 'assets/images/pomeranian.jpg'),
    ImageData('Samoyed', 'assets/images/Samoyed.jpg'),
  ];

  AppBar _buildAppBar() {
    var firstName = 'Lathavit';
    var lastName = 'Paktraketrin';

    // String interpolation
    return AppBar(
      title: Text('$firstName $lastName', style: TextStyle(fontSize: 30.0,),),
      centerTitle: true,
    );
  }

  Widget _buildPageBody() {
    final randomIndex = Random().nextInt(images.length);
    String itemName = images[randomIndex].name;
    String itemImagePath = images[randomIndex].imagePath;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            itemImagePath,
            width: 300.0,
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Text(
            itemName,
            style: TextStyle(
              fontSize: 60.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 12, 153, 66),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  // Method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: _buildAppBar(),
        body: _buildPageBody(),
      ),
    );
  }
}