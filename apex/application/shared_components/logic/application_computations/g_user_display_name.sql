prompt --application/shared_components/logic/application_computations/g_user_display_name
begin
--   Manifest
--     APPLICATION COMPUTATION: G_USER_DISPLAY_NAME
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.2'
,p_default_workspace_id=>25107497146013559697
,p_default_application_id=>156207
,p_default_id_offset=>8982783537607029
,p_default_owner=>'WKSP_EMADFLOW'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(35300349857617)
,p_computation_sequence=>10
,p_computation_item=>'G_USER_DISPLAY_NAME'
,p_static_id=>'g-user-display-name'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(',
'           display_name,',
'           nvl(user_email, ''EmadFlow User'')',
'       )',
'from bf_user_profile',
'where app_user = :APP_USER'))
,p_version_scn=>'SH256:Lw3clPU1Y4YrbKMoTyGJ0_WV0CVN7etp2m992tYy8-E'
);
wwv_flow_imp.component_end;
end;
/
