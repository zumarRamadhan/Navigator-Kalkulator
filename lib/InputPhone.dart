import 'package:flutter/material.dart';

class InputPhone extends StatefulWidget {
  const InputPhone({Key? key}) : super(key: key);

  @override
  State<InputPhone> createState() => _InputPhoneState();
}

class _InputPhoneState extends State<InputPhone> {
TextEditingController ctrPhone = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Input Phone")),
      body: Container(
        child: Column (children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                TextField(
                  controller: ctrPhone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Edit Catatan",
                  ),
                ),
                SizedBox(
                  height: 20,
                 ),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context, ctrPhone.text);
                }, child: Text("Submit"))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}