CREATE TABLE child_vaccination.parent_child(
	parent_childId  INT primary key,
	parent_id INT NOT NULL ,
	child_id INT NOT NULL ,
	CONSTRAINT fk_child_detail
	    FOREIGN KEY(child_id)
	    REFERENCES child_vaccination.childdetail(child_id),
	CONSTRAINT fk_parent
	    FOREIGN KEY(parent_id)
	    REFERENCES child_vaccination.parent(parent_id)
)

SELECT * FROM child_vaccination.parent_child

INSERT INTO child_vaccination.parent_child(parent_childid, parent_id,child_id)
VALUES
    (1,1,1),
    (2,2,2),
    (3,3,3)    
    
    
SELECT * FROM  child_vaccination.parent_child

INSERT INTO child_vaccination.parent_child(parent_childid, parent_id,child_id)
VALUES
    (4,4,4),
    (5,5,5),
    (6,6,6);


INSERT INTO child_vaccination.parent_child(parent_childid, parent_id,child_id)
VALUES
     (7,7,7),
     (8,8,8),
     (9,9,9),
     (10,11,10),
     (11,11,11),
     (12,11,12),
     (13,11,13);
 INSERT INTO child_vaccination.parent_child(parent_childid, parent_id,child_id)
 VALUES 
    (14,9,14),
    (15,9,15);

 
 SELECT * FROM  child_vaccination.parent_child   

SELECT COUNT(parent_id) AS Parents_With_More_Than_3_Children
FROM (
    SELECT parent_id
    FROM parent_child
    GROUP BY parent_id
    HAVING COUNT(child_id) > 3
) AS filtered_parents;