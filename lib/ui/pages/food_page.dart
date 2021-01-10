part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;
    return ListView(
      children: [
        Column(
          children: [
            //header
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              color: Colors.white,
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('FOOD MARKET',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: orangeColor)),
                      Text(
                        "Let's get some food",
                        style:
                            greyFontStyle.copyWith(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  //user photo profile
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(
                              (context.bloc<UserCubit>().state as UserLoaded)
                                  .user
                                  .picturePath),
                          fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
            ),

            //search bar
            SearchBar(),

            //list food
            Container(
              height: 200,
              width: double.infinity,
              child: BlocBuilder<FoodCubit, FoodState>(
                builder: (_, state) => (state is FoodLoaded)
                    ? ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: state.foods
                                .map((e) => Padding(
                                      padding: EdgeInsets.only(
                                          left: (e == mockFoods.first)
                                              ? defaultMargin
                                              : 0,
                                          right: defaultMargin),
                                      child: GestureDetector(
                                          onTap: () {
                                            Get.to(FoodDetailsPage(
                                              transaction: Transaction(
                                                  food: e,
                                                  user: (context
                                                          .bloc<UserCubit>()
                                                          .state as UserLoaded)
                                                      .user),
                                              onBackButtonPressed: () {
                                                Get.back();
                                              },
                                            ));
                                          },
                                          child: FoodCard(e)),
                                    ))
                                .toList(),
                          )
                        ],
                      )
                    : Center(child: loadingIndicator),
              ),
            ),

            //list food tab
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    titles: ['New Taste', 'Popular', 'Recomended'],
                    selectedIndex: selectedIndex,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  BlocBuilder<FoodCubit, FoodState>(builder: (_, state) {
                    if (state is FoodLoaded) {
                      List<Food> foods = state.foods
                          .where((element) =>
                              element.types.contains((selectedIndex == 0)
                                  ? FoodType.new_food
                                  : (selectedIndex == 1)
                                      ? FoodType.popular_food
                                      : FoodType.recommended))
                          .toList();
                      return Column(
                        children: foods
                            .map((e) => Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      defaultMargin, 10, defaultMargin, 16),
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.to(FoodDetailsPage(
                                        transaction: Transaction(
                                            food: e,
                                            user: (context
                                                    .bloc<UserCubit>()
                                                    .state as UserLoaded)
                                                .user),
                                        onBackButtonPressed: () {
                                          Get.back();
                                        },
                                      ));
                                    },
                                    child: FoodListItem(
                                        food: e, itemWidth: listItemWidth),
                                  ),
                                ))
                            .toList(),
                      );
                    } else {
                      return Center(
                        child: loadingIndicator,
                      );
                    }
                  }),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            )
          ],
        )
      ],
    );
  }
}
