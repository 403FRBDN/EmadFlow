prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.2'
,p_default_workspace_id=>25107497146013559697
,p_default_application_id=>156207
,p_default_id_offset=>8982783537607029
,p_default_owner=>'WKSP_EMADFLOW'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(25118544754988098758)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
wwv_flow_imp.component_end;
end;
/
