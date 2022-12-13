SELECT 
	*
FROM
	user_mst um
	LEFT OUTER JOIN user_dtl ud
	ON ( um.id = ud.id );

SELECT
	*
FROM
	order_mst om
	LEFT OUTER JOIN order_dtl od ON(od.order_id = om.id),
	LEFT OUTER JOIN user_mst um ON(um.id = om.user_id);
	
SELECT
	*
FROM
	user_mst um
	left outer JOIN order_mst om on(om.user_id = um.id)
	LEFT OUTER JOIN order_dtl od ON(od.order_id = om.id);
	

SELECT
	cm.id,
	jm.subject,
	sm.name AS '학생이름',
	em.name,
	tm.name
FROM
	course_mst cm
	LEFT OUTER JOIN status_mst tm ON(tm.id = cm.status_id)
	LEFT OUTER JOIN student_mst sm ON(sm.id = cm.student_id)
	LEFT OUTER JOIN subject_mst jm ON(jm.id = cm.subject_id)
	LEFT OUTER JOIN student_dtl sd ON(sd.id = sm.id)
	LEFT OUTER JOIN emp_mst em ON(sd.emp_id = em.id);

SELECT 
	cm.id,
	jm.subject,
	sm.name,
	em.name
	stm.name
FROM
	student_mst sm
	LEFT OUTER JOIN student_dtl sd ON(sd.id = sm.id)
	LEFT OUTER JOIN emp_mst em ON(em.id = sd.emp_id)
	left OUTER JOIN course_mst cm ON(cm.student_id = sm.id)
	LEFT OUTER JOIN subject_mst jm ON(jm.id = cm.subject_id)
	LEFT OUTER JOIN status_mst stm ON(stm.id = cm.status_id)

ORDER BY
	sm.id,
	jm.id;
	
INSERT INTO subject_mst
VALUES
	(0,'java'),
	(0,'python'),
	(0,'c');
	
INSERT INTO student_mst
VALUES
	(0,'신경수'),
	(0,'고희주'),
	(0,'장건녕'),
	(0,'문승주');
	
INSERT INTO emp_mst
VALUES
	(0,'문성현'),
	(0,'윤대휘'),
	(0,'문자영'),
	(0,'정규민');

INSERT INTO status_mst
VALUES
	(0,'수강'),
	(0,'수료');
	
INSERT INTO course_mst
VALUES
	(0,1,1,1),
	(0,2,1,2),
	(0,3,1,2),
	(0,1,2,2),
	(0,3,2,1),
	(0,1,3,1),
	(0,1,4,2);

INSERT INTO student_dtl
VALUES
	(0,1),
	(0,2),
	(0,3),
	(0,4);