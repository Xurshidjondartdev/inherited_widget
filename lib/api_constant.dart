class ApiConstants{
  /// base url
  static const String baseUrl = "10.10.1.225:8080";

  /// api
  static const String apiGetDataList = "/api/post/get/all";
  static const String apiAuthLogin = "/api/auth/login";
  // static const String apiSearchProduct = "/products/search";

  /// headers
  static const Map<String, String> headers = {
    "Content-Type":"application/json"
  };

  /// params
  static Map<String, Object?>paramEmpty() => const <String, Object?>{};

  static Map<String, Object?>paramSearchProduct(String text) => <String, Object?>{
    "q":text,
  };


  /// body

  static Map<String, dynamic>bodyLoginUser({required String email, required String password}) => <String, String>{
    "email":email,
    "password":password,
  };

}