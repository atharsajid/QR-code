import 'package:flutter/material.dart';
import 'package:qr_code/Screens/qr_generator.dart';
import 'package:qr_code/Screens/qr_scanner.dart';
import 'package:qr_code/Screens/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: appbar("Home Screen"),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QrCodeGenerator()));
                  });
                },
                child: Text("QR code generator")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QrScanner()));
                },
                child: Text("QR code Scanner")),
          ],
        ),
      ),
    );
  }
}
