CREATE TABLE bill(
id int NOT NULL,
idUser int NOT NULL,
addressUser VARCHAR(500) NOT NULL,
billDate DATE NOT NULL,
numCard VARCHAR(20) NOT NULL,
typeCard VARCHAR(15) NOT NULL,
creditInstitution VARCHAR(15) NOT NULL,
products VARCHAR(5000) NOT NULL,
subtotal double NOT NULL,
total double NOT NULL,
primary key(id),
constraint fk_idUser foreign key(idUser)
references registeruser(id)
)