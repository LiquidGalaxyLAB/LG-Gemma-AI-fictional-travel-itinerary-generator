import 'dart:convert';

import 'package:dartssh2/dartssh2.dart';
import 'package:flutter/material.dart';

class SshController extends ChangeNotifier {
  String? _host;
  String? _username;
  String? _password;
  int? _port;

  SSHSocket? _connection;
  SSHClient? _client;

  String? get host => _host;
  String? get username => _username;
  String? get password => _password;
  int? get port => _port;
  SSHSocket? get connection => _connection;
  SSHClient? get client => _client;

  Future<SSHSocket> connect(String host, int port) async {
    _host = host;
    _port = port;
    if (_host != null && _port != null) {
      try {
        _connection = await SSHSocket.connect(_host!, _port!);
        notifyListeners();
      } catch (e) {
        _connection = null;
        throw Exception('Failed to connect to $_host:$_port');
      }
    } else {
      throw Exception('Host and port must be set');
    }
    return _connection!;
  }

  Future<SSHClient> authenticate(String username, String password) async {
    _username = username;
    _password = password;
    if (_username != null && _password != null) {
      try {
        _client = SSHClient(
          _connection!,
          username: _username!,
          onPasswordRequest: () => _password!,
        );
        notifyListeners();
      } catch (e) {
        _client = null;
        throw Exception('Failed to authenticate with $_username:$_password');
      }
    } else {
      throw Exception('Username and password must be set');
    }
    return _client!;
  }

  Future<void> ping() async {
    if (_client != null) {
      try {
        await _client!.ping();
        print('Ping $_host:$_port successful!');
      } catch (e) {
        _client!.close();
        _client = null;
        _connection!.close();
        _connection = null;
        notifyListeners();
        throw Exception('Failed to ping $_host:$_port');
      }
    } else {
      throw Exception('Client must be set');
    }
  }

  Future<String> runCommand(String command) async {
    if (_client != null) {
      try {
        print(command);
        final result = await _client!.run(command);
        return 'OK';
      } catch (e) {
        _client!.close();
        _client = null;
        _connection!.close();
        _connection = null;
        notifyListeners();
        throw Exception('Failed to run command: $command, closed connection.');
      }
    } else {
      throw Exception('Client must be set');
    }
  }

  Future<void> close() async {
    if (_client != null) {
      _client!.close();
    }
    if (_connection != null) {
      await _connection!.close();
    }
    notifyListeners();
  }
}
