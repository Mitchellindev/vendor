import 'package:broadcaadvendor/features/account_privacy/presentation/screens/account_privacy_screen.dart';
import 'package:broadcaadvendor/features/account_security/presentaion/screens/account_settings_screen.dart';
import 'package:broadcaadvendor/features/account_security/presentaion/screens/change_password_screen.dart';
import 'package:broadcaadvendor/features/card_details/presentation/screens/card_details_screen.dart';
import 'package:broadcaadvendor/features/currency/presentation/screens/select_currency_screen.dart';
import 'package:broadcaadvendor/features/delete_account/presentation/screens/delete_account_screen.dart';
import 'package:broadcaadvendor/features/fund_with_card/presentation/screens/bank_details_screen.dart';
import 'package:broadcaadvendor/features/fund_with_card/presentation/screens/card_details_screen.dart';
import 'package:broadcaadvendor/features/fund_with_card/presentation/screens/fund_wallet_screen.dart';
import 'package:broadcaadvendor/features/fund_with_card/presentation/screens/fund_with_bank_screen.dart';
import 'package:broadcaadvendor/features/fund_with_card/presentation/screens/fund_with_card_screen.dart';
import 'package:broadcaadvendor/features/fund_with_card/presentation/screens/funding_success_or_failure_screen.dart';
import 'package:broadcaadvendor/features/home/presentation/screens/dashboard_screen.dart';
import 'package:broadcaadvendor/features/home/presentation/screens/store_front.dart';
import 'package:broadcaadvendor/features/home/presentation/widgets/menu_widget.dart';
import 'package:broadcaadvendor/features/language/presentation/screens/select_language_screen.dart';
import 'package:broadcaadvendor/features/navigation_preference/presentation/screens/navigation_preference_screen.dart';
import 'package:broadcaadvendor/features/payment/presentation/screens/payment_history_details_screen.dart';
import 'package:broadcaadvendor/features/payment/presentation/screens/payment_history_screen.dart';
import 'package:broadcaadvendor/features/payment_method/presentation/screens/master_card_screen.dart';
import 'package:broadcaadvendor/features/payment_method/presentation/screens/payment_methods_screen.dart';
import 'package:broadcaadvendor/features/payment_method/presentation/screens/visa_screen.dart';
import 'package:broadcaadvendor/features/select_country/presentation/screens/select_country_screen.dart';
import 'package:broadcaadvendor/features/services/presentation/screens/edit_package_screen.dart';
import 'package:broadcaadvendor/features/services/presentation/screens/service_summary_screen.dart';
import 'package:broadcaadvendor/features/settings/presentation/screens/settings_screen.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/no_store_one.dart';
import 'package:broadcaadvendor/features/support/presentation/screens/customer_support_screen.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/error_screen.dart';
import '../../features/auth/presentation/screens/forgot_password.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/otp_screen.dart';
import '../../features/auth/presentation/screens/reset_password.dart';
import '../../features/auth/presentation/screens/signup_screen.dart';
import '../../features/auth/presentation/screens/verification_successful.dart';
import '../../features/notifications/screens/notifications_screens.dart';
import '../../features/products/presentation/screens/add_products_screen.dart';
import '../../features/products/presentation/screens/categories_items_screen.dart';
import '../../features/products/presentation/screens/edit_products.dart';
import '../../features/profile/presentation/screens/edit_profile_screen.dart';
import '../../features/profile/presentation/screens/update_address_screen.dart';
import '../../features/profile/presentation/screens/update_email_address.dart';
import '../../features/profile/presentation/screens/update_phone_number_screen.dart';
import '../../features/profile/presentation/screens/update_profile_image_and_name.dart';
import '../../features/profile/presentation/screens/vendor_profile.dart';
import '../../features/services/presentation/screens/ai_create_service_screen.dart';
import '../../features/services/presentation/screens/booked_services_details.dart';
import '../../features/services/presentation/screens/booked_services_screen.dart';
import '../../features/services/presentation/screens/completed_rejected_screen.dart';
import '../../features/services/presentation/screens/create_service_manually_screen.dart';
import '../../features/services/presentation/screens/create_your_first_service_screen.dart';
import '../../features/services/presentation/screens/edit_service_screen.dart';
import '../../features/services/presentation/screens/my_services_screen.dart';
import '../../features/services/presentation/screens/pending_services_details_screen.dart';
import '../../features/services/presentation/screens/pending_services_screen.dart';
import '../../features/services/presentation/screens/rejected_completed_service_details_screen.dart';
import '../../features/services/presentation/screens/service_quality_performance_screen.dart';
import '../../features/services/presentation/screens/upload_package_screen.dart';
import '../../features/store/presentation/screens/ai_create_store_screen.dart';
import '../../features/store/presentation/screens/clicks_views_list_screen.dart';
import '../../features/store/presentation/screens/edit_store_screen.dart';
import '../../features/store/presentation/screens/first_store_creation.dart';
import '../../features/store/presentation/screens/my_stores_screen.dart';
import '../../features/store/presentation/screens/prompt_albert_screen.dart';
import '../../features/store/presentation/screens/rejected_sold_list_screen.dart';
import '../../features/store/presentation/screens/sales_stocks_details_screen.dart';
import '../../features/store/presentation/screens/sales_stocks_screen.dart';
import '../../features/store/presentation/screens/store_creation_form_screen.dart';
import '../../features/store/presentation/screens/store_performance_screen.dart';
import '../../features/wallet/presentation/screens/all_transaction_screens.dart';
import '../../features/wallet/presentation/screens/my_wallet_screen.dart';
import '../../features/wallet/presentation/screens/transaction_details.dart';
import 'routes.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.signUp:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
        );

      case Routes.otpVerification:
        return MaterialPageRoute(
          builder: (_) => const OtpScreen(),
        );
      case Routes.verificationSuccessful:
        return MaterialPageRoute(
          builder: (_) => const VerificationSuccessfulScreen(),
        );
      case Routes.forgotPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordScreen(),
        );
      case Routes.resetPassword:
        return MaterialPageRoute(
          builder: (_) => const ResetPasswordScreen(),
        );
      case Routes.storeFront:
        final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

        return MaterialPageRoute(
          builder: (_) => Scaffold(
            drawer: const MenuWidget(),
            key: scaffoldKey,
            body: StoreFrontScreen(
              scaffoldKey: scaffoldKey,
            ),
          ),
        );
      case Routes.firstStoreCreation:
        return MaterialPageRoute(
          builder: (_) => const FirstStoreCreationScreen(),
        );
      case Routes.storeCreationForm:
        return MaterialPageRoute(
          builder: (_) => const StoreCreationFormScreeen(),
        );
      case Routes.editStore:
        return MaterialPageRoute(
          builder: (_) => const EditStoreScreen(),
        );
      case Routes.addProduct:
        return MaterialPageRoute(
          builder: (_) => const AddProductsScreen(),
        );
      case Routes.categoryItems:
        return MaterialPageRoute(
          builder: (_) => const CategoriesItemsScreen(),
        );

      case Routes.editProduct:
        return MaterialPageRoute(
          builder: (_) => const EditProductsScreen(),
        );
      case Routes.aiCreateStore:
        return MaterialPageRoute(
          builder: (_) => const AiCreateStoreScreen(),
        );

      case Routes.aiCreateService:
        return MaterialPageRoute(
          builder: (_) => const AiCreateServiceScreen(),
        );
      case Routes.prompAlbert:
        bool isMicrophoneEnabled = routeSettings.arguments as bool;
        return MaterialPageRoute(
          builder: (_) =>
              PromptAlbertScreen(isMicrophoneEnabled: isMicrophoneEnabled),
        );
      case Routes.createFirstService:
        return MaterialPageRoute(
          builder: (_) => const CreateYourFirstServiceScreen(),
        );
      case Routes.serviceCreationFormScreen:
        return MaterialPageRoute(
          builder: (_) => const ServiceCreationFormScreen(),
        );

      case Routes.notifications:
        return MaterialPageRoute(
          builder: (_) => const NotificationScreen(),
        );
      case Routes.profile:
        return MaterialPageRoute(
          builder: (_) => const VendorProfileScreen(),
        );

      case Routes.editProfile:
        return MaterialPageRoute(
          builder: (_) => const EditProfileScreen(),
        );

      case Routes.myServices:
        return MaterialPageRoute(
          builder: (_) => const MyServicesScreen(),
        );
      case Routes.myStores:
        return MaterialPageRoute(
          builder: (_) => const MyStoresScreen(),
        );

      case Routes.serviceSummary:
        final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

        return MaterialPageRoute(
          builder: (_) => Scaffold(
            drawer: const MenuWidget(),
            key: scaffoldKey,
            body: ServiceSummaryScreen(
              scaffoldKey: scaffoldKey,
            ),
          ),
        );
      case Routes.editServiceProfile:
        return MaterialPageRoute(
          builder: (_) => const EditServiceScreen(),
        );
      case Routes.addPackage:
        return MaterialPageRoute(
          builder: (_) => const AddServicePackageScreen(),
        );

      case Routes.bookedService:
        return MaterialPageRoute(
          builder: (_) => const BookedServicesScreen(),
        );

      case Routes.bookedServicesDetails:
        return MaterialPageRoute(
          builder: (_) => const BookedServicesDetailsScreen(),
        );

      case Routes.pendingServices:
        return MaterialPageRoute(
          builder: (_) => const PendingServicesScreen(),
        );

      case Routes.pendingServicesDetials:
        return MaterialPageRoute(
          builder: (_) => const PendingServicesDetailsScreen(),
        );

      case Routes.myWallet:
        return MaterialPageRoute(
          builder: (_) => const MyWalletScreen(),
        );
      case Routes.allTransactons:
        return MaterialPageRoute(
          builder: (_) => const AllTransactionsScreen(),
        );
      case Routes.transactionDetails:
        return MaterialPageRoute(
          builder: (_) => const TransactionDetailsScreen(),
        );

      case Routes.serviceQualityPerformanceScreen:
        return MaterialPageRoute(
          builder: (_) => const ServiceQualityPerformanceScreen(),
        );

      case Routes.completedRejectedServices:
        return MaterialPageRoute(
          builder: (_) => const CompletedRejectedServicesScreen(),
        );
      case Routes.rejectedCompletedServiceDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const RejectedCompletedServiceDetailsScreen(),
        );
      case Routes.updateUsernameAndProfileImage:
        return MaterialPageRoute(
          builder: (_) => const UpdateProfileImageAndNameScreen(),
        );
      case Routes.updateUserPhoneNumber:
        return MaterialPageRoute(
          builder: (_) => const UpdateUserPhoneNumberScreen(),
        );
      case Routes.updateAddress:
        return MaterialPageRoute(
          builder: (_) => const UpdateAddressScreen(),
        );
      case Routes.updateEmailAddress:
        return MaterialPageRoute(
          builder: (_) => const UpdateEmailAddressScreen(),
        );
      case Routes.storePerformance:
        return MaterialPageRoute(
          builder: (_) => const StorePerformanceScreen(),
        );

      case Routes.stockSales:
        return MaterialPageRoute(
          builder: (_) => const SalesStocksScreen(),
        );

      case Routes.salesStockDetails:
        return MaterialPageRoute(
          builder: (_) => const SalesStockDetailsScreen(),
        );
      case Routes.clicksViewsList:
        return MaterialPageRoute(
          builder: (_) => const ClickViewsListScreen(),
        );
      case Routes.rejectedSoldListScreen:
        return MaterialPageRoute(
          builder: (_) => const RejectedSoldListScreen(),
        );
      case Routes.paymentHistory:
        return MaterialPageRoute(
          builder: (_) => const PaymentHistoryScreen(),
        );
      case Routes.paymentHistoryDetails:
        return MaterialPageRoute(
          builder: (_) => const PaymentHistoryDetailsScreen(),
        );
      case Routes.dashboard:
        return MaterialPageRoute(
          builder: (_) => const DashboardScreen(),
        );
      case Routes.customerSupport:
        return MaterialPageRoute(
          builder: (_) => const CustomerSupportScreen(),
        );
      case Routes.noStoreOrService:
        return MaterialPageRoute(
          builder: (_) => const NoStoreOrServiceScreen(),
        );
      case Routes.paymentMethods:
        return MaterialPageRoute(
          builder: (_) => const PaymentMethodsScreen(),
        );

      case Routes.settings:
        return MaterialPageRoute(
          builder: (_) => const SettingsScreen(),
        );
      case Routes.masterCard:
        return MaterialPageRoute(
          builder: (_) => const MasterCardScreen(),
        );
      case Routes.cardDetails:
        return MaterialPageRoute(
          builder: (_) => const CardDetailsScreen(),
        );
      case Routes.editService:
        return MaterialPageRoute(
          builder: (_) => const EditServiceScreen(),
        );
      case Routes.editPackage:
        return MaterialPageRoute(
          builder: (_) => const EditPackageScreen(),
        );
      case Routes.visa:
        return MaterialPageRoute(
          builder: (_) => const VisaScreen(),
        );
      case Routes.navigationPreference:
        return MaterialPageRoute(
          builder: (_) => const NavigationPreferenceScreen(),
        );
      case Routes.accountSettings:
        return MaterialPageRoute(
          builder: (_) => const AccountSettingsScreen(),
        );
      case Routes.changePassword:
        return MaterialPageRoute(
          builder: (_) => const ChangePasswordScreen(),
        );
      case Routes.selectLanguage:
        return MaterialPageRoute(
          builder: (_) => const SelectLanguageScreen(),
        );
      case Routes.selectCurrency:
        return MaterialPageRoute(
          builder: (_) => const SelectCurrencyScreen(),
        );
      case Routes.accountPrivacy:
        return MaterialPageRoute(
          builder: (_) => const AccountPrivacyScreen(),
        );
      case Routes.deleteAccount:
        return MaterialPageRoute(
          builder: (_) => const DeleteAccountScreen(),
        );
      case Routes.selectCountry:
        return MaterialPageRoute(
          builder: (_) => const SelectCountryScreen(),
        );
      case Routes.fundWallet:
        return MaterialPageRoute(
          builder: (_) => const FundWalletScreen(),
        );
      case Routes.fundWithCard:
        return MaterialPageRoute(
          builder: (_) => const FundWithCardScreen(),
        );
      case Routes.cardDetailFundWallet:
        return MaterialPageRoute(
          builder: (_) => const CardDetailsFundWalletScreen(),
        );
      case Routes.fundingSuccessFailure:
        return MaterialPageRoute(
          builder: (_) => const FundingSuccessOrFailureScreen(),
        );
      case Routes.fundWithBank:
        return MaterialPageRoute(
          builder: (_) => const FundWithBankScreen(),
        );
      case Routes.bankDetails:
        return MaterialPageRoute(
          builder: (_) => const BankDetailsScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const ErrorScreen(),
        );
    }
  }
}
