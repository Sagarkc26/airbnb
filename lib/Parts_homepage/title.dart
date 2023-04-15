import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
            height: 50,
            width: 50,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn.pixabay.com/photo/2015/10/30/20/13/sunrise-1014712_960_720.jpg"),
            )),
        const Text(
          "Good morning !!!",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
            )),
      ],
    );
  }
}
