enum UserRole {
  student,
  faculty,
  admin,
  superAdmin,
  liberian,
  unknown
}

extension UserRoleExtension on UserRole {
  String get stringValue {
    switch (this) {
      case UserRole.student:
        return 'Student';
      case UserRole.faculty:
        return 'Faculty';
      case UserRole.admin:
        return 'Admin';
      case UserRole.superAdmin:
        return 'SuperAdmin';
      case UserRole.liberian:
        return 'Librarian';
      // Add cases for other roles here
      default:
        return "Unknown";
    }
  }
}
