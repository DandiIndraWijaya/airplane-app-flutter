import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class DestinationCard extends StatelessWidget {
  final String name;
  final String city;
  final String imageUrl;
  final double rating;

  const DestinationCard(
      {Key? key,
      required this.name,
      required this.city,
      required this.imageUrl,
      required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 323,
      margin: EdgeInsets.only(left: defaultMargin),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18), color: kWhiteColor),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: 180,
          height: 220,
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                image: AssetImage(imageUrl),
              )),
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 55,
              height: 30,
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius:
                      const BorderRadius.only(bottomLeft: Radius.circular(18))),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      margin: const EdgeInsets.only(right: 2),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/icon_star.png'))),
                    ),
                    Text(
                      rating.toString(),
                      style: blackTextStyle.copyWith(fontWeight: medium),
                    )
                  ]),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style:
                    blackTextStyle.copyWith(fontWeight: medium, fontSize: 18),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                city,
                style: greyTextStyle.copyWith(
                  fontWeight: light,
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
