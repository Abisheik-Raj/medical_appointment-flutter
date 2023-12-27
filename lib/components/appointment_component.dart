import 'package:flutter/material.dart';

class AppointmentComponent extends StatelessWidget {
  const AppointmentComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  Color.fromRGBO(146, 163, 253, 1),
                  Color.fromRGBO(157, 206, 255, 1),
                ]),
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://imgs.search.brave.com/gNfL90ggO5Q6n7GlTN5OMzlehoxYKWIHJ2qPLh_CCWs/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1wc2QvM2Qt/aWxsdXN0cmF0aW9u/LWh1bWFuLWF2YXRh/ci1wcm9maWxlXzIz/LTIxNTA2NzExMzQu/anBnP3NpemU9NjI2/JmV4dD1qcGc"),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "DR William Smith",
                  style: TextStyle(
                      color: Colors.white, fontFamily: "PoppinsRegular"),
                ),
                Text(
                  "Dentist Royal Hospital",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontFamily: "PoppinsRegular"),
                )
              ],
            ),
            Icon(
              Icons.more_horiz_outlined,
              color: Colors.white,
            )
          ],
        ));
  }
}
