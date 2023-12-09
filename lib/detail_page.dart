import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String username = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Center(
                  child: OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Back')),
                ),
                Center(
                  child: Image.asset(
                    'assets/images/2461656.jpg',
                    width: 400,
                    height: 400,
                  ),
                ),
                Container(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.amber,
                        hintText: 'username'),
                    onSubmitted: (String value) {
                      setState(() {
                        username = value;
                      });
                    },
                  ),
                ),
                Container(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey,
                        hintText: 'password'),
                    onSubmitted: (String value) {
                      setState(() {
                        username = value;
                      });
                    },
                  ),
                ),
                OutlinedButton(
                  style:
                      OutlinedButton.styleFrom(backgroundColor: Colors.amber),
                  child: Text(
                    'Log In',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailPage();
                    }));
                  },
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     OutlinedButton.icon(
                //         onPressed: () {}, icon: icon, label: label)
                //   ],
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}
