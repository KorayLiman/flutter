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

void main(List<String> args) async {
  var user = await BringUserWithID(6);
  var ListOfCourses = await BringCoursesOfUser(user["username"]);
  print(ListOfCourses);
  var Comment = await FirstCommentOfCourse(ListOfCourses[0]);
  print(Comment);
}
