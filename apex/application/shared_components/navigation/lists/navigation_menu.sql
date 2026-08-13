prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.2'
,p_default_workspace_id=>25107497146013559697
,p_default_application_id=>156207
,p_default_id_offset=>8982783537607029
,p_default_owner=>'WKSP_EMADFLOW'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(25118539989081098747)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:ZtG8K0BF4gvYXVRdLPFtoLRiISSyilt_ShFtZXotydA'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(111500060171019)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Help & Guide'
,p_static_id=>'help-guide'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:12:::'
,p_list_item_icon=>'fa-question-circle'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25118551604912098767)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(27429312514686884434)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'IOUs'
,p_static_id=>'ious'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-handshake-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25126058613110913589)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'My Profile'
,p_static_id=>'my-profile'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-circle'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(27174882101740927910)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Recurring Items'
,p_static_id=>'recurring-items'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(27340399791219985841)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Savings Goals'
,p_static_id=>'savings-goals'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bullseye'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25422703343332111405)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Transactions'
,p_static_id=>'transactions'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-exchange'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_imp.component_end;
end;
/
