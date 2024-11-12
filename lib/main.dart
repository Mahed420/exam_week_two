import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My Profile'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
              onPressed: () {
                print("test");
              },
              icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call))
        ],
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: const CircleAvatar(
                    backgroundColor: Color(0xFFF1DEFF),
                    radius: 100,
                    child: Icon(
                      Icons.icecream_outlined,
                      size: 100,
                    ),
                  ),
                ),
              ),
              const Text(
                "Ice cream is very delicious right?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
                width: 30,
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: const CircleAvatar(
                    backgroundColor: Color(0xFFF1DEFF),
                    radius: 100,
                    child: Icon(
                      Icons.code,
                      size: 100,
                    ),
                  ),
                ),
              ),
              const Text(
                "Programing is not boring if you love it",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
                width: 30,
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: const CircleAvatar(
                    backgroundColor: Color(0xFFF1DEFF),
                    radius: 100,
                    child: Icon(
                      Icons.water_drop_outlined,
                      size: 100,
                    ),
                  ),
                ),
              ),
              const Text(
                "If you submit code directly copy from chatgpt then mark will be 0",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
