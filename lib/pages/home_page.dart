import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_dropdown_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.05),
          width: deviceWidth,
          height: deviceHeight,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _pageTitle(),
                  _bookRideWidget(deviceHeight, deviceWidth),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: _astroImageWidget(deviceHeight, deviceWidth),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
        color: Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _astroImageWidget(double height, double width) {
    return Container(
      height: height * 0.5,
      width: width * 0.65,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/astro_moon.png"),
        ),
      ),
    );
  }

  Widget _bookRideWidget(double height, double width) {
    return SizedBox(
      height: height * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropdownWidget(width),
          _travellersInformationWidget(width),
          _rideButton(width, height),
        ],
      ),
    );
  }

  Widget _destinationDropdownWidget(double width) {
    List<String> items = ['Alfwa', 'Formula'];
    return CustomDropdownButtonClass(values: items, width: width);
  }

  Widget _travellersInformationWidget(double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomDropdownButtonClass(
          values: const ["1", "2", "3", "4"],
          width: width * 0.40,
        ),
        CustomDropdownButtonClass(
          values: const ["Economy", "First", "Bussiness", "Executive"],
          width: width * 0.35,
        ),
      ],
    );
  }

  Widget _rideButton(double width, double height) {
    return Container(
      margin: EdgeInsets.only(bottom: height * 0.02),
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text("Book Ride", style: TextStyle(color: Colors.black)),
      ),
    );
  }
}
