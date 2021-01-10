part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  final Transaction transaction;

  ProfilePage({this.transaction});
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(children: [
          Stack(
              //Upper background color
              children: <Widget>[
                // ClipPath(
                //   clipper: MyCustomClipper(),
                //   child: Container(
                //     height: MediaQuery.of(context).size.height * 0.3,
                //     color: orangeColor,
                //   ),
                // ),
                Align(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      width: 110,
                      height: 110,
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                                (context.bloc<UserCubit>().state as UserLoaded)
                                    .user
                                    .picturePath),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Text(
                      (context.bloc<UserCubit>().state as UserLoaded).user.name,
                      style: blackFontStyle2,
                    ),
                    Text(
                      (context.bloc<UserCubit>().state as UserLoaded)
                          .user
                          .email,
                      style: greyFontStyle.copyWith(fontSize: 15),
                    ),
                  ],
                )),
              ]),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 36, defaultMargin, 15),
            height: 45,
            child: RaisedButton(
              onPressed: () {},
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: softGreyColor,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.edit,
                      color: orangeColor,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Text(
                      'Edit Profile',
                      style: greyFontStyle,
                    ),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_right_outlined,
                        color: Colors.black),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 10, defaultMargin, 15),
            height: 45,
            child: RaisedButton(
              onPressed: () {},
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: softGreyColor,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: orangeColor,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Text(
                      'Home Address',
                      style: greyFontStyle,
                    ),
                    Spacer(),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 10, defaultMargin, 15),
            height: 45,
            child: RaisedButton(
              onPressed: () {},
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: softGreyColor,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.credit_card,
                      color: orangeColor,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Text(
                      'Payments',
                      style: greyFontStyle,
                    ),
                    Spacer(),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 10, defaultMargin, 15),
            height: 45,
            child: RaisedButton(
              onPressed: () {},
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: softGreyColor,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.help,
                      color: orangeColor,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Text(
                      'Help Center',
                      style: greyFontStyle,
                    ),
                    Spacer(),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 10, defaultMargin, 15),
            height: 45,
            child: RaisedButton(
              onPressed: () {},
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: softGreyColor,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.book,
                      color: orangeColor,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Text(
                      'Terms and Condition',
                      style: greyFontStyle,
                    ),
                    Spacer(),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 10, defaultMargin, 15),
            height: 45,
            child: RaisedButton(
              onPressed: () {},
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: softGreyColor,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: orangeColor,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Text(
                      'Log Out',
                      style: greyFontStyle,
                    ),
                    Spacer(),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

// class MyCustomClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.lineTo(size.width, 0);
//     path.lineTo(size.width, size.height - 80);
//     path.lineTo(0, size.height);

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }
