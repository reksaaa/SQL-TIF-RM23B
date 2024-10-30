SELECT * FROM movie m 

SELECT * FROM teater t 

SELECT * FROM `users` u 


CREATE VIEW vReportMovie AS 
SELECT u.firstName , m.title , t.namaTeater 
FROM users u JOIN movie m 
ON u.idMovie = m.idMovie 
JOIN teater t 
ON u.idTeater = t.idTeater 

CREATE VIEW vreportmovie_2 as
SELECT * FROM vreportmovie v 

SELECT * FROM vreportmovie_2 v 

INSERT 


SHOW FULL TABLES IN sbd_weekend_new WHERE TABLE_TYPE LIKE 'VIEW'
/*Insert Trigger*/
CREATE TRIGGER log_user_insert AFTER INSERT ON users
FOR EACH ROW
BEGIN
  INSERT INTO log_user (new_firstName, new_lastName,new_idMovie,new_idTeater, `action`, actionAt)
  VALUES (NEW.firstName, NEW.lastName,NEW.idMovie,NEW.idTeater, 'Create Data', NOW());
END

INSERT INTO users (firstName, lastName, idMovie, idTeater)
VALUES
('Steph', 'Curry', 'D02', 2)


SELECT * FROM users u 


/*UPDATE TRIGGER*/
CREATE TRIGGER log_user_update AFTER UPDATE ON users
FOR EACH ROW
BEGIN
  INSERT INTO log_user (new_firstName, new_lastName,new_idMovie,new_idTeater, `action`, actionAt)
  VALUES (NEW.firstName, NEW.lastName,NEW.idMovie,NEW.idTeater, 'Update Data', NOW());
END


UPDATE users SET firstName = 'Stephen' , lastName = 'James'
WHERE idUser = 20

SELECT * FROM log_user lu 

/*DELETE TRIGGER*/
CREATE TRIGGER log_user_delete AFTER DELETE ON users
FOR EACH ROW
BEGIN
  INSERT INTO log_user (new_firstName, new_lastName,new_idMovie,new_idTeater, `action`, actionAt)
  VALUES (OLD.firstName, OLD.lastName,OLD.idMovie,OLD.idTeater, 'Delete Data', NOW());
END

DELETE FROM users WHERE users.idUser = 20

SELECT * FROM users u 

SELECT * FROM log_user lu 

/*SP CREATE USER*/

create procedure InsertUser(
	in p_firstname VARCHAR(100),
	in p_lastname VARCHAR(100),
	in p_idmovie CHAR(3),
	IN p_idteater INT
)
begin 
	insert into users (firstName, lastName, idMovie, idTeater)
	values(p_firstname, p_lastname, p_idmovie, p_idteater);
end;


CALL InsertUser ("Lebron","James", "A03", 2)

SELECT * FROM users u 

SELECT * FROM log_user lu 






