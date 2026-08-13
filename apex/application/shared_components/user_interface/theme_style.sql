prompt --application/shared_components/user_interface/theme_style
begin
--   Manifest
--     THEME STYLE: 42
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.2'
,p_default_workspace_id=>25107497146013559697
,p_default_application_id=>156207
,p_default_id_offset=>8982783537607029
,p_default_owner=>'WKSP_EMADFLOW'
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(27469529131408341224)
,p_theme_id=>42
,p_name=>'New1'
,p_static_id=>'new1'
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Accent-BG":"#0f766e","@g_Header-BG":"#1f2937","@g_Header-FG":"#ffffff","@g_Nav-BG":"#242424","@g_Nav-FG":"#f9fafb","@g_Accent-OG":"#f7f9fa","@g_Region-Header-BG":"#ffffff","@g_Region-Header-FG":"#262626"},"customCSS":"","use'
||'CustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#27469529131408341224.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp.component_end;
end;
/
