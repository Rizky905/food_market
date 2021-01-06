part of 'pages.dart';

class AddressPage extends StatefulWidget {
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController houseNumController = TextEditingController();

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
                "Insert your addres below",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "Make sure it's valid information",
              textAlign: TextAlign.center,
              style: greyFontStyle,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(defaultMargin, 30, defaultMargin, 1),
              child: TextFieldContainer(
                child: TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                      hintText: "Phone Number",
                      icon: Icon(Icons.person, color: greyColor),
                      border: InputBorder.none),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(defaultMargin, 15, defaultMargin, 1),
              child: TextFieldContainer(
                child: TextField(
                  controller: addressController,
                  decoration: InputDecoration(
                      hintText: "Address",
                      icon: Icon(Icons.pin_drop, color: greyColor),
                      border: InputBorder.none),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(defaultMargin, 15, defaultMargin, 6),
              child: TextFieldContainer(
                child: TextField(
                  controller: houseNumController,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "House Number",
                      icon: Icon(Icons.home, color: greyColor),
                      border: InputBorder.none),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(defaultMargin, 15, defaultMargin, 6),
              child: TextFieldContainer(
                  child: DropdownButton(
                      isExpanded: true,
                      underline: SizedBox(),
                      items: [
                        DropdownMenuItem(
                            child: Text(
                          'Bandung',
                          style: greyFontStyle,
                        )),
                        DropdownMenuItem(
                            child: Text(
                          'Jakarta',
                          style: greyFontStyle,
                        )),
                        DropdownMenuItem(
                            child: Text(
                          'Bekasi',
                          style: greyFontStyle,
                        )),
                      ],
                      onChanged: (item) {})),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 15),
              height: 45,
              padding: EdgeInsets.symmetric(horizontal: 9),
              child: RaisedButton(
                onPressed: () {},
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: orangeColor,
                child: Text(
                  'Sign Up Now',
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
