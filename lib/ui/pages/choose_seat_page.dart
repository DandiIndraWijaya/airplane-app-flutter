import 'package:airplane/ui/widgets/seat_item.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 24),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Row(children: [
          Container(
            margin: const EdgeInsets.only(right: 6),
            width: 16,
            height: 16,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon_available.png'))),
          ),
          Text(
            'Available',
            style: blackTextStyle,
          ),
          Container(
            margin: const EdgeInsets.only(right: 6, left: 10),
            width: 16,
            height: 16,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon_selected.png'))),
          ),
          Text(
            'Selected',
            style: blackTextStyle,
          ),
          Container(
            margin: const EdgeInsets.only(right: 6, left: 10),
            width: 16,
            height: 16,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon_unavailable.png'))),
          ),
          Text(
            'Unvailable',
            style: blackTextStyle,
          )
        ]),
      );
    }

    Widget selectSeat() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: kWhiteColor),
        child: Column(children: [
          // NOTE: SEAT INDICATORS
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    'A',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    'B',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    '',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    'C',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    'D',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),

          // NOTE: SEAT 1
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SeatItem(
                  status: 0,
                ),
                const SeatItem(
                  status: 0,
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '1',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                const SeatItem(
                  status: 0,
                ),
                const SeatItem(
                  status: 0,
                ),
              ],
            ),
          ),

          // NOTE: SEAT 2
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SeatItem(
                  status: 0,
                ),
                const SeatItem(
                  status: 0,
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '2',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                const SeatItem(
                  status: 0,
                ),
                const SeatItem(
                  status: 2,
                ),
              ],
            ),
          ),

          // NOTE: SEAT 3
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SeatItem(
                  status: 0,
                ),
                const SeatItem(
                  status: 0,
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '3',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                const SeatItem(
                  status: 0,
                ),
                const SeatItem(
                  status: 0,
                ),
              ],
            ),
          ),

          // NOTE: SEAT 4
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SeatItem(
                  status: 0,
                ),
                const SeatItem(
                  status: 0,
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '4',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                const SeatItem(
                  status: 0,
                ),
                const SeatItem(
                  status: 2,
                ),
              ],
            ),
          ),

          // NOTE: SEAT 5
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SeatItem(
                  status: 1,
                ),
                const SeatItem(
                  status: 2,
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '5',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                const SeatItem(
                  status: 0,
                ),
                const SeatItem(
                  status: 0,
                ),
              ],
            ),
          ),
        ]),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [title(), seatStatus(), selectSeat()],
      )),
    );
  }
}
