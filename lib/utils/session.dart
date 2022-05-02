import 'package:dndman_app/api/data/auth/user_signed_in.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';

class SessionManagement {
  static Future<String> getCurrentSessionID() async {
    var sessionManager = SessionManager();

    final hasSession = await sessionManager.containsKey("sessionID");

    if (!hasSession) {
      throw Exception("Tried to get current session id but user is not signed in");
    }

    return await sessionManager.get("sessionID");
  }

  static Future<int> getCurrentUserID() async {
    var sessionManager = SessionManager();

    final hasSession = await sessionManager.containsKey("userID");

    if (!hasSession) {
      throw Exception("Tried to get current user id but user is not signed in");
    }

    return await sessionManager.get("userID");
  }

  static Future createSession(UserSignedIn userSignedIn) async {
    var sessionManager = SessionManager();
    final hasSession = await sessionManager.containsKey("sessionID");

    if (hasSession) {
      throw Exception("Tried to sign in but user is already signed in");
    }

    await sessionManager.set("sessionID", userSignedIn.session);
    await sessionManager.set("userID", userSignedIn.user);
  }

  static Future deleteSession() async {
    var sessionManager = SessionManager();
    final hasSession = await sessionManager.containsKey("sessionID");

    if (!hasSession) {
      throw Exception("Tried to sign out but user is not signed in");
    }

    await sessionManager.remove("sessionID");
    await sessionManager.remove("userID");
  }

  static Future<bool> hasSession() async {
    var sessionManager = SessionManager();
    final hasSession = await sessionManager.containsKey("sessionID");
    return hasSession;
  }
}