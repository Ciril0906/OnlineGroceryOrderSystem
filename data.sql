INSERT INTO roles (name) VALUES ('ROLE_CUSTOMER');
INSERT INTO roles (name) VALUES ('ROLE_ADMIN');

-- Add an admin user (password 'adminpass', hashed with BCrypt)
INSERT INTO users (username, password, email, first_name, last_name) VALUES ('admin', '$2a$10$8.M2G.L.j.K8M.Q.4.X.O.g.2.B.1.R.6.A.9.R.U.A.2.A.1.T.5.K.8.L.4.M.5.J.5.F.9.W.6.Q.8.P.2.N.7.O.6.I.5', 'admin@example.com', 'Super', 'Admin');
INSERT INTO user_roles (user_id, role_id) VALUES ( (SELECT id FROM users WHERE username='admin'), (SELECT id FROM roles WHERE name='ROLE_ADMIN') );

-- Add a customer user (password 'customerpass', hashed)
INSERT INTO users (username, password, email, first_name, last_name) VALUES ('customer1', '$2a$10$eE/R.P.K.L.Q.4.M.1.D.S.2.Z.7.X.3.V.5.C.9.W.6.Y.1.N.9.F.4.T.7.G.3.H.2.J.1.K.4.L.8.M.6', 'customer1@example.com', 'John', 'Doe');
INSERT INTO user_roles (user_id, role_id) VALUES ( (SELECT id FROM users WHERE username='customer1'), (SELECT id FROM roles WHERE name='ROLE_CUSTOMER') );

-- Add some products
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Milk (1L)', 'Fresh cow milk, full fat', 2.50, 100, 'Dairy');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Bread (Loaf)', 'Whole wheat bread', 3.00, 50, 'Bakery');
INSERT INTO products (name, description, price, stock_quantity, category) VALUES ('Apples (1kg)', 'Fresh red apples', 4.00, 75, 'Fruits');
