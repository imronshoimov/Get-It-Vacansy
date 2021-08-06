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
('Adham', 'Muzaffarov', 'heaven_8', crypt('1111', gen_salt('bf')), 3),
('MuhammadSodiq', 'Xolmuhammedov', 'quddusiy', crypt('1111', gen_salt('bf')), 3),
('Imron', 'Shoimov', 'yunusemro', crypt('1111', gen_salt('bf')), 3),
('Jahongir', 'Mamanazarov', 'official', crypt('1111', gen_salt('bf')), 3),
('Jamoliddin', 'Rixsiyev', 'admin0791', crypt('1111', gen_salt('bf')), 3),
('Abduvohid', 'Abdufattoyev', 'abduvohid2005', crypt('1111', gen_salt('bf')), 3),
('Abdusamad', 'Abdusamadov', 'abdusamad', crypt('1111', gen_salt('bf')), 3),
('Zoir', 'Zoirov', 'zoir', crypt('1111', gen_salt('bf')), 3),
('Abduhakim', 'Abduhakimov', 'abduhakim', crypt('1111', gen_salt('bf')), 3),
('Jabbor', 'Jabborov', 'jabbor', crypt('1111', gen_salt('bf')), 3),
('Azim', 'Azimjonov', 'azim', crypt('1111', gen_salt('bf')), 3),
('Kozim', 'Kizmjonov', 'kozim', crypt('1111', gen_salt('bf')), 3),
('Alisher', 'Botirov', 'botir', crypt('1111', gen_salt('bf')), 3),
('Samandar', 'Nazirov', 'saman', crypt('1111', gen_salt('bf')), 3);

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
(''),