part of 'pages.dart';

class SuccessSignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: "Yay! You're set",
        subtitle: "Now you're able to order\n some best foods",
        picturePath: 'assets/food_wishes.png',
        buttonTitle1: 'Find Foods',
        buttonTap1: () {},
      ),
    );
  }
}
