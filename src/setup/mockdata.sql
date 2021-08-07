-- insert users
INSERT INTO users (
    user_first_name,
    user_last_name,
    user_username,
    email,
    user_password
) VALUES 
-- root admin
('root', 'root', 'root', 'user@gmail.com', crypt('root', gen_salt('bf'))),
-- recruiter
('Alisher', 'Nazirov', 'nz', 'user@gmail.com', crypt('1111', gen_salt('bf'))),
('Ulugbek', 'Valiyev', 'rv', 'user@gmail.com', crypt('1111', gen_salt('bf'))),
('Samir', 'Nazarov', 'nazarjon', 'user@gmail.com', crypt('1111', gen_salt('bf'))),
('Yunus', 'Yusupov', 'tanqidchi', 'user@gmail.com', crypt('1111', gen_salt('bf'))),
('MuhammadJavohir', 'Suratov', 'jewel', 'user@gmail.com', crypt('1111', gen_salt('bf'))),
('Muhammad', 'Najimov', 'bigonotation', 'user@gmail.com', crypt('1111', gen_salt('bf'))),
-- emplyee
('Adham', 'Muzaffarov', 'heaven_8', 'user@gmail.com', crypt('1111', gen_salt('bf'))), -- 8
('MuhammadSodiq', 'Xolmuhammedov', 'quddusiy', 'user@gmail.com', crypt('1111', gen_salt('bf'))), -- 9
('Imron', 'Shoimov', 'yunusemro', 'user@gmail.com', crypt('1111', gen_salt('bf'))), -- 10
('Jahongir', 'Mamanazarov', 'official', 'user@gmail.com', crypt('1111', gen_salt('bf'))), -- 11
('Jamoliddin', 'Rixsiyev', 'admin0791', 'user@gmail.com', crypt('1111', gen_salt('bf'))), -- 12
('Abduvohid', 'Abdufattoyev', 'abduvohid2005', 'user@gmail.com', crypt('1111', gen_salt('bf'))), -- 13
('Abdusamad', 'Abdusamadov', 'abdusamad', 'user@gmail.com', crypt('1111', gen_salt('bf'))), -- 14
('Zoir', 'Zoirov', 'zoir', 'user@gmail.com', crypt('1111', gen_salt('bf'))), -- 15
('Abduhakim', 'Abduhakimov', 'abduhakim', 'user@gmail.com', crypt('1111', gen_salt('bf'))), -- 16
('Jabbor', 'Jabborov', 'jabbor', 'user@gmail.com', crypt('1111', gen_salt('bf'))), -- 17
('Azim', 'Azimjonov', 'azim', 'user@gmail.com', crypt('1111', gen_salt('bf'))), -- 18
('Kozim', 'Kizmjonov', 'kozim', 'user@gmail.com', crypt('1111', gen_salt('bf'))), -- 19
('Alisher', 'Botirov', 'botir', 'user@gmail.com', crypt('1111', gen_salt('bf'))), -- 20
('Samandar', 'Nazirov', 'saman', 'user@gmail.com', crypt('1111', gen_salt('bf'))); -- 21

-- insert company
INSERT INTO company (
    user_id,
    company_name,
    specialization,
    technology,
    experience,
    salary,
    type_work,
    location,
    number
) VALUES 
(2, 'company 1', 'web developer', 'React, NodeJs', '1 yil', '200$-500$', 'doimiy', 'Tashkent', '998903332334'),
(3, 'company 2', 'graphic designer', 'Adobe Photoshop', '2 yil', '150$-400$', 'doimiy', 'Tashkent', '998994009931'),
(2, 'company 3', 'web designer', 'UI / UX', '6 oy', '300$+', 'doimiy', 'Tashkent', '998973234567'),
(3, 'company 1', 'mobile developer', 'Flutter', '2 yil', '600$', 'doimiy', 'Tashkent', '998903332334'),
(4, 'company 4', 'frontend', 'HTML, CSS, Js, React', '1 yil', '500$', 'doimiy', 'Tashkent', '998903456789'),
(5, 'company 5', 'frontend', 'HTML, CSS, Js', '1 yil', '400$', 'doimiy', 'Tashkent', '998945623478'),
(6, 'company 6', 'bot master', 'PHP', '2 yil', '450$', 'doimiy', 'Tashkent', '998941234567'),
(2, 'company 3', 'marketolog', 'SMM', '1 yildan ko''p', '500$', 'doimiy', 'Tashkent', '998973234567'),
(4, 'company 4', 'backend', 'NodeJs, Express, PostgreSQL', '2 yil', '800$', 'doimiy', 'Tashkent', '998902345665'),
(6, 'company 6', 'backend', 'Python', '2 yil', '900$', 'doimiy', 'Tashkent', '998994409921');

-- insert staff
INSERT INTO staff (
    user_id,
    specialization,
    technology,
    experience,
    qualification,
    salary,
    type_work,
    location,
    age,
    gender,
    number
) VALUES 
(8, 'web developer', 'React, NodeJs', '1 yil', 'oliy', '600$', 'doimiy', 'Tashkent', 21, 1, '998998000334'),
(8, 'bot master', 'PHP', '1 yil', 'universitet', '800$', 'oliy', 'Tashkent', 21, 1, '998998000334'),
(9, 'backend', 'NodeJs, Express, PostgreSQL', '10 oy', 'o''rta', '500$', 'doimiy', 'Tashkent', 17, 1, '998917910420'),
(10, 'web developer', 'React, NodeJs', '9 oy', 'o''rta', '500$', 'doimiy', 'Tashkent', 17, 1, '998974409931'),
(10, 'backend', 'NodeJs, Express, PostgreSQL', '9 oy', 'o''rta', '500$', 'doimiy', 'Tashkent', 17, 1, '998974409931'),
(11, 'graphic designer', 'Adobe Photoshop', '1 yil', 'oliy', '500$', 'doimiy', 'Tashkent', 24, 1, '998945678998'),
(12, 'frontend', 'HTML, CSS, Js, React', '1 yil', 'oliy', '500$', 'doimiy', 'Tashkent', 18, 1, '998971051560'),
(13, 'marketolog', 'SMM', '1 yil', 'o''rta', '600$', 'doimiy', 'Tashkent', 16, 1, '998331251800'),
(14, 'backend', 'Python', '2 yil', 'oliy', '1000$', 'doimiy', 'Tashkent', 26, 1, '998999000809'),
(15, 'web designer', 'UI / UX', '1 yil', 'oliy', '400$', 'doimiy', 'Tashkent', 22, 1, '998976754532'),
(16, 'frontend', 'HTML, CSS, Js', '1 yil', 'oliy', '400$', 'doimiy', 'Tashkent', 24, 1, '998908907898'),
(17, 'marketolog', 'digital marketing', '3 yil', 'oliy', '700$', 'doimiy', 'Tashkent', 25, 1, '9980090990'),
(18, 'mobile developer', 'Flutter', '5 oy', 'ma''lumoti yo''q', '300$', 'doimiy', 'Tashkent', 15, 1, '998943452312'),
(19, 'graphic designer', 'Adobe Photoshop', '8 oy', 'ma''lumoti yo''q', '400$', 'doimiy', 'Tashkent', 16, 1, '998943452312'),
(20, 'bot master', 'PHP', '2 yil', 'o''rta', '800$', 'doimiy', 'Tashkent', 18, 1, '998903442333'),
(21, 'mobile developer', 'React Native', '1 yil', 'o''rta', '600$', 'doimiy', 'Tashkent', 19, 1, '998978776777');