import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/catfactscreen/bloc/catfact_bloc.dart';

class CatFactScreen extends StatefulWidget {
  @override
  _CatFactScreenState createState() => _CatFactScreenState();
}

class _CatFactScreenState extends State<CatFactScreen> {
  CatfactBloc catfactBloc;
  @override
  void initState() {
    catfactBloc = CatfactBloc()..add(CatfactIntialEvent());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('getapi'),
        ),
        body: BlocListener<CatfactBloc, CatfactState>(
            listener: (context, state) {},
            bloc: catfactBloc,
            child: BlocBuilder<CatfactBloc, CatfactState>(
                bloc: catfactBloc,
                builder: (context, state) {
                  if (state is CatfactLoadingState) {
                    return Center(child: CircularProgressIndicator());
                  } else if (state is CatfactFailureState) {
                    return Center(
                      child: Text(catfactBloc.message),
                    );
                  } else if (state is CatfactLoadedState) {
                    return SafeArea(
                      child: ListView.builder(
                        itemCount: catfactBloc.catfactList.length,
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
                                          child: Text(catfactBloc
                                              .catfactList[index].id)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          "created at:",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Text(catfactBloc
                                              .catfactList[index].updatedAt)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          "Source",
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Text(catfactBloc
                                              .catfactList[index].source)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          'Text',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Text(
                                            catfactBloc.catfactList[index].text,
                                            textAlign: TextAlign.justify,
                                          )),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          "user",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Text(catfactBloc
                                              .catfactList[index].user)),
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
