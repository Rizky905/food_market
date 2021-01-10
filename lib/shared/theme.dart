part of 'shared.dart';

Color mainColor = "FFC700".toColor();
Color greyColor = "8D92A3".toColor();
Color orangeColor = "FC6011".toColor();
Color softGreyColor = "F2F2F2".toColor();

Widget loadingIndicator = SpinKitFadingCircle(
  size: 45,
  color: orangeColor,
);

TextStyle greyFontStyle = GoogleFonts.poppins().copyWith(color: greyColor);

TextStyle blackFontStyle = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold);

TextStyle blackFontStyle2 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);

TextStyle blackFontStyle3 = GoogleFonts.poppins().copyWith(
  color: Colors.black,
);
const double defaultMargin = 24;
