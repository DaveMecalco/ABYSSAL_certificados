SELECT 
td_curso_usuario.curd_id, 
tm_curso.cur_id, 
tm_curso.cur_nom,
tm_curso.cur_descrip,
tm_curso.cur_fechi,
tm_curso.cur_fechf,
tm_usuario.usu_id,
tm_usuario.usu_nom,
tm_usuario.usu_app,
tm_usuario.usu_apm,
tm_instructor.inst_id,
tm_instructor.inst_nom,
tm_instructor.inst_app,
tm_instructor.inst_apm
FROM `td_curso_usuario` 
INNER JOIN tm_curso ON td_curso_usuario.curd_id = tm_curso.cur_id 
INNER JOIN tm_usuario ON td_curso_usuario.usu_id = tm_usuario.usu_id
INNER JOIN tm_instructor on tm_curso.inst_id = tm_instructor.inst_id
WHERE td_curso_usuario.usu_id = 3;