import 'package:job_app/models/job_models.dart';

class GetData {
  final instaLogo =
      "https://w7.pngwing.com/pngs/336/165/png-transparent-instagram-instagram-logo-3d-instagram-logo-social-media-logo-application-3d-icon.png";
  final tiktokLogo =
      "https://img.freepik.com/free-photo/3d-realistic-isolated-isometric-tiktok-icon_125540-2043.jpg?size=338&ext=jpg&ga=GA1.1.1141335507.1719273600&semt=ais_user";
  final uberLogo =
      "https://d3i4yxtzktqr9n.cloudfront.net/uber-sites/f452c7aefd72a6f52b36705c8015464e.jpg";
  List<JobModel> getJobData() {
    List<JobModel> jobs = [
      JobModel(
          title: " Senior Ux Designer",
          salary: " LKR 80000/month",
          companyName: "Instagrame",
          logo: instaLogo,
          city: "colombo",
          time: " & Days Left"),
      JobModel(
          title: " Senior UI Designer",
          salary: " LKR 90000/month",
          companyName: "Tiktok",
          logo: tiktokLogo,
          city: "colombo",
          time: " & Days Left"),
      JobModel(
          title: " Senior Moblie Developer",
          salary: " LKR 100000/month",
          companyName: "Uber",
          logo: uberLogo,
          city: "colombo",
          time: " & Days Left")
    ];
    return jobs;
  }
}
