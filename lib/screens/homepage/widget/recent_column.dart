import 'package:flutter/material.dart';
import 'package:job_app/service/get_data.dart';

class recent_column extends StatelessWidget {
  const recent_column({
    super.key,
    required this.data,
  });

  final GetData data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(data.getJobData().length, (index) {
        return Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(data.getJobData()[index].logo),
                  radius: 25,
                ),
                title: Text(data.getJobData()[index].title),
                subtitle: Text(
                    "${data.getJobData()[index].companyName} - ${data.getJobData()[index].type}"),
                trailing: Text(data.getJobData()[index].time),
              )),
        );
      }),
    );
  }
}
