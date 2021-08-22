# RPIA-Tool
Resilience Planning and Investment Analysis Tool for Electric Power Grid

## Instruction
INSTALLING THE VISUALIZATION TOOL 

Run the following steps in the order specified:

1. Install git (Follow instructions on https://www.atlassian.com/git/tutorials/install-git)

2. Install python 3.6.0 and add to the system path variables (https://docs.python-guide.org/starting/install3/osx/) 

3. Install VScode (https://vscode-docs.readthedocs.io/en/stable/editor/setup/)

4. Create a folder (example name - "project") on your system.

5. Open VScode and open the created folder in VScode and then run the following commands in the VScode terminal-
	a. cd "path to your project folder"
	b. git init 
	c. git clone https://github.com/SGDRIL-WSU/Sanjita.git
	d. python -m venv project_env            //this creates a virtual environment
	e. project_env\Scripts\activate.bat     // This activates your virtual environment (Always run this command whenever you open a new terminal for running this project)
	f. cd RadienceProject
	g. Install upgraded pip by executing 'python -m pip install --upgrade pip' in the terminal  
	h. pip install -r requirements.txt (install pip if you don't have it in the system)

6. Creating the database
	a. Install PostgreSQL database (https://www.postgresql.org/download/)
	    Note - pgAdmin application will also be automatically installed with this. You can open that to see the database schemas (GUI)
	b. Let the database password be 'password'.
	c. Create the database named 'radiencedb' and restore the 'dump.sql' file into the pgadmin (postgressql) to set the database. 
	    Follow the link for how to import - (https://www.youtube.com/watch?v=DA1Trq51JZs)  

7. The above steps will setup the whole project into your system. 

8. To run the project move the project folder in terminal (using cd "path to your project folder"), then execute the following command on the same terminal - 
	python ssebackend.py (this starts the server and it will wait for requests)

9. Last step is to open your web browser and type the following url 
	http://127.0.0.1:5000/ 
	
This should display you the visualization tool. 
	


