prompt --workspace/credentials/google_oauth_emadflow_beta
begin
--   Manifest
--     CREDENTIAL: Google OAuth - EmadFlow Beta
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.2'
,p_default_workspace_id=>25107497146013559697
,p_default_application_id=>156207
,p_default_id_offset=>8982783537607029
,p_default_owner=>'WKSP_EMADFLOW'
);
wwv_imp_workspace.create_credential(
 p_id=>8987542054108937
,p_name=>'Google OAuth - EmadFlow Beta'
,p_static_id=>'GOOGLE_EMADFLOW_BETA'
,p_authentication_type=>'BASIC'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://accounts.google.com/',
'https://oauth2.googleapis.com/',
'https://openidconnect.googleapis.com/',
''))
,p_prompt_on_install=>true
,p_credential_comment=>'Google OpenID Connect credential for EmadFlow private beta'
);
wwv_flow_imp.component_end;
end;
/
