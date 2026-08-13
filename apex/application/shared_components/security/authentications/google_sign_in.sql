prompt --application/shared_components/security/authentications/google_sign_in
begin
--   Manifest
--     AUTHENTICATION: Google Sign-In
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.2'
,p_default_workspace_id=>25107497146013559697
,p_default_application_id=>156207
,p_default_id_offset=>8982783537607029
,p_default_owner=>'WKSP_EMADFLOW'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(5406787620106)
,p_name=>'Google Sign-In'
,p_static_id=>'google-sign-in'
,p_scheme_type=>'NATIVE_SOCIAL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_user_attributes', 'email,name,picture,email_verified',
  'authentication_provider', 'OPENID_CONNECT',
  'authentication_uri_parameters', 'prompt=select_account',
  'credential_store', 8987542054108937,
  'discovery_url', 'https://accounts.google.com/.well-known/openid-configuration',
  'scope', 'email,profile',
  'uppercase_username', 'N',
  'username', '#sub#',
  'verify_attributes', 'N')).to_clob
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'https://g40faa6b4b52c5d-emadflow.adb.ap-melbourne-1.oraclecloudapps.com/ords/r/emadflow/emadflow/signed-out'
,p_post_auth_process=>'BF_AUTH_PKG.GOOGLE_POST_AUTH'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:Y6G2HdU_GuFmQiSdnufmgnMOhYUep90Rz8sDh86JHqs'
);
wwv_flow_imp.component_end;
end;
/
