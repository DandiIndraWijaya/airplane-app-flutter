import 'package:airplane/models/destination_model.dart';
import 'package:airplane/ui/pages/choose_seat_page.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/interest_item.dart';
import 'package:airplane/ui/widgets/photo_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../shared/theme.dart';

class DetailPage extends StatelessWidget {
  final DestinationModel destination;

  const DetailPage(this.destination, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(destination.imageUrl))),
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: 224,
        margin: const EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95)
            ])),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(children: [
          // NOTE: EMBLEM
          Container(
            width: 108,
            height: 24,
            margin: const EdgeInsets.only(top: 30),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon_emblem.png'))),
          ),

          // NOTE: TITLE
          Container(
            margin: const EdgeInsets.only(top: 256),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          destination.name,
                          style: whiteTextStyle.copyWith(
                              fontWeight: semiBold, fontSize: 24),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          destination.city,
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: light),
                        )
                      ],
                    ),
                  ),
                  Row(
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
                          destination.rating.toString(),
                          style: whiteTextStyle.copyWith(fontWeight: medium),
                        )
                      ])
                ]),
          ),

          // NOTE: DESCRIPTION
          Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            width: double.infinity,
            decoration: BoxDecoration(
                color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // NOTE: ABOUT
              Text(
                'About',
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                style: blackTextStyle.copyWith(height: 2.6),
              ),

              // NOTE: PHOTOS
              const SizedBox(
                height: 20,
              ),
              Text(
                'Photos',
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                children: const [
                  PhotoItem(
                    imageUrl: 'assets/image_photo1.png',
                  ),
                  PhotoItem(
                    imageUrl: 'assets/image_photo2.png',
                  ),
                  PhotoItem(
                    imageUrl: 'assets/image_photo3.png',
                  )
                ],
              ),

              // NOTE: INTERESTS
              const SizedBox(
                height: 20,
              ),
              Text(
                'Interests',
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                children: const [
                  InterestItem(
                    text: 'Kids Park',
                  ),
                  InterestItem(
                    text: 'Honor Bridge',
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  InterestItem(
                    text: 'City Museum',
                  ),
                  InterestItem(
                    text: 'Centrall Mall',
                  )
                ],
              ),

              // NOTE: PRICE & BOOK BUTTON
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 30),
                child: Row(children: [
                  // NOTE: PRICE
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          NumberFormat.currency(
                                  locale: 'id',
                                  symbol: 'IDR ',
                                  decimalDigits: 0)
                              .format(destination.price),
                          style: blackTextStyle.copyWith(
                              fontSize: 18, fontWeight: medium),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'per orang',
                          style: greyTextStyle.copyWith(fontWeight: light),
                        )
                      ],
                    ),
                  ),
                  CustomButton(
                      title: 'Book Now',
                      width: 170,
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ChooseSeatPage(destination))))
                ]),
              )
            ]),
          )
        ]),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [backgroundImage(), customShadow(), content()],
        ),
      ),
    );
  }
}
