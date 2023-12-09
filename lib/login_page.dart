import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_latihan/detail_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(
          children: [
            Center(
              child: Text(
                'Welcome!',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset(
              'assets/images/2461656.jpg',
              width: 400,
              height: 400,
            ),
            // Container(
            //     color: Colors.amber,
            //     padding: const EdgeInsets.all(10),
            //     width: 200,
            //     height: 50,
            //     child: Center(
            //       child: Text(
            //         'Sign In',
            //         style: TextStyle(
            //           fontSize: 24,
            //         ),
            //       ),
            //     )),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //     color: Colors.grey,
            //     padding: const EdgeInsets.all(10),
            //     width: 200,
            //     height: 50,
            //     child: Center(
            //       child: Text(
            //         'Sign Up',
            //         style: TextStyle(
            //           fontSize: 24,
            //         ),
            //       ),
            //     )),
            OutlinedButton(
              style: OutlinedButton.styleFrom(backgroundColor: Colors.amber),
              child: Text(
                'Sign In',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailPage();
                }));
              },
            ),
            OutlinedButton(
              style:
                  OutlinedButton.styleFrom(backgroundColor: Colors.lightBlue),
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return DetailPage();
                  },
                ));
              },
            )
            // TextField(
            //   onChanged: (String value) {
            //     setState(() {
            //       username = value;
            //     });
            //   },
            // ),
          ],
        )
      ]),
    );
  }
}
