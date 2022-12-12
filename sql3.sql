INSERT INTO
	user_mst
VALUES
	(0,'aaa','1234','김준이','aaa@gmail.com',NOW(),NOW()),
	(0,'ccc','1234','김준이','ccc@gmail.com',NOW(),NOW()),
	(0,'bbb','1234','김준이','bbb@gmail.com',NOW(),NOW());
	
DELETE
FROM
	user_mst 
WHERE 
	id = 1;


SELECT *

FROM
	order_mst om
	LEFT OUTER JOIN order_dtl od ON(od.order_id = om.id)
	LEFT OUTER JOIN product_mst pm ON(pm.id = od.prorder_id)
	LEFT OUTER JOIN user_mst um ON(om.user_id = um.id)

ORDER BY 
	od.id;
	

SELECT
	
	nm.title,
	nm.content,
	ni.img_name,
	wm.name
FROM
	study_notice_mst nm
	LEFT OUTER JOIN study_writer_mst wm ON(wm.id = nm.writer_id)
	LEFT OUTER JOIN study_notice_img ni ON(ni.notice_id = nm.id);