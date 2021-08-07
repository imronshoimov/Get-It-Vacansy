const USER = `
INSERT INTO users (
    user_first_name,
    user_last_name,
    user_username,
    user_password,
    user_role
) VALUES 
('$1', '$2', '$2', crypt('$3', gen_salt('bf')), ),
`