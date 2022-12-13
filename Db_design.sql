use codeup_test_db;

CREATE TABLE travelers(
                         id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                         first_name VARCHAR(50),
                         last_name  VARCHAR(100) NOT NULL,
                         PRIMARY KEY (id)
);

INSERT INTO travelers(first_name, last_name) VALUES
                                               ('Chris', 'Adams'),
                                               ('Sushil', 'Gauchan'),
                                               ('Shanti', 'Koirala');
CREATE TABLE quotes (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        content TEXT NOT NULL,
                        author_id INT UNSIGNED NOT NULL,
                        PRIMARY KEY (id),
                        FOREIGN KEY (author_id) REFERENCES travelers (id)
);

# Seeds
INSERT INTO quotes (author_id, content)
VALUES ((select id from travelers where first_name = 'Chris' and last_name = 'Adams'),
        'To be with a winner, makes you a winner.');
INSERT INTO quotes (author_id, content)
values ((select id from travelers where first_name = 'Shanti' and last_name = 'Koirala'),
        'Think simple. Live simple');
INSERT INTO quotes (author_id, content)
values ((select id from travelers where first_name = 'Shanti' and last_name = 'Koirala'),
        'The universe is a big place, perhaps the biggest.');
INSERT INTO quotes (author_id, content)
VALUES ((select id from travelers where first_name = 'Shanti' and last_name = 'Koirala'), 'Don''t Panic.');

CREATE TABLE topics (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        name VARCHAR(255),
                        PRIMARY KEY (id)
);

INSERT INTO topics(name) VALUES
                             ('Life'),
                             ('Situation'),
                             ('Universe'),
                             ('Popular sayings');

CREATE TABLE quote_topic (
                             quote_id INTEGER UNSIGNED NOT NULL,
                             topic_id INTEGER UNSIGNED NOT NULL,
                             FOREIGN KEY (quote_id) REFERENCES quotes(id),
                             FOREIGN KEY (topic_id) REFERENCES topics(id)
);

INSERT INTO quote_topic(quote_id, topic_id)
VALUES (1, 1), (1, 2), (2, 1), (2, 2),
       (2, 3), (3, 3), (4, 1), (4, 2), (4, 3), (4, 4);