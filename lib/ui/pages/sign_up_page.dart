part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController nameController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.png"), fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(defaultMargin, 80, defaultMargin, 15),
              child: Text(
                "Create Your Account",
                style: GoogleFonts.poppins(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "Create an account by filling in info below\n and find your best ever meal",
              textAlign: TextAlign.center,
              style: greyFontStyle,
            ),
            Container(
              width: 110,
              height: 110,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/photo_border.png'),
              )),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/aimer.png'), fit: BoxFit.cover),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(defaultMargin, 30, defaultMargin, 1),
              child: TextFieldContainer(
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: "Name",
                      icon: Icon(Icons.person, color: greyColor),
                      border: InputBorder.none),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(defaultMargin, 15, defaultMargin, 1),
              child: TextFieldContainer(
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: "Email",
                      icon: Icon(Icons.person, color: greyColor),
                      border: InputBorder.none),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(defaultMargin, 15, defaultMargin, 6),
              child: TextFieldContainer(
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      icon: Icon(Icons.lock, color: greyColor),
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: greyColor,
                      ),
                      border: InputBorder.none),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 15),
              height: 45,
              padding: EdgeInsets.symmetric(horizontal: 9),
              child: RaisedButton(
                onPressed: () {
                  Get.to(AddressPage());
                },
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: orangeColor,
                child: Text(
                  'Continue',
                  style: GoogleFonts.poppins(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
