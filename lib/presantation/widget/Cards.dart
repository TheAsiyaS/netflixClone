
    
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainCardsEdition extends StatelessWidget {

  final List<String> imageUrllist;
  const MainCardsEdition({
    Key? key,
  
    required this.imageUrllist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 200,
      child: ListView.separated(
        itemBuilder: (context, index) {   
          return Column(
            children: [
              Container(
                width: 150,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    image: DecorationImage(
                      image: NetworkImage(imageUrllist[index]),
                      fit: BoxFit.cover,
                    )),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemCount: imageUrllist.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class mainCardEdit extends StatelessWidget {
  final List<String> top10Url;
  const mainCardEdit({
    Key? key,
    required this.top10Url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 200,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Row(
                children:  [
                const  SizedBox(
                    width: 40,
                  ),
                Column(
      children: [
        Container(
          width: 150,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              image: DecorationImage(
                  image: NetworkImage(
                    top10Url[index],
                  ),
                  fit: BoxFit.cover)),
        ),
      ],
    )
                ],
              ),
              Positioned(
                left: 4,
                bottom: 8,
                child: BorderedText(
                  strokeWidth: 5,
                  strokeColor: Colors.white,
                  child: Text(
                    '${index + 1}',
                    style: const TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                ),
              ),//S2523006
              
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemCount: top10Url.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
