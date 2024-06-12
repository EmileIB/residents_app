class EndPoints {
  // auth
  static const String baseUrl = 'https://api-v2.hollo.ai';
  static const String baseAiUrl = 'https://ai-api-v2.hollo.ai';
  static const String baseUsersUrl = 'https://api-v2.hollo.ai/api/users';
  static const String signUpSendOtp = '$baseUrl/user/sign-up/send/otp-code';
  static const String signInSendOtp = '$baseUrl/user/sign-in/send/otp-code';
  static const String signUpVerifyOtp = '$baseUrl/user/sign-up/verify/otp-code';
  static const String signVerifyOtp = '$baseUrl/user/sign-in/verify/otp-code';
  static const String signInWithPassword = '$baseUrl/user/sign-in/phone-number/password';
  static const String forgetPasswordSendOTP = '$baseUrl/user/forget-password/send-otp';
  static const String forgetPasswordVerifyOTP = '$baseUrl/user/forget-password/verify-otp';
  static const String applyNewPassword = '$baseUrl/user/forget-password/apply';
  static const String uploadGreetingVoice = 'https://ai-api.hollo.ai/users/self_description_audio/process';
  static const String uploadImageFilter = '$baseUsersUrl/create-profile';
  static const String getFilters = '$baseAiUrl/filters/apply';
  static const String logout = '$baseUrl/user/logout';
}
