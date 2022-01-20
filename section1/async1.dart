Future<Map<String, dynamic>> BringUserWithID(int id) {
  print("Bringing user with id: $id");
  return Future<Map<String, dynamic>>.delayed(
      Duration(seconds: 2), () => {"username": "korayliman", "id": id});
}

Future<List<String>> BringCoursesOfUser(String user) {
  print("Courses of $user ");
  return Future<List<String>>.delayed(
      Duration(seconds: 4), () => ["flutter", "kotlin", "javascript"]);
}

Future<String> FirstCommentOfCourse(String CourseName) {
  return Future<String>.delayed(
      Duration(seconds: 4), () => "Course is excellent");
}

void main(List<String> args) {
  String username = "";
  BringUserWithID(5).then((value) {
    BringCoursesOfUser(value["username"]).then((ListOfCourses) {
      print(ListOfCourses);
      FirstCommentOfCourse(ListOfCourses[0]).then((comment) {
        print(comment);
      });
    });
  });
}
