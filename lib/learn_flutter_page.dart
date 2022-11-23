import 'package:flutter/material.dart';
import 'package:flutter_app_2/home_page.dart';
import 'package:flutter_app_2/main.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool _darkMode = false;
  bool? _checkBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _darkMode ? Colors.black87 : Colors.white,
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('actions');
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/logo_retro.png',
              height: 100,
            ),
            const Divider(color: Colors.black),
            const SizedBox(height: 10),
            Container(
              color: Colors.blueGrey,
              width: double.infinity,
              padding: const EdgeInsets.all(5),
              child: const Center(
                child: Text(
                  'this is a text widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint('Elevated button');
              },
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Outlined button');
              },
              child: const Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Text button');
              },
              child: const Text('Text Button'),
            ),
            GestureDetector(
              onTap: (() {
                debugPrint('Row widget');
              }),
              behavior: HitTestBehavior.opaque,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.local_airport,
                    color: Colors.orange,
                  ),
                  Text('Row Widget'),
                  Icon(
                    Icons.local_atm,
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
            Switch(
                value: _darkMode,
                onChanged: (bool newBool) {
                  debugPrint('$newBool');
                  setState(() {
                    _darkMode = newBool;
                  });
                }),
            Checkbox(
                value: _checkBox,
                onChanged: (bool? newBool) {
                  debugPrint('$newBool');
                  setState(() {
                    _checkBox = newBool;
                  });
                }),
            Image.network(
              'https://www.gitbook.com/cdn-cgi/image/width=40,height=40,fit=contain,dpr=1.25,format=auto/https%3A%2F%2F2848107315-files.gitbook.io%2F~%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-MiuvPtaoZFbtH7-fTC3-887967055%252Ficon%252FJo7MIKYkK6qo2F9BV7f3%252Fcode.jpg%3Falt%3Dmedia%26token%3Df1cf7d7c-6229-4631-a4f8-e071771f2f4e',
            ),
          ],
        ),
      ),
    );
  }
}
