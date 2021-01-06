part of 'pages.dart';

class SuccessOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
          title: "You've make order",
          subtitle:
              "Jus't stay at home while we're\n preparing your best foods",
          picturePath: 'assets/bike.png',
          buttonTitle1: 'Order other foods',
          buttonTap1: () {},
          buttonTitle2: 'View My Order',
          buttonTap2: () {}),
    );
  }
}
