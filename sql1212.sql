SELECT
	cm.id AS '순번',
	sbm.subject AS '과목명',
	sm.name AS '수강생명',
	em.name AS '담당자명',
	stm.name AS '상태'
	
FROM
	course_mst cm
	LEFT OUTER JOIN subject_mst sbm ON(sbm.id = cm.subject_id)
	LEFT OUTER JOIN student_mst sm ON(sm.id = cm.student_id)
	LEFT OUTER JOIN student_dtl sd ON(sd.id = sm.id)
	LEFT OUTER JOIN emp_mst em ON(em.id = sd.emp_id)
	LEFT OUTER JOIN status_mst stm ON(stm.id = cm.status_id);
	 
	
SELECT
	sm.id AS '순번',
	sbm.subject AS '과목명',
	sm.name AS '수강생명',
	em.name AS '담당자명',
	stm.name AS '상태'
	
FROM
	student_mst sm
	LEFT OUTER JOIN student_dtl sd ON(sd.id = sm.id)
	LEFT OUTER JOIN emp_mst em ON(em.id = sd.emp_id)
	LEFT OUTER JOIN course_mst cm ON(cm.student_id = sm.id)
	LEFT OUTER JOIN subject_mst sbm ON(sbm.id = cm.subject_id)
	LEFT OUTER JOIN status_mst stm ON(stm.id = cm.status_id)
ORDER BY
	sm.id,
	sbm.id;

SELECT
	sm.name AS '응시생',
	jm.score AS '자바점수',
	dm.score AS 'db점수',
	cm.score AS 'css점수'
	
FROM
	student_mst sm
	LEFT OUTER JOIN javascore_mst jm ON(jm.id = sm.id)
	LEFT OUTER JOIN dbscore_mst dm ON(dm.id = sm.id)
	LEFT OUTER JOIN cssscore_mst cm ON(cm.id = sm.id);
	
SELECT
	course_id,
	sum(score) AS `총합`,
	AVG(score) AS `평균`
FROM
	score_mst
GROUP BY
	course_id
HAVING
	`총합` > 100;