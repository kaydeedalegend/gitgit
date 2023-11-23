import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'favourites_list_model.dart';
export 'favourites_list_model.dart';

class FavouritesListWidget extends StatefulWidget {
  const FavouritesListWidget({Key? key}) : super(key: key);

  @override
  _FavouritesListWidgetState createState() => _FavouritesListWidgetState();
}

class _FavouritesListWidgetState extends State<FavouritesListWidget>
    with TickerProviderStateMixin {
  late FavouritesListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasToggleIconTriggered1 = false;
  var hasToggleIconTriggered2 = false;
  final animationsMap = {
    'cardOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.bounceOut,
          delay: 50.ms,
          duration: 600.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'toggleIconOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        ScaleEffect(
          curve: Curves.bounceOut,
          delay: 100.ms,
          duration: 600.ms,
          begin: Offset(0.5, 0.5),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'cardOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.bounceOut,
          delay: 50.ms,
          duration: 600.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'toggleIconOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        ScaleEffect(
          curve: Curves.bounceOut,
          delay: 100.ms,
          duration: 600.ms,
          begin: Offset(0.5, 0.5),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavouritesListModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 14.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 50.0,
                              icon: Icon(
                                Icons.chevron_left_sharp,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              onPressed: () async {
                                context.pop();
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Favourites',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            elevation: 2.0,
          ),
        ),
        body: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/git_git_bg.png',
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment(0.0, 0),
                    child: TabBar(
                      labelColor: FlutterFlowTheme.of(context).primaryText,
                      unselectedLabelColor: Color(0x64EEF7F4),
                      labelStyle: FlutterFlowTheme.of(context).titleSmall,
                      unselectedLabelStyle: TextStyle(),
                      indicatorColor: Color(0x00020303),
                      indicatorWeight: 2.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                      tabs: [
                        Tab(
                          text: 'People',
                        ),
                        Tab(
                          text: 'Repos',
                        ),
                      ],
                      controller: _model.tabBarController,
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _model.tabBarController,
                      children: [
                        Builder(
                          builder: (context) {
                            final favUsers = FFAppState().favUsers.toList();
                            if (favUsers.isEmpty) {
                              return Center(
                                child: SvgPicture.asset(
                                  'assets/images/empty_state.svg',
                                  height: 200.0,
                                ),
                              );
                            }
                            return GridView.builder(
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                childAspectRatio: 1.0,
                              ),
                              scrollDirection: Axis.vertical,
                              itemCount: favUsers.length,
                              itemBuilder: (context, favUsersIndex) {
                                final favUsersItem = favUsers[favUsersIndex];
                                return FutureBuilder<ApiCallResponse>(
                                  future: GitHubGroup.getSingleUserCall.call(
                                    username: favUsersItem,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final cardGetSingleUserResponse =
                                        snapshot.data!;
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'UserProfile',
                                          queryParameters: {
                                            'username': serializeParam(
                                              GitHubGroup.getSingleUserCall
                                                  .username(
                                                    cardGetSingleUserResponse
                                                        .jsonBody,
                                                  )
                                                  .toString(),
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 4.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 16.0, 16.0, 16.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 60.0,
                                                height: 60.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          360.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          4.0, 4.0, 4.0, 4.0),
                                                  child: Container(
                                                    width: 120.0,
                                                    height: 120.0,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.network(
                                                      GitHubGroup
                                                          .getSingleUserCall
                                                          .userPhotoUrl(
                                                        cardGetSingleUserResponse
                                                            .jsonBody,
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 0.0),
                                                child: Text(
                                                  GitHubGroup.getSingleUserCall
                                                      .username(
                                                        cardGetSingleUserResponse
                                                            .jsonBody,
                                                      )
                                                      .toString()
                                                      .maybeHandleOverflow(
                                                        maxChars: 10,
                                                        replacement: '…',
                                                      ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                              ToggleIcon(
                                                onPressed: () async {
                                                  setState(
                                                    () => FFAppState()
                                                            .favUsers
                                                            .contains(GitHubGroup
                                                                .getSingleUserCall
                                                                .username(
                                                                  cardGetSingleUserResponse
                                                                      .jsonBody,
                                                                )
                                                                .toString())
                                                        ? FFAppState()
                                                            .removeFromFavUsers(
                                                                GitHubGroup
                                                                    .getSingleUserCall
                                                                    .username(
                                                                      cardGetSingleUserResponse
                                                                          .jsonBody,
                                                                    )
                                                                    .toString())
                                                        : FFAppState().addToFavUsers(
                                                            GitHubGroup
                                                                .getSingleUserCall
                                                                .username(
                                                                  cardGetSingleUserResponse
                                                                      .jsonBody,
                                                                )
                                                                .toString()),
                                                  );
                                                  if (GitHubGroup
                                                      .getSingleUserCall
                                                      .username(
                                                    cardGetSingleUserResponse
                                                        .jsonBody,
                                                  )) {
                                                    setState(() {
                                                      FFAppState()
                                                          .removeFromFavUsers(
                                                              GitHubGroup
                                                                  .getSingleUserCall
                                                                  .username(
                                                                    cardGetSingleUserResponse
                                                                        .jsonBody,
                                                                  )
                                                                  .toString());
                                                    });
                                                  } else {
                                                    setState(() {
                                                      FFAppState().addToFavUsers(
                                                          GitHubGroup
                                                              .getSingleUserCall
                                                              .username(
                                                                cardGetSingleUserResponse
                                                                    .jsonBody,
                                                              )
                                                              .toString());
                                                    });
                                                  }
                                                },
                                                value: FFAppState()
                                                    .favUsers
                                                    .contains(GitHubGroup
                                                        .getSingleUserCall
                                                        .username(
                                                          cardGetSingleUserResponse
                                                              .jsonBody,
                                                        )
                                                        .toString()),
                                                onIcon: FaIcon(
                                                  FontAwesomeIcons.solidStar,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 18.0,
                                                ),
                                                offIcon: FaIcon(
                                                  FontAwesomeIcons.star,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 18.0,
                                                ),
                                              ).animateOnActionTrigger(
                                                  animationsMap[
                                                      'toggleIconOnActionTriggerAnimation1']!,
                                                  hasBeenTriggered:
                                                      hasToggleIconTriggered1),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'cardOnPageLoadAnimation1']!);
                                  },
                                );
                              },
                            );
                          },
                        ),
                        Builder(
                          builder: (context) {
                            final favRepos = FFAppState().favRepos.toList();
                            if (favRepos.isEmpty) {
                              return Center(
                                child: SvgPicture.asset(
                                  'assets/images/empty_state.svg',
                                  height: 200.0,
                                ),
                              );
                            }
                            return ListView.builder(
                              padding: EdgeInsets.fromLTRB(
                                0,
                                10.0,
                                0,
                                0,
                              ),
                              scrollDirection: Axis.vertical,
                              itemCount: favRepos.length,
                              itemBuilder: (context, favReposIndex) {
                                final favReposItem = favRepos[favReposIndex];
                                return FutureBuilder<ApiCallResponse>(
                                  future: GitHubGroup.getSingleRepoCall.call(
                                    repoId: favReposItem,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final cardGetSingleRepoResponse =
                                        snapshot.data!;
                                    return Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      elevation: 4.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            18.0, 14.0, 18.0, 14.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                      'UserProfile',
                                                      queryParameters: {
                                                        'username':
                                                            serializeParam(
                                                          GitHubGroup
                                                              .getSingleRepoCall
                                                              .ownerLogin(
                                                                cardGetSingleRepoResponse
                                                                    .jsonBody,
                                                              )
                                                              .toString(),
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    elevation: 0.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  5.0,
                                                                  5.0,
                                                                  5.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Icon(
                                                            Icons.person,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 20.0,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        4.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              GitHubGroup
                                                                  .getSingleRepoCall
                                                                  .ownerLogin(
                                                                    cardGetSingleRepoResponse
                                                                        .jsonBody,
                                                                  )
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        12.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                ToggleIcon(
                                                  onPressed: () async {
                                                    setState(
                                                      () => FFAppState()
                                                              .favRepos
                                                              .contains(GitHubGroup
                                                                  .getSingleRepoCall
                                                                  .repoId(
                                                                    cardGetSingleRepoResponse
                                                                        .jsonBody,
                                                                  )
                                                                  .toString())
                                                          ? FFAppState()
                                                              .removeFromFavRepos(
                                                                  GitHubGroup
                                                                      .getSingleRepoCall
                                                                      .repoId(
                                                                        cardGetSingleRepoResponse
                                                                            .jsonBody,
                                                                      )
                                                                      .toString())
                                                          : FFAppState().addToFavRepos(
                                                              GitHubGroup
                                                                  .getSingleRepoCall
                                                                  .repoId(
                                                                    cardGetSingleRepoResponse
                                                                        .jsonBody,
                                                                  )
                                                                  .toString()),
                                                    );
                                                    if (FFAppState()
                                                        .favRepos
                                                        .contains(
                                                            favReposItem)) {
                                                      setState(() {
                                                        FFAppState()
                                                            .removeFromFavRepos(
                                                                favReposItem);
                                                      });
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Removed Repo From Favourites List.',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                        ),
                                                      );
                                                    } else {
                                                      setState(() {
                                                        FFAppState()
                                                            .addToFavRepos(
                                                                favReposItem);
                                                      });
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Added Repo To Favourites List.',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                        ),
                                                      );
                                                    }
                                                  },
                                                  value: FFAppState()
                                                      .favRepos
                                                      .contains(GitHubGroup
                                                          .getSingleRepoCall
                                                          .repoId(
                                                            cardGetSingleRepoResponse
                                                                .jsonBody,
                                                          )
                                                          .toString()),
                                                  onIcon: FaIcon(
                                                    FontAwesomeIcons.solidStar,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 25.0,
                                                  ),
                                                  offIcon: FaIcon(
                                                    FontAwesomeIcons.star,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 25.0,
                                                  ),
                                                ).animateOnActionTrigger(
                                                    animationsMap[
                                                        'toggleIconOnActionTriggerAnimation2']!,
                                                    hasBeenTriggered:
                                                        hasToggleIconTriggered2),
                                              ],
                                            ),
                                            Text(
                                              GitHubGroup.getSingleRepoCall
                                                  .repoName(
                                                    cardGetSingleRepoResponse
                                                        .jsonBody,
                                                  )
                                                  .toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge,
                                            ),
                                            Text(
                                              GitHubGroup.getSingleRepoCall
                                                  .description(
                                                    cardGetSingleRepoResponse
                                                        .jsonBody,
                                                  )
                                                  .toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        fontSize: 12.0,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.00, 0.00),
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: Color(0xFF1E1E1E),
                                                    elevation: 0.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  5.0,
                                                                  5.0,
                                                                  5.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .remove_red_eye_outlined,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 18.0,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              GitHubGroup
                                                                  .getSingleRepoCall
                                                                  .visibility(
                                                                    cardGetSingleRepoResponse
                                                                        .jsonBody,
                                                                  )
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        10.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await launchURL(GitHubGroup
                                                        .getSingleRepoCall
                                                        .htmlUrl(
                                                          cardGetSingleRepoResponse
                                                              .jsonBody,
                                                        )
                                                        .toString());
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: Color(0xFF1E1E1E),
                                                    elevation: 0.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  5.0,
                                                                  5.0,
                                                                  5.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .link,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 16.0,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'View In Web',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        10.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(height: 8.0)),
                                        ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'cardOnPageLoadAnimation2']!);
                                  },
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
