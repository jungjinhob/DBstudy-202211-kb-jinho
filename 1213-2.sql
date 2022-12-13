INSERT INTO
	board_mst
VALUES
	(0,'제목1','게시글내용1',0,1),
	(0,'제목2','게시글내용2',0,1),
	(0,'제목3','게시글내용3',0,1),
	(0,'제목1','게시글내용1',0,2),
	(0,'제목2','게시글내용2',0,2),
	(0,'제목3','게시글내용3',0,2),
	(0,'제목4','게시글내용4',0,1),
	(0,'제목5','게시글내용5',0,1),
	(0,'제목6','게시글내용6',0,1),
	(0,'제목4','게시글내용4',0,2),
	(0,'제목5','게시글내용5',0,2),
	(0,'제목6','게시글내용6',0,2);
	
SELECT
	*,
	(SELECT COUNT(1) 
		FROM 
			board_mst bm2
		WHERE
			bm2.writer_id = bm.writer_id ) AS '권수'
FROM
	board_mst bm;


SELECT
	bm.id,
	bm.title,
	bm.content,
	bm.read_count,
	bm.writer_id,
	wc.writer_count
FROM
	board_mst bm
	LEFT OUTER JOIN (SELECT 
	writer_id, 
	COUNT(1) AS writer_count
	FROM 
		board_mst 
		GROUP by
			writer_id) wc ON(wc.writer_id = bm.writer_id);
SHOW PROFIboard_mstLES;
SET profiling = 1;
