import 'package:flutter/material.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemExtent: 163,
      itemBuilder: (BuildContext context, int index) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black.withOpacity(0.2)),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              clipBehavior: Clip.hardEdge,
              child: Row(
                children: [
                  Image.asset("assets/images/avatar.png"),
                  SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text("Avatar: Fire and Ash", style: TextStyle(fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5),
                      Text("December 17, 2025", style: TextStyle(color: Colors.grey),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,),
                      SizedBox(height: 20),
                      Text('Despite another significant victory over the humans, Jake Sully and the rest of his family are in mourning, having lost their eldest son, Neteyam. Neytiri, overcome with grief, withdraws and distances herself from her adopted son, Spider, who is already in grave danger—his oxygen mask could fail at any moment. Meanwhile, Colonel Miles Quaritch prepares to strike again with the help of a powerful ally: he has managed to recruit the Flame and Ash clan, led by the warrior Varang, who is embittered by Eywa.',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5),
                 ],
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  print('11');
                },
              ),
            ),
          ],
        ),
      );
     },
    );
  }
}
