import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailMePage extends StatefulWidget {
  const EmailMePage({Key? key}) : super(key: key);

  @override
  _EmailPageState createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailMePage> {
  static const String email = 'djordjesaric1999@gmail.com';
  double opacity = 0;

  @override
  void initState() {
    super.initState();
    changeOpacity();
  }

  void changeOpacity() async {
    await Future.delayed(const Duration(milliseconds: 50));
    setState(() {
      opacity = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Be free to contact me :)\nCopy my mail using clipboard",
            textAlign: TextAlign.center),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: opacity,
          duration: const Duration(milliseconds: 500),
          child: Card(
            color: Colors.white70,
            margin: EdgeInsets.all(20.0),
            child: ListTile(
              leading: Icon(Icons.mail_outline_rounded),
              title: Text(email),
              trailing: IconButton(
                icon: Icon(Icons.copy),
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: email));
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Email copied to clipboard')),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
