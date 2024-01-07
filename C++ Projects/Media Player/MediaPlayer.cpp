#include <iostream>
#include <string>

using namespace std;
struct profile
{
	string username;
	string password;
};

struct song
{
	string name;
	float time;
};

void registration(string*, string*);
int login(string*, string*);
void fold(song** folder_arabic, string fold[][10], int);
void song_options(song** folder_arabic, string fold[][10], int, int, int);
void adding(song**, int);
void play_sound(song**, int, int, int);
void display(song** folder, int);
int search(song** array, string, int);
int string_counter(string*);
void deleting(song**, int);
void song_skip(song** folder, int, int, string, float, int);



int main()
{
	int choice, app = -1, is_correct = -1, index;
	string user[100], pass[100], folder[100][10];
	string check1;
	song** folder_arabic = new  song *[10];
	for (int i = 0; i < 10; i++)
	{
		folder_arabic[i] = new song[200];
	}
	for (int i = 0; i < 10; i++)
	{

		folder_arabic[i][0].name = "song1";
		folder_arabic[i][0].time = 4.15;
		folder_arabic[i][1].name = "song2";
		folder_arabic[i][1].time = 2.44;

	}



	cout << "Welcome\n";
	while (app != 0)
	{
		cout << "-----------------------------------\n";
		cout << "Enter the choice you want to make: \n";
		cout << "1. Register a new account\n";
		cout << "2. Login to an existing account\n";
		cout << "3. Exit application\n";
		cout << "-----------------------------------\n";
		cin >> choice;
		switch (choice)
		{
		case 1:
		{
			registration(user, pass);
			break;
		}
		case 2:
		{
			is_correct = login(user, pass);
			index = is_correct;
			if (is_correct != -1)
			{
				fold(folder_arabic, folder, index);
			}
			else
			{
				break;
			}
			break;
		}
		case 3:
		{
			app = 0;
			break;
		}
		default:
		{
			cout << "Invalid choice\n";
			break;
		}
		}
	}
	cout << "Thank you for using our application\n";
	for (int i = 0; i < 10; i++)
	{
		delete[]folder_arabic[i];
	}
	delete[] folder_arabic;
	return 0;
}


void registration(string* user, string* pass)
{
	static int count = 0;
	profile pro;
	cout << "Enter the username\n";
	cin >> pro.username;
	cout << "Enter the password\n";
	cin >> pro.password;
	user[count] = pro.username;
	pass[count] = pro.password;
	count++;
}



int login(string* user, string* pass)//function for logging in
{
	string check1, check2;
	int ind;
	int p = 0, c = 0;
	cout << "Enter the username\n";
	cin >> check1;

	cout << "Enter the password\n";
	cin >> check2;
	for (int i = 0; i < 100; i++)
	{
		if (check1 == user[i])
		{
			p = 1;
			ind = i;
		}
	}
	for (int j = 0; j < 100; j++)
	{
		if (check2 == pass[j])
			c = 1;
	}
	if (p != 0 && c != 0)
	{
		cout << "Login successful, welcome " << check1 << endl;
		return ind;
	}
	else
	{
		cout << "Invalid username or password\n";
		return -1;
	}

}








void fold(song** folder_arabic, string folder[][10], int index)//the folder choice
{
	int fold_choice;
	static int vol = 50;
	cout << "-----------------------------------\n";
	cout << "Choose what do you want to do: \n";
	cout << "1. Add folder\n";
	cout << "2. View current folders\n";
	cout << "3. Return to main menu\n";
	cout << "-----------------------------------\n";
	cin >> fold_choice;
	switch (fold_choice)
	{
	case 1:
	{
		int count = 0;
		for (int i = 0; i < 10; i++)
			if (folder[index][i] != "")
				count++;
		cout << "Enter the name of your folder\n";
		cin >> folder[index][count];
		fold(folder_arabic, folder, index);
		break;
	}
	case 2:
	{
		int folder_choice;
		int count = 0;
		for (int i = 0; i < 10; i++)
			if (folder[index][i] != "")
				count++;

		for (int i = 0; i < count; i++)
		{
			cout << i + 1 << ". " << folder[index][i] << endl;
		}
		if (count == 0)
			cout << "No folders available\n";
		else
			cout << "Now select the folder you want\n";
		cout << "If you want to return to menu, press 0\n";
		cin >> folder_choice;
		if (folder_choice != 0)
		{
			for (int i = 0; i < count; i++)
			{
				if (folder_choice == i + 1 && (folder_choice <= count))
				{
					cout << "Here's your folder: " << folder[index][i] << endl;
					song_options(folder_arabic, folder, index, folder_choice, vol);
				}
				

			}
			fold(folder_arabic, folder, index);

		}

		else if (folder_choice == 0)
		{
			fold(folder_arabic, folder, index);
		}

		break;
	}
	case 3:
	{
		break;
	}
	default:
	{
		cout << "Invalid choice\n";
		fold(folder_arabic, folder, index);
		break;
	}
	break;

	}
}





void song_options(song** folder_arabic, string folder[][10], int index, int folder_choice, int vol)
{
	int process, songnum;
	string songname;
	cout << "==========================================\n" << "1.display the songs and choose one to play\n2.search for a song to play\n3.add a song\n4.delete a song\n";
	cout << "select the number of process you want \n" << "==========================================\n";
	cin >> process;
	switch (process)
	{
	case 1:
	{
		display(folder_arabic, folder_choice);
		cout << "=========================================================\n";
		cout << "enter the number of the song that you want to play it\n";
		cout << "=========================================================\n";
		cin >> songnum;
		play_sound(folder_arabic, songnum, folder_choice, vol);
		break;
	}
	case 2:
	{
		cout << "================================================================\n";
		cout << "enter the of the name of the song that you want to search it\n";
		cout << "================================================================\n";
		cin >> songname;
		int num = search(folder_arabic, songname, folder_choice);
		if (num == -1)
		{
			cout << "The song you searched for was not found\n";
		}
		else
		{
			cout << "the number of the song that you searched is " << num << endl;
			play_sound(folder_arabic, num, folder_choice, vol);
		}

		break;
	}
	case 3:
	{
		display(folder_arabic, folder_choice);
		adding(folder_arabic, folder_choice);
		display(folder_arabic, folder_choice);
		break;
	}
	case 4:
	{
		display(folder_arabic, folder_choice);
		deleting(folder_arabic, folder_choice);
		display(folder_arabic, folder_choice);
		break;

	}
	default:
	{
		cout << "Invalid choice\n";
		break;
	}
	break;

	}
	int choice;
	cout << "==========================================\n";
	cout << "Now choose what do you want: \n";
	cout << "1. Return to the song's menu\n";
	cout << "2. Return to the folder's menu\n";
	cout << "==========================================\n";
	cin >> choice;
	switch (choice)
	{
	case 1:
	{
		song_options(folder_arabic, folder, index, folder_choice, vol);
		break;
	}
	case 2:
	{
		break;
	}
	default:
	{
		cout << "Invalid choice\n";
		break;
	}
	break;
	}

}
















void display(song** folder, int folder_choice)
{
	cout << "==========================================\n";
	cout << "the soudtracks are:\n";
	int count = 0;
	for (int i = 0; i < 200; i++)
		if (folder[folder_choice][i].name != "")
			count++;

	for (int i = 0; i < count; i++)
	{
		cout << i + 1 << ". " << folder[folder_choice][i].name << "        " << "its time is " << folder[folder_choice][i].time << endl;
	}
	cout << "==========================================\n";

}





void song_skip(song** folder, int index, int folder_choice, string name, float time1, int vol)
{
	int choice, quan;
	cout << "==========================================\n";
	cout << "playing :  " << name << "  " << "its duration is " << time1 << endl;
	cout << "==========================================\n";
	cout << "select what do you want to do\n1.stop the sound\n2.play the next song\n3.increase the volume\n4.decrease the volume\n";
	cout << "==========================================\n";

	for (int i = 3; i > 0; i++)
	{
		cin >> choice;
		if (choice == 1)
			break;
		else if (choice == 2)
			break;
		else if (choice == 3)
			break;
		else if (choice == 4)
			break;
		cout << "The number you entered is not in the list, choose again\n";
	}

	switch (choice)
	{
	case 1:
	{
		cout << "song is stopped\n";
		break;
	}
	case 2:
	{
		index++;
		if (folder[folder_choice][index].name =="")
			cout << "There are no songs left\n";
		else
		{
			name = folder[folder_choice][index].name;
			time1 = folder[folder_choice][index].time;
			song_skip(folder, index, folder_choice, name, time1, vol);
		}
		break;
	}
	case 3:
	{
		vol = 50;
		cout << "How much do you want to increase the volume?\n";
		cin >> quan;
		vol = vol + quan;
		if (vol > 100)
		{
			vol = 100;
		}
		cout << "the volume is " << vol << endl;
		break;
	}
	case 4:
	{
		vol = 50;
		cout << "How much do you want to decrease the volume?\n";
		cin >> quan;
		vol = vol - quan;
		if (vol < 0)
		{
			vol = 0;
		}
		cout << "the volume is " << vol << endl;
		break;

	}
	default:
	{
		cout << "Invalid choice\n";
		break;
	}

	}
}
void play_sound(song** folder, int index, int folder_choice, int vol)
{
	string name = folder[folder_choice][index - 1].name;
	float time1 = folder[folder_choice][index - 1].time;
	int choice, quan;
	cout << "==========================================\n";
	cout << "playing :  " << name << "  " << "its duration is " << time1 << endl;
	cout << "==========================================\n";
	cout << "select what do you want to do\n1.stop the sound\n2.play the next song\n3.increase the volume\n4.decrease the volume\n";
	cout << "==========================================\n";

	for (int i = 3; i > 0; i++)
	{
		cin >> choice;
		if (choice == 1)
			break;
		else if (choice == 2)
			break;
		else if (choice == 3)
			break;
		else if (choice == 4)
			break;
		cout << "The number you entered is not in the list, choose again\n";
	}

	switch (choice)
	{
	case 1:
	{
		cout << "song is stopped\n";
		break;
	}
	case 2:
	{
		if (folder[folder_choice][index].name == "")
			cout << "There are no songs left\n";
		else
		{
			name = folder[folder_choice][index].name;
			time1 = folder[folder_choice][index].time;
			song_skip(folder, index, folder_choice, name, time1, vol);
		}
		break;
	}
	case 3:
	{

		cout << "The current volume = " << vol << endl;
		cout << "How much do you want to increase the volume?\n";
		cin >> quan;
		vol = vol + quan;
		if (vol > 100)
		{
			vol = 100;
		}
		cout << "the volume is " << vol << endl;
		break;
	}
	case 4:
	{
		cout << "The current volume = " << vol << endl;
		cout << "How much do you want to decrease the volume?\n";
		cin >> quan;
		vol = vol - quan;
		if (vol < 0)
		{
			vol = 0;
		}
		cout << "the volume is " << vol << endl;
		break;

	}
	default:
	{
		cout << "Invalid choice\n";
		break;
	}

	}
}
int search(song** array, string track, int folder_choice)
{
	for (int i = 0; i < 50; i++)

		if (array[folder_choice][i].name == track)
			return i + 1;

	return -1;

}
void deleting(song** array, int folder_choice)
{
	int tot = 200, i, j, found = 0;



	cout << "enter song number to be deleted\n";
	int elem;
	cin >> elem;
	for (i = 0; i < tot; i++)
	{
		if (i == elem - 1)
		{
			for (j = i; j < (tot - 1); j++)

				array[folder_choice][j] = array[folder_choice][j + 1];
			found++;


		}
	}
	if (found == 0)
		cout << "element is not found in the folder";

}
void adding(song** array, int folder_choice)
{
	string songname2;
	int n = 0;
	float time;
	cout << "enter the name of the song you want to add\n";
	cin >> songname2;
	cout << "enter its time ";
	cin >> time;

	for (int i = 0; i < 200; i++)
	{
		if (array[folder_choice][i].name != "")
			n++;
	}
	array[folder_choice][n].name = songname2;
	array[folder_choice][n].time = time;


}
