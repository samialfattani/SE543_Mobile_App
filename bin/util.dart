class Person
{
  String name="";
  int _age=0;
  double salary=0;
  
  Person(this.name, [this._age=15, this.salary]);

  void set setAge(int v) {
    this._age = v+1;
  }

  int get  getAge {
    return this._age;
  }
}
