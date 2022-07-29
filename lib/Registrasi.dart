import 'package:flutter/material.dart';
import 'package:kalkulator/InputPhone.dart';
import 'package:kalkulator/kalkulator.dart';

class Registrasi extends StatefulWidget {
  const Registrasi({Key? key}) : super(key: key);

  @override
  State<Registrasi> createState() => _RegistrasiState();
}

class _RegistrasiState extends State<Registrasi> {
  TextEditingController ctrCatatan = new TextEditingController();
  TextEditingController ctrNama = new TextEditingController();
  TextEditingController ctrPesan = new TextEditingController();
  var phoneNumber = "Catatan";


Widget txtInput(String username, TextEditingController controller){
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: username,
    ),
  );
}

Widget btnRegister(String text){
  return Container(
    width: 120,
    child: ElevatedButton(onPressed: (){
      Navigator.push(
        context, MaterialPageRoute(builder: (context)=> Kalkulator(name: ctrNama.text, pesan: ctrPesan.text,)));
    }, child: Text(text)),
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registrasi"),),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            txtInput("Nama Anda", ctrNama),
            SizedBox(
              height: 20,
              ),
            txtInput("Pesanan Anda", ctrPesan),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: ctrCatatan,
              enabled: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: phoneNumber,
                labelStyle: TextStyle(color: Colors.black)
              ),
            ),
            SizedBox(
              height: 30,
            ),
            btnRegister("Submitt"),


            Row(
            children: [
              SizedBox(
                height: 45,
                width: 183,
                ),
              ElevatedButton(onPressed: ()async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) => InputPhone()),
                );

                setState(() {
                  phoneNumber = result.toString();
                });
              }, child: Text("Edit Catatan"))
            ],
          ),
          ],
        ),
      ),
    );
  }
}