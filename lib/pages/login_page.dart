import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
            Color.fromRGBO(146, 163, 253, 1),
            Color.fromRGBO(157, 206, 255, 1),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 200),
                const Image(
                  height: 80,
                  image: AssetImage("assets/images/main_icon.png"),
                ),
                const SizedBox(height: 200),
                const Text(
                  "By tapping 'Sign in' you agree to our Terms.",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontFamily: "PoppingRegular"),
                ),
                const Text(
                  "Learn how we process your data in our Privacy Policy and",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontFamily: "PoppinsRegular"),
                ),
                const Text(
                  "Cookies Policy",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontFamily: "PoppinsRegular"),
                ),
                const SizedBox(height: 20),
                // ignore: avoid_unnecessary_containers
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/account_creation_page");
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Center(
                      child: Text("CREATE ACCOUNT",
                          style: TextStyle(
                              fontFamily: "PoppinsBold",
                              fontSize: 15,
                              color: Color.fromRGBO(146, 163, 253, 1))),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromRGBO(157, 206, 255, 1),
                            Color.fromRGBO(146, 163, 253, 1),
                          ]),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Center(
                    child: Text("SIGN IN",
                        style: TextStyle(
                            fontFamily: "PoppinsBold",
                            fontSize: 15,
                            color: Colors.white)),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Trouble signing in?",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontFamily: "PoppinsRegular"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
