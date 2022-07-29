import 'package:flutter/material.dart';

class HalamanKedua extends StatelessWidget {
  const HalamanKedua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Kedua'),
        actions: <Widget> [
          IconButton(
            icon: Icon(
              Icons.delete,
              color: Colors.white,
            ),
            onPressed: null,
          )
        ]
      ),
    );
  }
}