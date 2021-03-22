import 'package:google_sign_in/google_sign_in.dart';
import 'package:untitled_vegan_app/identity/google_user.dart';

class GoogleAuthorizer {
  Future<GoogleUser?> auth() async {
    GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email', 'profile']);

    try {
      final account = await googleSignIn.signIn();
      if (account == null) {
        // TODO(https://trello.com/c/XWAE5UVB/): log warning
        return null;
      }

      final authentication = await account.authentication;
      final accessToken = authentication.accessToken;
      if (accessToken == null) {
        // TODO(https://trello.com/c/XWAE5UVB/): log warning
        return null;
      }

      return GoogleUser(
          account.displayName ?? "",
          account.email,
          accessToken,
          DateTime.now().toUtc());
    } catch (error) {
      // TODO(https://trello.com/c/XWAE5UVB/): report an error
      print(error);
    }
  }
}