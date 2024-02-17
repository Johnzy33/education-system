import 'package:flutter/material.dart';
import 'package:education_system/src/rust/api/simple.dart';
import 'package:education_system/src/rust/frb_generated.dart';

Future<void> main() async {
  await RustLib.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('flutter_rust_bridge quickstart')),
        body: Center(
          child: Text(
              'Action: Call Rust `greet("Tom")`\nResult: `${greet(name: "Tom")}`'),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:education_system/src/rust/api/simple.dart';
// import 'package:education_system/src/rust/frb_generated.dart';
// 
// Future<void> main() async {
//   await RustLib.init();
//   runApp(const MyApp());
// }
// 
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
// 
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('flutter_rust_bridge quickstart')),
//         body: Center(
//           child: Text(
//               'Action: Call Rust `greet("Tom")`\nResult: `${greet(name: "Tom")}`'),
//         ),
//       ),
//     );
//   }
// }
// 
// 
// // import 'package:education_system/core/enum/user_role.dart';
// // import 'package:education_system/core/model/student_model.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // import 'package:surrealdb/surrealdb.dart';
// // import 'package:uuid/uuid.dart';
// // import 'config/network/network_config.dart';
// // import 'config/routes/locator.dart';
// // import 'config/routes/navigation.dart';
// // import 'config/routes/routes.dart';
// // import 'package:education_system/src/rust/frb_generated.dart';
// // import 'src/rust/api/features/website_homepage/presentation/pages/home/home_page.dart';
// // 
// // void main() async {
// //   dependenciesInjectorSetup();
// //   var uuid = Uuid();
// //   const options = SurrealDBOptions();
// //   final client = SurrealDB('ws://localhost:8000/rpc', options: options)
// //     ..connect();
// // 
// //   await client.wait();
// //   await client.use('test', 'test');
// //   await client.signin(user: 'root', pass: 'root');
// // 
// //   final student = await client.create(
// //       'student',
// //       StudentModel(
// //           id: uuid.v8(),
// //           name: Name(firstName: "Daniel", lastName: "Frank"),
// //           gender: "Male",
// //           dateOfBirth: "20|03|2000",
// //           bloodGroup: "O+",
// //           email: "email@gmail.com",
// //           phoneNumber: "+23480457684",
// //           jambRegNumber: "",
// //           contactNo: "21 Ademsy address",
// //           role: "UserRole.student.toString()",
// //           emergencyContactNo: "23480457600",
// //           presentAddress: "21 Present address",
// //           permanentAddress: "21 Permanent address",
// //           guardian: GuardianModel(
// //               fatherName: "Frank",
// //               fatherOccupation: "Teacher",
// //               fatherContactNo: "+23470345678",
// //               motherName: "Grace",
// //               motherOccupation: "Mini Seller",
// //               motherContactNo: "23470345622",
// //               address: "Mothers Address"),
// //           localGuardian: LocalGuardianModel(
// //               name: "Frank",
// //               occupation: "Local man",
// //               contactNo: "23470345678",
// //               address: "Local man address"),
// //           profileImage: "",
// //           academicFaculty: "Science",
// //           academicDepartment: "Microbiology",
// //           academicSemester: "First Semester",
// //           createdAt: "DateTime.now()",
// //           updatedAt: "DateTime.now()"));
// // 
// //   // final person2 = await client.create('student', {
// //   //   'name': "Morgan Hitchcock",
// //   //   'occupation': "Local person2",
// //   //   'contactNo': "23470345678",
// //   //   'address': "Local person2 address"
// //   // });
// // 
// //   // final persons = await client.select<Map<String, dynamic>>('student');
// // 
// //   // final groupByQuery = await client.query(
// //   //   r'SELECT name, count() FROM type::table($tb) GROUP BY name',
// //   //   {
// //   //     'tb': 'student',
// //   //   },
// //   // );
// // 
// //   debugPrint("Student: $student ||\n");
// //   // debugPrint("Student2: $person2 ||\n");
// //   // debugPrint("Student3: $person3 ||\n");
// //   // debugPrint("Students: $persons ||\n");
// //   // debugPrint("GroupByQuery: $groupByQuery ||\n");
// //   //client.close();
// // 
// //   runApp(const MyApp());
// // }
// // 
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// // 
// //   // TODO:Point this to the root of the homepage
// //   @override
// //   Widget build(BuildContext context) {
// //     TargetPlatform platform = Theme.of(context).platform;
// //     return ScreenUtilInit(
// //       minTextAdapt: true,
// //       splitScreenMode: true,
// //       child: MaterialApp(
// //         debugShowCheckedModeBanner: false,
// //         title: 'Education System',
// //         theme: ThemeData(
// //           primarySwatch: Colors.green,
// //         ),
// //         home: const WebHomePage(),
// //         navigatorKey: getIt<NavigationService>().navigatorKey,
// //         onGenerateRoute: AppRouter.generateRoute,
// //       ),
// //     );
// //   }
// // }
// // 