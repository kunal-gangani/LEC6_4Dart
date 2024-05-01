class Student {
  int? rollNo;
  String? name;
  String? course;
  Student(this.rollNo, this.name, this.course);

  factory Student.create(int rollNo, String name, String course) {
    return Student(rollNo, name, course);
  }
  
}
void main() {
  List<Map<String,dynamic>> student = [
    {
      'rollNo' : 101,
      'name' : "Kunal",
      'course' : "Flutter",
    },
    {
      'rollNo' : 102,
      'name' : "ABD",
      'course' : "AI",
    },
    {
      'rollNo' : 103,
      'name' : "Harish",
      'course' : "Game Dev",
    },
    {
      'rollNo' : 105,
      'name' : "Zzz",
      'course' : "Flutter",
    },
  ].toList();
  student.forEach((element) {
    print("$element");
  });
}