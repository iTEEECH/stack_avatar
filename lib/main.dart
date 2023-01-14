import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack Avatar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Stack Avatar Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          padding: const EdgeInsets.all(12),
          child: SizedBox(
            height: 100,
            child: StackAvatar(
              counter: 3,
              images: [
                for (var n = 0; n <= 5; n++) NetworkImage('https://i.pravatar.cc/150?img=$n'),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class StackAvatar extends StatelessWidget {
  /// [images] define the list of images.
  final List<ImageProvider> images;

  /// [images] define all images to display.
  final int counter;

  const StackAvatar({
    super.key,
    required this.images,
    this.counter = 0,
  });

  @override
  Widget build(BuildContext context) {
    const TextStyle defaultCounterTextStyle = TextStyle(
      fontSize: 24.0,
      color: Colors.white,
    );
    const double widthFactor = 0.75;

    return ListView.builder(
      key: super.key,
      addAutomaticKeepAlives: false,
      addRepaintBoundaries: false,
      scrollDirection: Axis.horizontal,
      itemCount: (images.length > counter) ? counter + 1 : images.length,
      itemBuilder: (BuildContext context, int index) {
        final bool isCounter = (images.length > counter) && index > (counter - 1);

        return Align(
          widthFactor: widthFactor,
          child: isCounter
              ? Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.redAccent,
                  ),
                  child: Center(
                    child: Text(
                      '+${images.length - counter}',
                      style: defaultCounterTextStyle,
                    ),
                  ),
                )
              : Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45, width: 2.0),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
        );
      },
    );
  }
}
