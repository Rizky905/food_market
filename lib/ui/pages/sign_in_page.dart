part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
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
                  ? loadingIndicator
                  : RaisedButton(
                      onPressed: () async {
                        setState(() {
                          isLoading = true;
                        });

                        await context.bloc<UserCubit>().signIn(
                            emailController.text, passwordController.text);
                        UserState state = context.bloc<UserCubit>().state;
                        if (state is UserLoaded) {
                          context.bloc<FoodCubit>().geFoods();
                          context.bloc<TransactionCubit>().getTransaction();
                          Get.to(MainPage());
                        } else {
                          Get.snackbar("", "",
                              backgroundColor: orangeColor,
                              icon: Icon(MdiIcons.closeCircle,
                                  color: Colors.white),
                              titleText: Text('Sign In failed',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500)),
                              messageText:
                                  Text((state as UserLoadingFailed).message));
                          setState(() {
                            isLoading = false;
                          });
                        }
                      },
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
                    setState(() {
                      Get.to(SignUpPage());
                    });
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
