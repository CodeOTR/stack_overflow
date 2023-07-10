import 'package:flutter/material.dart';

class Question76631380 extends StatelessWidget {
  const Question76631380({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
                height: 300,
                width: 300,
                child: Opacity(
                  opacity: .5,
                  child: Image.network(
                    'https://th.bing.com/th/id/OIP.TJDY2Ff5mVD0G8oRYvxjOwHaFC?pid=ImgDet&rs=1',
                    fit: BoxFit.cover,
                  ),
                )),
            const Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 200,
                  width: 200,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: NetworkImage('https://th.bing.com/th/id/OIP.TJDY2Ff5mVD0G8oRYvxjOwHaFC?pid=ImgDet&rs=1'), fit: BoxFit.none, scale: .6),
                  ),),),
            )
          ],
        ),
      ),
    );
  }
}
