class Person
{
  String name="";
  int age=0;

  //Default Constructor
  Person(this.name, this.age);
  Person.init( ){
    name = 'Unknown';
    age = 1;
  }
  
  set setAge(int v) => age = v;
  int get getAge => age;

  void show(){
    print('Hello Mr. ${name}');
  }
}

class Employee extends Person
{
  double salary=0;

  //call super constructor
  
  Employee(String n, int a): super(n, a);

  Employee.init(): super.init() { 
    super.name = 'NEW EMP';
    super.age = 0;
    this.salary = 0; 
  }
  

  @override
  void show(){
    print('${this.name}\'s Salary=${this.salary}');
  }
}

main(List<String> args) {
    Employee ahmed = new Employee('Ahmed', 22);
    print(ahmed.name);
    print(ahmed.age);
    print(ahmed.salary);

    Person ali = new Person.init();

    ahmed.show();
    ali.show();

    var mylist = [ahmed, ali];
    mylist.forEach( (e) {
        e.show();
    };
}