--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'portfolio_app', 'education');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'portfolio_app', 'projects');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'portfolio_app', 'media');


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add education', 7, 'add_education');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change education', 7, 'change_education');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete education', 7, 'delete_education');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view education', 7, 'view_education');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can add projects', 8, 'add_projects');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can change projects', 8, 'change_projects');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can delete projects', 8, 'delete_projects');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can view projects', 8, 'view_projects');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can add media', 9, 'add_media');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can change media', 9, 'change_media');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can delete media', 9, 'delete_media');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can view media', 9, 'view_media');


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$870000$uazgkf7d2CdXyyn620d1vI$eUB3GU8UwR9XgY3V10HQ91avxxpEH6KqWuEkSpyyyyY=', '2025-07-12 11:01:30.152343+02', true, 'galob', '', '', '', true, true, '2025-06-16 17:21:09.585+02');


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (1, '2025-06-16 18:21:16.329+02', '1', 'Analista Programador Universitario', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (2, '2025-06-16 18:33:31.39+02', '2', 'Desarrollador Web Full Stack', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (3, '2025-06-16 18:43:16.975+02', '3', 'Curso Intensivo de Inglés', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (4, '2025-06-16 18:53:21.71+02', '4', 'Licenciatura en Administración de Empresas', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (5, '2025-06-17 18:00:32.201+02', '1', 'Ship Relax – Plataforma de reservas náuticas (Abril - Mayo 2025) Desarrollé Ship Relax como proyecto freelance, una aplicación web destinada a gestionar reservas de paseos en barco en la isla de Mallo', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (6, '2025-06-17 18:01:15.581+02', '1', 'Ship Relax – Plataforma de reservas náuticas (Abril - Mayo 2025) Desarrollé Ship Relax como proyecto freelance, una aplicación web destinada a gestionar reservas de paseos en barco en la isla de Mallo', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (7, '2025-06-17 18:16:56.285+02', '1', 'Ship Relax – Plataforma de reservas náuticas (Abril - Mayo 2025) Ship Relax es un proyecto que representa mi primera experiencia profesional en el desarrollo de software. Se trata de una aplicación we', 2, '[{"changed": {"fields": ["Description"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (8, '2025-06-25 10:35:01.073+02', '2', 'None', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (9, '2025-06-25 10:39:35.626+02', '3', 'None', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (10, '2025-06-30 10:37:16.565445+02', '1', 'Ship Relax – Plataforma de reservas náuticas (Abril - Mayo 2025) Ship Relax es un proyecto que representa mi primera experiencia profesional en el desarrollo de software. Se trata de una aplicación we', 2, '[]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (11, '2025-07-08 10:32:46.802178+02', '1', 'Plataforma de reservas náuticas (Abril - Mayo 2025) Ship Relax es un proyecto que representa mi primera experiencia profesional en el desarrollo de software. Se trata de una aplicación web destinada a', 2, '[{"changed": {"fields": ["Title"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (12, '2025-07-08 10:42:58.556724+02', '2', 'Gestor de Productos Aplicación web desarrollada con una arquitectura full stack que permite gestionar productos de manera eficiente a través de operaciones CRUD. El frontend fue construido utilizando ', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (13, '2025-07-08 10:44:48.874132+02', '4', 'Gestor de Productos Aplicación web desarrollada con una arquitectura full stack que permite gestionar productos de manera eficiente a través de operaciones CRUD. El frontend fue construido utilizando ', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (14, '2025-07-08 10:53:09.43456+02', '3', 'Landing Page – TimiFTV Este proyecto representó mi primera experiencia como freelancer y marcó un paso importante en mi carrera profesional. Me encargué del desarrollo de la landing page para TimiFTV,', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (15, '2025-07-08 10:55:04.630627+02', '5', 'Landing Page – TimiFTV Este proyecto representó mi primera experiencia como freelancer y marcó un paso importante en mi carrera profesional. Me encargué del desarrollo de la landing page para TimiFTV,', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (16, '2025-07-08 11:11:47.96047+02', '4', 'VIP - Thai Massage Este proyecto fue mi segunda experiencia como freelancer, en la cual colaboré en el desarrollo de una aplicación web destinada a la reserva de turnos para masajes. Mi principal cont', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (17, '2025-07-08 11:12:17.879739+02', '6', 'VIP - Thai Massage Este proyecto fue mi segunda experiencia como freelancer, en la cual colaboré en el desarrollo de una aplicación web destinada a la reserva de turnos para masajes. Mi principal cont', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (18, '2025-07-08 11:13:36.791814+02', '5', 'Buscador de Noticias Desarrollé una aplicación web que permite a los usuarios buscar noticias en tiempo real según el país y la temática seleccionados. La interfaz fue construida con Angular, TypeScri', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (19, '2025-07-08 11:16:33.694135+02', '7', 'Buscador de Noticias Desarrollé una aplicación web que permite a los usuarios buscar noticias en tiempo real según el país y la temática seleccionados. La interfaz fue construida con Angular, TypeScri', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (20, '2025-07-09 12:25:11.952579+02', '3', 'Landing Page – TimiFTV Este proyecto representó mi primera experiencia como freelancer y marcó un paso importante en mi carrera profesional. Me encargué del desarrollo de la landing page para TimiFTV,', 2, '[{"changed": {"fields": ["Tecnologies"]}}]', 8, 1);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2025-06-26 11:58:22.249137+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2025-06-26 11:58:22.281496+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2025-06-26 11:58:22.293833+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2025-06-26 11:58:22.296998+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2025-06-26 11:58:22.300245+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2025-06-26 11:58:22.306971+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2025-06-26 11:58:22.310619+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2025-06-26 11:58:22.314023+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2025-06-26 11:58:22.31702+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2025-06-26 11:58:22.320355+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2025-06-26 11:58:22.320895+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2025-06-26 11:58:22.323725+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2025-06-26 11:58:22.329551+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2025-06-26 11:58:22.333019+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2025-06-26 11:58:22.336933+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2025-06-26 11:58:22.340447+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2025-06-26 11:58:22.343763+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (18, 'portfolio_app', '0001_initial', '2025-06-26 11:58:22.355539+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (19, 'portfolio_app', '0002_rename_video_media_delete_imageproject', '2025-06-26 11:58:22.362064+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (20, 'portfolio_app', '0003_alter_education_description', '2025-06-26 11:58:22.364755+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (21, 'portfolio_app', '0004_alter_education_description', '2025-06-26 11:58:22.366139+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (22, 'portfolio_app', '0005_remove_media_title_media_project', '2025-06-26 11:58:22.369344+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (23, 'portfolio_app', '0006_alter_projects_description', '2025-06-26 11:58:22.37193+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (24, 'portfolio_app', '0007_alter_media_project', '2025-06-26 11:58:22.373501+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (25, 'sessions', '0001_initial', '2025-06-26 11:58:22.380512+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (26, 'portfolio_app', '0008_projects_tecnlogies', '2025-06-30 10:29:56.05087+02');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (27, 'portfolio_app', '0009_rename_tecnlogies_projects_tecnologies', '2025-06-30 10:31:14.695651+02');


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('gfwksf7q53he4qxbdzzs3y1p0adk69w3', '.eJxVjMsOwiAUBf-FtSEQLA-X7v0GcrhcpGpoUtpV479rky50e2bmbCJiXWpcO89xzOIitDj9bgn05LaD_EC7T5KmtsxjkrsiD9rlbcr8uh7u30FFr986OA3ji_dwFuwppQCbNVRQznniADqjuJLIaKMtBsOUinGkAhiDF-8P-zg4yw:1uULOy:8zVeguAx-HBStPsoISezeQE02Nx4B5L5JWFY8e3EFrs', '2025-07-09 10:22:40.044+02');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('j0jwsk7ftzch5cvbacgwbz3i845e2ded', '.eJxVjMsOwiAUBf-FtSEQLA-X7v0GcrhcpGpoUtpV479rky50e2bmbCJiXWpcO89xzOIitDj9bgn05LaD_EC7T5KmtsxjkrsiD9rlbcr8uh7u30FFr986OA3ji_dwFuwppQCbNVRQznniADqjuJLIaKMtBsOUinGkAhiDF-8P-zg4yw:1uRBeI:UWlnBTuKHdY17e6xQNg324pnfmBFKUmST1Ve-gCL3NQ', '2025-06-30 17:21:26.094+02');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('vmyrzcscc5lfjk2qzbd8bfxdmdzua9xx', '.eJxVjMsOwiAUBf-FtSEQLA-X7v0GcrhcpGpoUtpV479rky50e2bmbCJiXWpcO89xzOIitDj9bgn05LaD_EC7T5KmtsxjkrsiD9rlbcr8uh7u30FFr986OA3ji_dwFuwppQCbNVRQznniADqjuJLIaKMtBsOUinGkAhiDF-8P-zg4yw:1uUjdn:C6aLZogoCJLAdleNP4g-BRE5ei4xoWCx2r41drrhS3c', '2025-07-10 12:15:35.426209+02');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('7ljmcrmr2eyso67ugkasvlwfgnm9xcfc', '.eJxVjMsOwiAUBf-FtSEQLA-X7v0GcrhcpGpoUtpV479rky50e2bmbCJiXWpcO89xzOIitDj9bgn05LaD_EC7T5KmtsxjkrsiD9rlbcr8uh7u30FFr986OA3ji_dwFuwppQCbNVRQznniADqjuJLIaKMtBsOUinGkAhiDF-8P-zg4yw:1uVp75:Wno8XfC8AmJciz70n0HZdt5D6i0tuq1WzSqR_CVeuGM', '2025-07-13 12:18:19.759004+02');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('xgwtrfx2hcvr6xwh6rkwf8oeoqte0h2v', '.eJxVjMsOwiAUBf-FtSEQLA-X7v0GcrhcpGpoUtpV479rky50e2bmbCJiXWpcO89xzOIitDj9bgn05LaD_EC7T5KmtsxjkrsiD9rlbcr8uh7u30FFr986OA3ji_dwFuwppQCbNVRQznniADqjuJLIaKMtBsOUinGkAhiDF-8P-zg4yw:1uZ3kU:7HX9HUfMdRTZVGOBU0UpEXBsd2TsetPyf1PCP591y9U', '2025-07-22 10:32:22.834978+02');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('bofslw9r4lfruirvqcp5cun42ygzxfpm', '.eJxVjMsOwiAUBf-FtSEQLA-X7v0GcrhcpGpoUtpV479rky50e2bmbCJiXWpcO89xzOIitDj9bgn05LaD_EC7T5KmtsxjkrsiD9rlbcr8uh7u30FFr986OA3ji_dwFuwppQCbNVRQznniADqjuJLIaKMtBsOUinGkAhiDF-8P-zg4yw:1uaW6s:ovd-ZFSKKTw231v-7wmfpjHbrxD1Y7pi-9yB1G9Q2Gc', '2025-07-26 11:01:30.156951+02');


--
-- Data for Name: portfolio_app_education; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.portfolio_app_education (id, title, university, description, start_date, end_date) VALUES (1, 'Analista Programador Universitario', 'Universidad Nacional de La Plata', 'En estos 2 años de la carrera he adquirido sólidos conocimientos en materias fundamentales como Lógica, Organización y Arquitectura de Computadoras, y Matemática. Esta formación me permitió desarrollar una base teórica y práctica para abordar problemas de programación con un enfoque analítico y estructurado. Aprendí a descomponer y resolver problemas de manera eficiente, fortaleciendo mi pensamiento lógico y mejorando mis habilidades para planificar y organizar soluciones en entornos de desarrollo.', '2021-03-10', '2023-11-29');
INSERT INTO public.portfolio_app_education (id, title, university, description, start_date, end_date) VALUES (2, 'Desarrollador Web Full Stack', 'Universidad Nacional Tecnológica (UTN)', 'Tras cursar dos años de la carrera de Analista Programador, decidí orientar mi camino profesional hacia el desarrollo web. Para fortalecer mis conocimientos en esta área, realicé una Diplomatura en Desarrollo Web Full Stack en la Universidad Tecnológica Nacional. Durante esta formación adquirí experiencia práctica en el uso de tecnologías y frameworks clave del ecosistema web, tales como HTML, CSS, JavaScript, Node.js, Python, PostgreSQL, MongoDB, React y Angular. Esta capacitación me permitió integrar tanto el desarrollo frontend como backend, consolidando una visión integral del desarrollo de aplicaciones web modernas.', '2024-01-15', '2024-05-20');
INSERT INTO public.portfolio_app_education (id, title, university, description, start_date, end_date) VALUES (3, 'Curso Intensivo de Inglés', 'EF Education First', 'Realicé un curso intensivo en Education First, donde desarrollé competencias comunicativas  en inglés. Esta formación me permitió desenvolverme con fluidez en contextos tanto académicos como profesionales donde finalmente certifiqué un nivel B2 (Higher Intermediate).', '2020-06-10', '2020-11-10');
INSERT INTO public.portfolio_app_education (id, title, university, description, start_date, end_date) VALUES (4, 'Licenciatura en Administración de Empresas', 'Universidad Nacional de La Plata', 'Durante los dos primeros años de la Licenciatura en Administración de Empresas, adquirí conocimientos en áreas como administración, contabilidad y economía. Esta formación me brindó herramientas para desarrollar habilidades organizativas, optimizar la eficiencia en la realización de tareas y mejorar la gestión del tiempo, los cuales considero aspectos fundamentales para un desempeño profesional efectivo.', '2017-03-05', '2018-11-22');


--
-- Data for Name: portfolio_app_projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.portfolio_app_projects (id, title, description, tecnologies) VALUES (5, 'Buscador de Noticias', 'Desarrollé una aplicación web que permite a los usuarios buscar noticias en tiempo real según el país y la temática seleccionados. La interfaz fue construida con Angular, TypeScript y Bootstrap, logrando una experiencia de usuario clara, responsiva y funcional.  El sistema se conecta a una API externa de noticias, a la cual realiza consultas dinámicas en función de los filtros elegidos por el usuario. Esto permite obtener y mostrar noticias actualizadas de forma precisa según la ubicación y el interés temático.  Este proyecto fue clave para profundizar en el consumo de APIs externas, el manejo de parámetros en tiempo real y el procesamiento de datos asincrónicos, consolidando mis habilidades en integración de servicios web y arquitectura frontend moderna.', '{angular,typescript,bootstrap}');
INSERT INTO public.portfolio_app_projects (id, title, description, tecnologies) VALUES (3, 'Landing Page – TimiFTV', 'Este proyecto representó mi primera experiencia como freelancer y marcó un paso importante en mi carrera profesional. Me encargué del desarrollo de la landing page para TimiFTV, una plataforma web dedicada a la reserva de turnos para partidos de footvolley. Para su implementación utilicé tecnologías como Vite.js para la construcción eficiente del frontend, Material UI para una interfaz visual atractiva y responsiva, y Cloudinary para la gestión y almacenamiento optimizado de contenido multimedia. Además del desarrollo técnico, este proyecto me permitió incorporar experiencia de trabajo en equipo dentro de un entorno real, ya que colaboré con el desarrollador principal del proyecto, quien me brindó guía durante el proceso. Esta colaboración fue clave para aprender sobre flujos de trabajo pr', '{vite,material,cloudinary,django,postgres}');
INSERT INTO public.portfolio_app_projects (id, title, description, tecnologies) VALUES (1, 'Plataforma de reservas náuticas (Abril - Mayo 2025)', 'Ship Relax es un proyecto que representa mi primera experiencia profesional en el desarrollo de software. Se trata de una aplicación web destinada a gestionar reservas de paseos en barco en la isla de Mallorca. La plataforma permite a los usuarios seleccionar una fecha en un calendario interactivo, consultar los turnos disponibles para ese día y concretar su reserva de forma sencilla. El sistema incorpora integración de pagos mediante Stripe, lo que garantiza transacciones seguras y eficientes. Para su desarrollo utilicé React con Vite para el frontend, Material UI para la interfaz de usuario, y un backend construido con Django y PostgreSQL como base de datos.', '{stripe,django,python,postgresql,vite}');
INSERT INTO public.portfolio_app_projects (id, title, description, tecnologies) VALUES (2, 'Gestor de Productos', 'Aplicación web desarrollada con una arquitectura full stack que permite gestionar productos de manera eficiente a través de operaciones CRUD. El frontend fue construido utilizando Angular, Bootstrap y TypeScript, brindando una interfaz intuitiva y  responsiva para la interacción del usuario. Del lado del backend, la aplicación utiliza Node.js con Express como framework de servidor, y MongoDB como base de datos NoSQL para el almacenamiento de los productos. Cada producto cuenta con atributos como nombre, precio, categoría y país de origen, permitiendo al usuario filtrar dinámicamente por categoría para una navegación más rápida y segmentada. Esta solución está pensada para negocios o inventarios simples que requieran una herramienta eficaz, personalizable y escalable para gestionar su stock', '{angular,typescript,bootstrap,node,express,mongoDB}');
INSERT INTO public.portfolio_app_projects (id, title, description, tecnologies) VALUES (4, 'VIP - Thai Massage', 'Este proyecto fue mi segunda experiencia como freelancer, en la cual colaboré en el desarrollo de una aplicación web destinada a la reserva de turnos para masajes. Mi principal contribución fue la implementación de un formulario interactivo donde el usuario puede seleccionar: el tipo de masaje deseado, la duración en minutos, y la fecha de preferencia. A partir de esta selección, la aplicación filtra automáticamente los horarios disponibles para ese día. Una vez completados todos los campos, la información se envía al backend para procesar y almacenar la reserva. Para esta solución utilicé tecnologías como Vite y Material UI en el frontend, y Django y PostgreSQL en el backend. Esta experiencia reforzó mis habilidades técnicas, pero sobre todo la importancia de la comunicación.', '{vite,material,django,postgres}');


--
-- Data for Name: portfolio_app_media; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.portfolio_app_media (id, url, project_id) VALUES (1, 'https://res.cloudinary.com/de5eluuax/image/upload/v1750174281/ShipRelax_zqfu0l.png', 1);
INSERT INTO public.portfolio_app_media (id, url, project_id) VALUES (2, 'https://res.cloudinary.com/de5eluuax/image/upload/v1750840211/Imagen_de_WhatsApp_2023-05-16_gk4zjf.jpg', NULL);
INSERT INTO public.portfolio_app_media (id, url, project_id) VALUES (3, 'https://res.cloudinary.com/de5eluuax/video/upload/v1750840744/3130284-Uhd_3840_2160_30Fps_ev1mjm.mp4', NULL);
INSERT INTO public.portfolio_app_media (id, url, project_id) VALUES (4, 'https://res.cloudinary.com/de5eluuax/image/upload/v1751887946/Captura_de_pantalla_2025-07-07_131021_kgv3e4.png', 2);
INSERT INTO public.portfolio_app_media (id, url, project_id) VALUES (5, 'https://res.cloudinary.com/de5eluuax/image/upload/v1751964803/Captura_de_pantalla_2025-07-08_101819_auuyfx.png', 3);
INSERT INTO public.portfolio_app_media (id, url, project_id) VALUES (6, 'https://res.cloudinary.com/de5eluuax/image/upload/v1751962722/Captura_de_pantalla_2025-07-08_101414_iaxomf.png', 4);
INSERT INTO public.portfolio_app_media (id, url, project_id) VALUES (7, 'https://res.cloudinary.com/de5eluuax/image/upload/v1751966159/Captura_de_pantalla_2025-07-07_131833_de1hbb.png', 5);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 20, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 27, true);


--
-- Name: portfolio_app_education_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.portfolio_app_education_id_seq', 4, true);


--
-- Name: portfolio_app_projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.portfolio_app_projects_id_seq', 5, true);


--
-- Name: portfolio_app_video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.portfolio_app_video_id_seq', 7, true);


--
-- PostgreSQL database dump complete
--

