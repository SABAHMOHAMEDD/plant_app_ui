import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:plant_app/details_screen.dart';

import 'colors.dart';

class Body extends StatelessWidget {
  static const String RouteName = 'body';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          //3amel container kber w el fo2o as8r mno seka as8r b ,27
          Container(
            margin: EdgeInsets.only(bottom: 12 * 2.5),
            height: size.height * 0.2,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25, right: 25, bottom: 40),
                  height: size.height * 0.2 - 27,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(36),
                          bottomRight: Radius.circular(36)),
                      color: kPrimaryColor),
                  child: Row(
                    children: [
                      Text(
                        'Hi plant lovers!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 54,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 50,
                                color: kPrimaryColor.withOpacity(0.23))
                          ]),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                  hintText: 'search',
                                  hintStyle: TextStyle(
                                      color: kPrimaryColor.withOpacity(0.5)),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/icons/search.svg',
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  child: Stack(
                    //  alignment: Alignment.bottomCenter,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'Recomended',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 7,
                          margin: EdgeInsets.only(right: 5),
                          color: kPrimaryColor.withOpacity(0.2),
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
                MaterialButton(
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: Text(
                    'More',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                )
              ],
            ),
          ),
          // plantCard(context)
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: [
                recomendPlantCard(
                    context,
                    'https://i.pinimg.com/564x/7c/72/8f/7c728fa911202d5a2e42d532ad5b9363.jpg',
                    'Cactus',
                    '50LE',
                    'Russia'),

                //   plantCard(context, imagePath, plantName, price, country)
                recomendPlantCard(
                    context,
                    'https://i.pinimg.com/564x/63/12/c7/6312c79aa8f93d83cea651f4dfd386bd.jpg',
                    'Angelica',
                    '70LE',
                    'Egypt'),
                recomendPlantCard(
                    context,
                    'https://i.pinimg.com/564x/05/9b/b3/059bb3a1f8347211b2d200a711a75066.jpg',
                    'Cactus',
                    '55LE',
                    'Egypt'),
                recomendPlantCard(
                    context,
                    'https://i.pinimg.com/564x/a4/c9/b6/a4c9b64c2599e7b0ec967fff0a526b0c.jpg',
                    'Cactus',
                    '45LE',
                    'Touns'),
                recomendPlantCard(
                    context,
                    'https://i.pinimg.com/564x/4a/32/e3/4a32e3cda7f3a1319b180f60624b6d3a.jpg',
                    'Cactus',
                    '55LE',
                    'Egypt'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  child: Stack(
                    //  alignment: Alignment.bottomCenter,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'Featured plants',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 7,
                          margin: EdgeInsets.only(right: 5),
                          color: kPrimaryColor.withOpacity(0.2),
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
                MaterialButton(
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: Text(
                    'More',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                featuredplantCard(
                    'https://i.pinimg.com/564x/a4/c9/b6/a4c9b64c2599e7b0ec967fff0a526b0c.jpg'),
                featuredplantCard(
                    'https://i.pinimg.com/564x/b7/7f/d2/b77fd25742ec6a4c94c5dbd2a8ab789d.jpg'),
                featuredplantCard(
                    'https://i.pinimg.com/564x/38/db/6b/38db6b835bcc35b214466cafa26403b4.jpg'),
                featuredplantCard(
                    'https://i.pinimg.com/564x/df/14/49/df14497b1516721e2b503e674faa02c8.jpg'),
                featuredplantCard(
                    'https://i.pinimg.com/564x/38/db/6b/38db6b835bcc35b214466cafa26403b4.jpg')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

Widget recomendPlantCard(context, imagePath, plantName, price, country) =>
    InkWell(
      onTap: () {
        Get.to(() => DetailsScreen(imagePath, plantName, price, country),
            transition: Transition.fade, duration: Duration(seconds: 1));
      },
      child: Container(
        margin: EdgeInsets.only(left: 20, top: 10, bottom: 20 * 2.5),
        width: 150,
        // height: 250,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10), topLeft: Radius.circular(10)),
              child: Image(
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    imagePath,
                  )),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(left: 9, top: 8),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(plantName,
                            style: TextStyle(color: Colors.black54)),
                        //  Spacer(),
                        Text(country,
                            style: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5)))
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 45,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Text(
                              price,
                              style: TextStyle(
                                  color: kPrimaryColor.withOpacity(0.5)),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );

Widget featuredplantCard(imagePath) => Container(
      margin: EdgeInsets.only(left: 20, top: 2, bottom: 2),
      width: 280,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(imagePath))),
    );
