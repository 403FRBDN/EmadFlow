prompt --application/shared_components/logic/application_processes/enforce_first_time_onboarding
begin
--   Manifest
--     APPLICATION PROCESS: Enforce First-Time Onboarding
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.2'
,p_default_workspace_id=>25107497146013559697
,p_default_application_id=>156207
,p_default_id_offset=>8982783537607029
,p_default_owner=>'WKSP_EMADFLOW'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(108497034110265)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_name=>'Enforce First-Time Onboarding'
,p_static_id=>'enforce-first-time-onboarding'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_onboarding_completed_yn',
'        bf_user_profile.onboarding_completed_yn%type;',
'',
'    l_page_id number;',
'',
'begin',
'',
'    /*',
'        Ignore unauthenticated/public sessions.',
'    */',
'    if v(''APP_USER'') is null then',
'        return;',
'    end if;',
'',
'',
'    /*',
'        Current APEX page.',
'    */',
'    l_page_id := to_number(',
'        v(''APP_PAGE_ID'')',
'    );',
'',
'',
'    /*',
'        Never redirect while already viewing:',
'        Page 12  = Welcome & Getting Started',
'        Page 999 = Signed Out',
'    */',
'    if l_page_id in (',
'        12,',
'        999',
'    ) then',
'        return;',
'    end if;',
'',
'',
'    /*',
'        Read this user''s onboarding status.',
'    */',
'    begin',
'',
'        select onboarding_completed_yn',
'        into l_onboarding_completed_yn',
'        from bf_user_profile',
'        where app_user = v(''APP_USER'');',
'',
'    exception',
'        when no_data_found then',
'',
'            /*',
'                The Google post-authentication process normally',
'                creates BF_USER_PROFILE first.',
'',
'                If no profile exists, do nothing here rather',
'                than causing a redirect loop or login failure.',
'            */',
'            return;',
'    end;',
'',
'',
'    /*',
'        Redirect first-time users to Page 12.',
'    */',
'    if l_onboarding_completed_yn = ''N'' then',
'',
'        apex_util.redirect_url(',
'            p_url =>',
'                apex_page.get_url(',
'                    p_page        => 12,',
'                    p_clear_cache => ''12''',
'                )',
'        );',
'',
'    end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_version_scn=>'SH256:tgchHL3HpdOtBC91klgw-2Q8dAriXBgukGq2NbAeLg0'
);
wwv_flow_imp.component_end;
end;
/
