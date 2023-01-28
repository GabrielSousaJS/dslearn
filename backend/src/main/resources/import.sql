INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brow', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Lorem ipsum', TIMESTAMP WITH TIME ZONE '2023-01-25T18:00:00Z', 'false', 'https://learn.devsuperior.com/offers/66/resource/367/sections/1296?item=16117', '1');

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://www.publicdomainpictures.net/pictures/290000/nahled/training-course.jpg', 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2023-01-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2024-01-20T03:00:00Z', '1');
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2023-02-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2024-02-20T03:00:00Z', '1');

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://www.publicdomainpictures.net/pictures/290000/nahled/training-course.jpg', '1', '1');
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Suporte a dúvidas', 'Forum de perguntas e respostas', 2, 'https://www.publicdomainpictures.net/pictures/290000/nahled/training-course.jpg', '2', '1');
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives técnicas', 'Tire suas dúvidas ao vivo', 3, 'https://www.publicdomainpictures.net/pictures/290000/nahled/training-course.jpg', '0', '1');

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Introdução ao  HTML', 'Iniciamos os primeiros passos', 1, 'https://www.publicdomainpictures.net/pictures/290000/nahled/training-course.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Tags iniciais', 'Principais tags para o início no HTML', 2, 'https://www.publicdomainpictures.net/pictures/290000/nahled/training-course.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Propriedades do HTML', 'Propriedades diversificadas no HTML', 3, 'https://www.publicdomainpictures.net/pictures/290000/nahled/training-course.jpg', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2023-01-20T15:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2023-01-20T20:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('1° Aula do capítulo 1', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Iniciando os estudos', 'https://www.youtube.com/watch?v=0_e9Egeyk2E&t=22s');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('2° Aula do capítulo 1', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, 'Continuando os estudos', 'https://www.youtube.com/watch?v=0_e9Egeyk2E&t=22s');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('3° Aula do capítulo 1', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, 'Última aula antes do exercício', 'https://www.youtube.com/watch?v=0_e9Egeyk2E&t=22s');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do capítulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Crie um formulário HTML', 5, 4, 1.0, null);

INSERT INTO tb_lesson_enrollment (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lesson_enrollment (lesson_id, user_id, offer_id) VALUES (2, 1, 1);