import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        
        
        
        
        
        
        
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  void initState() {
    super.initState();
    channel = WebSocketChannel.connect(
  Uri.parse('ws://localhost:8080'),
);
  }

  late WebSocketChannel channel;

  void _sendIncrementCommand() {
    channel.sink.add('increment');
  }

  @override
  void dispose() {
    super.dispose();
    channel.sink.close();
  }

  @override
  Widget build(BuildContext context) {
    
    
    
    
    
    
    return Scaffold(
      appBar: AppBar(
        
        
        title: Text(widget.title),
      ),
      body: Center(
        
        
        child: Column(
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _sendIncrementCommand,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
