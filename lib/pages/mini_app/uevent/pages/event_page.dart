import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../animations/shimmer_event.dart';
import '../usecases/event_usecase.dart';
import '../widgets/event_card.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  late Future<void> function;

  // load more
  bool _isLoadMoreRunning = false;
  late ScrollController _scrollController;

  //Future _refresh() async {
  //  EventUseCase eventUseCase =
  //      Provider.of<EventUseCase>(context, listen: false);
  //  function = eventUseCase.fetchEventsFromFirestore();
  //  setState(() {});
  //}

  Future<void> _loadMore() async {
    EventUseCase eventUseCase =
        Provider.of<EventUseCase>(context, listen: false);
    if (_isLoadMoreRunning == false &&
        _scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        eventUseCase.allEvents.last.bannerImage != null) {
      if (!mounted) {
        return;
      } else {
        setState(() {
          _isLoadMoreRunning = true;
        });
      }
      EventUseCase eventUseCase = Provider.of(context, listen: false);
      await eventUseCase.fetchEventsFromFirestore();

      if (!mounted) {
        return;
      } else {
        setState(() {
          _isLoadMoreRunning = false;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    EventUseCase eventUseCase =
        Provider.of<EventUseCase>(context, listen: false);
    function = eventUseCase.fetchEventsFromFirestore();
    _scrollController = ScrollController()..addListener(_loadMore);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  // RefreshIndicator (issues) https://stackoverflow.com/questions/71553761/crash-in-autofillmanager-npe-trying-to-invoke-virtual-method-containskeyjava-l
  @override
  Widget build(BuildContext context) {
    return Consumer<EventUseCase>(
      builder: (context, eventUseCase, child) {
        /*return RefreshIndicator(
           onRefresh: _refresh,
          child: */
        return SingleChildScrollView(
          controller: _scrollController,
          child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 25, 10, 0),
              child: _buildEventList(eventUseCase)),
        );
      },
    );
  }

  Widget _buildEventList(EventUseCase eventUseCase) {
    return FutureBuilder(
      future:
          function, // Assuming eventsStream is a Stream<List<EventEntity>> in your EventUseCase
      builder: (context, snapshot) {
        if (eventUseCase.allEvents.isNotEmpty && _isLoadMoreRunning) {
          return Column(
            children: [
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    //childAspectRatio: 1,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 1.5)),
                scrollDirection: Axis.vertical,
                itemCount: eventUseCase.allEvents.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final entry = eventUseCase.allEvents[index];
                  return Column(
                    children: [
                      EventCard(
                        imgUrl: "assets/cimb.png",
                        event: entry,
                      ),
                      Text(entry.title),
                      Text("Date: ${entry.dateTime.toString().split(" ")[0]}")
                    ],
                  );
                },
              ),
              ShimmerEvent(
                height: MediaQuery.of(context).size.width * 0.45,
                width: MediaQuery.of(context).size.width * 0.45,
              )
            ],
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return ShimmerEvent(
            height: MediaQuery.of(context).size.width * 0.45,
            width: MediaQuery.of(context).size.width * 0.45,
          );
        } else if (snapshot.hasError) {
          return Text("Error: ${snapshot.error}");
        } else if (eventUseCase.allEvents.isEmpty) {
          return const Center(
            child: Text("No events available."),
          );
        } else {
          return Column(
            children: [
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    //childAspectRatio: 1,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 1.5)),
                scrollDirection: Axis.vertical,
                itemCount: eventUseCase.allEvents.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final entry = eventUseCase.allEvents[index];
                  return Column(
                    children: [
                      EventCard(
                        imgUrl: "assets/cimb.png",
                        event: entry,
                      ),
                      Text(entry.title),
                      Text("Date: ${entry.dateTime.toString().split(" ")[0]}")
                    ],
                  );
                },
              ),
            ],
          );
        }
      },
    );
  }
}
