import 'package:flutter/material.dart';
import 'package:flutter_architecture_v3/core/models/post.dart';
import 'package:flutter_architecture_v3/core/services/api.dart';
import 'package:flutter_architecture_v3/core/viewmodels/base_model.dart';

class PostsModel extends BaseModel {
  Api _api;

  PostsModel({
    @required Api api,
  }) : _api = api;

  List<Post> posts;

  Future getPosts(int userId) async {
    setBusy(true);
    posts = await _api.getPostsForUser(userId);
    setBusy(false);
  }
}