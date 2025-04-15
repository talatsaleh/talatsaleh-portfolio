import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:talatsaleh_portfolio/home/sectors/about_me.dart';
import 'package:talatsaleh_portfolio/home/sectors/contact_me.dart';
import 'package:talatsaleh_portfolio/home/sectors/education.dart';
import 'package:talatsaleh_portfolio/home/sectors/experience.dart';
import 'package:talatsaleh_portfolio/home/sectors/footer.dart';
import 'package:talatsaleh_portfolio/home/sectors/header.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController scrollController = ScrollController();
  final List<GlobalKey> allKeys = List.generate(
    5,
    (index) => GlobalKey(),
  );
  int isActive = -1;
  double collapsedHeight = 90;
  double expandedHeight = 600;
  List<double> savedOffset = [0, 0, 0, 0];
  double lastScrollOffset = 0.0;

  // scroll to
  void scrollTo(int index) {
    print('the offset of $index == ${savedOffset[index]}');
    final key = allKeys[index].currentContext;
    if (key != null) {
      Scrollable.ensureVisible(
        key,
        duration: const Duration(milliseconds: 300),
        alignment: 0,
        curve: Curves.easeInOut,
      );

      setState(() {
        isActive = index;
      });
    } else if (savedOffset[index] != 0) {
      scrollController.animateTo(savedOffset[index],
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    } else {
      late final bool shouldScrollToTop = index < isActive;
      scrollController
          .animateTo(
              shouldScrollToTop
                  ? scrollController.position.minScrollExtent
                  : scrollController.position.maxScrollExtent,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut)
          .then(
        (value) {
          final key = allKeys[index].currentContext;
          if (key != null) {
            Scrollable.ensureVisible(
              key,
              duration: const Duration(milliseconds: 300),
              alignment: 0,
              curve: Curves.easeInOut,
            );
          }
        },
      );
    }
  }

  void isScrolled() {
    for (int i = 0; i < allKeys.length - 1; i++) {
      final keyContext = allKeys[i].currentContext;
      final height = MediaQuery.of(context).size.height;
      final min = height * 1 / 3;
      final max = height * 2 / 3;
      if (keyContext != null) {
        final box = keyContext.findRenderObject() as RenderBox;
        final offset = box.localToGlobal(const Offset(0, 0));
        final viewPort = RenderAbstractViewport.of(box);
        savedOffset[i] = viewPort.getOffsetToReveal(box, 0.0).offset;
        print('the min = $min');
        print('the screen height = $height');
        print('the max = $max');
        print('the global offset of $i is ${savedOffset[i]}');
        if (offset.dy >= min && offset.dy <= max) {
          setState(() {
            isActive = i;
          });
        }
        print('the Widget $i size = ${box.size.toString()}');
        print('the Widget $i offset = ${offset.toString()}');
      } else {
        print('The widget $i offset = isNull');
      }
    }
    print('scrollcontroller = ${scrollController.offset}');
    lastScrollOffset = scrollController.offset;
    print('---------------------------------');
  }

  @override
  void initState() {
    super.initState();
    scrollController.addListener(isScrolled);
  }

  @override
  void dispose() {
    scrollController.removeListener(isScrolled);
    scrollController.dispose();
    super.dispose();
  }

  final GlobalKey appKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1200;
    return Scaffold(
      floatingActionButton: isMobile
          ? Container(
              width: size.width * .25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                spacing: 10,
                children: [
                  ElevatedButton(
                    style: isActive == 0
                        ? ElevatedButton.styleFrom(
                            foregroundColor:
                                Theme.of(context).colorScheme.secondary,
                          )
                        : null,
                    onPressed: () => scrollTo(0),
                    child: Text(AppLocalizations.of(context)!.aboutMe),
                  ),
                  ElevatedButton(
                    style: isActive == 1
                        ? ElevatedButton.styleFrom(
                            foregroundColor:
                                Theme.of(context).colorScheme.secondary,
                          )
                        : null,
                    onPressed: () => scrollTo(1),
                    child: Text(AppLocalizations.of(context)!.education),
                  ),
                  ElevatedButton(
                    style: isActive == 2
                        ? ElevatedButton.styleFrom(
                            foregroundColor:
                                Theme.of(context).colorScheme.secondary,
                          )
                        : null,
                    onPressed: () => scrollTo(2),
                    child: Text(AppLocalizations.of(context)!.experience),
                  ),
                  ElevatedButton(
                    style: isActive == 3
                        ? ElevatedButton.styleFrom(
                            foregroundColor:
                                Theme.of(context).colorScheme.secondary,
                          )
                        : null,
                    onPressed: () => scrollTo(3),
                    child: Text(AppLocalizations.of(context)!.contactMe),
                  ),
                ],
              ),
            )
          : null,
      key: appKey,
      body: isMobile
          ? ListView(
              controller: scrollController,
              children: [
                Header(isMobile: isMobile),
                const SizedBox(
                  height: 40,
                ),
                AboutMe(
                  isMobile: isMobile,
                  key: allKeys[0],
                ),
                Education(
                  isMobile: isMobile,
                  key: allKeys[1],
                ),
                Experience(
                  isMobile: isMobile,
                  width: size.width,
                  key: allKeys[2],
                ),
                const SizedBox(
                  height: 50,
                ),
                ContactMe(
                  isMobile: isMobile,
                  key: allKeys[3],
                ),
                const Footer(),
              ],
            )
          : CustomScrollView(
              shrinkWrap: true,
              controller: scrollController,
              slivers: [
                SliverAppBar(
                  collapsedHeight: collapsedHeight,
                  expandedHeight: expandedHeight,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    key: allKeys[4],
                    title: !isMobile
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  style: isActive == 0
                                      ? ElevatedButton.styleFrom(
                                          foregroundColor: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        )
                                      : null,
                                  onPressed: () => scrollTo(0),
                                  child: Text(
                                      AppLocalizations.of(context)!.aboutMe)),
                              TextButton(
                                  style: isActive == 1
                                      ? ElevatedButton.styleFrom(
                                          foregroundColor: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        )
                                      : null,
                                  onPressed: () => scrollTo(1),
                                  child: Text(
                                      AppLocalizations.of(context)!.education)),
                              TextButton(
                                  style: isActive == 2
                                      ? ElevatedButton.styleFrom(
                                          foregroundColor: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        )
                                      : null,
                                  onPressed: () => scrollTo(2),
                                  child: Text(AppLocalizations.of(context)!
                                      .experience)),
                              TextButton(
                                  style: isActive == 3
                                      ? ElevatedButton.styleFrom(
                                          foregroundColor: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        )
                                      : null,
                                  onPressed: () => scrollTo(3),
                                  child: Text(
                                      AppLocalizations.of(context)!.contactMe))
                            ],
                          )
                        : null,
                    collapseMode: CollapseMode.pin,
                    background: Header(isMobile: isMobile),
                  ),
                ),
                SliverList.list(children: [
                  const SizedBox(
                    height: 50,
                  ),
                  AboutMe(
                    isMobile: isMobile,
                    key: allKeys[0],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Education(
                    isMobile: isMobile,
                    key: allKeys[1],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Experience(
                    isMobile: isMobile,
                    width: size.width,
                    key: allKeys[2],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ContactMe(
                    isMobile: isMobile,
                    key: allKeys[3],
                  ),
                  const Footer(),
                ])
              ],
            ),
    );
  }
}
// backGround(){
//   return             SliverAppBar(
//     expandedHeight: 590,
//     pinned: true,
//     floating: true,
//     flexibleSpace: FlexibleSpaceBar(
//       key: allKeys[0],
//       collapseMode: CollapseMode.pin,
//       background: Header(size: size),
//     ),
//     bottom: ,
//   );
// }
