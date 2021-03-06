import 'package:artsideout_app/graphql/Profile.dart';

class Activity {
  String title;
  String desc;
  String zone;
  String overview;
  String imgUrl;
  Map<String, String> time;
  Map<String, double> location;
  List<Profile> profiles;

  Activity(this.title, this.desc, this.overview, {this.imgUrl, this.time,
      this.location, this.profiles});
}

class ActivityQueries {
  String getAll = """ 
    {
      activities {
        title
        desc
        overview
        zone
        image {
          url
        }
        startTime
        endTime
        location {
          latitude
          longitude
        }
        locationroom
        profile {
          name
          desc
          social
          type
        }
      }
    }
  """;
  String getOneByID(String id) {
    return """
    {
      activity(where: {id: $id}) {
        title
        desc
        overview
        zone
        image {
          url
        }
        startTime
        endTime
        location {
          latitude
          longitude
        }
        locationroom
        profile {
          name
          desc
          social
          type
        }
      }
    }
  """;
  }
}
