import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/screens/makeup/bloc/makeup_bloc.dart';

class MakeUpScreen extends StatefulWidget {
  @override
  _MakeUpScreenState createState() => _MakeUpScreenState();
}

class _MakeUpScreenState extends State<MakeUpScreen> {
  MakeupBloc makeupBloc;
  @override
  void initState() {
    makeupBloc = MakeupBloc()..add(MakeupIntialEvent());

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('getapi Makeup'),
        ),
        body: BlocListener<MakeupBloc, MakeupState>(
            listener: (context, state) {},
            bloc: makeupBloc,
            child: BlocBuilder<MakeupBloc, MakeupState>(
                bloc: makeupBloc,
                builder: (context, state) {
                  if (state is MakeupLoadingState) {
                    return Center(child: CircularProgressIndicator());
                  } else if (state is MakeupFailureState) {
                    return Center(
                      child: Text(makeupBloc.message),
                    );
                  } else if (state is MakeupLoadedState) {
                    return SafeArea(
                      child: ListView.builder(
                        itemCount: makeupBloc.makeupList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          'Id',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Text(
                                              makeupBloc.makeupList[index].id)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          "brand:",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Text(makeupBloc
                                              .makeupList[index].brand)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          "name",
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Text(makeupBloc
                                              .makeupList[index].name)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          'description',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Text(
                                            makeupBloc
                                                .makeupList[index].description,
                                            textAlign: TextAlign.justify,
                                          )),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          "websitelink",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Text(makeupBloc
                                              .makeupList[index].website_link)),
                                    ],
                                  )
                                ],
                              ));
                        },
                      ),
                    );
                  } else {
                    return Container();
                  }
                })));
  }
}
