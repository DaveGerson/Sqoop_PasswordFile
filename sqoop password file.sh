Methods of handling password security food sqoop.  
The reccomended methods in the sqoop cookbook is to either use 
	1) 
		-P which will prompt the user at run time for credentials.
		>sqoop import --connect jdbc:mysql://database.example.com/employees --username venkatesh -P
		
	2) A password file 	is defined using the below commands
		sqoop import --connect jdbc:mysql://database.example.com/employees \
		--username venkatesh --passwordFile ${user.home}/.password
		
		the creation of this file requires an echo -n command to be used since white space characters and end of line characters will be considered part of the password as well.
		
	