use fanradio;

SELECT h.idprograma,l.locutor,h.dia,h.horainicio,
h.horafin
FROM horario h
JOIN locutor l
ON h.idlocutor = l.idlocutor;


SELECT p.titulo,hk.locutor,hk.dia,hk.horainicio,hk.horafin
FROM programa p
INNER JOIN horario_locutor hk
ON p.idprograma = hk.idprograma;

select *  from horario_entendible;

