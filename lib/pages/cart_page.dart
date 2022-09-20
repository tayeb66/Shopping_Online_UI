import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_online_ui/json/const.dart';
import 'package:shopping_online_ui/theme/colors.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        Column(
          children: List.generate(cartList.length, (index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 180,
                          width: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: black.withOpacity(.2),
                              image: DecorationImage(
                                  image: NetworkImage(cartList[index]['img']),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              cartList[index]['name'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 22),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              ' ref: ${cartList[index]['ref']}',
                              style: TextStyle(color: black.withOpacity(.5)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              cartList[index]['size'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 22),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Price: ${cartList[index]['price']}',
                                  style: const TextStyle(fontSize: 20),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: black.withOpacity(.7))),
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                    size: 15,
                                    color: black.withOpacity(.7),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  '1',
                                  style: TextStyle(fontSize: 19),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: black.withOpacity(.7))),
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    size: 15,
                                    color: black.withOpacity(.7),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
          }),
        ),
        const SizedBox(
          height: 20,
        ),
        Divider(
          color: black.withOpacity(.8),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 40, right: 20),
          child: Text(
            'Do you have promotion code ?',
            style: TextStyle(fontSize: 15),
          ),
        ),
        Divider(
          color: black.withOpacity(.8),
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Delivery',
                style: TextStyle(color: black.withOpacity(.7), fontSize: 17),
              ),
              Text(
                'Standard-free',
                style: TextStyle(color: black.withOpacity(.7), fontSize: 17),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: ElevatedButton(
            style: TextButton.styleFrom(
              backgroundColor: black,
              minimumSize: const Size(double.infinity, 50),
              shape: const StadiumBorder()
            ),
              onPressed: (){},
              child: Text('Buy for 100\$')),
        )
      ],
    );
  }
}
