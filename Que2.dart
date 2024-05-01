class EmployeeData{
  String? name;
  int? salary;
  String? address;
  String? designation;

  EmployeeData(this.name,this.salary,this.address,this.designation);

  factory EmployeeData.fromMap(String name,int salary,String address,String designation){
    return EmployeeData(name, salary, address, designation);
  }
}

void main(){
  List<Map<String, dynamic>> empls = [
    {"name": "ayush", "salary": 20000, "address": "surat", "designation": "admin"},
    {"name": "mehul", "salary": 10000, "address": "surat", "designation": "subadmin"},
    {"name": "piyush", "salary": 2000, "address": "surat", "designation": "admin"},
    {"name": "ramesh", "salary": 3000, "address": "surat", "designation": "subadmin"},
    {"name": "ayush", "salary": 25000, "address": "mumbai", "designation": "manager"},
    {"name": "mehul", "salary": 15000, "address": "mumbai", "designation": "developer"},
    {"name": "piyush", "salary": 3000, "address": "mumbai", "designation": "admin"},
    {"name": "ramesh", "salary": 4000, "address": "mumbai", "designation": "subadmin"},
    {"name": "john", "salary": 50000, "address": "new york", "designation": "CEO"},
    {"name": "smith", "salary": 40000, "address": "new york", "designation": "CTO"},
    {"name": "Jane Doe", "salary": 35000, "address": "Chicago", "designation": "Software Engineer"},
    {"name": "John Smith", "salary": 42500, "address": "San Francisco", "designation": "Product Manager"},
    {"name": "Jim Brown", "salary": 28700, "address": "Austin", "designation": "Data Analyst"},
    {"name": "Jake White", "salary": 31560, "address": "Boston", "designation": "UX Designer"},
    {"name": "Jill Black", "salary": 25780, "address": "Seattle", "designation": "QA Engineer"},
  ];
  
  List<EmployeeData> empObj = empls.map((e) {
    return EmployeeData.fromMap(e["name"], e["salary"], e["address"], e["designation"]);
  }).toList();
  
  empObj.forEach((obj) {
    print("Name: ${obj.name}, Salary: ${obj.salary}, Address: ${obj.address}, Designation: ${obj.designation}");
  });
}