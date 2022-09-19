import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_online_ui/json/const.dart';
import 'package:shopping_online_ui/theme/colors.dart';
import 'package:shopping_online_ui/widget/custom_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(homeImg), fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.favorite,
                      size: 28,
                      color: white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      CupertinoIcons.search,
                      size: 28,
                      color: white,
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Winter Collection',
                        style: TextStyle(
                            color: white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: const [
                          Text(
                            'Discover',
                            style: TextStyle(
                                color: white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: white,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Category',
                  style: TextStyle(
                      color: black, fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      'All',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(categories.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    height: 200,
                    width: 160,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      categories[index]['imgUrl'] as String),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: black.withOpacity(0.2),
                          ),
                        ),
                        Positioned(
                          bottom: 30,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              categories[index]['title'].toString(),
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recommended for you',
                  style: TextStyle(
                      color: black, fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      'All',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(recommends.length, (index) {
                return Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Container(
                        height: 180,
                        width: 140,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                            recommends[index]['imgUrl'].toString(),
                          )),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 140,
                        child: Text(
                          recommends[index]['title'].toString(),
                          style: const TextStyle(
                              color: black,
                              fontWeight: FontWeight.bold,
                              height: 1.5
                          ),
                        ),
                      ),
                      const SizedBox(height: 5,),
                      SizedBox(
                        width: 140,
                        child: Text(
                          "\$${recommends[index]['price']}",
                          style: const TextStyle(
                              color: grey,
                              fontWeight: FontWeight.bold,
                              height: 1.5
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 40,),
          CustomeCarouselHomePage(
            items: slider,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recent viewed',
                  style: TextStyle(
                      color: black, fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      'All',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(recently.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Container(
                        height: 180,
                        width: 140,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                recently[index]['imgUrl'].toString(),
                              )),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 140,
                        child: Text(
                          recommends[index]['title'].toString(),
                          style: const TextStyle(
                              color: black,
                              fontWeight: FontWeight.bold,
                              height: 1.5
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
