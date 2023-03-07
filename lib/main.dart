import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text('تطابق صورة'),
        backgroundColor: Colors.indigo[800],
      ),
      body: ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftimagenumber = Random().nextInt(8) + 1;
  int rightimagenumber = Random().nextInt(8) + 1;

  void changeimage() {
    leftimagenumber = Random().nextInt(8) + 1;
    rightimagenumber = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftimagenumber == rightimagenumber
              ? 'مبروك لقد نجحت'
              : 'حاول مرة أخرى',
          style: TextStyle(
            fontSize: 42,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        changeimage();
                      });
                    },
                    child: Image.asset('images/image-$leftimagenumber.png')),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        changeimage();
                      });
                    },
                    child: Image.asset('images/image-$rightimagenumber.png')),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
