import 'package:flutter/material.dart';



class Appbarsym extends StatefulWidget {
  const Appbarsym({Key? key}) : super(key: key);

  @override
  State<Appbarsym> createState() => _Appbarsym();
}

class _Appbarsym extends State<Appbarsym> {
  
  final Color symColor = const Color(0xFF1e4cab);

  


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0), // here the desired height
          child: AppBar(
           actions:  [
            IconButton(color:Colors.white,onPressed: () {
              debugPrint("hello");
            }, icon: const Icon(
              Icons.info_outline,
              ),
            )],
            title: const Text(
              'SYMMETRYK',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            backgroundColor: symColor,
          ),
        ),
        body: null,
      ),
    );

  }
}