<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->


# Custom Network Image

```custom_network_image```  A Flutter library to show images from the internet with custom design and decoration.  ✨

It's support some type of image decoration such as [ sizeOfImage, isCircular, isCircularBorder, isCurve or isCurveBorder], etc.


## Installation

Create a new project with the command

```yaml
flutter create MyApp
```

Add

```yaml
custom_network_image: ...
```

to your `pubspec.yaml` of your flutter project.
**OR**
run

```yaml
flutter pub add custom_network_image
```

in your project's root directory.

In your library add the following import:

```dart
import 'package:custom_network_image/custom_network_image.dart';
```

For help getting started with Flutter, view the online [documentation](https://flutter.io/).

## Usage

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Network Image',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
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
          title: Text(widget.title),
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
```


## Constructor

#### Basic

| Parameter       | Default | Description                          | Required |
|-----------------|:--------|:-------------------------------------|:--------:|
| url             | -       | Image base url.                      |   True   |
| curveValue      | -       | Curve value if curve is set to true. |  false   |
| borderColor     | -       | Image border color.                  |  false   |
| radius          | -       | Circle avatar radius.                |  false   |
| borderThickness | -       | Image border thickness               |  false   |
| isCircular      | false   | Set true if show circular box        |  false   |
| isCurve         | false   | Image curve flag                     |  false   |
| isCurveBorder   | false   | Image curve wit border flag          |  false   |
