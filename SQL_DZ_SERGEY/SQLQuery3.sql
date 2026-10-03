USE TestIndex

CREATE TABLE users_a1(
	id int PRIMARY KEY IDENTITY(1, 1),
	PersonType varchar(10) CHECK (Len(PersonType) > 0),

)