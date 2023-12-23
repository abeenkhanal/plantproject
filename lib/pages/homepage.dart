// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:plantproject/models/product_model.dart';
import 'package:plantproject/widgets/home_category.dart';
import 'package:plantproject/widgets/home_filter.dart';
import 'package:plantproject/widgets/home_tiltle.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<Map<String, dynamic>> categories = [
    {"id": 1, "name": "All"},
    {"id": 2, "name": "Indoor"},
    {"id": 3, "name": "Outdoor"},
    {"id": 4, "name": "aromatic"},
    {"id": 5, "name": "Succelant"},
  ];
  List<ProductMOdel> products = [
    ProductMOdel(
        productName: "First Product",
        productImage:
            "https://images.pexels.com/photos/1974508/pexels-photo-1974508.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        isFavourite: false,
        category: "indoor",
        price: 20.5),
    ProductMOdel(
        productName: "Second Product",
        productImage:
            "https://media.istockphoto.com/id/1380361370/photo/decorative-banana-plant-in-concrete-vase-isolated-on-white-background.jpg?s=1024x1024&w=is&k=20&c=OBhoaIvgZ3zLyrg4HND4neerw648SBwE0HMKQjxrqdM=",
        isFavourite: false,
        category: "indoor",
        price: 5.5),
    ProductMOdel(
        productName: "Third Product",
        productImage:
            "https://media.istockphoto.com/id/1282626501/photo/green-tree-and-flowers-in-pots-decoration-isolated-on-white-background.jpg?s=1024x1024&w=is&k=20&c=GI_9HutcVCilUKHTHw8UZsxSRHM1Ke7GYaR8Of4ox7A=",
        isFavourite: false,
        category: "indoor",
        price: 5.5),
    ProductMOdel(
        productName: "Fourth Product",
        productImage:
            "https://media.istockphoto.com/id/453235617/photo/fresh-banana.jpg?s=1024x1024&w=is&k=20&c=G2rptkf2ro948_ZgY1Ozy5dDUTB82kQqHFmSfP3nOjg=",
        isFavourite: false,
        category: "indoor",
        price: 5.5),
    ProductMOdel(
        productName: "Fifth Product",
        productImage:
            "https://media.istockphoto.com/id/529056320/photo/small-banana-tree-isolated-on-white.jpg?s=1024x1024&w=is&k=20&c=J6DA-5a_a1i_yzf2-1HzHRQoBiUgcH9Z75_1xAA6voA=",
        isFavourite: false,
        category: "indoor",
        price: 5.5),
  ];
  Map<String, dynamic> selectedCategory = categories.first;
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            home_title(context),
            SizedBox(
              height: deviceHeight * 0.0,
            ),
            home_filter(context),
            SizedBox(
              height: deviceHeight * 0.02,
            ),
            home_catrgory(
                context: context,
                deviceHeight: deviceHeight,
                categories: categories,
                selectedCategory: selectedCategory,
                onClick: (Map<String, dynamic> category) {
                  setState(() {
                    selectedCategory = category;
                  });
                }),
            SizedBox(
              height: deviceHeight * 0.04,
            ),
            SizedBox(
              height: deviceHeight * 0.3,
              // color: Colors.red,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 3.0,
                      color: Colors.white,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        // margin: EdgeInsets.only(left: 5),
                        width: deviceWidth * 0.4,
                        // color: Colors.blue,
                        child: Column(children: [
                          Stack(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: Colors.red,
                                child: SizedBox(
                                  height: deviceHeight * 0.17,
                                  width: double.infinity,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      products[index].productImage,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.favorite,
                                    // color: products[index].isFavourite
                                    //           ? Colors.red
                                    //           : Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Row(children: [
                              Expanded(
                                child: SizedBox(
                                  // color: Colors.blue,
                                  height: double.maxFinite,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        "category",
                                        style: TextStyle(
                                            color: Colors.grey[700],
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      const Text(
                                        "Name",
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 7, 7, 7),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "Price",
                                        style: TextStyle(
                                            color: Colors.grey[700],
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      const Text(
                                        "\$ 44.8",
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 8, 8, 8),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Theme.of(context).primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Icon(Icons.add),
                                    ),
                                  ),
                                ],
                              )
                            ]),
                          )
                        ]),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
