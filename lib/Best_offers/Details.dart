import 'package:flutter/material.dart';

class BestofferDetails extends StatefulWidget {
  final Map map;
  const BestofferDetails({
    Key? key,
    required this.map,
  }) : super(key: key);

  @override
  State<BestofferDetails> createState() => _BestofferDetailsState();
}

class _BestofferDetailsState extends State<BestofferDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black54),
        elevation: 0,
        backgroundColor: Colors.grey[50],
        title: const Text(
          "Best Offers",
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.map['image']),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.map['title'],
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      widget.map['location'],
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Text(
                          widget.map['ticket'],
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w300),
                        ),
                      ),
                      Text(
                        widget.map['name'],
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.055,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff457b9d),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25))),
                        onPressed: () {},
                        child: const Text("View Map")),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
