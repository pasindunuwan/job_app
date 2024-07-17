import 'package:flutter/material.dart';
import 'package:job_app/models/job_models.dart';

class jobviewpage extends StatefulWidget {
  const jobviewpage({super.key, required this.model});
  final JobModel model;
  @override
  State<jobviewpage> createState() => _jobviewpageState();
}

class _jobviewpageState extends State<jobviewpage> {
  final tabButtons = ["Description", "Company", "Reviews"];
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Stack(
          children: [
            Column(children: [
              Container(
                width: size.width,
                height: 250,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWsmyfWAafo7TQ5uTKMhY_MuuJC0AMmtHFUg&s"),
                        fit: BoxFit.fill)),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(children: [
                      //for the go to priviouse page
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(0.5),
                          child: const Icon(Icons.arrow_back_ios_sharp),
                        ),
                      )
                    ]),
                  ),
                ),
              ),
              Container(
                height: 150,
                width: size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.model.title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          widget.model.salary,
                          style: const TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        // Chip(label: Text(data.getJobData()[index].type ))
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.grey.shade700),
                          child: Text(widget.model.type,
                              style: TextStyle(
                                  color: Colors.grey.shade300, fontSize: 12)),
                        )
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        //for the animation
                        Hero(
                          tag: widget.model.logo,
                          child: Image.network(
                              width: 50,
                              height: 50,
                              fit: BoxFit.fitHeight,
                              widget.model.logo),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.model.companyName,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(widget.model.city,
                                style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal)),
                          ],
                        ),
                        const Spacer(),
                        Text(widget.model.time,
                            style: const TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                                fontWeight: FontWeight.w300))
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: tabButtons.map((e) {
                  return GestureDetector(
                      onTap: () {
                        setState(() {
                          tabIndex = tabButtons.indexOf(e);
                        });
                      },
                      child: Chip(
                          backgroundColor: tabIndex == tabButtons.indexOf(e)
                              ? Colors.black
                              : Colors.white,
                          label: Text(
                            e,
                            style: TextStyle(
                                color: tabIndex == tabButtons.indexOf(e)
                                    ? Colors.white
                                    : Colors.black),
                          )));
                }).toList(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 170,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Text(tabIndex == 0
                      ? "ChatGPT is a chatbot and virtual assistant developed by OpenAI and launched on November 30, 2022. Based on large language models, it enables users to refine and steer a conversation towards a desired length, format, style, level of detail, and language"
                      : tabIndex == 1
                          ? "Follow the instructions provided by flutter doctor to resolve any issues, such as installing necessary development tools like Android Studio, Xcode, or setting up Android/iOS device emulators.Launch your preferred Integrated Development Environment (IDE) like Android Studio, IntelliJ IDEA, Visual Studio Code, or Xcode."
                          : "General Sir John Kotelawala Defence University located at Kandawala, Ratmalana, Colombo, is the state defense university of Sri Lanka which is administered by the Ministry of Defense"),
                ),
              )
            ]),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Container(
                  width: size.width,
                  height: 75,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const Icon(Icons.bookmark, color: Colors.white),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 50,
                        width: size.width * 0.7,
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const Center(
                          child: Text("Apply Now",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
