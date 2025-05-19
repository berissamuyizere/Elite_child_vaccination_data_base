-- -- Active: 1747029298416@@127.0.0.1@5432@data_class
-- -- select * from child_vaccination.childdetail;


-- -- create table child_vaccination.parent_child(
-- -- 	parent_childId  INT primary key,
-- -- 	parent_id VARCHAR(10) not null,
-- -- 	child_id VARCHAR(10) not null,
-- -- 	CONSTRAINT fk_childdetail
-- -- 	    FOREIGN KEY(child_id)
-- -- 	    REFERENCES child_vaccination.childdetail(child_id),
-- -- 	CONSTRAINT fk_parent
-- -- 	    FOREIGN KEY(parent_id)
-- -- 	    REFERENCES child_vaccination.parent(parent_id)
-- -- );
-- -- select * from child_vaccination.parent_child;

-- CREATE TABLE child_vaccination.parent_child(
-- 	parent_childId  INT primary key,
-- 	parent_id VARCHAR(10) not null,
-- 	child_id VARCHAR(10) not null,
-- 	CONSTRAINT fk_childdetail
-- 	    FOREIGN KEY(child_id)
-- 	    REFERENCES child_vaccination.childdetail(child_id),
-- 	CONSTRAINT fk_parent
-- 	    FOREIGN KEY(parent_id)
-- 	    REFERENCES child_vaccination.parent(parent_id)
-- )
CREATE TABLE child_vaccination.parent_child(
	parent_childId  INT primary key,
	parent_id VARCHAR(10) not null,
	child_id VARCHAR(10) not null,
	CONSTRAINT fk_child_detail
	    FOREIGN KEY(child_id)
	    REFERENCES child_vaccination.childdetail(child_id),
	CONSTRAINT fk_parent
	    FOREIGN KEY(parent_id)
	    REFERENCES child_vaccination.parent(parent_id)
)

SELECT * FROM child_vaccination.parent_child