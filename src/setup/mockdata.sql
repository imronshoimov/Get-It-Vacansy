INSERT INTO users(
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