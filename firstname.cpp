#include </home/pi/wk6/firstname_array.h>
#include </home/pi/wk6/firstname.h>
std::string firstname::generate_firstname(){
	srand(time(NULL));
	return firstnames.at(rand() % firstnames.size());
}
