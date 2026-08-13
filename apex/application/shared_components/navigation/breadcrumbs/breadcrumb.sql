prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.2'
,p_default_workspace_id=>25107497146013559697
,p_default_application_id=>156207
,p_default_id_offset=>8982783537607029
,p_default_owner=>'WKSP_EMADFLOW'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(25118539410634098746)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(25118539619273098746)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(27429313518082884438)
,p_short_name=>'IOUs'
,p_static_id=>'ious'
,p_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(25126059540738913592)
,p_short_name=>'My Profile'
,p_static_id=>'my-profile'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(27174883223360927914)
,p_short_name=>'Recurring Items'
,p_static_id=>'recurring-items'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(27340400713466985845)
,p_short_name=>'Savings Goals'
,p_static_id=>'savings-goals'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(26794240794044)
,p_short_name=>'Signed Out'
,p_static_id=>'signed-out'
,p_link=>'f?p=&APP_ID.:999:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>999
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(100335973813557)
,p_short_name=>'Welcome &amp; Getting Started'
,p_static_id=>'welcome-amp-getting-started'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_imp.component_end;
end;
/
