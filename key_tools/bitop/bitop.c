#include <stdio.h>

int get_1_bit(char data, int pos)
{
	if (pos < 0 || pos > 7)
		return -1;
	return data >> pos & 1;
}

int set_1_bit(char *data, int pos, int value)
{
	char tmp;
	if (pos < 0 || pos > 7) 
		return -1;
	if (value != 0 && value != 1)
		return -1;
	
	if (value == 1)
		tmp = 1 << pos | *data;
	if (value == 0) {
		tmp = (255 - (1 << pos)) & *data;
	}
	*data = tmp;

	return 0;
}
