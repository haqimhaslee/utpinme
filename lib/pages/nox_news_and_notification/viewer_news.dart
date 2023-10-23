import 'package:flutter/material.dart';

class ViewerNews extends StatelessWidget {
  const ViewerNews({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
        centerTitle: true,
        elevation: 5,
        scrolledUnderElevation: 5,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: 10,
          ),
          child: Card(
              elevation: 3,
              child: SizedBox(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      'assets/prototype/1.jpg',
                      fit: BoxFit.cover,
                    )),
              )),
        ),
        Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 13,
              right: 13,
              bottom: 5,
            ),
            child: SizedBox(
              // width: MediaQuery.of(context).size.width - 50,
              child: Text(
                "Dr Phil Considine, Director of Strathclyde Executive Education and Development, Strathclyde Business School, University of Strathclyde",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
            )),
        Padding(
            padding: const EdgeInsets.only(
              top: 5,
              left: 13,
              right: 13,
              bottom: 5,
            ),
            child: SizedBox(
                // width: MediaQuery.of(context).size.width - 50,
                child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 3,
                    bottom: 3,
                  ),
                  child: Icon(
                    Icons.calendar_month_rounded,
                    size: 15,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 3,
                      left: 5,
                      bottom: 3,
                    ),
                    child: Text(
                      "11 September 2023",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 11,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    )),
              ],
            ))),
        const Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Divider(),
        ),
        Padding(
            padding:
                const EdgeInsets.only(top: 5, left: 13, right: 13, bottom: 5),
            child: SizedBox(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                  ),
                  child: Text(
                    "Dr Phil Considine, Director of Strathclyde Executive Education and Development, Strathclyde Business School, University of Strathclyde was received by Professor Ir Dr Hilmi Mukhtar, Deputy Vice Chancellor of Academic on 11 September 2023 at Universiti Teknologi PETRONAS (UTP).",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                  ),
                  child: Text(
                    "The objective of the is to explore potential strategic collaborations between both institutions.",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                  ),
                  child: Text(
                    "Prof Dr Chris Gibbins was accompanied by Mr Julian Taylor, Managing Director, International Operations and Dr Khalik Mohamad Sabil, Senior Manager, Academic Alliance Unit, PETRONAS Research Sdn Bhd (PRSB).",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 8,
                  ),
                  child: Card(
                      elevation: 3,
                      child: SizedBox(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Image.asset(
                              'assets/prototype/news_1.jpg',
                              fit: BoxFit.cover,
                            )),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                  ),
                  child: Text(
                    "Also present to receive the delegation were Assoc Prof Dr Lai Fong Woon, Chair of Management and Humanities Department, Dr Amjad Shamim and Dr Lawrence Arokiasamy, Lecturers of Management and Humanities Department.",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ),
              ],
            ))),
      ]),
    );
  }
}
