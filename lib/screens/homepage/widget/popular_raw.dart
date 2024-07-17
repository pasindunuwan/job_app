import 'package:flutter/material.dart';
import 'package:job_app/screens/job_view/job_view_page.dart';
import 'package:job_app/service/get_data.dart';

class popular_raw extends StatelessWidget {
  const popular_raw({
    super.key,
    required this.data,
    required this.size,
  });

  final GetData data;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(data.getJobData().length, (index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            //navigation to another page
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => jobviewpage(
                              model: data.getJobData()[index],
                            )));
              },
              child: Container(
                width: size.width * 0.75,
                height: size.width * 0.4,
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          data.getJobData()[index].title,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        Icon(Icons.bookmark_add_rounded,
                            color: Colors.grey.shade700)
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          data.getJobData()[index].salary,
                          style: const TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        // Chip(label: Text(data.getJobData()[index].type ))
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Colors.grey.shade700),
                          child: Text(data.getJobData()[index].type,
                              style: TextStyle(color: Colors.grey.shade300)),
                        )
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        // the animation for the logo
                        Hero(
                          //tag is the uniqe id
                          tag: data.getJobData()[index].logo,
                          child: Image.network(
                              width: 50,
                              height: 50,
                              fit: BoxFit.fitHeight,
                              data.getJobData()[index].logo),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.getJobData()[index].companyName,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(data.getJobData()[index].city,
                                style: TextStyle(
                                    color: Colors.grey.shade200,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal)),
                          ],
                        ),
                        const Spacer(),
                        Text(data.getJobData()[index].time,
                            style: const TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                                fontWeight: FontWeight.w100))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
