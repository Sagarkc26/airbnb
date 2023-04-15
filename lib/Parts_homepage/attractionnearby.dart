import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AttractionNearby extends StatefulWidget {
  const AttractionNearby({super.key});

  @override
  State<AttractionNearby> createState() => _AttractionNearbyState();
}

class _AttractionNearbyState extends State<AttractionNearby> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Attraction Nearby",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            ),
            InkWell(
              onTap: () {
                print("View all");
              },
              child: const Text(
                "See all",
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.blue),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.13,
          width: MediaQuery.of(context).size.width,
          child: Row(children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.13,
              width: MediaQuery.of(context).size.width * 0.37,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/4a/95/ac/pashupatinath-is-the.jpg?w=1100&h=-1&s=1"),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Pashupatinath Temple (Kathmandu,Nepal)",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Religous site",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "2 mi",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    RatingBar.builder(
                      itemSize: 20,
                      initialRating: 4.5,
                      maxRating: 5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.only(right: 4),
                      itemBuilder: (context, index) {
                        return const Icon(
                          Icons.star,
                          color: Colors.amber,
                        );
                      },
                      onRatingUpdate: (value) => print("rating"),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Open now",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ],
    );
  }
}
