import 'package:flutter/material.dart';
import 'package:custom_network_image/custom_network_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Custom Network Image"),
      ),
      body: Center(
        child: Column(children: [
          const SizedBox(height: 10,),
          CustomNetworkImage(sizeOfImage: 65, url: 'https://picsum.photos/250?image=9', isCircular: true,),
          const SizedBox(height: 10,),
          CustomNetworkImage(curveValue: 10 ,sizeOfImage:  45, url: 'https://picsum.photos/250?image=9', isCurve: true,),
          const SizedBox(height: 10,),
          CustomNetworkImage(borderColor : Colors.purple , radius : 20 ,url :'https://picsum.photos/250?image=9' ,sizeFromRadius:  48,borderThickness:   3 , isCurveBorder : true),
          const SizedBox(height: 10,),
          CustomNetworkImage(borderColor : Colors.purple , radius : 20 ,url :'https://picsum.photos/250?image=9' ,sizeFromRadius:  48,borderThickness:   3 , isCircularBorder : true),

        ],),
      )
    );
  }
}
