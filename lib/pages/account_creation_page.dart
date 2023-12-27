import "package:appointment_app/components/social_media_component.dart";
import "package:appointment_app/components/textfield_component1.dart";
import "package:appointment_app/components/textfield_component2.dart";
import "package:flutter/material.dart";

class AccountCreationPage extends StatelessWidget {
  const AccountCreationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/otp_page");
                },
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(146, 163, 253, 1),
                      fontFamily: "PoppinsRegular"),
                ),
              ),
            ),
          ],
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Create Your\nAccount",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: "PoppinsBold"),
              ),
              const SizedBox(height: 50),
              const TextFieldComponent1(
                hintText: "User Name",
              ),
              const SizedBox(height: 15),
              const TextFieldComponent1(
                hintText: "Email",
              ),
              const SizedBox(height: 15),
              const TextFieldComponent2(
                hintText: "Password",
                icon: Icon(Icons.remove_red_eye_outlined),
              ),
              const SizedBox(height: 15),
              const TextFieldComponent2(
                hintText: "Confirm",
                icon: Icon(Icons.remove_red_eye_outlined),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/account_creation_page");
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
                    child: Text("CREATE ACCOUNT",
                        style: TextStyle(
                            fontFamily: "PoppinsBold",
                            fontSize: 15,
                            color: Colors.white)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      height: 0.5,
                      color: Color.fromRGBO(229, 232, 236, 1),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "or create with",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(119, 130, 147, 1),
                          fontFamily: "PoppinsRegular"),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      height: 0.5,
                      color: Color.fromRGBO(229, 232, 236, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SocialMediaComponent(
                      imagePath:
                          "https://imgs.search.brave.com/jJCoPasn2serH2FU-dHJQycakDfaNS7AZ2vE_CuAUNg/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA1LzMyLzIwLzAz/LzM2MF9GXzUzMjIw/MDM1NV9vZEtOOU91/M1dCNmlIV0pURklF/bEZ0SmJUdXpKc3BZ/Ni5qcGc"),
                  SizedBox(
                    width: 10,
                  ),
                  SocialMediaComponent(
                      imagePath:
                          "https://imgs.search.brave.com/vTCwcACTcg2o4L_XU9oOIfkA6VLpBo1CJ618ShAOhSI/rs:fit:860:0:0/g:ce/aHR0cHM6Ly8xMDAw/bG9nb3MubmV0L3dw/LWNvbnRlbnQvdXBs/b2Fkcy8yMDE2LzEx/L05ldy1Hb29nbGUt/TG9nby00OTd4NTAw/LmpwZw"),
                  SizedBox(
                    width: 10,
                  ),
                  SocialMediaComponent(
                      imagePath:
                          "https://imgs.search.brave.com/Ou8gw4ur6Y0G-q0nQvzferFsfVXRynbzx_KI6BcX-sU/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3Jvd2RzcHJp/bmcuY29tL2Jsb2cv/d3AtY29udGVudC91/cGxvYWRzLzIwMjIv/MDgvMTgxMzEzMDQv/YXBwbGVfbG9nb19i/bGFjay5zdmdfLnBu/Zw")
                ],
              ),
            ],
          ),
        ));
  }
}
