-- insert users
INSERT INTO users (
    user_first_name,
    user_last_name,
    user_username,
    user_password,
    user_role
) VALUES 
-- root admin
('root', 'root', 'root', crypt('root', gen_salt('bf')), 1),
-- recruiter
('Alisher', 'Nazirov', 'nz', crypt('1111', gen_salt('bf')), 2),
('Ulugbek', 'Valiyev', 'rv', crypt('1111', gen_salt('bf')), 2),
('Samir', 'Nazarov', 'nazarjon', crypt('1111', gen_salt('bf')), 2),
('Yunus', 'Yusupov', 'tanqidchi', crypt('1111', gen_salt('bf')), 2),
('MuhammadJavohir', 'Suratov', 'jewel', crypt('1111', gen_salt('bf')), 2),
('Muhammad', 'Najimov', 'bigonotation', crypt('1111', gen_salt('bf')), 2),
-- emplyee
('Adham', 'Muzaffarov', 'heaven_8', crypt('1111', gen_salt('bf')), 3), -- 8
('MuhammadSodiq', 'Xolmuhammedov', 'quddusiy', crypt('1111', gen_salt('bf')), 3), -- 9
('Imron', 'Shoimov', 'yunusemro', crypt('1111', gen_salt('bf')), 3), -- 10
('Jahongir', 'Mamanazarov', 'official', crypt('1111', gen_salt('bf')), 3), -- 11
('Jamoliddin', 'Rixsiyev', 'admin0791', crypt('1111', gen_salt('bf')), 3), -- 12
('Abduvohid', 'Abdufattoyev', 'abduvohid2005', crypt('1111', gen_salt('bf')), 3), -- 13
('Abdusamad', 'Abdusamadov', 'abdusamad', crypt('1111', gen_salt('bf')), 3), -- 14
('Zoir', 'Zoirov', 'zoir', crypt('1111', gen_salt('bf')), 3), -- 15
('Abduhakim', 'Abduhakimov', 'abduhakim', crypt('1111', gen_salt('bf')), 3), -- 16
('Jabbor', 'Jabborov', 'jabbor', crypt('1111', gen_salt('bf')), 3), -- 17
('Azim', 'Azimjonov', 'azim', crypt('1111', gen_salt('bf')), 3), -- 18
('Kozim', 'Kizmjonov', 'kozim', crypt('1111', gen_salt('bf')), 3), -- 19
('Alisher', 'Botirov', 'botir', crypt('1111', gen_salt('bf')), 3), -- 20
('Samandar', 'Nazirov', 'saman', crypt('1111', gen_salt('bf')), 3); -- 21

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
(1, 'company 1', 'web developer', 'React, NodeJs', '1 yil', '200$-500$', 'doimiy', 'Tashkent', '998903332334'),
(3, 'company 2', 'graphic designer', 'Adobe Photoshop', '2 yil', '150$-400$', 'doimiy', 'Tashkent', '998994009931'),
(2, 'company 3', 'web designer', 'UI / UX', '6 oy', '300$+', 'doimiy', 'Tashkent', '998973234567'),
(1, 'company 1', 'mobile developer', 'Flutter', '2 yil', '600$', 'doimiy', 'Tashkent', '998903332334'),
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