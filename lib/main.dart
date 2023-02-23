import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(child: 
      Center(child: ClipPath(
        clipper: Clip1Clipper(),
        child: Container(height: 300,width: 300,color: Colors.red,),
      )
      ,)
      ),
      ),
      );
   }
}
class Clip1Clipper extends CustomClipper<Path>{
  Path getClip(Size size){
  Path path=Path();
  path.lineTo(0, size.height);
  path.lineTo(size.width, size.height);
  path.quadraticBezierTo(size.height, 0, 0, 0);
  return path;
  }
    bool shouldReclip(CustomClipper<Path> oldClipper) =>true;
}