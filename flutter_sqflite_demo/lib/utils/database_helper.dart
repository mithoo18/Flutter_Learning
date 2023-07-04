class DatabaseHelper {
  static DatabaseHelper _databaseHelper;
  static Database _database;
  String tableName = 'employee_table';
  String name = 'employee_name';
  String id = 'employee_id';
  String designation = 'employee_desination';
  String mobile = 'employee_mobile';
  String bloodGroup = 'employee_blood_group';
  String fatherName = 'employee_father_name';

  DatabaseHelper._createInstances();

  factory DatabaseHelper() {
    if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper._createInstances();
    }
    return _databaseHelper;
  }

  Future<Database> initializedDatabse() async {
    Directory diectory = await getApplicationDocumentDirectory();
    String path = directory.path + 'employee.db';
    var employeeDatabse =
        await openDatabse(path, version: 1, onCreate: _createDB);
    return employeeDatabase;
  }

  void _createDB() async {
    await db.execute(
        'CREATE TABLEv $tableName($id INTEGER PRIMARY KEY AUTOINCREMENT, $name TEXT,$designation TEXT,$mobile TEXT,$bloodGroup TEXT,$fatherName TEXT)');
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializedDatabse();
    }
    return _database;
  }

  Future<List<String, dynamic>> getEmployeeMapList() async {
    Database db = await this.database;

    var result = await db.rawQuery('SELECT * FROM $tableName order by $id ASC');
    return result;
  }

  //Insert

  Future<int> insertEmployee(Employee employee) async {
    Database db = await this.database;

    var result = await db.insert(tableName, employee.toMap(),
        where: '$id = ?', whereArgs: [employee.id]);
    return result;
  }

  //Delete

  Future<init> deleteEmployee(int id1) async {
    var db = await this.database;
    var result = await db.update(tableName,employee.toMap(),
    where '$id = ?', whereArgs: [employee.id]  
    );
    return result;
  }

  Future<int> getCount() async {
    var db = await this.database;
    List<Map<String,dynamic>> x = await db.rawQuery('SELECT COUNT (*) from $'tableName);
    int result = Sqflite.firstIntValue(x);
    return result;
  }

  Future<List<Employee>> getEmployeList() async {
    var employeeMapList = await getEmployeeMapList();
    int count = employeeMapList.length;

      

  }
}
