import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Groceries & Vegetables",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  getProductCard(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaR_qi2TpKPtFVqIvTcU86vyxYlrrHludBzQ&usqp=CAU",
                      "Salt",
                      "250"),
                  getProductCard(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQOTpVaWp2T9WUIv5cUlOKHRJtdAh86olW-w&usqp=CAU",
                      "Butter",
                      "400"),
                  getProductCard(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbeNScyTxXXNquy_AkM6BbUbO4FTZOIAdKtQ&usqp=CAU",
                      "Corn Flacks",
                      "790"),
                  getProductCard(
                      "data:image/jpeg;base64,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",
                      "Cuccumber",
                      "190"),
                  getProductCard(
                      "data:image/jpeg;base64,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",
                      "Tomato",
                      "200"),
                ],
              ),
            ),
            SizedBox(height: 80),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Fruits",
                style: TextStyle(fontSize: 25),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  getProductCard(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROYH-uaHxJxZllD4i4p-a6Jx_gDHTAudnBxQ&usqp=CAU",
                      "Strawberry",
                      "600"),
                  getProductCard(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0_dC1feU3XDrvij8ePDEHZGbjMb5QQkelQA&usqp=CAU",
                      "Watermelon",
                      "890"),
                  getProductCard(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLJye09qIvGDLRt2e-PZ_0UlXh-CZNhZSrDMsNlxzTXx1eJ65sP_gpcn8-IDkgBzppEqE&usqp=CAU",
                      "Mango",
                      "400"),
                  getProductCard(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAqoZUniLoT4MicGOGDCmaigJkx2XlEJnG0g&usqp=CAU",
                      "Kiwi",
                      "560"),
                  getProductCard(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-CDnqfN0VNzKeANYdL-Ay5GeMxgWcA20R5g&usqp=CAU",
                      "Banana",
                      "356"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

getProductCard(String ty, String name, String price) {
  return Card(
    color: Colors.white,
    shadowColor: Colors.grey.shade200,
    elevation: 5.0,
    child: Container(
      height: 250,
      width: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            ty,
            width: double.infinity,
            height: 200,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 14),
          ),
          Text(
            price,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    ),
  );
}
