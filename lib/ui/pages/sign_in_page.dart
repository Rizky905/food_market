part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    bool isLoading = false;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.png"), fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
              margin:
                  EdgeInsets.fromLTRB(defaultMargin, 100, defaultMargin, 15),
              child: Text(
                "Welcome Back",
                style: blackFontStyle,
              ),
            ),
            Text(
              "Sign in with your email and password \n and find your best ever meal",
              textAlign: TextAlign.center,
              style: greyFontStyle,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(defaultMargin, 80, defaultMargin, 6),
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
              margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
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
              child: isLoading
                  ? SpinKitFadingCircle(
                      size: 45,
                      color: orangeColor,
                    )
                  : RaisedButton(
                      onPressed: () {},
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: orangeColor,
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't Have an Account ? ",
                  style: greyFontStyle,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(SignUpPage());
                  },
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.poppins(
                        color: orangeColor, fontWeight: FontWeight.bold),
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

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: softGreyColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
