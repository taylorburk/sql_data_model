DROP DATABASE IF EXISTS craiglist;

CREATE DATABASE craiglist;

\c craiglist

CREATE TABLE post
(
  post_id SERIAL PRIMARY KEY,
  region_name TEXT NOT NULL,
  preferred_region TEXT NOT NULL,
  users INT,
  categories TEXT NOT NULL
);
CREATE TABLE post_details
(
    post_id SERIAL PRIMARY KEY,
    post_user TEXT NOT NULL,
    post_title TEXT NOT NULL,
    post_text TEXT NOT NULL,
    post_location TEXT NOT NULL,
    post_region TEXT NOT NULL
);


INSERT INTO post
  (post_id,region_name, preferred_region, users, categories)
VALUES
    ('1','San Deigo','San Francisco', 001, 'music'),
    ('2','San Deigo','San Francisco', 002, 'clothing'),
    ('3','Atlanta','Atlanta', 003, 'cars'),
    ('4','Dallas','Fort Worth', 004, 'music');

INSERT INTO post_details
    (post_id, post_user, post_title, post_text, post_location, post_region)
VALUES
    ('1','Dude213','Where to listen?','Hey guys, need to know where there is a good place to listen to some good music','San Francisco','West Beach'),
    ('2','Cali_girl','Where is the clothes?','Where is the IT spot to buy clothes?','San Francisco','West Beach'),
    ('3','Guy_fromthe_south','Cars','Need come insight on where to find good car deals','Atlanta','North Atlanta'),
    ('4','Texan-girly','Best music in Dallas?','Where is a good spot to listen to good music','Dallas','Central Texas');