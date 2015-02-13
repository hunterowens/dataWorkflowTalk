CREATE TABLE assets
(object_id INTEGER,
 asset_name TEXT,
 asset_type TEXT,
 PRIMARY KEY(object_id) ON CONFLICT REPLACE);
CREATE TABLE route_points
(object_id INTEGER,
 posting_time DATETIME,
 direction INTEGER,
 X DOUBLE,
 Y DOUBLE,
 UNIQUE(object_id, posting_time) ON CONFLICT REPLACE);
