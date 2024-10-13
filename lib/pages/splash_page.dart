//Packages
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget{
  final VoidCallback onInitializationComplete;

  const SplashPage({
  Key? key,
  required this.onInitializationComplete,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SplashPageState();
  }
}

class _SplashPageState extends State<SplashPage>{
  @override
  void initState(){
    super.initState();
    widget.onInitializationComplete();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reelio',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}