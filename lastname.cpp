#include </home/pi/wk6/lastname_array.h>
#include </home/pi/wk6/lastname.h>

std::string lastname::generate_lastname()
{
	srand(time(NULL));
        return lastnames.at(rand() % lastnames.size());
}
