import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:agora_rtm/agora_rtm.dart';
import 'package:agora_uikit/models/agora_connection_data.dart';
import 'package:agora_uikit/src/enums.dart';

import 'agora_user.dart';

class AgoraSettings {
  final RtcEngine? engine;
  final AgoraRtmChannel? agoraRtmChannel;
  final AgoraRtmClient? agoraRtmClient;
  final AgoraConnectionData? connectionData;
  final List<AgoraUser> users;
  final List<AgoraUser> lobbyUsers;
  final AgoraUser mainAgoraUser;
  final bool isLocalUserMuted;
  final bool isLocalVideoDisabled;
  final bool visible;
  final ClientRole clientRole;
  final int localUid;
  String? generatedToken;
  String? generatedRtmToken;
  String? generatedRtmId;
  String? cloudRecordToken;
  ChannelProfile? channelProfile;
  final bool isRecording;
  String? rid;
  String? sid;
  String? mode;
  final bool isLoggedIn;
  final bool isInChannel;
  final bool isActiveSpeakerDisabled;
  final Layout layoutType;
  final bool displaySnackbar;
  final MicState muteRequest;
  final CameraState cameraRequest;
  final bool showMicMessage;
  final bool showCameraMessage;
  final Map<String, dynamic>? userdata;
  final Map<String, Map<String, dynamic>>? userRtmMap;
  final Map<int, String>? uidToUserIdMap;
  final int viewerCount;
  final bool isHost;

  AgoraSettings({
    this.engine,
    this.agoraRtmChannel,
    this.agoraRtmClient,
    this.connectionData,
    required this.users,
    required this.mainAgoraUser,
    required this.isLocalUserMuted,
    required this.isLocalVideoDisabled,
    required this.visible,
    required this.clientRole,
    required this.localUid,
    this.rid,
    this.sid,
    this.mode = 'mix',
    this.generatedToken,
    this.generatedRtmToken,
    this.generatedRtmId,
    this.isLoggedIn = false,
    this.isInChannel = false,
    this.isActiveSpeakerDisabled = false,
    this.layoutType = Layout.grid,
    this.displaySnackbar = false,
    this.muteRequest = MicState.unmuted,
    this.cameraRequest = CameraState.enabled,
    this.showMicMessage = false,
    this.showCameraMessage = false,
    this.userdata,
    this.userRtmMap,
    this.uidToUserIdMap,
    this.isRecording = false,
    this.cloudRecordToken,
    this.channelProfile,
    this.viewerCount = 0,
    required this.lobbyUsers,
    this.isHost = false,
  });

  AgoraSettings copyWith({
    RtcEngine? engine,
    AgoraRtmChannel? agoraRtmChannel,
    AgoraRtmClient? agoraRtmClient,
    AgoraConnectionData? connectionData,
    List<AgoraUser>? users,
    List<AgoraUser>? lobbyUsers,
    AgoraUser? mainAgoraUser,
    bool? isLocalUserMuted,
    bool? isLocalVideoDisabled,
    bool? visible,
    ClientRole? clientRole,
    int? localUid,
    String? generatedToken,
    String? generatedRtmToken,
    String? generatedRtmId,
    bool? isLoggedIn,
    bool? isInChannel,
    bool? isActiveSpeakerDisabled,
    Layout? layoutType,
    bool? displaySnackbar,
    MicState? muteRequest,
    CameraState? cameraRequest,
    bool? showMicMessage,
    bool? showCameraMessage,
    Map<String, dynamic>? userdata,
    Map<String, Map<String, dynamic>>? userRtmMap,
    Map<int, String>? uidToUserIdMap,
    String? rid,
    String? sid,
    String? mode,
    bool? isRecording,
    String? cloudRecordToken,
    ChannelProfile? channelProfile,
    int? viewerCount,
    bool? isHost,
  }) {
    return AgoraSettings(
      engine: engine ?? this.engine,
      agoraRtmChannel: agoraRtmChannel ?? this.agoraRtmChannel,
      agoraRtmClient: agoraRtmClient ?? this.agoraRtmClient,
      connectionData: connectionData ?? this.connectionData,
      users: users ?? this.users,
      mainAgoraUser: mainAgoraUser ?? this.mainAgoraUser,
      isLocalUserMuted: isLocalUserMuted ?? this.isLocalUserMuted,
      isLocalVideoDisabled: isLocalVideoDisabled ?? this.isLocalVideoDisabled,
      visible: visible ?? this.visible,
      clientRole: clientRole ?? this.clientRole,
      localUid: localUid ?? this.localUid,
      generatedToken: generatedToken ?? this.generatedToken,
      generatedRtmToken: generatedRtmToken ?? this.generatedRtmToken,
      generatedRtmId: generatedRtmId ?? this.generatedRtmId,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
      isInChannel: isInChannel ?? this.isInChannel,
      isActiveSpeakerDisabled:
          isActiveSpeakerDisabled ?? this.isActiveSpeakerDisabled,
      layoutType: layoutType ?? this.layoutType,
      displaySnackbar: displaySnackbar ?? this.displaySnackbar,
      muteRequest: muteRequest ?? this.muteRequest,
      cameraRequest: cameraRequest ?? this.cameraRequest,
      showMicMessage: showMicMessage ?? this.showMicMessage,
      showCameraMessage: showCameraMessage ?? this.showCameraMessage,
      userdata: userdata ?? this.userdata,
      userRtmMap: userRtmMap ?? this.userRtmMap,
      uidToUserIdMap: uidToUserIdMap ?? this.uidToUserIdMap,
      rid: rid ?? this.rid,
      sid: sid ?? this.sid,
      mode: mode ?? this.mode,
      cloudRecordToken: cloudRecordToken ?? this.cloudRecordToken,
      isRecording: isRecording ?? this.isRecording,
      channelProfile: channelProfile ?? this.channelProfile,
      viewerCount: viewerCount ?? this.viewerCount,
      lobbyUsers: lobbyUsers ?? this.lobbyUsers,
      isHost: isHost ?? this.isHost,
    );
  }
}
