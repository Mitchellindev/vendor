import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingScreenBody extends StatelessWidget {
  const LoadingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .8,
        child: ListView(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                Shimmer.fromColors(
                    baseColor: const Color.fromARGB(26, 4, 2, 59),
                    highlightColor: const Color.fromARGB(98, 104, 104, 104),
                    child: Container(
                      width: double.infinity,
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                      ),
                    )),
                Positioned(
                  bottom: -50,
                  child: Shimmer.fromColors(
                      baseColor: const Color.fromARGB(26, 4, 2, 59),
                      highlightColor: const Color.fromARGB(98, 104, 104, 104),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Shimmer.fromColors(
                baseColor: const Color.fromARGB(26, 4, 2, 59),
                highlightColor: const Color.fromARGB(98, 104, 104, 104),
                child: Container(
                  width: double.infinity,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Shimmer.fromColors(
                baseColor: const Color.fromARGB(26, 4, 2, 59),
                highlightColor: const Color.fromARGB(98, 104, 104, 104),
                child: Container(
                  width: double.infinity,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                )),
            const SizedBox(
              height: 40,
            ),
            Shimmer.fromColors(
                baseColor: const Color.fromARGB(26, 4, 2, 59),
                highlightColor: const Color.fromARGB(98, 104, 104, 104),
                child: Container(
                  width: double.infinity,
                  height: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
