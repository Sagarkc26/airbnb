import 'package:airbnb/Best_offers/Details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BestOffer extends StatefulWidget {
  const BestOffer({super.key});

  @override
  State<BestOffer> createState() => _BestOfferState();
}

class _BestOfferState extends State<BestOffer> {
  final List<Map<String, dynamic>> _BlistItem = [
    {
      "name": "Museum",
      "image": "https://images.pexels.com/photos/69903/pexels-photo-69903.jpeg",
      "title": "The most visited museum in the world",
      "location": "Louvre in Paris, France",
      "ticket": "Tickets from NRP 21,999",
      "rating": 3
    },
    {
      "name": "Car Rental",
      "image":
          "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1283&q=80",
      "title": "Connecting you to the biggest brands in car rental",
      "location": "100 New Bridge Street, London",
      "ticket": "Rest price start from from NRP 21,999",
      "rating": 3.5
    },
    {
      "name": "Mountain",
      "image":
          "https://images.unsplash.com/photo-1585409677983-0f6c41ca9c3b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80",
      "title": "Mount Everest is Earth's highest mountain above sea level",
      "location": "Solukhumbu District, Province No. 1, Nepal",
      "ticket": "Ticket start from NRP 121999",
      "rating": 4.5
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Best Offers",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                "View all",
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.blue),
              ),
            )
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.524,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: _BlistItem.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.0, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              BestofferDetails(map: _BlistItem[index]),
                        ));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    '${_BlistItem[index]["image"]}'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${_BlistItem[index]['title']}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 22),
                            ),
                            Text("${_BlistItem[index]['name']}"),
                            RatingBar.builder(
                              itemSize: 20,
                              initialRating: 4,
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
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "${_BlistItem[index]['location']}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "${_BlistItem[index]['ticket']}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
