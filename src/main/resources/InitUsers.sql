
INSERT INTO user (id, data_creazione, data_modifica, email, first_name, last_name, password)
VALUES
(5, '2019-03-11 17:23:26', NULL, 'admin@nextre.it', 'Valerio', 'Radice', '$2a$10$qHhr9egjoujJgAaPPRpiG.lBHqAsI4xNYRzl.FzXDsZ9/MG2/2ivK');


INSERT INTO role (id, data_creazione, data_modifica, name)
VALUES
(6, '2019-03-11 17:23:26', NULL, 'ROLE_ADMIN');

INSERT INTO users_roles (user_id, role_id) VALUES 	(5, 6);

update hibernate_sequence set next_val=7;