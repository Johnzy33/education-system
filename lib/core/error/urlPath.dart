class UrlPath {
  static const String logIn = 'user/auth/login';
  static const String register = 'user/auth/register';
  static const String updatePassword = 'authentication/updatePassword';
  static const String logout = 'user/auth/logout';
  static const String users = 'users';
  static const String createShipment = 'user/shipments';
  static const String getShipment = 'user/shipments';
  static const String getPaymentCards = 'user/payment-cards';
  static const String uploadUserImage = 'uploads/image';
  static const String sentOtp = 'user/auth/send-otp';
  static const String confirmOtp = 'user/auth/confirm-otp';
  static const String getWalletBalance = 'user/ledger-account/balance';
  static const String initializePayment = 'user/payment-cards/transaction/initialize';
  static const String verifyCard = 'user/payment-cards/transaction/verify';
  static const String deleteCard = 'user/payment-cards';
  static const String shipmentPayWithCard = 'user/shipment-orders';
  static const String fundWallet = 'user/ledger-account/fund-with-card';
  static const String placesPredictions = 'https://maps.googleapis.com/maps/api/place/autocomplete/json';
}
