import 'package:flutter/material.dart';

import 'package:movie_go/resources/resources.dart';
import 'package:movie_go/widgets/elements/radial_percent_widget.dart';

class MovieDetailsInfoWidget extends StatelessWidget {
  const MovieDetailsInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _TopPostersWidget(),
        Padding(padding: const EdgeInsets.all(15.0), child: _MovieNameWidget()),
        _ScoreWidget(),
        _SummaryWidget(),
        Padding(padding: const EdgeInsets.all(10.0), child: _OwerviewWidget()),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: _DescriptionWidget(),
        ),
        SizedBox(height: 20),
        _StaffWidgets(),
      ],
    );
  }

  Text _DescriptionWidget() {
    return Text(
      "Set in the 22nd century, The Matrix tells the story of a computer hacker who joins a group of underground insurgents fighting the vast and powerful computers who now rule the earth.",
      style: TextStyle(fontSize: 16, color: Colors.white),
    );
  }

  Text _OwerviewWidget() {
    return Text(
      "Overview",
      style: TextStyle(fontSize: 16, color: Colors.white),
    );
  }
}

class _TopPostersWidget extends StatelessWidget {
  const _TopPostersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image(
            image: AssetImage(AppImages.topHeader),
            width: double.infinity,
            height: 220,
            fit: BoxFit.cover,
          ),

          Positioned(
            top: 20,
            left: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image(
                image: AssetImage(AppImages.topHeaderSubImage),
                width: 150,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MovieNameWidget extends StatelessWidget {
  const _MovieNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 2,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Matrix',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          TextSpan(
            text: ' (1999)',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class _ScoreWidget extends StatelessWidget {
  const _ScoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(onPressed: () {}, child: Row(
          children: [
            RadialPercentWidget(percent: 0.87),
             SizedBox(width: 5),
             
            Text('User Score'),
          ],
        )),
        Container(width: 1, height: 15, color: Colors.grey),
        TextButton(onPressed: () {}, child: Row(
          children: [
            Icon(Icons.play_arrow, size: 20),
              SizedBox(width: 10),
            Text('Play Trailer'),
          ],
        )),
      ],
    );
  }
}

class _SummaryWidget extends StatelessWidget {
  const _SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'R, 03/31/1999 (CA) Action and Science Fiction 2h 16m',
      maxLines: 2,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16, color: Colors.white),
    );
  }
}

class _StaffWidgets extends StatelessWidget {
  const _StaffWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final nameStyle = TextStyle(fontSize: 16, color: Colors.white);
    final roleStyle = TextStyle(fontSize: 16, color: Colors.white);
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Lana Wachowski", style: nameStyle),
                Text("Director, Writer", style: roleStyle),
              ],
            ),
            SizedBox(width: 20),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Lilly Wachowski", style: nameStyle),
                    Text("Director, Writer", style: roleStyle),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
