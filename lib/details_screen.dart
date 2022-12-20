import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/colors.dart';

class DetailsScreen extends StatelessWidget {
  String imagePath;
  String plantName;
  String country;

  String price;

  DetailsScreen(this.imagePath, this.plantName, this.price, this.country);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: SizedBox(
                height: size.height * 0.8,
                child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20 * 3),
                      child: Column(
                        children: [
                          Align(
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: SvgPicture.asset(
                                  'assets/icons/back_arrow.svg'),
                            ),
                            alignment: Alignment.topLeft,
                          ),
                          Spacer(),
                          iconWidget(size, 'assets/icons/sun.svg'),
                          iconWidget(size, 'assets/icons/icon_2.svg'),
                          iconWidget(size, 'assets/icons/icon_3.svg'),
                          iconWidget(size, 'assets/icons/icon_4.svg'),
                        ],
                      ),
                    )),
                    Container(
                      height: size.height * 0.8,
                      width: size.width * 0.75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(63),
                              topLeft: Radius.circular(63)),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 60,
                                color: kPrimaryColor.withOpacity(0.29))
                          ],
                          image: DecorationImage(
                              alignment: Alignment.centerLeft,
                              fit: BoxFit.cover,
                              image: NetworkImage(imagePath))),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(plantName,
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(
                                  color: kTextColor,
                                  fontWeight: FontWeight.bold)),
                      // Spacer(),
                      Text(country,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: kPrimaryColor.withOpacity(0.5),
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 160),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Text(
                            price,
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                ?.copyWith(color: kPrimaryColor),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                    height: 84,
                    width: size.width / 2,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: kPrimaryColor),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'Buy Now',
                        style: TextStyle(color: kBackgroundColor, fontSize: 16),
                      ),
                    )),
                Expanded(
                  child: Container(
                    height: 84,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'Description',
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget iconWidget(size, iconName) => Container(
    margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
    padding: EdgeInsets.all(12),
    height: 62,
    width: 62,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: kBackgroundColor,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 22,
              color: kPrimaryColor.withOpacity(0.22)),
          //wants to remove the left shadow
          BoxShadow(
              offset: Offset(-15, -15), blurRadius: 20, color: Colors.white),
        ]),
    child: SvgPicture.asset(iconName));
