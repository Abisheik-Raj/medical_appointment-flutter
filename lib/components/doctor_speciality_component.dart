import "package:flutter/material.dart";

class DoctorSpeciality extends StatelessWidget {
  final IconData icon;
  final String text;
  const DoctorSpeciality({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(157, 206, 255, 1),
                borderRadius: BorderRadius.circular(50)),
            child: Icon(
              icon,
              size: 30,
              color: const Color.fromRGBO(146, 163, 253, 1),
            )),
        const SizedBox(
          height: 15,
        ),
        Text(text,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontFamily: "PoppinsRegular",
                fontSize: 13,
                color: Colors.black))
      ],
    );
  }
}
