prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_default_workspace_id=>133720365053060006616
);
end;
/
prompt  WORKSPACE 133720365053060006616
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   02:57 Monday April 6, 2026
--   Exported By:     SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN
--   Export Type:     Workspace Export
--   Version:         24.2.14
--   Instance ID:     63113759365424
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_240200
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>133720365053060006616);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace PRIYANSHU09...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 133721388663834664283
 ,p_provisioning_company_id => 133720365053060006616
 ,p_short_name => 'PRIYANSHU09'
 ,p_display_name => 'PRIYANSHU09'
 ,p_first_schema_provisioned => 'WKSP_PRIYANSHU09'
 ,p_company_schemas => 'WKSP_PRIYANSHU09'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'PRIYANSH'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'PRIYANSHU09'
 ,p_files_version => 1
 ,p_is_extension_yn => 'N'
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1815043986472711,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1814950743472711,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1814853097472710,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '133720364993699006616',
  p_user_name                    => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
  p_first_name                   => 'Priyanshu',
  p_last_name                    => 'Sekhar',
  p_description                  => '',
  p_email_address                => 'spriyanshuBTECH24@ced.alliance.edu.in',
  p_web_password                 => '79EFDA328CBD94C8C678028B59154D8DBB7BEDE43741AF6EF40DAC6D046BAE913D08C5A3A883E7A86BE60DAE68F6BFAEC0E64DF6707D0245EB0191958CDC8F58',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_PRIYANSHU09',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202603090241','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
----------------
--Click Count Logs
--
----------------
--mail
--
----------------
--mail log
--
begin
 wwv_imp_workspace.create_mail_log (
    p_mail_id => 145558471224538220256,
    p_mail_to => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_mail_from => 'dbtools-apexext-noreply@oracleapex.com',
    p_mail_replyto => '',
    p_mail_subj => 'Oracle APEX Request',
    p_mail_cc => '',
    p_mail_bcc => '',
    p_mail_send_error => '',
    p_last_updated_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_last_updated_on => to_date('202603090240','YYYYMMDDHH24MI'));
end;
/
----------------
--app models
--
----------------
--password history
--
begin
  wwv_imp_workspace.create_password_history (
    p_id => 133721946079419065746,
    p_user_id => 133720364993699006616,
    p_password => 'A78247D07DA0C24C2DE6C29675BFD277EFDF6DA69BAB9E1560E3DC8ED1E9F64BCE28FA4D06BD779973F02224623C6A1963A40C234120C4F180062006EAC7A544');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 133721388878185664294,
    p_user_id => 133720364993699006616,
    p_password => 'B76E5C7BFC01B17420B508482952F26D4E70DDB0A95A6A0908B22FA623AA89D0DD86601DD552189D3557003DDEE7C39349CCFC36A6D12EF457450318AA729175');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 145556641342896862381,
    p_user_id => 133720364993699006616,
    p_password => '79EFDA328CBD94C8C678028B59154D8DBB7BEDE43741AF6EF40DAC6D046BAE913D08C5A3A883E7A86BE60DAE68F6BFAEC0E64DF6707D0245EB0191958CDC8F58');
end;
/
----------------
--preferences
--
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556519017214852482,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4000T3',
    p_attribute_value => '556394191660089195',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556519171574852482,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4001T3',
    p_attribute_value => '556394191660089195.4001',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556519244312852482,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4002T3',
    p_attribute_value => '556394191660089195.4002',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556519333629852482,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4003T3',
    p_attribute_value => '556394191660089195.4003',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556519494570852483,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4004T3',
    p_attribute_value => '556394191660089195.4004',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556519596605852483,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4005T3',
    p_attribute_value => '556394191660089195.4005',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556519633427852483,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4006T3',
    p_attribute_value => '556394191660089195.4006',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556519777090852483,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4007T3',
    p_attribute_value => '556394191660089195.4007',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556519817195852483,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4008T3',
    p_attribute_value => '556394191660089195.4008',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556519994125852483,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4009T3',
    p_attribute_value => '556394191660089195.4009',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556520041901852483,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4020T101',
    p_attribute_value => '556395924287093657',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556520153715852483,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4021T101',
    p_attribute_value => '556395924287093657.4021',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556520204932852483,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4022T101',
    p_attribute_value => '556395924287093657.4022',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556520386984852483,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4023T101',
    p_attribute_value => '556395924287093657.4023',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556520410197852483,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4024T101',
    p_attribute_value => '556395924287093657.4024',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556520549179852483,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4025T101',
    p_attribute_value => '556395924287093657.4025',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556520662161852483,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4026T101',
    p_attribute_value => '556395924287093657.4026',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556520772585852484,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4027T101',
    p_attribute_value => '556395924287093657.4027',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556520807258852484,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4028T101',
    p_attribute_value => '556395924287093657.4028',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556520972984852484,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4029T101',
    p_attribute_value => '556395924287093657.4029',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556521048053852484,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4050T3',
    p_attribute_value => '556396783772095832',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556521130932852484,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4051T3',
    p_attribute_value => '556396783772095832.4051',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556521285907852484,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4052T3',
    p_attribute_value => '556396783772095832.4052',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556521339796852484,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4053T3',
    p_attribute_value => '556396783772095832.4053',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556521481375852484,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4054T3',
    p_attribute_value => '556396783772095832.4054',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556521578925852484,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4055T3',
    p_attribute_value => '556396783772095832.4055',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556521699542852484,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4056T3',
    p_attribute_value => '556396783772095832.4056',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556521762332852484,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4057T3',
    p_attribute_value => '556396783772095832.4057',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556521874225852484,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4058T3',
    p_attribute_value => '556396783772095832.4058',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556521951840852485,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4059T3',
    p_attribute_value => '556396783772095832.4059',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556522010701852485,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4100T3',
    p_attribute_value => '558983737888014296',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556522191822852485,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4101T3',
    p_attribute_value => '558983737888014296.4101',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556522218032852485,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4102T3',
    p_attribute_value => '558983737888014296.4102',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556522309758852485,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4103T3',
    p_attribute_value => '558983737888014296.4103',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556522428037852485,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4104T3',
    p_attribute_value => '558983737888014296.4104',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556522580446852485,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4105T3',
    p_attribute_value => '558983737888014296.4105',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556522677658852485,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4106T3',
    p_attribute_value => '558983737888014296.4106',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556522715756852485,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4107T3',
    p_attribute_value => '558983737888014296.4107',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556522890973852485,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4108T3',
    p_attribute_value => '558983737888014296.4108',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556522974456852485,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4109T3',
    p_attribute_value => '558983737888014296.4109',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556523009170852486,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4300T3',
    p_attribute_value => '556398088115101278',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556523195848852486,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4301T3',
    p_attribute_value => '556398088115101278.4301',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556523225428852486,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4302T3',
    p_attribute_value => '556398088115101278.4302',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556523376661852486,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4303T3',
    p_attribute_value => '556398088115101278.4303',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556523407770852486,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4304T3',
    p_attribute_value => '556398088115101278.4304',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556523513640852486,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4305T3',
    p_attribute_value => '556398088115101278.4305',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556523654254852486,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4306T3',
    p_attribute_value => '556398088115101278.4306',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556523771927852486,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4307T3',
    p_attribute_value => '556398088115101278.4307',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556523823827852486,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4308T3',
    p_attribute_value => '556398088115101278.4308',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556523954902852486,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4309T3',
    p_attribute_value => '556398088115101278.4309',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556524017514852486,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4350T3',
    p_attribute_value => '556398380302103261',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556524111315852487,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4351T3',
    p_attribute_value => '556398380302103261.4351',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556524285361852487,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4352T3',
    p_attribute_value => '556398380302103261.4352',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556524304424852487,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4353T3',
    p_attribute_value => '556398380302103261.4353',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556524492268852487,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4354T3',
    p_attribute_value => '556398380302103261.4354',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556524584146852487,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4355T3',
    p_attribute_value => '556398380302103261.4355',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556524652410852487,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4356T3',
    p_attribute_value => '556398380302103261.4356',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556524789737852487,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4357T3',
    p_attribute_value => '556398380302103261.4357',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556524885558852487,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4358T3',
    p_attribute_value => '556398380302103261.4358',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556524987807852487,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4359T3',
    p_attribute_value => '556398380302103261.4359',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556525309847852488,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4473T3',
    p_attribute_value => '666074525535755551.4473',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556525011765852487,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4470T3',
    p_attribute_value => '666074525535755551',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556525189296852487,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4471T3',
    p_attribute_value => '666074525535755551.4471',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556525284058852488,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4472T3',
    p_attribute_value => '666074525535755551.4472',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556525484277852488,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4474T3',
    p_attribute_value => '666074525535755551.4474',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556525522833852488,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4475T3',
    p_attribute_value => '666074525535755551.4475',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556525644371852488,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4476T3',
    p_attribute_value => '666074525535755551.4476',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556525797019852488,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4477T3',
    p_attribute_value => '666074525535755551.4477',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556525811451852488,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4478T3',
    p_attribute_value => '666074525535755551.4478',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556525930143852488,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4479T3',
    p_attribute_value => '666074525535755551.4479',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556526023649852488,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4481T3',
    p_attribute_value => '666074525535755551.4481',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556526111676852488,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4482T3',
    p_attribute_value => '666074525535755551.4482',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556526298975852488,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4483T3',
    p_attribute_value => '666074525535755551.4483',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556526343720852488,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4484T3',
    p_attribute_value => '666074525535755551.4484',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556526429630852488,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4485T3',
    p_attribute_value => '666074525535755551.4485',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556526500924852488,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4486T3',
    p_attribute_value => '666074525535755551.4486',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556526632925852489,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4487T3',
    p_attribute_value => '666074525535755551.4487',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556526755337852489,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4488T3',
    p_attribute_value => '666074525535755551.4488',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556526876937852489,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4489T3',
    p_attribute_value => '666074525535755551.4489',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556526953924852489,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4491T3',
    p_attribute_value => '666074525535755551.4491',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556527047062852489,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4492T3',
    p_attribute_value => '666074525535755551.4492',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556527147934852489,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4493T3',
    p_attribute_value => '666074525535755551.4493',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556527253338852489,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4494T3',
    p_attribute_value => '666074525535755551.4494',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556527388527852489,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4495T3',
    p_attribute_value => '666074525535755551.4495',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556527462666852489,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4496T3',
    p_attribute_value => '666074525535755551.4496',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556527521053852489,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4497T3',
    p_attribute_value => '666074525535755551.4497',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556527690451852490,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4498T3',
    p_attribute_value => '666074525535755551.4498',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556527788754852490,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4499T3',
    p_attribute_value => '666074525535755551.4499',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556527821855852490,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4500T3',
    p_attribute_value => '556399735490108657',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556527921791852490,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4501T3',
    p_attribute_value => '556399735490108657.4501',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556528020478852490,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4502T3',
    p_attribute_value => '556399735490108657.4502',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556528162711852491,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4503T3',
    p_attribute_value => '556399735490108657.4503',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556528253265852491,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4504T3',
    p_attribute_value => '556399735490108657.4504',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556528350160852491,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4505T3',
    p_attribute_value => '556399735490108657.4505',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556528437185852491,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4506T3',
    p_attribute_value => '556399735490108657.4506',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556528804173852491,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4541T3',
    p_attribute_value => '666074525535755551.4541',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556528592256852491,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4507T3',
    p_attribute_value => '556399735490108657.4507',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556528660603852491,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4508T3',
    p_attribute_value => '556399735490108657.4508',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556528768946852491,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4509T3',
    p_attribute_value => '556399735490108657.4509',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556528914635852491,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4542T3',
    p_attribute_value => '666074525535755551.4542',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556529031681852492,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4543T3',
    p_attribute_value => '666074525535755551.4543',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556529167973852492,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4544T3',
    p_attribute_value => '666074525535755551.4544',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556529262710852492,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4545T3',
    p_attribute_value => '666074525535755551.4545',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556529318562852492,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4546T3',
    p_attribute_value => '666074525535755551.4546',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556529489979852492,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4547T3',
    p_attribute_value => '666074525535755551.4547',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556529511222852492,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4550T3',
    p_attribute_value => '556400768767112539',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556529684872852492,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4551T3',
    p_attribute_value => '556400768767112539.4551',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556529739896852492,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4552T3',
    p_attribute_value => '556400768767112539.4552',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556529868043852492,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4553T3',
    p_attribute_value => '556400768767112539.4553',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556529936926852492,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4554T3',
    p_attribute_value => '556400768767112539.4554',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556530018761852492,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4555T3',
    p_attribute_value => '556400768767112539.4555',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556530161971852492,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4556T3',
    p_attribute_value => '556400768767112539.4556',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556530201835852493,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4557T3',
    p_attribute_value => '556400768767112539.4557',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556530313250852493,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4558T3',
    p_attribute_value => '556400768767112539.4558',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556530453395852493,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4559T3',
    p_attribute_value => '556400768767112539.4559',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556530516042852493,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4600T101',
    p_attribute_value => '556401045591113938',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556530637183852493,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4601T101',
    p_attribute_value => '556401045591113938.4601',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556530707304852493,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4602T101',
    p_attribute_value => '556401045591113938.4602',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556530855426852493,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4603T101',
    p_attribute_value => '556401045591113938.4603',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556530924925852493,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4604T101',
    p_attribute_value => '556401045591113938.4604',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556531010289852493,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4605T101',
    p_attribute_value => '556401045591113938.4605',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556531182435852493,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4606T101',
    p_attribute_value => '556401045591113938.4606',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556531207318852493,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4607T101',
    p_attribute_value => '556401045591113938.4607',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556531386668852493,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4608T101',
    p_attribute_value => '556401045591113938.4608',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556531413656852494,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4609T101',
    p_attribute_value => '556401045591113938.4609',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556531522978852494,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4650T3',
    p_attribute_value => '556401916469117281',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556531625144852494,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4651T3',
    p_attribute_value => '556401916469117281.4651',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556532075418852494,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4655T3',
    p_attribute_value => '556401916469117281.4655',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556531795622852494,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4652T3',
    p_attribute_value => '556401916469117281.4652',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556531875695852494,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4653T3',
    p_attribute_value => '556401916469117281.4653',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556531941357852494,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4654T3',
    p_attribute_value => '556401916469117281.4654',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556532116918852494,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4656T3',
    p_attribute_value => '556401916469117281.4656',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556532233093852495,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4657T3',
    p_attribute_value => '556401916469117281.4657',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556532323636852495,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4658T3',
    p_attribute_value => '556401916469117281.4658',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556532466036852495,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4659T3',
    p_attribute_value => '556401916469117281.4659',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556532519529852495,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4700T3',
    p_attribute_value => '556402214051120170',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556532630120852495,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4701T3',
    p_attribute_value => '556402214051120170.4701',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556532766587852495,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4702T3',
    p_attribute_value => '556402214051120170.4702',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556533227944852495,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4706T3',
    p_attribute_value => '556402214051120170.4706',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556532863042852495,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4703T3',
    p_attribute_value => '556402214051120170.4703',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556532979243852495,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4704T3',
    p_attribute_value => '556402214051120170.4704',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556533071304852495,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4705T3',
    p_attribute_value => '556402214051120170.4705',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556533376764852495,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4707T3',
    p_attribute_value => '556402214051120170.4707',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556533465450852495,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4708T3',
    p_attribute_value => '556402214051120170.4708',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556533615021852495,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4709T3',
    p_attribute_value => '556402214051120170.4709',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556533786916852496,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4750T3',
    p_attribute_value => '556403147888123468',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556533940064852496,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4751T3',
    p_attribute_value => '556403147888123468.4751',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556534099600852496,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4752T3',
    p_attribute_value => '556403147888123468.4752',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556534173960852496,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4753T3',
    p_attribute_value => '556403147888123468.4753',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556534561151852496,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4757T3',
    p_attribute_value => '556403147888123468.4757',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556534266373852496,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4754T3',
    p_attribute_value => '556403147888123468.4754',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556534332675852496,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4755T3',
    p_attribute_value => '556403147888123468.4755',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556534420833852496,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4756T3',
    p_attribute_value => '556403147888123468.4756',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556534651169852496,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4758T3',
    p_attribute_value => '556403147888123468.4758',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556534709911852496,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4759T3',
    p_attribute_value => '556403147888123468.4759',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556534844667852496,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4800T3',
    p_attribute_value => '559202863956074846',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556534967853852496,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4850T3',
    p_attribute_value => '556403468587125379',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556535148544852497,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4851T3',
    p_attribute_value => '556403468587125379.4851',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556535222181852497,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4852T3',
    p_attribute_value => '556403468587125379.4852',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556535363968852497,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4853T3',
    p_attribute_value => '556403468587125379.4853',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556535420843852497,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4854T3',
    p_attribute_value => '556403468587125379.4854',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556535500556852497,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4855T3',
    p_attribute_value => '556403468587125379.4855',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556535642519852497,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4856T3',
    p_attribute_value => '556403468587125379.4856',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 155021561875123192647,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'FSP4000_P688_R207469307328320096_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 155021510988791192420,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'FSP_IR_4000_P688_W5633379337882843',
    p_attribute_value => '6300998346442124____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 155021558144256192631,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'FSP_IR_4000_P688_W5633926744882849',
    p_attribute_value => '6310559989467102____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 148299632697316531614,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'FSP_IR_4350_P29_W9294827650405715',
    p_attribute_value => '9296821143409975____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556535785527852497,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4857T3',
    p_attribute_value => '556403468587125379.4857',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556535817514852497,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4858T3',
    p_attribute_value => '556403468587125379.4858',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 145556535967293852498,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'APEX_THEME_STYLE_A4859T3',
    p_attribute_value => '556403468587125379.4859',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 135736023109389426310,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'F4500_1157686386582338224_SPLITTER_STATE',
    p_attribute_value => '390:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 133722722936166097253,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'FSP4500_P24_R12183729610626245_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 148299831847840895062,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'FSP_IR_4350_P25_W9307709001462905',
    p_attribute_value => '9309908769463151____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 148299833341365895107,
    p_user_id => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_preference_name => 'PERSISTENT_ITEM_P25_DATE',
    p_attribute_value => '.125',
    p_tenant_id => '');
end;
/
----------------
--query builder
--
----------------
--sql scripts
--
----------------
--sql commands
--
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139846610406875009643
 ,p_command => 
'INSERT ALL'||wwv_flow.LF||
'INTO BOOK_CUSTOMER VALUES(''101''''AMAN''''DELHI'');'||wwv_flow.LF||
'INTO BOOK_CUSTOMER VALUES(''102''''ANUJ''''MUMBAI'');'||wwv_flow.LF||
'SELECT * FROM dual ;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230259','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139846712755940377494
 ,p_command => 
'INSERT ALL'||wwv_flow.LF||
'INTO BOOK_CUSTOMER VALUES(''101''''AMAN''''DELHI'');'||wwv_flow.LF||
'INTO BOOK_CUSTOMER VALUES(''102''''ANUJ''''MUMBAI'');'||wwv_flow.LF||
'SELECT * FROM DUAL;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230300','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139846851634723395340
 ,p_command => 
'ALTER ROWS CUSTOMER_IS'||wwv_flow.LF||
'RENAME TO CUSTOMER_ID;'||wwv_flow.LF||
''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230303','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139846900296678015043
 ,p_command => 
'INSERT ALL'||wwv_flow.LF||
'INTO BOOK_CUSTOMER VALUES(''101''''AMAN''''DELHI'')'||wwv_flow.LF||
'INTO BOOK_CUSTOMER VALUES(''102''''ANUJ''''MUMBAI'')'||wwv_flow.LF||
'SELECT * FROM DUAL;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230300','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139846943562347018392
 ,p_command => 
'INSERT ALL'||wwv_flow.LF||
'INTO BOOK_CUSTOMER VALUES(101 , ''AMAN'' , ''DELHI'')'||wwv_flow.LF||
'INTO BOOK_CUSTOMER VALUES(102 , ''ANUJ'' , ''MUMBAI'')'||wwv_flow.LF||
'SELECT * FROM DUAL;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230301','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139847023697695021863
 ,p_command => 
'INSERT ALL'||wwv_flow.LF||
'INTO BOOK_CUSTOMER VALUES(101 , ''AMAR'' , ''KOLKATA'')'||wwv_flow.LF||
'SELECT * FROM DUAL;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230301','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139847105105705031889
 ,p_command => 
'ALTER ROW CUSTOMER_IS'||wwv_flow.LF||
'RENAME TO CUSTOMER_ID;'||wwv_flow.LF||
''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230303','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139847158597350038237
 ,p_command => 
'ALTER TABLE table_name'||wwv_flow.LF||
'RENAME COLUMN CUSTOMER_IS TO CUSTOMER_ID;'||wwv_flow.LF||
''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230304','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139847332710597405593
 ,p_command => 
'ALTER TABLE BOOK__CUSTOMER'||wwv_flow.LF||
'RENAME COLUMN CUSTOMER_IS TO CUSTOMER_ID;'||wwv_flow.LF||
''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230305','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139847344685106406839
 ,p_command => 
'ALTER TABLE BOOK_CUSTOMER'||wwv_flow.LF||
'RENAME COLUMN CUSTOMER_IS TO CUSTOMER_ID;'||wwv_flow.LF||
''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230305','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139847405342263414614
 ,p_command => 
'CREATE TABLE BOOK'||wwv_flow.LF||
'(BOOK_ID INT PRIMARY KEY, BOOK_TITLE VARCHAR(22), BOOK_PRICE VARCHAR(22))'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230306','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139847573095680058828
 ,p_command => 
'INSERT ALL'||wwv_flow.LF||
'INTO BOOK VALUES(''B1'' , ''GK'' , ''200'')'||wwv_flow.LF||
'INTO BOOK VALUES(''B2'' , ''MATHS'' , ''300'')'||wwv_flow.LF||
'SELECT * FROM DUAL;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230307','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139847594829303060423
 ,p_command => 
'INSERT ALL'||wwv_flow.LF||
'INTO BOOK VALUES(''B1'' , ''GK'' , 200)'||wwv_flow.LF||
'INTO BOOK VALUES(''B2'' , ''MATHS'' , 300)'||wwv_flow.LF||
'SELECT * FROM DUAL;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230308','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139847889878746067830
 ,p_command => 
'INSERT ALL'||wwv_flow.LF||
'    INTO BOOK VALUES (''B1'', ''GK'', 200)'||wwv_flow.LF||
'    INTO BOOK VALUES (''B2'', ''MATHS'', 300)'||wwv_flow.LF||
'SELECT * FROM DUAL;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230309','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139847914603877071527
 ,p_command => 
'INSERT ALL'||wwv_flow.LF||
'    INTO BOOK VALUES (011, ''GK'', 200)'||wwv_flow.LF||
'    INTO BOOK VALUES (012, ''MATHS'', 300)'||wwv_flow.LF||
'SELECT * FROM DUAL;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230310','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139848918978569457516
 ,p_command => 
'CREATE TABLE BOOK_ORDER ('||wwv_flow.LF||
'    ORDER_ID   NUMBER PRIMARY KEY,'||wwv_flow.LF||
'    CUST_ID    NUMBER,'||wwv_flow.LF||
'    BK_ID      NUMBER,'||wwv_flow.LF||
'    ORDER_DATE DATE,'||wwv_flow.LF||
'    TOTAL_AMNT NUMBER(10,2),'||wwv_flow.LF||
'    STATUS     VARCHAR2(20),'||wwv_flow.LF||
''||wwv_flow.LF||
'    CONSTRAINT fk_bo_cust'||wwv_flow.LF||
'        FOREIGN KEY (CUST_ID)'||wwv_flow.LF||
'        REFERENCES CUSTOMER(CUST_ID),'||wwv_flow.LF||
''||wwv_flow.LF||
'    CONSTRAINT fk_bo_book'||wwv_flow.LF||
'        FOREIGN KEY (BK_ID)'||wwv_flow.LF||
'        REFERENCES BOOK(BK_ID)'||wwv_flow.LF||
');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230313','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139849013383900464556
 ,p_command => 
'CREATE TABLE BOOK_ORDER ('||wwv_flow.LF||
'    ORDER_ID   NUMBER PRIMARY KEY,'||wwv_flow.LF||
'    CUSTOMER_ID    NUMBER,'||wwv_flow.LF||
'    BOOK_ID      NUMBER,'||wwv_flow.LF||
'    ORDER_DATE DATE,'||wwv_flow.LF||
'    TOTAL_AMNT NUMBER(10,2),'||wwv_flow.LF||
'    STATUS     VARCHAR2(20),'||wwv_flow.LF||
''||wwv_flow.LF||
'    CONSTRAINT fk_bo_cust'||wwv_flow.LF||
'        FOREIGN KEY (CUSTOMER_ID)'||wwv_flow.LF||
'        REFERENCES CUSTOMER(CUSOMER_ID),'||wwv_flow.LF||
''||wwv_flow.LF||
'    CONSTRAINT fk_bo_book'||wwv_flow.LF||
'        FOREIGN KEY (BOOK_ID)'||wwv_flow.LF||
'        REFERENCES BOOK(BOOK_ID)'||wwv_flow.LF||
');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230314','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139849080651068097568
 ,p_command => 
'CREATE TABLE BOOK_ORDER ('||wwv_flow.LF||
'    ORDER_ID   NUMBER PRIMARY KEY,'||wwv_flow.LF||
'    CUSTOMER_ID    NUMBER,'||wwv_flow.LF||
'    BOOK_ID      NUMBER,'||wwv_flow.LF||
'    ORDER_DATE DATE,'||wwv_flow.LF||
'    TOTAL_AMNT NUMBER(10,2),'||wwv_flow.LF||
'    STATUS     VARCHAR2(20),'||wwv_flow.LF||
''||wwv_flow.LF||
'    CONSTRAINT fk_bo_cust'||wwv_flow.LF||
'        FOREIGN KEY (CUST_ID)'||wwv_flow.LF||
'        REFERENCES CUSTOMER(CUST_ID),'||wwv_flow.LF||
''||wwv_flow.LF||
'    CONSTRAINT fk_bo_book'||wwv_flow.LF||
'        FOREIGN KEY (BK_ID)'||wwv_flow.LF||
'        REFERENCES BOOK(BK_ID)'||wwv_flow.LF||
');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230314','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139849127199221102793
 ,p_command => 
'CREATE TABLE BOOK_ORDER ('||wwv_flow.LF||
'    ORDER_ID   NUMBER PRIMARY KEY,'||wwv_flow.LF||
'    CUSTOMER_ID    NUMBER,'||wwv_flow.LF||
'    BOOK_ID      NUMBER,'||wwv_flow.LF||
'    ORDER_DATE DATE,'||wwv_flow.LF||
'    TOTAL_AMNT NUMBER(10,2),'||wwv_flow.LF||
'    STATUS     VARCHAR2(20),'||wwv_flow.LF||
''||wwv_flow.LF||
'    CONSTRAINT fk_bo_cust'||wwv_flow.LF||
'        FOREIGN KEY (CUSTOMER_ID)'||wwv_flow.LF||
'        REFERENCES CUSTOMER(CUSTOMER_ID),'||wwv_flow.LF||
''||wwv_flow.LF||
'    CONSTRAINT fk_bo_book'||wwv_flow.LF||
'        FOREIGN KEY (BOOK_ID)'||wwv_flow.LF||
'        REFERENCES BOOK(BOOK_ID)'||wwv_flow.LF||
');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230315','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139849200099067109094
 ,p_command => 
'CREATE TABLE BOOK_ORDER ('||wwv_flow.LF||
'    ORDER_ID     NUMBER PRIMARY KEY,'||wwv_flow.LF||
'    CUSTOMER_ID  NUMBER,'||wwv_flow.LF||
'    BOOK_ID      NUMBER,'||wwv_flow.LF||
'    ORDER_DATE   DATE,'||wwv_flow.LF||
'    TOTAL_AMNT   NUMBER(10,2),'||wwv_flow.LF||
'    STATUS       VARCHAR2(20),'||wwv_flow.LF||
''||wwv_flow.LF||
'    CONSTRAINT fk_bo_cust'||wwv_flow.LF||
'        FOREIGN KEY (CUSTOMER_ID)'||wwv_flow.LF||
'        REFERENCES CUSTOMER(CUSTOMER_ID),'||wwv_flow.LF||
''||wwv_flow.LF||
'    CONSTRAINT fk_bo_book'||wwv_flow.LF||
'        FOREIGN KEY (BOOK_ID)'||wwv_flow.LF||
'        REFERENCES BOOK(BOOK_ID)'||wwv_flow.LF||
');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230316','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139849345928900480753
 ,p_command => 
'fk_bo_book'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230317','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139849536861492127437
 ,p_command => 
'CREATE TABLE BOOK_ORDER ('||wwv_flow.LF||
'    ORDER_ID     NUMBER PRIMARY KEY,'||wwv_flow.LF||
'    CUSTOMER_ID  NUMBER,'||wwv_flow.LF||
'    BOOK_ID      NUMBER,'||wwv_flow.LF||
'    ORDER_DATE   DATE,'||wwv_flow.LF||
'    TOTAL_AMNT   NUMBER(10,2),'||wwv_flow.LF||
'    STATUS       VARCHAR2(20),'||wwv_flow.LF||
''||wwv_flow.LF||
'    CONSTRAINT fk_bo_cust'||wwv_flow.LF||
'        FOREIGN KEY (CUSTOMER_ID)'||wwv_flow.LF||
'        REFERENCES BOOK_CUSTOMER(CUSTOMER_ID),'||wwv_flow.LF||
''||wwv_flow.LF||
'    CONSTRAINT fk_bo_book'||wwv_flow.LF||
'        FOREIGN KEY (BOOK_ID)'||wwv_flow.LF||
'        REFERENCES BOOK(BOOK_ID)'||wwv_flow.LF||
');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230319','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139849904879376136514
 ,p_command => 
'ALTER TABLE BOOK_ORDER ADD(ORDER_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY)'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230320','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139849964518583140168
 ,p_command => 
'ALTER TABLE BOOK_ORDER '||wwv_flow.LF||
'ADD (ORDER_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230321','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139850222015751539012
 ,p_command => 
'DROP TABLE BOOK_ORDER CASCADE CONSTRAINTS;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230327','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139850227113441540083
 ,p_command => 
'CREATE TABLE BOOK_ORDER ('||wwv_flow.LF||
'    ORDER_ID NUMBER GENERATED ALWAYS AS IDENTITY'||wwv_flow.LF||
'        (START WITH 1 INCREMENT BY 1) PRIMARY KEY,'||wwv_flow.LF||
'    CUSTOMER_ID NUMBER,'||wwv_flow.LF||
'    BOOK_ID NUMBER,'||wwv_flow.LF||
'    ORDER_DATE DATE,'||wwv_flow.LF||
'    TOTAL_AMNT NUMBER(10,2),'||wwv_flow.LF||
'    STATUS VARCHAR2(20),'||wwv_flow.LF||
''||wwv_flow.LF||
'    CONSTRAINT fk_bo_cust'||wwv_flow.LF||
'        FOREIGN KEY (CUSTOMER_ID)'||wwv_flow.LF||
'        REFERENCES BOOK_CUSTOMER(CUSTOMER_ID),'||wwv_flow.LF||
''||wwv_flow.LF||
'    CONSTRAINT fk_bo_book'||wwv_flow.LF||
'        FOREIGN KEY '||
'(BOOK_ID)'||wwv_flow.LF||
'        REFERENCES BOOK(BOOK_ID)'||wwv_flow.LF||
');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230327','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139850272256824156327
 ,p_command => 
'ALTER TABLE BOOK_ORDER '||wwv_flow.LF||
'ADD (ORDER_ID INT GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENTED BYY 1) PRIMARY KEY'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230324','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139850356997404167861
 ,p_command => 
'CREATE TABLE BOOK_ORDER ('||wwv_flow.LF||
'    ORDER_ID NUMBER GENERATED ALWAYS AS IDENTITY'||wwv_flow.LF||
'        (START WITH 1 INCREMENT BY 1) PRIMARY KEY,'||wwv_flow.LF||
''||wwv_flow.LF||
'    CUSTOMER_ID NUMBER,'||wwv_flow.LF||
'    BOOK_ID NUMBER,'||wwv_flow.LF||
'    ORDER_DATE DATE,'||wwv_flow.LF||
'    TOTAL_AMNT NUMBER(10,2),'||wwv_flow.LF||
'    STATUS VARCHAR2(20),'||wwv_flow.LF||
''||wwv_flow.LF||
'    CONSTRAINT fk_bo_cust'||wwv_flow.LF||
'        FOREIGN KEY (CUSTOMER_ID)'||wwv_flow.LF||
'        REFERENCES BOOK_CUSTOMER(CUSTOMER_ID),'||wwv_flow.LF||
''||wwv_flow.LF||
'    CONSTRAINT fk_bo_book'||wwv_flow.LF||
'        FOREIGN KEY'||
' (BOOK_ID)'||wwv_flow.LF||
'        REFERENCES BOOK(BOOK_ID)'||wwv_flow.LF||
');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230326','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139850517214275177108
 ,p_command => 
'SELECT table_name '||wwv_flow.LF||
'FROM user_tables '||wwv_flow.LF||
'WHERE table_name = ''BOOK_ORDER'';'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230327','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139850533225420180078
 ,p_command => 
'CREATE TABLE BOOK_ORDER ('||wwv_flow.LF||
''||wwv_flow.LF||
'    ORDER_ID NUMBER GENERATED ALWAYS AS IDENTITY'||wwv_flow.LF||
''||wwv_flow.LF||
'        (START WITH 1 INCREMENT BY 1) PRIMARY KEY,'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'    CUSTOMER_ID NUMBER,'||wwv_flow.LF||
''||wwv_flow.LF||
'    BOOK_ID NUMBER,'||wwv_flow.LF||
''||wwv_flow.LF||
'    ORDER_DATE DATE,'||wwv_flow.LF||
''||wwv_flow.LF||
'    TOTAL_AMNT NUMBER(10,2),'||wwv_flow.LF||
''||wwv_flow.LF||
'    STATUS VARCHAR2(20),'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'    CONSTRAINT fk_bo_cust'||wwv_flow.LF||
''||wwv_flow.LF||
'        FOREIGN KEY (CUSTOMER_ID)'||wwv_flow.LF||
''||wwv_flow.LF||
'        REFERENCES BOOK_CUSTOMER(CUSTOMER_ID),'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'    CONSTRAINT fk_bo_book'||wwv_flow.LF||
''||wwv_flow.LF||
'    '||
'    FOREIGN KEY (BOOK_ID)'||wwv_flow.LF||
''||wwv_flow.LF||
'        REFERENCES BOOK(BOOK_ID)'||wwv_flow.LF||
''||wwv_flow.LF||
');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230328','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139850597378411185491
 ,p_command => 
'SELECT * FROM BOOK_ORDER'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230329','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139850702380237546334
 ,p_command => 
'CONSTRAINT fk_bo_cust'||wwv_flow.LF||
'        FOREIGN KEY (CUSTOMER_ID)'||wwv_flow.LF||
'        REFERENCES BOOK_CUSTOMER(CUSTOMER_ID),'||wwv_flow.LF||
''||wwv_flow.LF||
'    CONSTRAINT fk_bo_book'||wwv_flow.LF||
'        FOREIGN KEY (BOOK_ID)'||wwv_flow.LF||
'        REFERENCES BOOK(BOOK_ID)'||wwv_flow.LF||
');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230328','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139850716417772548231
 ,p_command => 
'SELECT*FROM BOOK ORDER'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230328','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139851060840137559168
 ,p_command => 
'select '||wwv_flow.LF||
' ORDER_ID,'||wwv_flow.LF||
' CUSTOMER_ID,'||wwv_flow.LF||
' BOOK_ID,'||wwv_flow.LF||
' ORDER_DATE,'||wwv_flow.LF||
' TOTAL_AMNT,'||wwv_flow.LF||
' STATUS'||wwv_flow.LF||
' from BOOK_ORDER'||wwv_flow.LF||
''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230330','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139851197356090574055
 ,p_command => 
'select * FROM BOOK_ORDER'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230333','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139851201045364574974
 ,p_command => 
'select * FROM BOOK_ORDER ;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230333','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139851220085812577444
 ,p_command => 
'SELECT * FROM BOOK_ORDER;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230333','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139851394296250223382
 ,p_command => 
'INSERT INTO BOOK_ORDER VALUES (101, 1, 2, TO_DATE(''10-02-2026'',''DD-MM-YYYY''), 798);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER VALUES (102, 3, 1, TO_DATE(''12-02-2026'',''DD-MM-YYYY''), 550);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER VALUES (103, 5, 3, TO_DATE(''15-02-2026'',''DD-MM-YYYY''), 897);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER VALUES (104, 2, 1, TO_DATE(''16-02-2026'',''DD-MM-YYYY''), 499);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER VALUES (105, 8, 2, TO_DATE(''18-02-202'||
'6'',''DD-MM-YYYY''), 1798);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER VALUES (106, 4, 1, TO_DATE(''19-02-2026'',''DD-MM-YYYY''), 350);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER VALUES (107, 10, 4, TO_DATE(''20-02-2026'',''DD-MM-YYYY''), 1996);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER VALUES (108, 6, 2, TO_DATE(''21-02-2026'',''DD-MM-YYYY''), 900);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER VALUES (109, 7, 1, TO_DATE(''22-02-2026'',''DD-MM-YYYY''), 420);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER VALUES (1'||
'10, 9, 3, TO_DATE(''23-02-2026'',''DD-MM-YYYY''), 1197);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230335','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139851724972692591792
 ,p_command => 
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'VALUES (201, 1, 1, TO_DATE(''01-02-2026'',''DD-MM-YYYY''), 399.00, ''Delivered'');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'VALUES (202, 2, 3, TO_DATE(''03-02-2026'',''DD-MM-YYYY''), 550.00, ''Shipped'');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'VALUES (203, 3, 5, TO_DATE(''05-02-2026'',''DD-MM-YYYY''), 897.00, ''Pending'');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'VALUES (204, 4, 2, TO_DATE(''07-02-2026'',''DD-MM-YYYY''), 499.00, ''Cancelled'''||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'VALUES (205, 5, 8, TO_DATE(''09-02-2026'',''DD-MM-YYYY''), 1798.00, ''Delivered'');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'VALUES (206, 2, 4, TO_DATE(''11-02-2026'',''DD-MM-YYYY''), 350.00, ''Processing'');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'VALUES (207, 1, 10, TO_DATE(''13-02-2026'',''DD-MM-YYYY''), 1996.00, ''Delivered'');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'VALUES (208, 6, 6, TO_DATE(''15-02-2026'',''DD-MM-YYYY''), 900.00,'||
' ''Shipped'');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'VALUES (209, 7, 7, TO_DATE(''17-02-2026'',''DD-MM-YYYY''), 420.00, ''Pending'');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'VALUES (210, 8, 9, TO_DATE(''19-02-2026'',''DD-MM-YYYY''), 1197.00, ''Delivered'');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230336','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139851843411292603378
 ,p_command => 
'INSERT ALL'||wwv_flow.LF||
'  INTO BOOK_ORDER VALUES (201, 1, 1, TO_DATE(''01-02-2026'',''09-03-225''), 399.00, ''Delivered'')'||wwv_flow.LF||
'  INTO BOOK_ORDER VALUES (202, 2, 3, TO_DATE(''03-02-2026'',''10-03-225''), 550.00, ''Shipped'')'||wwv_flow.LF||
'  INTO BOOK_ORDER VALUES (203, 3, 5, TO_DATE(''05-02-2026'',''19-03-225''), 897.00, ''Pending'')'||wwv_flow.LF||
'  INTO BOOK_ORDER VALUES (204, 4, 2, TO_DATE(''07-02-2026'',''20-03-225''), 499.00, ''Cancelled'')'||wwv_flow.LF||
'SELECT * FROM dual;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230338','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139851899047747229853
 ,p_command => 
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'VALUES (201, 1, 1, TO_DATE(''01-02-2026'',''DD-MM-YYYY''), 399.00, ''Delivered'');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'VALUES (202, 2, 3, TO_DATE(''03-02-2026'',''DD-MM-YYYY''), 550.00, ''Shipped'');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'VALUES (203, 3, 5, TO_DATE(''05-02-2026'',''DD-MM-YYYY''), 897.00, ''Pending'');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'VALUES (204, 4, 2, TO_DATE(''07-02-2026'',''DD-MM-YYYY''), 499.00, ''Cancelled'''||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'VALUES (205, 5, 8, TO_DATE(''09-02-2026'',''DD-MM-YYYY''), 1798.00, ''Delivered'');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'VALUES (206, 2, 4, TO_DATE(''11-02-2026'',''DD-MM-YYYY''), 350.00, ''Processing'');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'VALUES (207, 1, 10, TO_DATE(''13-02-2026'',''DD-MM-YYYY''), 1996.00, ''Delivered'');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'VALUES (208, 6, 6, TO_DATE(''15-02-2026'',''DD-MM-YYYY''), 900.00,'||
' ''Shipped'');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'VALUES (209, 7, 7, TO_DATE(''17-02-2026'',''DD-MM-YYYY''), 420.00, ''Pending'');'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'VALUES (210, 8, 9, TO_DATE(''19-02-2026'',''DD-MM-YYYY''), 1197.00, ''Delivered'');'||wwv_flow.LF||
''||wwv_flow.LF||
'select * From dual;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230336','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139852051465233247568
 ,p_command => 
'SELECT * FROM BOOK_CUSTOMER;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230339','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139852352789842607131
 ,p_command => 
'INSERT INTO BOOK_ORDER (CUSTOMER_ID, BOOK_ID, ORDER_DATE, TOTAL_AMNT, STATUS)'||wwv_flow.LF||
'VALUES (1, 1, SYSDATE, 399.00, ''Delivered'');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230338','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139852374109350609828
 ,p_command => 
'SELECT * FROM CUSTOMER;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230339','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139852487305755250942
 ,p_command => 
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'(CUSTOMER_ID, BOOK_ID, ORDER_DATE, TOTAL_AMNT, STATUS)'||wwv_flow.LF||
'VALUES (101, 1, SYSDATE, 399.00, ''Delivered'');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230339','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139852692681562618724
 ,p_command => 
'SELECT * FROM BOOK;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230340','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139852729554042621468
 ,p_command => 
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'(CUSTOMER_ID, BOOK_ID, ORDER_DATE, TOTAL_AMNT, STATUS)'||wwv_flow.LF||
'VALUES (101, 11, SYSDATE, 200.00, ''Delivered'');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230341','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139852991703274259301
 ,p_command => 
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'(CUSTOMER_ID, BOOK_ID, ORDER_DATE, TOTAL_AMNT, STATUS)'||wwv_flow.LF||
'VALUES (102, 12, SYSDATE, 300.00, ''Shipped'');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230341','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139852995118343260350
 ,p_command => 
'INSERT INTO BOOK_ORDER '||wwv_flow.LF||
'(CUSTOMER_ID, BOOK_ID, ORDER_DATE, TOTAL_AMNT, STATUS)'||wwv_flow.LF||
'VALUES (101, 12, SYSDATE, 600.00, ''Processing'');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230341','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139853004248306261339
 ,p_command => 
'SELECT * FROM BOOK_ORDER;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230341','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139858862835761475525
 ,p_command => 
'ALTER TABLE BOOK_ORDER ADD(ORDER_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY)'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230417','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139858948816424483780
 ,p_command => 
'ALTER TABLE BOOK_ORDER'||wwv_flow.LF||
'DROP COLUMN ORDER_ID;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230418','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139858953296662484445
 ,p_command => 
'ALTER TABLE BOOK_ORDER'||wwv_flow.LF||
'DROP COLUMN ORDER_ID;ALTER TABLE BOOK_ORDER '||wwv_flow.LF||
'ADD ('||wwv_flow.LF||
'    ORDER_ID NUMBER GENERATED ALWAYS AS IDENTITY '||wwv_flow.LF||
'    (START WITH 1 INCREMENT BY 1) PRIMARY KEY'||wwv_flow.LF||
');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230418','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139859017764326490171
 ,p_command => 
'ALTER TABLE BOOK_ORDER '||wwv_flow.LF||
'ADD ('||wwv_flow.LF||
'    ORDER_ID NUMBER GENERATED ALWAYS AS IDENTITY'||wwv_flow.LF||
'    (START WITH 1 INCREMENT BY 1)'||wwv_flow.LF||
');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230419','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139859070902209844455
 ,p_command => 
'ALTER TABLE BOOK_ORDER '||wwv_flow.LF||
'ADD ('||wwv_flow.LF||
'    ORDER_ID NUMBER GENERATED ALWAYS AS IDENTITY '||wwv_flow.LF||
'    (START WITH 1 INCREMENT BY 1) PRIMARY KEY'||wwv_flow.LF||
');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230418','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139859242678585852761
 ,p_command => 
'ALTER TABLE BOOK_ORDER'||wwv_flow.LF||
'DROP COLUMN ORDER_ID;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230419','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139859415553486856613
 ,p_command => 
'SELECT * FROM BOOK_ORDER;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230420','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139859557838593504189
 ,p_command => 
'ALTER TABLE BOOK_ORDER'||wwv_flow.LF||
'ADD ('||wwv_flow.LF||
'    CUSTOMER_NAME VARCHAR2(50),'||wwv_flow.LF||
'    BOOK_NAME VARCHAR2(50)'||wwv_flow.LF||
');'||wwv_flow.LF||
''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230422','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139859563445018504962
 ,p_command => 
'SELECT * FROM BOOK_ORDER;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230422','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139859754357213871080
 ,p_command => 
'SELECT *  FROM BOOK_ORDER;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230422','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139859789098486877347
 ,p_command => 
'SELECT C.customer_name, B.book_name'||wwv_flow.LF||
'FROM BOOK_CUSTOMER BC'||wwv_flow.LF||
'JOIN CUSTOMER C '||wwv_flow.LF||
'    ON BC.customer_id = C.customer_id'||wwv_flow.LF||
'JOIN BOOK B '||wwv_flow.LF||
'    ON BC.book_id = B.book_id;'||wwv_flow.LF||
'    '
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230423','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139859823744937880904
 ,p_command => 
'ALTER TABLE BOOK_ORDER'||wwv_flow.LF||
'DROP COLUMN CUSTOMER_NAME,'||wwv_flow.LF||
'DROP COLUMN BOOK_NAME;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230424','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139859831752721881687
 ,p_command => 
'ALTER TABLE BOOK_ORDER'||wwv_flow.LF||
'DROP COLUMN CUSTOMER_NAME,'||wwv_flow.LF||
''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230424','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139860193597555521464
 ,p_command => 
'ALTER TABLE BOOK_ORDER'||wwv_flow.LF||
'DROP (CUSTOMER_NAME, BOOK_NAME);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230425','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139860262679201887289
 ,p_command => 
'SELECT*FROM BOOK_CUSTOMER ;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230425','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 139860278929529889510
 ,p_command => 
'SELECT*FROM BOOK_ORDER ;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202602230425','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 145564097165235285384
 ,p_command => 
'INSERT ALL'||wwv_flow.LF||
'  INTO BANKS VALUES (101, TO_DATE(''01-03-2026'',''DD-MM-YYYY''), 1001, 2001, 5000)'||wwv_flow.LF||
'  INTO BANKS VALUES (102, TO_DATE(''02-03-2026'',''DD-MM-YYYY''), 1002, 2002, 3500)'||wwv_flow.LF||
'  INTO BANKS VALUES (103, TO_DATE(''03-03-2026'',''DD-MM-YYYY''), 1003, 2003, 4200)'||wwv_flow.LF||
'  INTO BANKS VALUES (104, TO_DATE(''04-03-2026'',''DD-MM-YYYY''), 1004, 2004, 6000)'||wwv_flow.LF||
'  INTO BANKS VALUES (105, TO_DATE(''05-03-2026'',''09-03-2026''), 1005, 2'||
'005, 2500)'||wwv_flow.LF||
'  INTO BANKS VALUES (106, TO_DATE(''06-03-2026'',''09-03-2026''), 1006, 2006, 7200)'||wwv_flow.LF||
'  INTO BANKS VALUES (107, TO_DATE(''07-03-2026'',''09-03-2026''), 1007, 2007, 4100)'||wwv_flow.LF||
'  INTO BANKS VALUES (108, TO_DATE(''08-03-2026'',''09-03-2026''), 1008, 2008, 5300)'||wwv_flow.LF||
'  INTO BANKS VALUES (109, TO_DATE(''09-03-2026'',''09-03-2026''), 1009, 2009, 6400)'||wwv_flow.LF||
'  INTO BANKS VALUES (110, TO_DATE(''10-03-2026'',''09-03-2026''), 1010, 2'||
'010, 3000)'||wwv_flow.LF||
'SELECT * FROM dual;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603090352','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 145566427057168610420
 ,p_command => 
'CCREATE TABLE BANKS ('||wwv_flow.LF||
'    TIS INT PRIMARY KEY,'||wwv_flow.LF||
'    TDATE DATE,'||wwv_flow.LF||
'    FROMACNO INT,'||wwv_flow.LF||
'    TOACNO INT,'||wwv_flow.LF||
'    AMOUNT INT'||wwv_flow.LF||
');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603090345','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 145566445980883613416
 ,p_command => 
'CREATE TABLE BANKS ('||wwv_flow.LF||
'    TIS INT PRIMARY KEY,'||wwv_flow.LF||
'    TDATE DATE,'||wwv_flow.LF||
'    FROMACNO INT,'||wwv_flow.LF||
'    TOACNO INT,'||wwv_flow.LF||
'    AMOUNT INT'||wwv_flow.LF||
');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603090346','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 145566490082097619217
 ,p_command => 
'INSERT INTO BANKS VALUES (1, ''2026-03-01'', 1001, 2001, 5000);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BANKS VALUES (2, ''2026-03-02'', 1002, 2003, 2500);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BANKS VALUES (3, ''2026-03-03'', 1003, 2004, 10000);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BANKS VALUES (4, ''2026-03-04'', 1004, 2002, 3000);'||wwv_flow.LF||
''||wwv_flow.LF||
'INSERT INTO BANKS VALUES (5, ''2026-03-05'', 1005, 2005, 4500);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603090347','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 145566707625735651267
 ,p_command => 
'INSERT ALL'||wwv_flow.LF||
'  INTO BANKS VALUES (105, TO_DATE(''05-03-2026'',''09-03-2026''), 1005, 2005, 2500)'||wwv_flow.LF||
'  INTO BANKS VALUES (106, TO_DATE(''06-03-2026'',''09-03-2026''), 1006, 2006, 7200)'||wwv_flow.LF||
'  INTO BANKS VALUES (107, TO_DATE(''07-03-2026'',''09-03-2026''), 1007, 2007, 4100)'||wwv_flow.LF||
'  INTO BANKS VALUES (108, TO_DATE(''08-03-2026'',''09-03-2026''), 1008, 2008, 5300)'||wwv_flow.LF||
'  INTO BANKS VALUES (109, TO_DATE(''09-03-2026'',''09-03-2026''), 1009, 2'||
'009, 6400)'||wwv_flow.LF||
'  INTO BANKS VALUES (110, TO_DATE(''10-03-2026'',''09-03-2026''), 1010, 2010, 3000)'||wwv_flow.LF||
'SELECT * FROM dual;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603090352','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 145566723328710654739
 ,p_command => 
'INSERT ALL'||wwv_flow.LF||
'  INTO BANKS VALUES (101, TO_DATE(''01-03-2026'',''DD-MM-YYYY''), 1001, 2001, 5000)'||wwv_flow.LF||
'  INTO BANKS VALUES (102, TO_DATE(''02-03-2026'',''DD-MM-YYYY''), 1002, 2002, 3500)'||wwv_flow.LF||
'  INTO BANKS VALUES (103, TO_DATE(''03-03-2026'',''DD-MM-YYYY''), 1003, 2003, 4200)'||wwv_flow.LF||
'  INTO BANKS VALUES (104, TO_DATE(''04-03-2026'',''DD-MM-YYYY''), 1004, 2004, 6000)'||wwv_flow.LF||
'  INTO BANKS VALUES (105, TO_DATE(''05-03-2026'',''DD-MM-YYYY''), 1005, 2'||
'005, 2500)'||wwv_flow.LF||
'SELECT * FROM dual;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603090353','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 145567105149092316423
 ,p_command => 
'begin'||wwv_flow.LF||
'savepoint p1;'||wwv_flow.LF||
'insert into banks values(106, TO_DATE(''05-03-2026'',''DD-MM-YYYY''), 1005, 2005, 2500);'||wwv_flow.LF||
'commit;'||wwv_flow.LF||
'savepoint p2;'||wwv_flow.LF||
'insert into banks values(107, TO_DATE(''05-03-2026'',''DD-MM-YYYY''), 1005, 2005, 2500);'||wwv_flow.LF||
'rollback p2;'||wwv_flow.LF||
'end;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603090357','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 145567127820117320199
 ,p_command => 
'begin'||wwv_flow.LF||
'savepoint p1;'||wwv_flow.LF||
'insert into banks values(106, TO_DATE(''05-03-2026'',''DD-MM-YYYY''), 1005, 2005, 2500);'||wwv_flow.LF||
'commit;'||wwv_flow.LF||
'savepoint p2;'||wwv_flow.LF||
'insert into banks values(107, TO_DATE(''05-03-2026'',''DD-MM-YYYY''), 1005, 2005, 2500);'||wwv_flow.LF||
'rollback to p2;'||wwv_flow.LF||
'end;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603090358','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 145567901615620675817
 ,p_command => 
'begin'||wwv_flow.LF||
'savepoint p1;'||wwv_flow.LF||
'insert into banks values(106, TO_DATE(''05-03-2026'',''DD-MM-YYYY''), 1005, 2005, 2500)'||wwv_flow.LF||
'commit;'||wwv_flow.LF||
'savepoint p2;'||wwv_flow.LF||
'insert into banks values(107, TO_DATE(''05-03-2026'',''DD-MM-YYYY''), 1005, 2005, 2500)'||wwv_flow.LF||
'rollback savepoint p2;'||wwv_flow.LF||
'end;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603090356','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 145567913752057679093
 ,p_command => 
'begin'||wwv_flow.LF||
'savepoint p1;'||wwv_flow.LF||
'insert into banks values(106, TO_DATE(''05-03-2026'',''DD-MM-YYYY''), 1005, 2005, 2500);'||wwv_flow.LF||
'commit;'||wwv_flow.LF||
'savepoint p2;'||wwv_flow.LF||
'insert into banks values(107, TO_DATE(''05-03-2026'',''DD-MM-YYYY''), 1005, 2005, 2500);'||wwv_flow.LF||
'rollback savepoint p2;'||wwv_flow.LF||
'end;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603090357','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 145568107938663322554
 ,p_command => 
'select * from banks'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603090358','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 145568164659397332128
 ,p_command => 
'rollback to p1;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603090400','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 145568273346668339443
 ,p_command => 
'begin'||wwv_flow.LF||
'savepoint p2;'||wwv_flow.LF||
'delete from banktrans where tid =4;'||wwv_flow.LF||
'rollback to p2;'||wwv_flow.LF||
'end;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603090401','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 145568283707406341781
 ,p_command => 
'BEGIN'||wwv_flow.LF||
'   SAVEPOINT p2;'||wwv_flow.LF||
'   DELETE FROM banktrans WHERE tid = 4;'||wwv_flow.LF||
'   ROLLBACK TO p2;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603090401','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 145568497138466345197
 ,p_command => 
'BEGIN'||wwv_flow.LF||
'   SAVEPOINT p2;'||wwv_flow.LF||
'   DELETE FROM banks WHERE tid = 4;'||wwv_flow.LF||
'   ROLLBACK TO p2;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603090402','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 145568520809161346633
 ,p_command => 
'BEGIN'||wwv_flow.LF||
'   SAVEPOINT p2;'||wwv_flow.LF||
'   DELETE FROM BANKS WHERE TIS = 4;'||wwv_flow.LF||
'   ROLLBACK TO p2;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603090402','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148304279503288003706
 ,p_command => 
'SELECT * FROM BANKS'||wwv_flow.LF||
''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603140951','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148864976009959466672
 ,p_command => 
'select * from sales;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160302','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148865281079372827650
 ,p_command => 
'create sales as select * from  sales where '||wwv_flow.LF||
'sale_date>=''1/1/2026'''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160302','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148865376887780832860
 ,p_command => 
'create sales as select * from  sales where '||wwv_flow.LF||
'sale_date>=''1/1/2025'''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160302','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148865710152108471705
 ,p_command => 
'create sales as select * from  sales where '||wwv_flow.LF||
'sale_date>=''1/1/2025'';'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160303','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148865952651333839376
 ,p_command => 
'select * from sales;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160304','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148866813404324487289
 ,p_command => 
'CREATE VIEW sales_2026 AS'||wwv_flow.LF||
'SELECT *'||wwv_flow.LF||
'FROM sales'||wwv_flow.LF||
'WHERE sale_date >= DATE ''2026-01-01'';'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160306','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148866829640249489273
 ,p_command => 
'SELECT *'||wwv_flow.LF||
'FROM sales'||wwv_flow.LF||
'WHERE sale_date >= DATE ''2026-01-01'';'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160306','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148866840120775493318
 ,p_command => 
'SELECT *'||wwv_flow.LF||
'FROM sales'||wwv_flow.LF||
'WHERE sale_date >= DATE ''2025-01-01'';'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160307','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148867159317482513334
 ,p_command => 
'CREATE VIEW sales_2026 AS'||wwv_flow.LF||
'SELECT *'||wwv_flow.LF||
'FROM sales'||wwv_flow.LF||
'WHERE sale_date >= DATE ''2026-01-01'';'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160310','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148867185744746514429
 ,p_command => 
'CREATE VIEW sales2 AS'||wwv_flow.LF||
'SELECT *'||wwv_flow.LF||
'FROM sales'||wwv_flow.LF||
'WHERE sale_date >= DATE ''2026-01-01'';'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160310','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148867293404645521307
 ,p_command => 
'select * from sales2;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160311','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148867635774302522179
 ,p_command => 
'select * from sale2;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160311','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148867967532698525459
 ,p_command => 
'select * from sales'||wwv_flow.LF||
''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160312','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148867972603161527120
 ,p_command => 
'select * from sales ;'||wwv_flow.LF||
''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160312','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148868304426098531192
 ,p_command => 
'select * from sale_2026'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160313','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148869082593003872676
 ,p_command => 
'select * from sales;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160309','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148869741722658894510
 ,p_command => 
'select * from sales_2026'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160313','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148869806208776896366
 ,p_command => 
'select * from sales ;'||wwv_flow.LF||
''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160313','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148871336121465916548
 ,p_command => 
'CREATE VIEW sales_after_2026 AS'||wwv_flow.LF||
'SELECT *'||wwv_flow.LF||
'FROM sales'||wwv_flow.LF||
'WHERE sale_date >= DATE ''2026-01-01'';'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160316','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148871938501800934080
 ,p_command => 
'INSERT INTO sales_2026'||wwv_flow.LF||
'VALUES (11, 6, 13, 10, DATE ''2026-01-15'');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160319','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148872092448155577518
 ,p_command => 
'INSERT INTO sales_2026'||wwv_flow.LF||
'VALUES (4 , 6, 1, DATE ''2026-01-15'');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160321','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148872102554013580789
 ,p_command => 
'INSERT INTO sales_2026'||wwv_flow.LF||
'VALUES (4,5, 1, DATE ''2026-01-15'');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160321','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148872176174834590589
 ,p_command => 
'INSERT INTO sales_2026'||wwv_flow.LF||
'VALUES (4 ,2 , 1, DATE ''2026-01-15'');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160323','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148872201266293940601
 ,p_command => 
'INSERT INTO sales_2026'||wwv_flow.LF||
'VALUES (8, 6, 1, DATE ''2026-01-15'');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160320','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148872266791645951369
 ,p_command => 
'select * from sales 2026'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160322','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148872267766153952102
 ,p_command => 
'select * from sales_2026'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160322','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148872272158370953434
 ,p_command => 
'INSERT INTO sales_2026'||wwv_flow.LF||
'VALUES (4 ,3, 1, DATE ''2026-01-15'');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160323','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148872397901735591397
 ,p_command => 
'INSERT INTO sales_2026'||wwv_flow.LF||
'VALUES (3 ,2 , 1, DATE ''2026-01-15'');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160323','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148872403993838593300
 ,p_command => 
'INSERT INTO sales_2026'||wwv_flow.LF||
'VALUES (2 , 1, DATE ''2026-01-15'');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160323','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148872407849287594205
 ,p_command => 
'INSERT INTO sales_2026'||wwv_flow.LF||
'VALUES (1, DATE ''2026-01-15'');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160323','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148872446163405601214
 ,p_command => 
'INSERT INTO sales_2026'||wwv_flow.LF||
'VALUES (112, DATE ''2026-01-15'', ''Rahul Kumar'', ''Notebook'', ''Stationery'', 5, 40, 200);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160325','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148874214163757979650
 ,p_command => 
'CREATE VIEW sales_data1 AS'||wwv_flow.LF||
'SELECT *'||wwv_flow.LF||
'FROM sales'||wwv_flow.LF||
'WHERE sale_date >= DATE ''2026-01-01'';'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160327','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148874548308822982131
 ,p_command => 
'SELECT * FROM sales_data1;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160327','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148874972155788986724
 ,p_command => 
'INSERT INTO sales'||wwv_flow.LF||
'VALUES (120, DATE ''2026-01-15'', ''Rahul Kumar'', ''Notebook'', ''Stationery'', 5, 40, 200);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160328','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148876815862752625223
 ,p_command => 
'select * from sales_data1;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160329','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148877801614969678509
 ,p_command => 
'update sales_data1 set product_id=14 where quantity=5;'||wwv_flow.LF||
'select*from sales_data1'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160337','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148879849208177771171
 ,p_command => 
'SELECT * FROM sales_data1;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160353','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148879886486526781367
 ,p_command => 
'select * from sales ;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160355','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148881817457036130378
 ,p_command => 
'UPDATE sales_data1'||wwv_flow.LF||
'SET product_id = 14'||wwv_flow.LF||
'WHERE quantity = 5;'||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT * FROM sales_data1;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160352','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148882080293357134112
 ,p_command => 
'UPDATE sales_data1'||wwv_flow.LF||
'SET product_id = 14'||wwv_flow.LF||
'WHERE quantity = 5;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160353','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148882145911180143245
 ,p_command => 
'create materialized view sales_data2 as select* from sales;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160354','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148882158149637146482
 ,p_command => 
'select * from sales_data2;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160355','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148883110798533216796
 ,p_command => 
'CREATE VIEW sales2 AS'||wwv_flow.LF||
'SELECT *'||wwv_flow.LF||
'FROM sales'||wwv_flow.LF||
'WHERE sale_date >= DATE ''2026-01-01'';'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160406','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148883247186721231809
 ,p_command => 
'select * from sales_data3;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160409','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148883645173732856079
 ,p_command => 
'select * from sales_data1 ;'||wwv_flow.LF||
''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160407','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148883650341224857690
 ,p_command => 
'select * from sales'||wwv_flow.LF||
''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160407','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148883711646927865697
 ,p_command => 
'CREATE VIEW sales_data3 AS'||wwv_flow.LF||
'SELECT *'||wwv_flow.LF||
'FROM sales'||wwv_flow.LF||
'WHERE sale_date >= DATE ''2025-01-01'';'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160409','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148885406816314291235
 ,p_command => 
'UPDATE sales_data3'||wwv_flow.LF||
'SET product_id >= 20'||wwv_flow.LF||
'WHERE quantity >=20;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160419','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148885415388829292703
 ,p_command => 
'UPDATE sales_data3'||wwv_flow.LF||
'SET product_id = 120'||wwv_flow.LF||
'WHERE quantity =20;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160419','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148885871568259298937
 ,p_command => 
'UPDATE sales_data3'||wwv_flow.LF||
'SET product_id = 107'||wwv_flow.LF||
'WHERE quantity = 10;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160420','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148885878173445299800
 ,p_command => 
'UPDATE sales_data3'||wwv_flow.LF||
'SET product_id = 107'||wwv_flow.LF||
'WHERE quantity = 6;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160420','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148885885563720300737
 ,p_command => 
'select * from sales_data3;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160420','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148885953694048306487
 ,p_command => 
'UPDATE sales_data3'||wwv_flow.LF||
'SET quantity = 8'||wwv_flow.LF||
'SET product_name = ''Notebook'''||wwv_flow.LF||
'WHERE product_id = 106;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160421','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148886252063543307459
 ,p_command => 
'UPDATE sales_data3'||wwv_flow.LF||
'SET quantity = 8'||wwv_flow.LF||
'WHERE product_id = 106;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160422','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148886348857602322181
 ,p_command => 
'INSERT INTO sales_data3'||wwv_flow.LF||
'VALUES (127, DATE ''2025-03-05'', ''Rahul Kumar'', ''Notebook'', ''Stationery'', 5, 40, 200);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160424','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148887911669244919980
 ,p_command => 
'UPDATE sales'||wwv_flow.LF||
'SET product_id = 14'||wwv_flow.LF||
'WHERE quantity = 5'||wwv_flow.LF||
'AND sale_date >= DATE ''2025-01-01'';'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160418','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148887980948540923271
 ,p_command => 
'select * from sales_data3;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160418','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148888049022029930022
 ,p_command => 
'UPDATE sales_data3'||wwv_flow.LF||
'SET product_id = 110'||wwv_flow.LF||
'WHERE quantity =10;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160419','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148888057919432931130
 ,p_command => 
'select * from sales_data3;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160420','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148889111221171950620
 ,p_command => 
'INSERT INTO sales_data3'||wwv_flow.LF||
'VALUES (114, DATE ''2025-03-05'', ''Rahul Kumar'', ''Notebook'', ''Stationery'', 5, 40, 200);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160423','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148889175307501955438
 ,p_command => 
'INSERT INTO sales_data3'||wwv_flow.LF||
'VALUES (115, DATE ''2025-03-05'', ''Rahul Kumar'', ''Notebook'', ''Stationery'', 5, 40, 200);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160424','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148889269548732959464
 ,p_command => 
'SELECT * FROM sales_data3;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160424','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148890251486589013744
 ,p_command => 
'CREATE TABLE sales_copy AS'||wwv_flow.LF||
'SELECT * FROM sales;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160433','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148890270619529016898
 ,p_command => 
'CREATE MATERIALIZED VIEW sales_mv'||wwv_flow.LF||
'BUILD IMMEDIATE'||wwv_flow.LF||
'REFRESH COMPLETE'||wwv_flow.LF||
'ON DEMAND'||wwv_flow.LF||
'AS'||wwv_flow.LF||
'SELECT * FROM sales_copy;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160434','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148890296043670018286
 ,p_command => 
'INSERT INTO sales_copy'||wwv_flow.LF||
'VALUES (120, DATE ''2025-04-10'', ''Rohit Sharma'', ''Marker'', ''Stationery'', 6, 50, 300);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160434','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148890728933292383823
 ,p_command => 
'UPDATE sales_copy'||wwv_flow.LF||
'SET quantity = 10'||wwv_flow.LF||
'WHERE product_id = 106;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160434','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 148891182582948031498
 ,p_command => 
'select * from sales_copy;'||wwv_flow.LF||
''
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603160436','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151027292141756049094
 ,p_command => 
'CREATE OR REPLACE TRIGGER UPDATE_STOCK'||wwv_flow.LF||
'BEFORE INSERT ON SALES'||wwv_flow.LF||
'FOR EACH ROW '||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    AVAILABLE_QTY NUMBER;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    -- Get available stock'||wwv_flow.LF||
'    SELECT QUANTITY'||wwv_flow.LF||
'    INTO AVAILABLE_QTY'||wwv_flow.LF||
'    FROM PRODUCTS'||wwv_flow.LF||
'    WHERE PRODUCT_ID = :NEW.PRODUCT_ID;'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Check stock'||wwv_flow.LF||
'    IF AVAILABLE_QTY < :NEW.QUANTITY THEN'||wwv_flow.LF||
'        RAISE_APPLICATION_ERROR(-20001, ''INSUFFICIENT STOCK'');'||wwv_flow.LF||
'    ELSE'||wwv_flow.LF||
'        -- Update stoc'||
'k'||wwv_flow.LF||
'        UPDATE PRODUCTS'||wwv_flow.LF||
'        SET QUANTITY = QUANTITY - :NEW.QUANTITY'||wwv_flow.LF||
'        WHERE PRODUCT_ID = :NEW.PRODUCT_ID;'||wwv_flow.LF||
'    END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230319','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151027465084781062446
 ,p_command => 
'ALTER TABLE PRODUCT'||wwv_flow.LF||
'ADD QUANTITY NUMBER;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230321','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151027466066739063314
 ,p_command => 
'ALTER TABLE PRODUCT'||wwv_flow.LF||
'ADD QUANTITY NUMBER;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230322','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151027492379294070097
 ,p_command => 
'SELECT * FROM PRODUCTS'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230323','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151027541916442078360
 ,p_command => 
'UPDATE PRODUCT'||wwv_flow.LF||
'SET QUANTITY = CASE PRODUCT_ID'||wwv_flow.LF||
'    WHEN 101 THEN 50'||wwv_flow.LF||
'    WHEN 102 THEN 30'||wwv_flow.LF||
'    WHEN 103 THEN 20'||wwv_flow.LF||
'    WHEN 104 THEN 15'||wwv_flow.LF||
'END'||wwv_flow.LF||
'WHERE PRODUCT_ID IN (101,102,103,104);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230324','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151027548167199080079
 ,p_command => 
'COMMIT;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230324','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151027626751447083788
 ,p_command => 
'CREATE OR REPLACE TRIGGER UPDATE_STOCK'||wwv_flow.LF||
'BEFORE INSERT ON SALES'||wwv_flow.LF||
'FOR EACH ROW '||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    AVAILABLE_QTY NUMBER;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    -- Fetch available stock (handle NULL also)'||wwv_flow.LF||
'    SELECT NVL(QUANTITY, 0)'||wwv_flow.LF||
'    INTO AVAILABLE_QTY'||wwv_flow.LF||
'    FROM PRODUCT'||wwv_flow.LF||
'    WHERE PRODUCT_ID = :NEW.PRODUCT_ID;'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Check if enough stock is available'||wwv_flow.LF||
'    IF AVAILABLE_QTY < :NEW.QUANTITY THEN'||wwv_flow.LF||
'        RAISE_APPLICATION_ERROR(-20001, ''IN'||
'SUFFICIENT STOCK'');'||wwv_flow.LF||
'    ELSE'||wwv_flow.LF||
'        -- Reduce stock'||wwv_flow.LF||
'        UPDATE PRODUCT'||wwv_flow.LF||
'        SET QUANTITY = NVL(QUANTITY, 0) - :NEW.QUANTITY'||wwv_flow.LF||
'        WHERE PRODUCT_ID = :NEW.PRODUCT_ID;'||wwv_flow.LF||
'    END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230325','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151028995738214421944
 ,p_command => 
'CREATE OR REPLACE TRIGGER UPDATE_STOCK'||wwv_flow.LF||
'BEFORE INSERT ON SALES'||wwv_flow.LF||
'FOR EACH ROW '||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    AVAILABLE_QTY NUMBER;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    -- Get stock from PRODUCT table'||wwv_flow.LF||
'    SELECT QUANTITY'||wwv_flow.LF||
'    INTO AVAILABLE_QTY'||wwv_flow.LF||
'    FROM PRODUCT'||wwv_flow.LF||
'    WHERE PRODUCT_ID = :NEW.PRODUCT_ID;'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Check stock'||wwv_flow.LF||
'    IF AVAILABLE_QTY < :NEW.QUANTITY THEN'||wwv_flow.LF||
'        RAISE_APPLICATION_ERROR(-20001, ''INSUFFICIENT STOCK'');'||wwv_flow.LF||
'    ELSE'||wwv_flow.LF||
'        -- Upd'||
'ate stock'||wwv_flow.LF||
'        UPDATE PRODUCT'||wwv_flow.LF||
'        SET QUANTITY = QUANTITY - :NEW.QUANTITY'||wwv_flow.LF||
'        WHERE PRODUCT_ID = :NEW.PRODUCT_ID;'||wwv_flow.LF||
'    END IF;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230321','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151029028639505429196
 ,p_command => 
'UPDATE PRODUCT SET QUANTITY = 100 WHERE PRODUCT_ID = 1;'||wwv_flow.LF||
'UPDATE PRODUCT SET QUANTITY = 50 WHERE PRODUCT_ID = 2;'||wwv_flow.LF||
''||wwv_flow.LF||
'COMMIT;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230322','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151029054569534434839
 ,p_command => 
'SELECT * FROM PRODUCT;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230323','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151029100722908439367
 ,p_command => 
'UPDATE PRODUCT SET QUANTITY = 50 WHERE PRODUCT_ID = 101;'||wwv_flow.LF||
'UPDATE PRODUCT SET QUANTITY = 30 WHERE PRODUCT_ID = 102;'||wwv_flow.LF||
'UPDATE PRODUCT SET QUANTITY = 20 WHERE PRODUCT_ID = 103;'||wwv_flow.LF||
'UPDATE PRODUCT SET QUANTITY = 15 WHERE PRODUCT_ID = 104;'||wwv_flow.LF||
'UPDATE PRODUCT SET QUANTITY = 40 WHERE PRODUCT_ID = 105;'||wwv_flow.LF||
'UPDATE PRODUCT SET QUANTITY = 100 WHERE PRODUCT_ID = 106;'||wwv_flow.LF||
'UPDATE PRODUCT SET QUANTITY = 200 WHERE PRODUCT_ID = 107;'||
''||wwv_flow.LF||
'UPDATE PRODUCT SET QUANTITY = 150 WHERE PRODUCT_ID = 108;'||wwv_flow.LF||
''||wwv_flow.LF||
'COMMIT;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230324','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151030259074812516054
 ,p_command => 
'INSERT INTO SALES '||wwv_flow.LF||
'(PRODUCT_ID, SALE_DATE, CUSTOMER_NAME, PRODUCT_NAME, CATEGORY, QUANTITY, UNIT_PRICE, TOTAL_AMOUNT)'||wwv_flow.LF||
'VALUES '||wwv_flow.LF||
'(101, SYSDATE, ''Ramesh'', ''Laptop'', ''Electronics'', 5, 55000, 275000);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230336','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151030281163595523570
 ,p_command => 
'INSERT INTO SALES '||wwv_flow.LF||
'(PRODUCT_ID, SALE_DATE, CUSTOMER_NAME, PRODUCT_NAME, CATEGORY, QUANTITY, UNIT_PRICE, TOTAL_AMOUNT)'||wwv_flow.LF||
'VALUES '||wwv_flow.LF||
'(101, SYSDATE, ''Ramesh'', ''Laptop'', ''Electronics'', 5, 55000, 275000);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230338','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151030302722379528505
 ,p_command => 
'ALTER TABLE SALES'||wwv_flow.LF||
'ADD CONSTRAINT SALES_PK PRIMARY KEY (SALE_ID);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230338','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151030309876976531229
 ,p_command => 
'ALTER TABLE SALES'||wwv_flow.LF||
'ADD CONSTRAINT SALES_PK PRIMARY KEY (SALE_ID);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230339','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151030336730672149753
 ,p_command => 
'INSERT INTO SALES '||wwv_flow.LF||
'(PRODUCT_ID, SALE_DATE, CUSTOMER_NAME, PRODUCT_NAME, CATEGORY, QUANTITY, UNIT_PRICE, TOTAL_AMOUNT)'||wwv_flow.LF||
'VALUES '||wwv_flow.LF||
'(101, SYSDATE, ''Rahul'', ''Laptop'', ''Electronics'', 5, 55000, 275000);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230336','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151030345791651153602
 ,p_command => 
'INSERT INTO SALES '||wwv_flow.LF||
'(PRODUCT_ID, SALE_DATE, CUSTOMER_NAME, PRODUCT_NAME, CATEGORY, QUANTITY, UNIT_PRICE, TOTAL_AMOUNT)'||wwv_flow.LF||
'VALUES '||wwv_flow.LF||
'(113, SYSDATE, ''Ramesh'', ''Laptop'', ''Electronics'', 5, 55000, 275000);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230337','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151030348260318155200
 ,p_command => 
'INSERT INTO SALES '||wwv_flow.LF||
'(PRODUCT_ID, SALE_DATE, CUSTOMER_NAME, PRODUCT_NAME, CATEGORY, QUANTITY, UNIT_PRICE, TOTAL_AMOUNT)'||wwv_flow.LF||
'VALUES '||wwv_flow.LF||
'(123, SYSDATE, ''Ramesh'', ''Laptop'', ''Electronics'', 5, 55000, 275000);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230337','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151030379275011163785
 ,p_command => 
'ALTER TABLE SALES'||wwv_flow.LF||
'ADD SALE_ID NUMBER;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230338','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151030381356380165638
 ,p_command => 
'ALTER TABLE SALES'||wwv_flow.LF||
'ADD SALE_ID NUMBER;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230339','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151030493939353175457
 ,p_command => 
'ALTER TABLE SALES'||wwv_flow.LF||
'ADD SALE_ID NUMBER;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230340','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151030519377240179327
 ,p_command => 
'UPDATE SALES SET SALE_ID = 1 WHERE PRODUCT_ID = 101;'||wwv_flow.LF||
'-- repeat for others'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230341','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151030565345171537189
 ,p_command => 
'SELECT constraint_name'||wwv_flow.LF||
'FROM user_constraints'||wwv_flow.LF||
'WHERE table_name = ''SALES'''||wwv_flow.LF||
'AND constraint_type = ''P'';'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230340','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151030594653581538566
 ,p_command => 
'ALTER TABLE SALES'||wwv_flow.LF||
'DROP CONSTRAINT SYS_C00192851235;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230340','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151030654363980540497
 ,p_command => 
'ALTER TABLE SALES'||wwv_flow.LF||
'ADD CONSTRAINT SALES_PK PRIMARY KEY (SALE_ID);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230340','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151030706833947546325
 ,p_command => 
'ALTER TABLE SALES'||wwv_flow.LF||
'ADD CONSTRAINT SALES_PK PRIMARY KEY (SALE_ID);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230341','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151030748730281180352
 ,p_command => 
'CREATE SEQUENCE SALE_SEQ START WITH 1;'||wwv_flow.LF||
''||wwv_flow.LF||
'UPDATE SALES'||wwv_flow.LF||
'SET SALE_ID = SALE_SEQ.NEXTVAL;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230341','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151030751204300181049
 ,p_command => 
'CREATE SEQUENCE SALE_SEQ START WITH 2;'||wwv_flow.LF||
''||wwv_flow.LF||
'UPDATE SALES'||wwv_flow.LF||
'SET SALE_ID = SALE_SEQ.NEXTVAL;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230341','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151030805422385187071
 ,p_command => 
'UPDATE SALES'||wwv_flow.LF||
'SET SALE_ID = SALE_SEQ.NEXTVAL'||wwv_flow.LF||
'WHERE SALE_ID IS NULL;'||wwv_flow.LF||
''||wwv_flow.LF||
'COMMIT;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230342','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151030863646970192910
 ,p_command => 
'BEGIN'||wwv_flow.LF||
'    UPDATE SALES'||wwv_flow.LF||
'    SET SALE_ID = SALE_SEQ.NEXTVAL'||wwv_flow.LF||
'    WHERE SALE_ID IS NULL;'||wwv_flow.LF||
''||wwv_flow.LF||
'    COMMIT;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230343','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151030897014126194474
 ,p_command => 
'ALTER TABLE SALES'||wwv_flow.LF||
'ADD CONSTRAINT SALES_PK PRIMARY KEY (SALE_ID);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230343','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151030966028890555019
 ,p_command => 
'UPDATE SALES'||wwv_flow.LF||
'SET SALE_ID = SALE_SEQ.NEXTVAL'||wwv_flow.LF||
'WHERE SALE_ID IS NULL;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230343','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151031013915700563691
 ,p_command => 
'SELECT * FROM SALES'||wwv_flow.LF||
'WHERE SALE_ID IS NULL;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230344','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151031035563514569885
 ,p_command => 
'COMMIT;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230345','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151031036334636570887
 ,p_command => 
'SELECT SALE_ID FROM SALES;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230345','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151031058148649572242
 ,p_command => 
'ALTER TABLE SALES'||wwv_flow.LF||
'ADD CONSTRAINT SALES_PK PRIMARY KEY (SALE_ID);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230346','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151031063620462573521
 ,p_command => 
'SELECT COUNT(*) FROM SALES WHERE SALE_ID IS NULL;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230346','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151031065407682574564
 ,p_command => 
'CREATE SEQUENCE SALE_SEQ START WITH 1;'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE OR REPLACE TRIGGER AUTO_SALE_ID'||wwv_flow.LF||
'BEFORE INSERT ON SALES'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    :NEW.SALE_ID := SALE_SEQ.NEXTVAL;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230346','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151031133098286580068
 ,p_command => 
'INSERT INTO SALES '||wwv_flow.LF||
'(SALE_ID, PRODUCT_ID, SALE_DATE, CUSTOMER_NAME, PRODUCT_NAME, CATEGORY, QUANTITY, UNIT_PRICE, TOTAL_AMOUNT)'||wwv_flow.LF||
'VALUES '||wwv_flow.LF||
'(201, 101, SYSDATE, ''Ramesh'', ''Laptop'', ''Electronics'', 5, 55000, 275000);'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230347','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151031145740948204741
 ,p_command => 
'UPDATE SALES'||wwv_flow.LF||
'SET SALE_ID = ROWNUM;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230345','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 151031173601056214901
 ,p_command => 
'SELECT PRODUCT_ID, PRODUCT_NAME, QUANTITY FROM PRODUCT;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603230347','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 152976145160319400076
 ,p_command => 
'select * from employee'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603300258','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 152978474963775848800
 ,p_command => 
'CREATE TABLE employees ('||wwv_flow.LF||
'    emp_id INT PRIMARY KEY,'||wwv_flow.LF||
'    emp_name VARCHAR2(50),'||wwv_flow.LF||
'    jobtype VARCHAR2(20),'||wwv_flow.LF||
'    bp INT'||wwv_flow.LF||
');'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603300312','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 152978571671490489572
 ,p_command => 
'INSERT ALL'||wwv_flow.LF||
'INTO employees VALUES (1, ''Rahul Sharma'', ''Manager'', 50000)'||wwv_flow.LF||
'INTO employees VALUES (2, ''Priya Singh'', ''Developer'', 40000)'||wwv_flow.LF||
'INTO employees VALUES (3, ''Amit Verma'', ''Tester'', 30000)'||wwv_flow.LF||
'INTO employees VALUES (4, ''Neha Gupta'', ''HR'', 35000)'||wwv_flow.LF||
'INTO employees VALUES (5, ''Rohit Kumar'', ''Analyst'', 45000)'||wwv_flow.LF||
'INTO employees VALUES (6, ''Sneha Reddy'', ''Developer'', 42000)'||wwv_flow.LF||
'INTO employees VALUES (7, ''Vikas Mehta'||
''', ''Manager'', 55000)'||wwv_flow.LF||
'INTO employees VALUES (8, ''Pooja Nair'', ''Tester'', 32000)'||wwv_flow.LF||
'INTO employees VALUES (9, ''Arjun Das'', ''Support'', 28000)'||wwv_flow.LF||
'INTO employees VALUES (10, ''Kiran Patel'', ''HR'', 36000)'||wwv_flow.LF||
'SELECT * FROM DUAL;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603300313','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 152978576843297490736
 ,p_command => 
'select * from dual'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603300313','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 152978584534995491977
 ,p_command => 
'select * from employees;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603300313','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 152978651568470501491
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'  CURSOR emp_cursor IS'||wwv_flow.LF||
'    SELECT emp_id, jobtype, bp FROM employees FOR UPDATE;'||wwv_flow.LF||
''||wwv_flow.LF||
'  v_emp_id employees.emp_id%TYPE;'||wwv_flow.LF||
'  v_job    employees.jobtype%TYPE;'||wwv_flow.LF||
'  v_bp     employees.bp%TYPE;'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  OPEN emp_cursor;'||wwv_flow.LF||
''||wwv_flow.LF||
'  LOOP'||wwv_flow.LF||
'    FETCH emp_cursor INTO v_emp_id, v_job, v_bp;'||wwv_flow.LF||
'    EXIT WHEN emp_cursor%NOTFOUND;'||wwv_flow.LF||
''||wwv_flow.LF||
'    IF v_job = ''Manager'' THEN'||wwv_flow.LF||
'      UPDATE employees'||wwv_flow.LF||
'      SET bp = v_bp + v_bp * 0.10'||wwv_flow.LF||
'     '||
' WHERE CURRENT OF emp_cursor;'||wwv_flow.LF||
''||wwv_flow.LF||
'    ELSIF v_job = ''Clerk'' THEN'||wwv_flow.LF||
'      UPDATE employees'||wwv_flow.LF||
'      SET bp = v_bp + v_bp * 0.05'||wwv_flow.LF||
'      WHERE CURRENT OF emp_cursor;'||wwv_flow.LF||
''||wwv_flow.LF||
'    END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'  END LOOP;'||wwv_flow.LF||
''||wwv_flow.LF||
'  CLOSE emp_cursor;'||wwv_flow.LF||
'  COMMIT;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603300315','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 152978868154830867414
 ,p_command => 
'select * from employees;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603300315','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 152978955187599510134
 ,p_command => 
'select * from employees;'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603300316','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 152979084726529870431
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'  CURSOR emp_cursor IS'||wwv_flow.LF||
'    SELECT emp_id, jobtype, bp FROM employees FOR UPDATE;'||wwv_flow.LF||
''||wwv_flow.LF||
'  v_emp_id employees.emp_id%TYPE;'||wwv_flow.LF||
'  v_job    employees.jobtype%TYPE;'||wwv_flow.LF||
'  v_bp     employees.bp%TYPE;'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  OPEN emp_cursor;'||wwv_flow.LF||
''||wwv_flow.LF||
'  LOOP'||wwv_flow.LF||
'    FETCH emp_cursor INTO v_emp_id, v_job, v_bp;'||wwv_flow.LF||
'    EXIT WHEN emp_cursor%NOTFOUND;'||wwv_flow.LF||
''||wwv_flow.LF||
'    IF v_job = ''Manager'' THEN'||wwv_flow.LF||
'      UPDATE employees'||wwv_flow.LF||
'      SET bp = v_bp + v_bp * 0.10'||wwv_flow.LF||
'     '||
' WHERE CURRENT OF emp_cursor;'||wwv_flow.LF||
''||wwv_flow.LF||
'    ELSIF v_job = ''Clerk'' THEN'||wwv_flow.LF||
'      UPDATE employees'||wwv_flow.LF||
'      SET bp = v_bp + v_bp * 0.05'||wwv_flow.LF||
'      WHERE CURRENT OF emp_cursor;'||wwv_flow.LF||
''||wwv_flow.LF||
'    END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'  END LOOP;'||wwv_flow.LF||
''||wwv_flow.LF||
'  CLOSE emp_cursor;'||wwv_flow.LF||
'  COMMIT;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603300315','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 152984273996495736121
 ,p_command => 
'select*from sales'
    ,p_created_by => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN'
    ,p_created_on => to_date('202603300354','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PRIYANSHU09');
end;
/
----------------
--Quick SQL saved models
--
----------------
--user access log
--
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240200',
    p_access_date => to_date('202603300257','YYYYMMDDHH24MI'),
    p_ip_address => '115.240.130.46',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240200',
    p_access_date => to_date('202604050723','YYYYMMDDHH24MI'),
    p_ip_address => '182.74.133.198',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240200',
    p_access_date => to_date('202604060248','YYYYMMDDHH24MI'),
    p_ip_address => '182.74.133.198',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240200',
    p_access_date => to_date('202603140933','YYYYMMDDHH24MI'),
    p_ip_address => '182.74.133.198',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240200',
    p_access_date => to_date('202603160251','YYYYMMDDHH24MI'),
    p_ip_address => '182.74.133.198',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240200',
    p_access_date => to_date('202603221609','YYYYMMDDHH24MI'),
    p_ip_address => '182.74.133.198',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240200',
    p_access_date => to_date('202603230308','YYYYMMDDHH24MI'),
    p_ip_address => '115.240.130.46',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240200',
    p_access_date => to_date('202603230318','YYYYMMDDHH24MI'),
    p_ip_address => '115.240.130.46',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...Issue Templates
--
begin
null;
end;
/
--
prompt ...Issue Email Prefs
--
begin
null;
end;
/
--
prompt ...Label Groups
--
begin
null;
end;
/
--
prompt ...Labels
--
begin
null;
end;
/
--
prompt ... Milestones
--
begin
null;
end;
/
--
prompt ... Issues
--
begin
null;
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
 
prompt ... Extension Links
 
 
prompt ... Extension Grants
 
 
prompt ...workspace objects
 
 
prompt ...RESTful Services
 
-- SET SCHEMA
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'WKSP_PRIYANSHU09';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA WKSP_PRIYANSHU09 - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_240200
-- Exported 02:57 Monday April 6, 2026 by: SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 02:57 Monday April 6, 2026 by: SPRIYANSHUBTECH24@CED.ALLIANCE.EDU.IN
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'PRIYANSHU09';
 
end;
/

begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
