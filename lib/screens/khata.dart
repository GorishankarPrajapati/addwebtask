import 'package:flutter/material.dart';
import 'package:flutter_addweb_task/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class KhataScreen extends StatefulWidget {
  const KhataScreen({super.key});

  @override
  State<KhataScreen> createState() => _KhataScreenState();
}

class _KhataScreenState extends State<KhataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: fontColor,
            )),
        backgroundColor: bgcolor,
        title: Text(
          "Khata",
          style: GoogleFonts.roboto(color: fontColor),
        ),
      ),
    );
  }
}
