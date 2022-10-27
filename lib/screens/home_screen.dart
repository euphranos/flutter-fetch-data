import 'package:flutter/material.dart';
import 'package:provider_ogrenme/models/data_model.dart';
import 'package:provider_ogrenme/services/user_service.dart';

class HomeScreen extends StatelessWidget {
  var service = PersonelService();
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: service.fetchPersonels(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.data!.data.isEmpty) {
            return const Center(
              child: Text('No posts'),
            );
          }
          List<DataModel> allDataModels = snapshot.data!.data;
          return SingleChildScrollView(
            child: Column(
              children: List.generate(
                snapshot.data!.data.length,
                (index) => Container(
                  width: double.infinity,
                  height: 300,
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(allDataModels[index].first_name),
                      Text(allDataModels[index].last_name),
                      CircleAvatar(
                        backgroundImage:
                            NetworkImage(allDataModels[index].avatar),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
