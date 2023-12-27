import "package:flutter/material.dart";

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(242, 244, 247, 1)),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome Back,",
                style: TextStyle(
                    fontFamily: "PoppinsRegular",
                    fontSize: 12,
                    color: Color.fromRGBO(119, 130, 147, 1))),
            SizedBox(
              height: 5,
            ),
            Text("Stefani Wong",
                style: TextStyle(
                    fontFamily: "PoppinsBold",
                    fontSize: 15,
                    color: Colors.black)),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.heart_broken_outlined,
                color: Colors.black,
              ))
        ],
        leading: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://imgs.search.brave.com/gNfL90ggO5Q6n7GlTN5OMzlehoxYKWIHJ2qPLh_CCWs/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1wc2QvM2Qt/aWxsdXN0cmF0aW9u/LWh1bWFuLWF2YXRh/ci1wcm9maWxlXzIz/LTIxNTA2NzExMzQu/anBnP3NpemU9NjI2/JmV4dD1qcGc")),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color.fromRGBO(152, 163, 179, 1),
                  ),
                  enabledBorder: border,
                  focusedBorder: border,
                  border: border,
                  hintText: "Search",
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(152, 163, 179, 1),
                      fontFamily: "PoppinsRegular"),
                  filled: true,
                  fillColor: Color.fromRGBO(242, 244, 247, 1)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Upcoming Appointment",
                    style: TextStyle(
                        fontFamily: "PoppinsBold",
                        fontSize: 18,
                        color: Colors.black)),
                Text(
                  "SEE ALL",
                  style: TextStyle(
                      fontSize: 13,
                      color: Color.fromRGBO(146, 163, 253, 1),
                      fontFamily: "PoppinsBold"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Doctor Speciality",
                    style: TextStyle(
                        fontFamily: "PoppinsBold",
                        fontSize: 18,
                        color: Colors.black)),
                Text(
                  "SEE ALL",
                  style: TextStyle(
                      fontSize: 13,
                      color: Color.fromRGBO(146, 163, 253, 1),
                      fontFamily: "PoppinsBold"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
