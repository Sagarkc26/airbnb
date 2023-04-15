import 'package:airbnb/Warm_weathergateways/description.dart';
import 'package:flutter/material.dart';

class WarmWeatherGateway extends StatefulWidget {
  const WarmWeatherGateway({super.key});

  @override
  State<WarmWeatherGateway> createState() => _WarmWeatherGatewayState();
}

class _WarmWeatherGatewayState extends State<WarmWeatherGateway> {
  final List<Map<String, dynamic>> _WlistItem = [
    {
      "name": "Dubai",
      "image":
          "http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcTnavcE0R1cW9vbZSJU9A_92W41dYEqmnQRVz51osw9lq-dYLXMRz2uqIIL1LrWzvQN",
      "destination1image":
          "https://www.bautrip.com/images/what-to-visit/burj-khalifa.jpg",
      "destination1title": "Burj-Khalifa",
      "destination2image":
          "https://res.cloudinary.com/thrillophilia/image/upload/c_fill,f_auto,fl_progressive.strip_profile,g_auto,h_600,q_auto,w_auto/v1/filestore/4v52cyzcy32psulhzs1ji52cgq4j_1540534669_DUBAI_2.jpg",
      "destinations2title": "Dubai Aquarium & Underwater Zoo",
    },
    {
      "name": "Maldives",
      "image":
          "https://www.gannett-cdn.com/media/2023/01/10/USATODAY/usatsports/The-Ritz-Carlton.jpg?width=660&height=495&fit=crop&format=pjpg&auto=webp",
      "destination1image":
          "https://img.traveltriangle.com/blog/wp-content/uploads/2020/01/Places-To-Visit-In-Maldives_11th-jun.jpg",
      "destination1title": "Malé Atoll",
      "destination2image":
          "https://ihplb.b-cdn.net/wp-content/uploads/2021/09/artificial-beach.jpg",
      "destinations2title": "Artificial Beach",
    },
    {
      "name": "London",
      "image":
          "https://cdn.britannica.com/01/94501-050-7C939333/Big-Ben-London.jpg",
      "destination1image":
          "https://cdn.londonandpartners.com/-/media/images/london/visit/london-organisations/westminster-abbey/westminster-abbey-640.jpg",
      "destination1title": "Westminster Abbey",
      "destination2image":
          "https://cdn.londonandpartners.com/-/media/images/london/visit/things-to-do/sightseeing/london-attractions/coca-cola-london-eye/the-london-eye-640x360.jpg",
      "destinations2title": "The London Eye",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: const Text(
                "Warm-weather Gateways",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
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
          height: MediaQuery.of(context).size.height * 0.34,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _WlistItem.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return WarmweatherDetails(map: _WlistItem[index]);
                          },
                        ));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    '${_WlistItem[index]["image"]}'),
                                fit: BoxFit.cover)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width: MediaQuery.of(context).size.width * 0.65,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.4),
                                    borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10))),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 8),
                                  child: Text(
                                    "${_WlistItem[index]['name']}",
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
