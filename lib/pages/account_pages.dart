import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_online_ui/json/const.dart';
import 'package:shopping_online_ui/theme/colors.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            children: [
              Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: NetworkImage(profileUrl), fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Daniel',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Member since 2019',
                    style:
                        TextStyle(fontSize: 18, color: black.withOpacity(.8)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      style: TextButton.styleFrom(backgroundColor: black),
                      onPressed: () {},
                      child: const Text('Edit Account'))
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(
                    FontAwesomeIcons.box,
                    color: black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Order',
                    style: TextStyle(color: black, fontSize: 22),
                  )
                ],
              ),
              Row(
                children: const [
                  Icon(
                    FontAwesomeIcons.locationDot,
                    color: black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Address',
                    style: TextStyle(color: black, fontSize: 22),
                  )
                ],
              ),
              Row(
                children: const [
                  Icon(
                    FontAwesomeIcons.gear,
                    color: black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(color: black, fontSize: 22),
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Divider(
          thickness: 1,
        ),
        const SizedBox(height: 20,),
        Column(
          children: List.generate(accountList.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 15, right: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(accountList[index]),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: black.withOpacity(.5),
                        size: 20,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Divider(
                   color: grey.withOpacity(.8),
                  )
                ],
              ),
            );
          }),
        )
      ],
    );
  }
}
