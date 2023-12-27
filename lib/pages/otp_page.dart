import "package:appointment_app/components/otp_input_component.dart";
import "package:flutter/material.dart";

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Forget Password",
              style: TextStyle(
                  fontFamily: "PoppinsBold",
                  fontSize: 18,
                  color: Colors.black)),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const SizedBox(height: 70),
                const Text("Code has been sent to",
                    style: TextStyle(
                        fontFamily: "PoppinsRegular",
                        fontSize: 15,
                        color: Colors.black)),
                const Text("example@gmail.com",
                    style: TextStyle(
                        fontFamily: "PoppinsRegular",
                        fontSize: 15,
                        color: Colors.black)),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OtpInputContainer(),
                    SizedBox(
                      width: 10,
                    ),
                    OtpInputContainer(),
                    SizedBox(
                      width: 10,
                    ),
                    OtpInputContainer(),
                    SizedBox(
                      width: 10,
                    ),
                    OtpInputContainer(),
                    SizedBox(
                      width: 10,
                    ),
                    OtpInputContainer(),
                  ],
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Didn't recieve the code?",
                        style: TextStyle(
                            fontFamily: "PoppinsRegular",
                            fontSize: 15,
                            color: Colors.black)),
                    Text(" Resend",
                        style: TextStyle(
                            fontFamily: "PoppinsRegular",
                            fontSize: 15,
                            color: Color.fromRGBO(197, 139, 242, 1))),
                  ],
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/main_page");
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color.fromRGBO(157, 206, 255, 1),
                              Color.fromRGBO(146, 163, 253, 1),
                            ]),
                        borderRadius: BorderRadius.circular(30)),
                    child: const Center(
                      child: Text("VERIFY",
                          style: TextStyle(
                              fontFamily: "PoppinsBold",
                              fontSize: 15,
                              color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
