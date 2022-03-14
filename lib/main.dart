import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

void main() {
  runApp(const MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xff213A50), Color(0xff071930)])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            CircleAvatar(
              radius: 100,
              child: Image.asset('myavatar.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Aniket Das",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'An enthusiastic developer from India.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Pushing Myself Beyond My Limits💫",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Connect with Me',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    htmlOpenGithub();
                  },
                  child: Image.asset(
                    'github.png',
                    height: 50,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    htmlOpenLinkedin();
                  },
                  child: Image.asset(
                    'linkedin.png',
                    height: 62,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    htmlOpenTwitter();
                  },
                  child: Image.asset(
                    'twitter.png',
                    height: 50,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            GestureDetector(
                onTap: () {
                  htmlOpenResume();
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      gradient: LinearGradient(colors: [
                        Color(0xffA2834D),
                        Color(0xffBC9A5F),
                      ])),
                  child: const Text(
                    "Download My CV",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                )),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Thankyou for visiting",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void htmlOpenGithub() {
  String github = "https://github.com/";
  html.window.open('https://github.com/kodepirate', 'github');
}

void htmlOpenLinkedin() {
  String linkedin = "https://linkedin.com/";
  html.window.open('https://www.linkedin.com/in/aniket0fficial/', 'linkedin');
}

void htmlOpenTwitter() {
  String twitter = "https://twitter.com/";
  html.window.open('https://twitter.com/Aniket0fficial', 'twitter');
}

void htmlOpenResume() {
  String resume = "https://resumelink.com/";
  html.window.open(resume, 'resume');
}
