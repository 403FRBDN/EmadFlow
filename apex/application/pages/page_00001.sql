prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.2'
,p_default_workspace_id=>25107497146013559697
,p_default_application_id=>156207
,p_default_id_offset=>8982783537607029
,p_default_owner=>'WKSP_EMADFLOW'
);
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'EmadFlow'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ============================================================',
'   EMADFLOW',
'   HOME DASHBOARD - PAGE 1',
'   MASTER INLINE CSS',
'   ============================================================ */',
'',
'',
'/* ============================================================',
'   1. GENERAL DASHBOARD SPACING',
'   ============================================================ */',
'',
'#emad-hero,',
'#emad-actions,',
'#emad-summary,',
'#emad-next30,',
'#emad-cashflow,',
'#emad-savings,',
'#emad-iou,',
'#emad-activity {',
'    margin-bottom: 16px;',
'}',
'',
'',
'/* ============================================================',
'   2. FINANCIAL HERO',
'   ============================================================ */',
'',
'#emad-hero {',
'    width: 100% !important;',
'    max-width: none !important;',
'}',
'',
'#emad-hero .a-CardView,',
'#emad-hero .a-CardView-items {',
'    width: 100% !important;',
'    max-width: none !important;',
'}',
'',
'#emad-hero .a-CardView-items {',
'    display: grid !important;',
'    grid-template-columns: minmax(0, 1fr) !important;',
'}',
'',
'#emad-hero .a-CardView-item {',
'    width: 100% !important;',
'    max-width: none !important;',
'    min-width: 0 !important;',
'',
'    background:',
'        linear-gradient(',
'            135deg,',
'            #ffffff 0%,',
'            #f2faf9 100%',
'        );',
'',
'    border: 1px solid #d8e8e5;',
'    border-radius: 14px;',
'',
'    overflow: hidden;',
'',
'    box-shadow:',
'        0 3px 10px rgba(0, 0, 0, 0.06);',
'',
'    transition:',
'        transform 0.15s ease,',
'        box-shadow 0.15s ease;',
'}',
'',
'#emad-hero .a-CardView-item:hover {',
'    transform: translateY(-1px);',
'',
'    box-shadow:',
'        0 7px 18px rgba(0, 0, 0, 0.08);',
'}',
'',
'#emad-hero .a-CardView-header {',
'    padding: 18px 20px 8px 20px;',
'}',
'',
'#emad-hero .a-CardView-body {',
'    padding: 8px 20px 18px 20px;',
'}',
'',
'#emad-hero .a-CardView-title {',
'    font-size: 1.18rem;',
'    font-weight: 700;',
'    line-height: 1.35;',
'}',
'',
'#emad-hero .a-CardView-subTitle {',
'    margin-top: 3px;',
'}',
'',
'#emad-hero .a-CardView-badge {',
'    border-radius: 999px;',
'    padding-left: 10px;',
'    padding-right: 10px;',
'}',
'',
'',
'/* ============================================================',
'   3. QUICK ACTIONS',
'   ============================================================ */',
'',
'#emad-actions .t-Button {',
'    border-radius: 8px;',
'',
'    transition:',
'        transform 0.15s ease,',
'        box-shadow 0.15s ease;',
'}',
'',
'#emad-actions .t-Button:hover {',
'    transform: translateY(-1px);',
'',
'    box-shadow:',
'        0 4px 10px rgba(0, 0, 0, 0.10);',
'}',
'',
'',
'/* ============================================================',
'   4. FINANCIAL SUMMARY',
'   ============================================================ */',
'',
'#emad-summary .a-CardView-item {',
'    border-radius: 12px;',
'',
'    box-shadow:',
'        0 2px 7px rgba(0, 0, 0, 0.045);',
'',
'    transition:',
'        transform 0.15s ease,',
'        box-shadow 0.15s ease;',
'}',
'',
'#emad-summary .a-CardView-item:hover {',
'    transform: translateY(-2px);',
'',
'    box-shadow:',
'        0 7px 16px rgba(0, 0, 0, 0.075);',
'}',
'',
'',
'/* Current Balance - neutral blue */',
'',
'#emad-summary .a-CardView-item:nth-child(1) {',
'    border-top: 3px solid #1976d2;',
'}',
'',
'',
'/* Total Income - positive green */',
'',
'#emad-summary .a-CardView-item:nth-child(2) {',
'    border-top: 3px solid #2e7d32;',
'}',
'',
'',
'/* Total Expenses - expense red */',
'',
'#emad-summary .a-CardView-item:nth-child(3) {',
'    border-top: 3px solid #c64747;',
'}',
'',
'',
'/* ============================================================',
'   5. NEXT 30 DAYS',
'   ============================================================ */',
'',
'#emad-next30 .a-CardView-item {',
'    border-radius: 12px;',
'',
'    box-shadow:',
'        0 2px 7px rgba(0, 0, 0, 0.045);',
'',
'    transition:',
'        transform 0.15s ease,',
'        box-shadow 0.15s ease;',
'}',
'',
'#emad-next30 .a-CardView-item:hover {',
'    transform: translateY(-2px);',
'',
'    box-shadow:',
'        0 7px 16px rgba(0, 0, 0, 0.075);',
'}',
'',
'',
'/* Upcoming Income */',
'',
'#emad-next30 .a-CardView-item:nth-child(1) {',
'    border-top: 3px solid #2e7d32;',
'}',
'',
'',
'/* Upcoming Expenses */',
'',
'#emad-next30 .a-CardView-item:nth-child(2) {',
'    border-top: 3px solid #c64747;',
'}',
'',
'',
'/* Net Cash Flow - neutral / informational */',
'',
'#emad-next30 .a-CardView-item:nth-child(3) {',
'    border-top: 3px solid #11877f;',
'}',
'',
'',
'/* ============================================================',
'   6. UPCOMING CASH FLOW',
'   ============================================================ */',
'',
'#emad-cashflow {',
'    margin-top: 18px;',
'}',
'',
'#emad-cashflow .t-Region-header {',
'    background: #f3faf9;',
'    border-bottom: 1px solid #d8ebe8;',
'}',
'',
'#emad-cashflow .t-Region-title {',
'    font-weight: 700;',
'}',
'',
'#emad-cashflow .a-CardView-items {',
'    gap: 10px !important;',
'}',
'',
'#emad-cashflow .a-CardView-item {',
'    margin-bottom: 0 !important;',
'',
'    border: 1px solid #dce7e5;',
'    border-left: 4px solid #11877f;',
'',
'    border-radius: 10px;',
'',
'    box-shadow: none;',
'',
'    overflow: hidden;',
'',
'    transition:',
'        transform 0.15s ease,',
'        box-shadow 0.15s ease;',
'}',
'',
'',
'/* Income scheduled item */',
'',
'#emad-cashflow .a-CardView-item:has(.fa-arrow-up) {',
'    border-left-color: #2e7d32;',
'}',
'',
'',
'/* Expense scheduled item */',
'',
'#emad-cashflow .a-CardView-item:has(.fa-arrow-down) {',
'    border-left-color: #c64747;',
'}',
'',
'',
'#emad-cashflow .a-CardView-item:has(.fa-arrow-up)',
'.a-CardView-body > div:first-child {',
'    color: #24712a;',
'}',
'',
'',
'#emad-cashflow .a-CardView-item:has(.fa-arrow-down)',
'.a-CardView-body > div:first-child {',
'    color: #b83d3d;',
'}',
'',
'',
'#emad-cashflow .a-CardView-item:hover {',
'    transform: translateY(-1px);',
'',
'    box-shadow:',
'        0 5px 14px rgba(0, 0, 0, 0.07);',
'}',
'',
'#emad-cashflow .a-CardView-header {',
'    padding:',
'        12px 16px 5px 16px !important;',
'',
'    border-bottom: 0;',
'}',
'',
'#emad-cashflow .a-CardView-body {',
'    padding:',
'        5px 16px 12px 16px !important;',
'}',
'',
'#emad-cashflow .a-CardView-title {',
'    font-size: 1rem;',
'    font-weight: 700;',
'}',
'',
'#emad-cashflow .a-CardView-subTitle {',
'    margin-top: 2px;',
'}',
'',
'#emad-cashflow .a-CardView-badge {',
'    font-size: 0.75rem;',
'',
'    border-radius: 999px;',
'',
'    padding-left: 9px;',
'    padding-right: 9px;',
'}',
'',
'',
'/* ============================================================',
'   7. SAVINGS GOALS',
'   ============================================================ */',
'',
'#emad-savings {',
'    margin-top: 18px;',
'}',
'',
'#emad-savings .t-Region-header {',
'    background: #f7fafc;',
'    border-bottom: 1px solid #e1e7ec;',
'}',
'',
'#emad-savings .t-Region-title {',
'    font-weight: 700;',
'}',
'',
'#emad-savings .a-CardView-items {',
'    display: grid !important;',
'',
'    grid-template-columns:',
'        repeat(',
'            auto-fit,',
'            minmax(280px, 1fr)',
'        ) !important;',
'',
'    gap: 16px !important;',
'',
'    width: 100% !important;',
'}',
'',
'#emad-savings .a-CardView-item {',
'    width: 100% !important;',
'    max-width: none !important;',
'    min-width: 0 !important;',
'',
'    border: 1px solid #dde5e7;',
'    border-top: 3px solid #11877f;',
'',
'    border-radius: 14px;',
'',
'    overflow: hidden;',
'',
'    box-shadow:',
'        0 2px 7px rgba(0, 0, 0, 0.05);',
'',
'    transition:',
'        transform 0.15s ease,',
'        box-shadow 0.15s ease;',
'}',
'',
'#emad-savings .a-CardView-item:hover {',
'    transform: translateY(-2px);',
'',
'    box-shadow:',
'        0 7px 18px rgba(0, 0, 0, 0.08);',
'}',
'',
'#emad-savings .a-CardView-header {',
'    padding: 14px 16px;',
'}',
'',
'#emad-savings .a-CardView-title {',
'    font-weight: 700;',
'}',
'',
'#emad-savings .a-CardView-body {',
'    padding: 18px !important;',
'}',
'',
'',
'/* Savings progress bar */',
'',
'#emad-savings progress {',
'    appearance: none;',
'    -webkit-appearance: none;',
'',
'    display: block;',
'',
'    width: 100% !important;',
'    height: 10px !important;',
'',
'    margin-top: 10px;',
'    margin-bottom: 10px;',
'',
'    border: 0;',
'',
'    border-radius: 999px;',
'',
'    overflow: hidden;',
'}',
'',
'#emad-savings progress::-webkit-progress-bar {',
'    background: #e7eeed;',
'    border-radius: 999px;',
'}',
'',
'#emad-savings progress::-webkit-progress-value {',
'    background: #11877f;',
'    border-radius: 999px;',
'}',
'',
'#emad-savings progress::-moz-progress-bar {',
'    background: #11877f;',
'    border-radius: 999px;',
'}',
'',
'',
'/* ============================================================',
'   8. IOU SUMMARY',
'   ============================================================ */',
'',
'#emad-iou .a-CardView-item {',
'    border-radius: 12px;',
'',
'    box-shadow:',
'        0 2px 7px rgba(0, 0, 0, 0.045);',
'',
'    transition:',
'        transform 0.15s ease,',
'        box-shadow 0.15s ease;',
'}',
'',
'#emad-iou .a-CardView-item:hover {',
'    transform: translateY(-2px);',
'',
'    box-shadow:',
'        0 7px 16px rgba(0, 0, 0, 0.075);',
'}',
'',
'',
'/* Money Owed to Me */',
'',
'#emad-iou .a-CardView-item:nth-child(1) {',
'    border-top: 3px solid #2e7d32;',
'}',
'',
'',
'/* Money I Owe */',
'',
'#emad-iou .a-CardView-item:nth-child(2) {',
'    border-top: 3px solid #c64747;',
'}',
'',
'',
'/* Net IOU Position */',
'',
'#emad-iou .a-CardView-item:nth-child(3) {',
'    border-top: 3px solid #1976d2;',
'}',
'',
'',
'/* ============================================================',
'   9. RECENT ACTIVITY',
'   ============================================================ */',
'',
'#emad-activity {',
'    margin-top: 18px;',
'}',
'',
'#emad-activity .t-Region-header {',
'    background: #ffffff;',
'    border-bottom: 1px solid #e4e7e9;',
'}',
'',
'#emad-activity .t-Region-title {',
'    font-weight: 700;',
'}',
'',
'#emad-activity .a-CardView-items {',
'    gap: 14px !important;',
'}',
'',
'#emad-activity .a-CardView-item {',
'    border: 1px solid #e1e5e8;',
'',
'    border-radius: 14px;',
'',
'    overflow: hidden;',
'',
'    box-shadow:',
'        0 2px 8px rgba(0, 0, 0, 0.05);',
'',
'    transition:',
'        transform 0.15s ease,',
'        box-shadow 0.15s ease,',
'        border-color 0.15s ease;',
'}',
'',
'',
'/* Income transaction */',
'',
'#emad-activity .a-CardView-item:has(.fa-arrow-up) {',
'    border-top: 3px solid #2e7d32;',
'}',
'',
'',
'/* Expense transaction */',
'',
'#emad-activity .a-CardView-item:has(.fa-arrow-down) {',
'    border-top: 3px solid #c64747;',
'}',
'',
'',
'#emad-activity .a-CardView-item:has(.fa-arrow-up)',
'.a-CardView-body > div:first-child {',
'    color: #24712a;',
'}',
'',
'',
'#emad-activity .a-CardView-item:has(.fa-arrow-down)',
'.a-CardView-body > div:first-child {',
'    color: #b83d3d;',
'}',
'',
'',
'#emad-activity .a-CardView-item:hover {',
'    transform: translateY(-3px);',
'',
'    box-shadow:',
'        0 8px 20px rgba(0, 0, 0, 0.09);',
'}',
'',
'#emad-activity .a-CardView-header {',
'    border-bottom: 0;',
'}',
'',
'#emad-activity .a-CardView-title {',
'    font-weight: 700;',
'}',
'',
'#emad-activity .a-CardView-body {',
'    padding-top: 4px;',
'}',
'',
'#emad-activity .a-CardView-badge {',
'    border-radius: 999px;',
'}',
'',
'',
'/* ============================================================',
'   10. TABLET',
'   ============================================================ */',
'',
'@media (max-width: 900px) {',
'',
'    #emad-savings .a-CardView-items {',
'        grid-template-columns:',
'            repeat(',
'                auto-fit,',
'                minmax(240px, 1fr)',
'            ) !important;',
'    }',
'}',
'',
'',
'/* ============================================================',
'   11. MOBILE',
'   ============================================================ */',
'',
'@media (max-width: 640px) {',
'',
'    #emad-hero,',
'    #emad-actions,',
'    #emad-summary,',
'    #emad-next30,',
'    #emad-cashflow,',
'    #emad-savings,',
'    #emad-iou,',
'    #emad-activity {',
'        margin-top: 12px;',
'        margin-bottom: 12px;',
'    }',
'',
'',
'    /* HERO */',
'',
'    #emad-hero .a-CardView-item {',
'        border-radius: 10px;',
'    }',
'',
'    #emad-hero .a-CardView-header {',
'        padding:',
'            14px 14px 6px 14px;',
'    }',
'',
'    #emad-hero .a-CardView-body {',
'        padding:',
'            6px 14px 14px 14px;',
'    }',
'',
'    #emad-hero .a-CardView-title {',
'        font-size: 1.05rem;',
'    }',
'',
'',
'    /* CASH FLOW */',
'',
'    #emad-cashflow .a-CardView-header {',
'        padding:',
'            10px 12px 4px 12px !important;',
'    }',
'',
'    #emad-cashflow .a-CardView-body {',
'        padding:',
'            4px 12px 10px 12px !important;',
'    }',
'',
'',
'    /* SAVINGS */',
'',
'    #emad-savings .a-CardView-items {',
'        grid-template-columns:',
'            minmax(0, 1fr) !important;',
'',
'        gap: 12px !important;',
'    }',
'',
'    #emad-savings .a-CardView-item {',
'        border-radius: 10px;',
'    }',
'',
'    #emad-savings .a-CardView-body {',
'        padding: 14px !important;',
'    }',
'',
'',
'    /* RECENT ACTIVITY */',
'',
'    #emad-activity .a-CardView-item {',
'        border-radius: 10px;',
'    }',
'}'))
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25130532320176279614)
,p_plug_name=>'Dashboard Welcome'
,p_static_id=>'dashboard-welcome'
,p_title=>'Welcome back, &P1_DISPLAY_NAME!HTML.'
,p_icon_css_classes=>'fa fa-badge-dollar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675494171183407654
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  Review your balance, spending, savings and upcoming commitments.',
'</p>'))
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27437376625905277820)
,p_plug_name=>'Quick Actions'
,p_static_id=>'emad-actions'
,p_title=>'Quick Actions'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28771715799289)
,p_plug_name=>'Recent Activity'
,p_static_id=>'emad-activity'
,p_title=>'Recent Activity'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>130
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with local_date as (',
'    select',
'        trunc(',
'            cast(',
'                systimestamp',
'                at time zone ''Australia/Melbourne''',
'                as date',
'            )',
'        ) as today',
'    from dual',
')',
'',
'select',
'    t.transaction_id,',
'',
'    case',
'        when trim(t.description) is not null then',
'            t.description',
'        else',
'            c.category_name',
'    end as card_title,',
'',
'    c.category_name',
unistr('    || '' \00B7 '''),
'    ||',
'    case',
'        when t.source_type = ''MANUAL'' then ''Manual''',
'        when t.source_type = ''RECURRING'' then ''Recurring''',
'        else initcap(lower(t.source_type))',
'    end as card_subtitle,',
'',
'    case',
'        when t.transaction_type = ''INCOME'' then',
'            ''+$'' ||',
'            to_char(',
'                t.amount,',
'                ''FM999G999G999G990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            )',
'',
'        when t.transaction_type = ''EXPENSE'' then',
'            ''-$'' ||',
'            to_char(',
'                t.amount,',
'                ''FM999G999G999G990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            )',
'',
'        else',
'            ''$'' ||',
'            to_char(',
'                t.amount,',
'                ''FM999G999G999G990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            )',
'    end as amount_display,',
'',
'    case',
'        when t.transaction_date = d.today then',
'            ''Today''',
'',
'        when t.transaction_date = d.today - 1 then',
'            ''Yesterday''',
'',
'        when t.transaction_date >= d.today - 6 then',
'            to_char(',
'                t.transaction_date,',
'                ''Dy''',
'            )',
'',
'        else',
'            to_char(',
'                t.transaction_date,',
'                ''DD Mon''',
'            )',
'    end as date_badge,',
'',
'    case',
'        when t.transaction_type = ''INCOME'' then',
'            ''Income''',
'',
'        when t.transaction_type = ''EXPENSE'' then',
'            ''Expense''',
'',
'        else',
'            initcap(lower(t.transaction_type))',
'    end as type_label,',
'',
'    ''Recorded on ''',
'    ||',
'    to_char(',
'        t.transaction_date,',
'        ''DD Mon YYYY''',
'    ) as date_description,',
'',
'    case',
'        when t.transaction_type = ''INCOME'' then',
'            ''fa fa-arrow-up''',
'',
'        when t.transaction_type = ''EXPENSE'' then',
'            ''fa fa-arrow-down''',
'',
'        else',
'            ''fa fa-exchange''',
'    end as card_icon,',
'',
'    t.transaction_date',
'',
'from bf_transactions t',
'',
'join bf_categories c',
'    on c.category_id = t.category_id',
'',
'cross join local_date d',
'',
'where t.app_user = v(''APP_USER'')',
'',
'order by',
'    t.transaction_date desc,',
'    t.transaction_id desc',
'',
'fetch first 6 rows only'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>'No transactions yet. Add your first transaction.'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(28884010799290)
,p_region_id=>wwv_flow_imp.id(28771715799289)
,p_layout_type=>'GRID'
,p_grid_column_count=>3
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'CARD_SUBTITLE'
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size:1.15rem;font-weight:700;">',
'    &AMOUNT_DISPLAY!HTML.',
'</div>'))
,p_second_body_adv_formatting=>true
,p_second_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="margin-top:4px;font-size:0.85rem;">',
'    <span>&TYPE_LABEL!HTML.</span>',
unistr('    <span style="margin:0 6px;">\2022</span>'),
'    <span>&DATE_DESCRIPTION!HTML.</span>',
'</div>'))
,p_icon_source_type=>'DYNAMIC_CLASS'
,p_icon_class_column_name=>'CARD_ICON'
,p_icon_position=>'START'
,p_badge_column_name=>'DATE_BADGE'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'TRANSACTION_ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(29308080799294)
,p_card_id=>wwv_flow_imp.id(28884010799290)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_static_id=>'action'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:4:P4_TRANSACTION_ID:&TRANSACTION_ID.'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28595850799287)
,p_plug_name=>'Upcoming Cash Flow Timeline'
,p_static_id=>'emad-cashflow'
,p_title=>'Upcoming Cash Flow'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with local_date as (',
'    select',
'        trunc(',
'            cast(',
'                systimestamp',
'                at time zone ''Australia/Melbourne''',
'                as date',
'            )',
'        ) as today',
'    from dual',
')',
'',
'select',
'    f.recurring_id,',
'',
'    f.item_name as card_title,',
'',
'    f.category_name',
unistr('        || '' \00B7 '''),
'        || initcap(lower(f.frequency_code))',
'        as card_subtitle,',
'',
'    case',
'        when f.item_type = ''INCOME'' then',
'            ''+$'' ||',
'            to_char(',
'                f.amount,',
'                ''FM999G999G999G990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            )',
'',
'        when f.item_type = ''EXPENSE'' then',
'            ''-$'' ||',
'            to_char(',
'                f.amount,',
'                ''FM999G999G999G990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            )',
'',
'        else',
'            ''$'' ||',
'            to_char(',
'                f.amount,',
'                ''FM999G999G999G990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            )',
'    end as amount_display,',
'',
'    case',
'        when f.occurrence_date = d.today then',
'            ''Today''',
'',
'        when f.occurrence_date = d.today + 1 then',
'            ''Tomorrow''',
'',
'        when f.occurrence_date <= d.today + 7 then',
'            ''In '' ||',
'            to_char(',
'                f.occurrence_date - d.today',
'            ) ||',
'            '' days''',
'',
'        else',
'            to_char(',
'                f.occurrence_date,',
'                ''DD Mon''',
'            )',
'    end as date_badge,',
'',
'    case',
'        when f.item_type = ''INCOME'' then',
'            ''Income expected on ''',
'',
'        when f.item_type = ''EXPENSE'' then',
'            ''Expense due on ''',
'',
'        else',
'            ''Due on ''',
'    end',
'    ||',
'    to_char(',
'        f.occurrence_date,',
'        ''DD Mon YYYY''',
'    ) as date_description,',
'',
'    case',
'        when f.item_type = ''INCOME'' then',
'            ''fa fa-arrow-up''',
'',
'        when f.item_type = ''EXPENSE'' then',
'            ''fa fa-arrow-down''',
'',
'        else',
'            ''fa fa-calendar''',
'    end as card_icon,',
'',
'    f.occurrence_date,',
'',
'    f.item_type',
'',
'from bf_v_recurring_forecast f',
'',
'cross join local_date d',
'',
'where f.app_user = v(''APP_USER'')',
'  and f.occurrence_date >= d.today',
'  and f.occurrence_date <= d.today + 30',
'',
'order by',
'    f.occurrence_date,',
'    case',
'        when f.item_type = ''EXPENSE'' then 1',
'        when f.item_type = ''INCOME'' then 2',
'        else 3',
'    end,',
'    f.item_name',
'',
'fetch first 8 rows only'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>'Nothing scheduled in the next 30 days.'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(28653161799288)
,p_region_id=>wwv_flow_imp.id(28595850799287)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'CARD_SUBTITLE'
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size:1.15rem;font-weight:700;">',
'    &AMOUNT_DISPLAY!HTML.',
'</div>'))
,p_second_body_adv_formatting=>true
,p_second_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size:0.85rem;margin-top:4px;">',
'    <span class="fa fa-calendar-o" aria-hidden="true"></span>',
'    &DATE_DESCRIPTION!HTML.',
'</div>'))
,p_icon_source_type=>'DYNAMIC_CLASS'
,p_icon_class_column_name=>'CARD_ICON'
,p_icon_position=>'START'
,p_badge_column_name=>'DATE_BADGE'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'RECURRING_ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(29117640799293)
,p_card_id=>wwv_flow_imp.id(28653161799288)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_static_id=>'action'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6:P6_RECURRING_ID:&RECURRING_ID.'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28365382799285)
,p_plug_name=>'Financial Hero'
,p_static_id=>'emad-hero'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>12
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with local_time as (',
'    select',
'        systimestamp at time zone ''Australia/Melbourne'' as melbourne_now',
'    from dual',
'),',
'',
'user_data as (',
'    select',
'        p.display_name,',
'        nvl(',
'            a.current_balance,',
'            nvl(p.opening_balance, 0)',
'        ) as current_balance',
'    from bf_user_profile p',
'    left join bf_v_account_summary a',
'        on a.app_user = p.app_user',
'    where p.app_user = v(''APP_USER'')',
'),',
'',
'forecast_data as (',
'    select',
'        nvl(',
'            sum(',
'                case',
'                    when item_type = ''INCOME''',
'                    then amount',
'                    else 0',
'                end',
'            ),',
'            0',
'        ) as upcoming_income,',
'',
'        nvl(',
'            sum(',
'                case',
'                    when item_type = ''EXPENSE''',
'                    then amount',
'                    else 0',
'                end',
'            ),',
'            0',
'        ) as upcoming_expenses',
'',
'    from bf_v_recurring_forecast',
'',
'    where app_user = v(''APP_USER'')',
'      and occurrence_date >=',
'            trunc(',
'                cast(',
'                    systimestamp',
'                    at time zone ''Australia/Melbourne''',
'                    as date',
'                )',
'            )',
'      and occurrence_date <=',
'            trunc(',
'                cast(',
'                    systimestamp',
'                    at time zone ''Australia/Melbourne''',
'                    as date',
'                )',
'            ) + 30',
')',
'',
'select',
'    ''FINANCIAL_HERO'' as card_id,',
'',
'    case',
'        when to_number(',
'                 to_char(',
'                     l.melbourne_now,',
'                     ''HH24''',
'                 )',
'             ) < 12',
'        then ''Good morning, '' || nvl(u.display_name, ''there'')',
'',
'        when to_number(',
'                 to_char(',
'                     l.melbourne_now,',
'                     ''HH24''',
'                 )',
'             ) < 17',
'        then ''Good afternoon, '' || nvl(u.display_name, ''there'')',
'',
'        else',
'            ''Good evening, '' || nvl(u.display_name, ''there'')',
'    end as card_title,',
'',
'    ''Your current balance'' as card_subtitle,',
'',
'    case',
'        when u.current_balance < 0 then',
'            ''-$'' ||',
'            to_char(',
'                abs(u.current_balance),',
'                ''FM999G999G999G990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            )',
'        else',
'            ''$'' ||',
'            to_char(',
'                u.current_balance,',
'                ''FM999G999G999G990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            )',
'    end as card_value,',
'',
'    case',
'        when f.upcoming_income - f.upcoming_expenses > 0 then',
'            ''+$'' ||',
'            to_char(',
'                f.upcoming_income - f.upcoming_expenses,',
'                ''FM999G999G999G990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            ) ||',
'            '' expected over the next 30 days''',
'',
'        when f.upcoming_income - f.upcoming_expenses < 0 then',
'            ''-$'' ||',
'            to_char(',
'                abs(',
'                    f.upcoming_income -',
'                    f.upcoming_expenses',
'                ),',
'                ''FM999G999G999G990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            ) ||',
'            '' expected over the next 30 days''',
'',
'        else',
'            ''Your expected 30-day cash flow is balanced''',
'    end as card_description,',
'',
'    case',
'        when f.upcoming_income - f.upcoming_expenses > 0',
'            then ''Positive Outlook''',
'',
'        when f.upcoming_income - f.upcoming_expenses < 0',
'            then ''Watch Cash Flow''',
'',
'        else',
'            ''Balanced''',
'    end as card_badge,',
'',
'    ''fa fa-badge-dollar'' as card_icon',
'',
'from user_data u',
'cross join forecast_data f',
'cross join local_time l'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(28476393799286)
,p_region_id=>wwv_flow_imp.id(28365382799285)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'CARD_SUBTITLE'
,p_body_adv_formatting=>false
,p_body_column_name=>'CARD_VALUE'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'CARD_DESCRIPTION'
,p_icon_source_type=>'DYNAMIC_CLASS'
,p_icon_class_column_name=>'CARD_ICON'
,p_icon_position=>'START'
,p_badge_column_name=>'CARD_BADGE'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'CARD_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27437375751795277811)
,p_plug_name=>'IOU Summary'
,p_static_id=>'emad-iou'
,p_title=>'IOU Summary'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>110
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with iou_totals as (',
'    select',
'        nvl(',
'            sum(',
'                case',
'                    when iou_type = ''LENT''',
'                     and outstanding_amount > 0',
'                    then outstanding_amount',
'                    else 0',
'                end',
'            ),',
'            0',
'        ) as owed_to_me,',
'',
'        nvl(',
'            sum(',
'                case',
'                    when iou_type = ''BORROWED''',
'                     and outstanding_amount > 0',
'                    then outstanding_amount',
'                    else 0',
'                end',
'            ),',
'            0',
'        ) as i_owe,',
'',
'        nvl(',
'            sum(',
'                case',
'                    when iou_type = ''LENT''',
'                     and outstanding_amount > 0',
'                    then 1',
'                    else 0',
'                end',
'            ),',
'            0',
'        ) as lent_count,',
'',
'        nvl(',
'            sum(',
'                case',
'                    when iou_type = ''BORROWED''',
'                     and outstanding_amount > 0',
'                    then 1',
'                    else 0',
'                end',
'            ),',
'            0',
'        ) as borrowed_count',
'',
'    from bf_v_iou_summary',
'',
'    where app_user = v(''APP_USER'')',
')',
'',
'select',
'    1 as sort_order,',
'',
'    ''OWED_TO_ME'' as card_id,',
'',
'    ''Money Owed to Me'' as card_title,',
'',
'    ''$'' ||',
'    to_char(',
'        owed_to_me,',
'        ''FM999G999G999G990D00'',',
'        ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'    ) as card_value,',
'',
'    case',
'        when lent_count = 0 then',
'            ''No outstanding IOUs''',
'',
'        when lent_count = 1 then',
'            ''1 outstanding IOU''',
'',
'        else',
'            to_char(lent_count) ||',
'            '' outstanding IOUs''',
'    end as card_description,',
'',
'    case',
'        when lent_count = 0 then',
'            ''Clear''',
'        else',
'            to_char(lent_count) || '' open''',
'    end as card_badge,',
'',
'    ''fa fa-arrow-down'' as card_icon',
'',
'from iou_totals',
'',
'union all',
'',
'select',
'    2 as sort_order,',
'',
'    ''I_OWE'' as card_id,',
'',
'    ''Money I Owe'' as card_title,',
'',
'    ''$'' ||',
'    to_char(',
'        i_owe,',
'        ''FM999G999G999G990D00'',',
'        ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'    ) as card_value,',
'',
'    case',
'        when borrowed_count = 0 then',
'            ''Nothing currently owed''',
'',
'        when borrowed_count = 1 then',
'            ''1 outstanding IOU''',
'',
'        else',
'            to_char(borrowed_count) ||',
'            '' outstanding IOUs''',
'    end as card_description,',
'',
'    case',
'        when borrowed_count = 0 then',
'            ''Clear''',
'        else',
'            to_char(borrowed_count) || '' open''',
'    end as card_badge,',
'',
'    ''fa fa-arrow-up'' as card_icon',
'',
'from iou_totals',
'',
'union all',
'',
'select',
'    3 as sort_order,',
'',
'    ''NET_IOU'' as card_id,',
'',
'    ''Net IOU Position'' as card_title,',
'',
'    case',
'        when owed_to_me - i_owe > 0 then',
'            ''+$'' ||',
'            to_char(',
'                owed_to_me - i_owe,',
'                ''FM999G999G999G990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            )',
'',
'        when owed_to_me - i_owe < 0 then',
'            ''-$'' ||',
'            to_char(',
'                abs(',
'                    owed_to_me - i_owe',
'                ),',
'                ''FM999G999G999G990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            )',
'',
'        else',
'            ''$0.00''',
'    end as card_value,',
'',
'    case',
'        when owed_to_me - i_owe > 0 then',
'            ''More money is owed to you''',
'',
'        when owed_to_me - i_owe < 0 then',
'            ''You currently owe more overall''',
'',
'        else',
'            ''Your IOU position is balanced''',
'    end as card_description,',
'',
'    case',
'        when owed_to_me - i_owe > 0 then',
'            ''Ahead''',
'',
'        when owed_to_me - i_owe < 0 then',
'            ''Owing''',
'',
'        else',
'            ''Balanced''',
'    end as card_badge,',
'',
'    ''fa fa-exchange'' as card_icon',
'',
'from iou_totals',
'',
'order by 1'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(27437375868015277812)
,p_region_id=>wwv_flow_imp.id(27437375751795277811)
,p_layout_type=>'GRID'
,p_grid_column_count=>3
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="',
'    font-size:1.35rem;',
'    font-weight:700;',
'    margin-top:4px;',
'    margin-bottom:5px;',
'">',
'    &CARD_VALUE!HTML.',
'</div>'))
,p_second_body_adv_formatting=>true
,p_second_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="',
'    font-size:0.85rem;',
'    line-height:1.4;',
'">',
'    &CARD_DESCRIPTION!HTML.',
'</div>'))
,p_icon_source_type=>'DYNAMIC_CLASS'
,p_icon_class_column_name=>'CARD_ICON'
,p_icon_position=>'START'
,p_badge_column_name=>'CARD_BADGE'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'CARD_ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(30406763799305)
,p_card_id=>wwv_flow_imp.id(27437375868015277812)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_static_id=>'action'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9::'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27198471759550830119)
,p_plug_name=>'Next 30 Days'
,p_static_id=>'emad-next30'
,p_title=>'Next 30 Days'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with forecast_data as (',
'    select',
'        nvl(',
'            sum(',
'                case',
'                    when item_type = ''INCOME''',
'                    then amount',
'                    else 0',
'                end',
'            ),',
'            0',
'        ) as upcoming_income,',
'',
'        nvl(',
'            sum(',
'                case',
'                    when item_type = ''EXPENSE''',
'                    then amount',
'                    else 0',
'                end',
'            ),',
'            0',
'        ) as upcoming_expenses',
'',
'    from bf_v_recurring_forecast',
'',
'    where app_user = v(''APP_USER'')',
'      and occurrence_date >= trunc(current_date)',
'      and occurrence_date <= trunc(current_date) + 30',
')',
'',
'select',
'    10 as sort_order,',
'    ''UPCOMING_INCOME'' as card_id,',
'    ''Upcoming Income'' as card_title,',
'',
'    ''$'' ||',
'    to_char(',
'        upcoming_income,',
'        ''FM999G999G999G990D00'',',
'        ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'    ) as card_value,',
'',
'    ''Expected during the next 30 days''',
'        as card_description,',
'',
'    ''fa fa-arrow-up'' as card_icon',
'',
'from forecast_data',
'',
'union all',
'',
'select',
'    20,',
'    ''UPCOMING_EXPENSES'',',
'    ''Upcoming Expenses'',',
'',
'    ''$'' ||',
'    to_char(',
'        upcoming_expenses,',
'        ''FM999G999G999G990D00'',',
'        ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'    ),',
'',
'    ''Expected during the next 30 days'',',
'',
'    ''fa fa-arrow-down''',
'',
'from forecast_data',
'',
'union all',
'',
'select',
'    30,',
'    ''NET_UPCOMING_CASH_FLOW'',',
'    ''Net Upcoming Cash Flow'',',
'',
'    case',
'        when upcoming_income - upcoming_expenses < 0 then',
'            ''-$'' ||',
'            to_char(',
'                abs(upcoming_income - upcoming_expenses),',
'                ''FM999G999G999G990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            )',
'        else',
'            ''$'' ||',
'            to_char(',
'                upcoming_income - upcoming_expenses,',
'                ''FM999G999G999G990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            )',
'    end,',
'',
'    ''Income minus expenses'',',
'',
'    ''fa fa-line-chart''',
'',
'from forecast_data',
'',
'order by 1'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(27198471883644830120)
,p_region_id=>wwv_flow_imp.id(27198471759550830119)
,p_layout_type=>'GRID'
,p_grid_column_count=>3
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CARD_VALUE'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'CARD_DESCRIPTION'
,p_icon_source_type=>'DYNAMIC_CLASS'
,p_icon_class_column_name=>'CARD_ICON'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'CARD_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27361671391837483514)
,p_plug_name=>'Savings Goals'
,p_static_id=>'emad-savings'
,p_title=>'Savings Goals'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>100
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    g.goal_id,',
'',
'    g.goal_name,',
'',
'    g.saved_amount,',
'',
'    g.target_amount,',
'',
'    greatest(',
'        g.target_amount - g.saved_amount,',
'        0',
'    ) as remaining_amount,',
'',
'    case',
'        when g.target_amount > 0 then',
'            least(',
'                100,',
'                round(',
'                    (g.saved_amount / g.target_amount) * 100,',
'                    1',
'                )',
'            )',
'        else',
'            0',
'    end as progress_percent,',
'',
'    ''$'' ||',
'    to_char(',
'        g.saved_amount,',
'        ''FM999G999G999G990D00'',',
'        ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'    )',
'    || '' of $'' ||',
'    to_char(',
'        g.target_amount,',
'        ''FM999G999G999G990D00'',',
'        ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'    ) as amount_summary,',
'',
'    case',
'        when g.target_amount > 0 then',
'            to_char(',
'                least(',
'                    100,',
'                    round(',
'                        (g.saved_amount / g.target_amount) * 100,',
'                        1',
'                    )',
'                ),',
'                ''FM990D0''',
'            ) || ''% complete''',
'        else',
'            ''0.0% complete''',
'    end as progress_text,',
'',
'    ''$'' ||',
'    to_char(',
'        greatest(',
'            g.target_amount - g.saved_amount,',
'            0',
'        ),',
'        ''FM999G999G999G990D00'',',
'        ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'    )',
'    || '' remaining'' as remaining_text,',
'',
'    case',
'        when g.target_date is not null then',
'            ''Target: '' ||',
'            to_char(',
'                g.target_date,',
'                ''DD Mon YYYY''',
'            )',
'        else',
'            ''No target date''',
'    end as target_text,',
'',
'    case',
'        when g.status_code = ''ACTIVE'' then ''Active''',
'        when g.status_code = ''PAUSED'' then ''Paused''',
'        when g.status_code = ''COMPLETED'' then ''Completed''',
'        else initcap(lower(g.status_code))',
'    end as status_label,',
'',
'    ''fa fa-bullseye'' as card_icon',
'',
'from bf_savings_goals g',
'',
'where g.app_user = v(''APP_USER'')',
'  and g.status_code in (',
'      ''ACTIVE'',',
'      ''PAUSED''',
'  )',
'',
'order by',
'    case g.status_code',
'        when ''ACTIVE'' then 1',
'        when ''PAUSED'' then 2',
'        else 3',
'    end,',
'    g.target_date nulls last,',
'    g.goal_id desc',
'',
'fetch first 3 rows only'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>'No active savings goal yet.'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(27361671466501483515)
,p_region_id=>wwv_flow_imp.id(27361671391837483514)
,p_layout_type=>'GRID'
,p_grid_column_count=>3
,p_title_adv_formatting=>false
,p_title_column_name=>'GOAL_NAME'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size:1.05rem;font-weight:600;margin-bottom:8px;">',
'    &AMOUNT_SUMMARY!HTML.',
'</div>',
'',
'<progress',
'    value="&PROGRESS_PERCENT!ATTR."',
'    max="100"',
'    style="width:100%;height:14px;">',
'</progress>',
'',
'<div style="display:flex;justify-content:space-between;gap:12px;margin-top:6px;font-size:0.85rem;">',
'    <span>&PROGRESS_TEXT!HTML.</span>',
'    <span>&REMAINING_TEXT!HTML.</span>',
'</div>'))
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'DYNAMIC_CLASS'
,p_icon_class_column_name=>'CARD_ICON'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'GOAL_ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(29060749799292)
,p_card_id=>wwv_flow_imp.id(27361671466501483515)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_static_id=>'action'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8:P8_GOAL_ID:&GOAL_ID.'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25130532696601279617)
,p_plug_name=>'Financial Summary'
,p_static_id=>'emad-summary'
,p_title=>'Financial Summary'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with summary_data as (',
'    select',
'        current_balance,',
'        total_income,',
'        total_expense,',
'        opening_balance_date',
'    from bf_v_account_summary',
'    where app_user = v(''APP_USER'')',
')',
'',
'select',
'    10 as sort_order,',
'    ''CURRENT_BALANCE'' as card_id,',
'    ''Current Balance'' as card_title,',
'',
'    case',
'        when current_balance < 0 then',
'            ''-$'' ||',
'            to_char(',
'                abs(current_balance),',
'                ''FM999G999G999G990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            )',
'        else',
'            ''$'' ||',
'            to_char(',
'                current_balance,',
'                ''FM999G999G999G990D00'',',
'                ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'            )',
'    end as card_value,',
'',
'    ''Including transactions since '' ||',
'    to_char(opening_balance_date, ''DD Mon YYYY'')',
'        as card_description,',
'',
'    ''fa fa-badge-dollar'' as card_icon',
'',
'from summary_data',
'',
'union all',
'',
'select',
'    20,',
'    ''TOTAL_INCOME'',',
'    ''Total Income'',',
'',
'    ''$'' ||',
'    to_char(',
'        total_income,',
'        ''FM999G999G999G990D00'',',
'        ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'    ),',
'',
'    ''Income recorded since '' ||',
'    to_char(opening_balance_date, ''DD Mon YYYY''),',
'',
'    ''fa fa-arrow-up''',
'',
'from summary_data',
'',
'union all',
'',
'select',
'    30,',
'    ''TOTAL_EXPENSES'',',
'    ''Total Expenses'',',
'',
'    ''$'' ||',
'    to_char(',
'        total_expense,',
'        ''FM999G999G999G990D00'',',
'        ''NLS_NUMERIC_CHARACTERS=''''.,''''''',
'    ),',
'',
'    ''Expenses recorded since '' ||',
'    to_char(opening_balance_date, ''DD Mon YYYY''),',
'',
'    ''fa fa-arrow-down''',
'',
'from summary_data',
'',
'order by 1'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(25130532714278279618)
,p_region_id=>wwv_flow_imp.id(25130532696601279617)
,p_layout_type=>'GRID'
,p_grid_column_count=>3
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CARD_VALUE'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'CARD_DESCRIPTION'
,p_icon_source_type=>'DYNAMIC_CLASS'
,p_icon_class_column_name=>'CARD_ICON'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'CARD_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25118552570540098770)
,p_plug_name=>'EmadFlow'
,p_static_id=>'emadflow'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675494171183407654
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27228668799274)
,p_plug_name=>'Income vs Expenses'
,p_static_id=>'income-vs-expenses'
,p_title=>'Income vs Expenses'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>60
,p_plug_grid_column_span=>8
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(27390892799275)
,p_region_id=>wwv_flow_imp.id(27228668799274)
,p_chart_type=>'bar'
,p_height=>'320'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_no_data_found_message=>'No transactions recorded yet.'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(27773519799279)
,p_chart_id=>wwv_flow_imp.id(27390892799275)
,p_static_id=>'expenses'
,p_seq=>20
,p_name=>'Expenses'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with months as (',
'    select',
'        add_months(',
'            trunc(',
'                cast(',
'                    systimestamp',
'                    at time zone ''Australia/Melbourne''',
'                    as date',
'                ),',
'                ''MM''',
'            ),',
'            level - 6',
'        ) as month_start',
'    from dual',
'    connect by level <= 6',
'),',
'expense_totals as (',
'    select',
'        trunc(transaction_date, ''MM'') as month_start,',
'        sum(amount) as total_expenses',
'    from bf_transactions',
'    where app_user = v(''APP_USER'')',
'      and transaction_type = ''EXPENSE''',
'      and transaction_date >=',
'            add_months(',
'                trunc(',
'                    cast(',
'                        systimestamp',
'                        at time zone ''Australia/Melbourne''',
'                        as date',
'                    ),',
'                    ''MM''',
'                ),',
'                -5',
'            )',
'      and transaction_date <',
'            add_months(',
'                trunc(',
'                    cast(',
'                        systimestamp',
'                        at time zone ''Australia/Melbourne''',
'                        as date',
'                    ),',
'                    ''MM''',
'                ),',
'                1',
'            )',
'    group by trunc(transaction_date, ''MM'')',
')',
'select',
'    to_char(',
'        m.month_start,',
'        ''Mon''',
'    ) as month_label,',
'',
'    nvl(',
'        e.total_expenses,',
'        0',
'    ) as amount',
'',
'from months m',
'',
'left join expense_totals e',
'    on e.month_start = m.month_start',
'',
'order by',
'    m.month_start'))
,p_items_value_column_name=>'AMOUNT'
,p_items_label_column_name=>'MONTH_LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(27470792799276)
,p_chart_id=>wwv_flow_imp.id(27390892799275)
,p_static_id=>'income'
,p_seq=>10
,p_name=>'Income'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with months as (',
'    select',
'        add_months(',
'            trunc(',
'                cast(',
'                    systimestamp',
'                    at time zone ''Australia/Melbourne''',
'                    as date',
'                ),',
'                ''MM''',
'            ),',
'            level - 6',
'        ) as month_start',
'    from dual',
'    connect by level <= 6',
'),',
'income_totals as (',
'    select',
'        trunc(transaction_date, ''MM'') as month_start,',
'        sum(amount) as total_income',
'    from bf_transactions',
'    where app_user = v(''APP_USER'')',
'      and transaction_type = ''INCOME''',
'      and transaction_date >=',
'            add_months(',
'                trunc(',
'                    cast(',
'                        systimestamp',
'                        at time zone ''Australia/Melbourne''',
'                        as date',
'                    ),',
'                    ''MM''',
'                ),',
'                -5',
'            )',
'      and transaction_date <',
'            add_months(',
'                trunc(',
'                    cast(',
'                        systimestamp',
'                        at time zone ''Australia/Melbourne''',
'                        as date',
'                    ),',
'                    ''MM''',
'                ),',
'                1',
'            )',
'    group by trunc(transaction_date, ''MM'')',
')',
'select',
'    to_char(',
'        m.month_start,',
'        ''Mon''',
'    ) as month_label,',
'',
'    nvl(',
'        i.total_income,',
'        0',
'    ) as amount',
'',
'from months m',
'',
'left join income_totals i',
'    on i.month_start = m.month_start',
'',
'order by',
'    m.month_start'))
,p_items_value_column_name=>'AMOUNT'
,p_items_label_column_name=>'MONTH_LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(27613617799277)
,p_chart_id=>wwv_flow_imp.id(27390892799275)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(27642223799278)
,p_chart_id=>wwv_flow_imp.id(27390892799275)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'currency'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(27437375942448277813)
,p_name=>'Recent Transactions'
,p_static_id=>'recent-transactions'
,p_title=>'Recent Transactions'
,p_template=>4073835273271169698
,p_display_sequence=>120
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    transaction_date,',
'    transaction_type,',
'    category_name,',
'    description,',
'    amount',
'from (',
'    select',
'        t.transaction_date,',
'        t.transaction_type,',
'        c.category_name,',
'        t.description,',
'        t.amount,',
'        t.transaction_id',
'    from bf_transactions t',
'    join bf_categories c',
'        on c.category_id = t.category_id',
'    where t.app_user = v(''APP_USER'')',
'    order by',
'        t.transaction_date desc,',
'        t.transaction_id desc',
')',
'where rownum <= 5'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No transactions recorded yet.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27437376403552277818)
,p_query_column_id=>5
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>50
,p_column_heading=>'Amount'
,p_column_format=>'FM$999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27437376244017277816)
,p_query_column_id=>3
,p_column_alias=>'CATEGORY_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Category'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27437376368427277817)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>40
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27437376021733277814)
,p_query_column_id=>1
,p_column_alias=>'TRANSACTION_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Date'
,p_column_format=>'DD Mon YYYY'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27437376159964277815)
,p_query_column_id=>2
,p_column_alias=>'TRANSACTION_TYPE'
,p_column_display_sequence=>20
,p_column_heading=>'Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>unistr('STATIC:\2191 Income;INCOME,\2193 Expense;EXPENSE')
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27868207799280)
,p_plug_name=>'Spending by Category'
,p_static_id=>'spending-by-category'
,p_title=>'Spending by Category'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(27966748799281)
,p_region_id=>wwv_flow_imp.id(27868207799280)
,p_chart_type=>'donut'
,p_height=>'320'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No expenses recorded this month yet.'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(28094905799282)
,p_chart_id=>wwv_flow_imp.id(27966748799281)
,p_static_id=>'expenses'
,p_seq=>10
,p_name=>'Monthly Spending'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with category_spending as (',
'    select',
'        c.category_name,',
'        sum(t.amount) as total_amount',
'    from bf_transactions t',
'    join bf_categories c',
'        on c.category_id = t.category_id',
'    where t.app_user = v(''APP_USER'')',
'      and t.transaction_type = ''EXPENSE''',
'      and t.transaction_date >=',
'            trunc(',
'                cast(',
'                    systimestamp',
'                    at time zone ''Australia/Melbourne''',
'                    as date',
'                ),',
'                ''MM''',
'            )',
'      and t.transaction_date <',
'            add_months(',
'                trunc(',
'                    cast(',
'                        systimestamp',
'                        at time zone ''Australia/Melbourne''',
'                        as date',
'                    ),',
'                    ''MM''',
'                ),',
'                1',
'            )',
'    group by',
'        c.category_name',
'),',
'ranked_categories as (',
'    select',
'        category_name,',
'        total_amount,',
'        row_number() over (',
'            order by total_amount desc, category_name',
'        ) as category_rank',
'    from category_spending',
'),',
'display_data as (',
'    select',
'        case',
'            when category_rank <= 5',
'            then category_name',
'            else ''Other''',
'        end as category_label,',
'',
'        total_amount',
'',
'    from ranked_categories',
')',
'select',
'    category_label,',
'    sum(total_amount) as amount',
'from display_data',
'group by category_label',
'order by',
'    sum(total_amount) desc,',
'    category_label'))
,p_items_value_column_name=>'AMOUNT'
,p_items_label_column_name=>'CATEGORY_LABEL'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(27198473323198830135)
,p_name=>'Upcoming Cash Flow'
,p_static_id=>'upcoming-cash-flow'
,p_title=>'Upcoming Cash Flow'
,p_template=>4073835273271169698
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    occurrence_date as due_date,',
'',
'    case',
unistr('        when item_type = ''INCOME'' then ''\2191 Income'''),
unistr('        when item_type = ''EXPENSE'' then ''\2193 Expense'''),
'        else initcap(lower(item_type))',
'    end as type,',
'',
'    item_name as item,',
'',
'    category_name as category,',
'',
'    initcap(lower(frequency_code)) as frequency,',
'',
'    amount',
'',
'from bf_v_recurring_forecast',
'',
'where app_user = v(''APP_USER'')',
'  and occurrence_date >= trunc(current_date)',
'  and occurrence_date <= trunc(current_date) + 30',
'',
'order by',
'    occurrence_date,',
'    case',
'        when item_type = ''EXPENSE'' then 1',
'        when item_type = ''INCOME'' then 2',
'        else 3',
'    end,',
'    item_name'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No upcoming recurring income or expenses in the next 30 days.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27198473964888830141)
,p_query_column_id=>6
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>60
,p_column_heading=>'Amount'
,p_column_format=>'FM$999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27437377483320277828)
,p_query_column_id=>4
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>100
,p_column_heading=>'Category'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27437377119047277825)
,p_query_column_id=>1
,p_column_alias=>'DUE_DATE'
,p_column_display_sequence=>70
,p_column_heading=>'Due Date'
,p_column_format=>'DD Mon YYYY'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27437377579386277829)
,p_query_column_id=>5
,p_column_alias=>'FREQUENCY'
,p_column_display_sequence=>110
,p_column_heading=>'Frequency'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27437377303376277827)
,p_query_column_id=>3
,p_column_alias=>'ITEM'
,p_column_display_sequence=>90
,p_column_heading=>'Item'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27437377210135277826)
,p_query_column_id=>2
,p_column_alias=>'TYPE'
,p_column_display_sequence=>80
,p_column_heading=>'Type'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27437376964958277823)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(27437376625905277820)
,p_button_name=>'QUICK_ADD_GOAL'
,p_static_id=>'quick-add-goal'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Savings Goal'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8::'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-bullseye'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27437377082829277824)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(27437376625905277820)
,p_button_name=>'QUICK_ADD_IOU'
,p_static_id=>'quick-add-iou'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add IOU'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10::'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-handshake-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27437376830884277822)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27437376625905277820)
,p_button_name=>'QUICK_ADD_RECURRING'
,p_static_id=>'quick-add-recurring'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Recurring Item'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6::'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27437376739292277821)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27437376625905277820)
,p_button_name=>'QUICK_ADD_TRANSACTION'
,p_static_id=>'quick-add-transaction'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>2084305881903810008
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Transaction'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:4::'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28918873799291)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(28771715799289)
,p_button_name=>'VIEW_ALL_ACTIVITY'
,p_static_id=>'view-all-activity'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'View All Transactions'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-right'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27437376540324277819)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27437375942448277813)
,p_button_name=>'VIEW_ALL_TRANSACTIONS'
,p_static_id=>'view-all-transactions'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'View All Transactions'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25130532454339279615)
,p_name=>'P1_DISPLAY_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25130532320176279614)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29411757799295)
,p_name=>'Refresh Dashboard After Dialog'
,p_static_id=>'refresh-dashboard-after-dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'body'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29430603799296)
,p_event_id=>wwv_flow_imp.id(29411757799295)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28365382799285)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29605907799297)
,p_event_id=>wwv_flow_imp.id(29411757799295)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh_1'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25130532696601279617)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29630671799298)
,p_event_id=>wwv_flow_imp.id(29411757799295)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh_2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27198471759550830119)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29812144799299)
,p_event_id=>wwv_flow_imp.id(29411757799295)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh_3'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27228668799274)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29974729799301)
,p_event_id=>wwv_flow_imp.id(29411757799295)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh_4'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28595850799287)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29844002799300)
,p_event_id=>wwv_flow_imp.id(29411757799295)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh_5'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27868207799280)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30080820799302)
,p_event_id=>wwv_flow_imp.id(29411757799295)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh_6'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27361671391837483514)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30209076799303)
,p_event_id=>wwv_flow_imp.id(29411757799295)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh_7'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27437375751795277811)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30239376799304)
,p_event_id=>wwv_flow_imp.id(29411757799295)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh_8'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28771715799289)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25130532524811279616)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Dashboard User Name'
,p_static_id=>'load-dashboard-user-name'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select',
'        nvl(trim(display_name), ''there'')',
'    into',
'        :P1_DISPLAY_NAME',
'    from bf_user_profile',
'    where app_user = v(''APP_USER'');',
'',
'exception',
'    when no_data_found then',
'        :P1_DISPLAY_NAME := ''there'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>25130532524811279616
);
wwv_flow_imp.component_end;
end;
/
