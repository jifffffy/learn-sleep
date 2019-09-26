=begin comment
#include <stdio.h>
#include <string.h>
#include <time.h>
struct record
{
char name[16];
int age;
long created;
};
int main(int argc, char * argv[])
{
FILE * file = fopen("records.bin", "wb");
if (file != NULL)
{
struct record data;
/* populate our data structure with some bogus data */
strcpy(data.name, "Raphael");
data.age = 26;
data.created = time(NULL);
fwrite(&data, sizeof data, 1, file);
/* populate our data structure with more bogus data */
strcpy(data.name, "Frances");
data.age = 25;
data.created = time(NULL);
fwrite(&data, sizeof(struct record), 1, file);
fclose(file);
}
}
=end comment

$handle = openf("records.bin");
while @data (bread($handle, 'Z16 i I'))
{
($name, $age, $created) = @data;
$created = formatDate($created * 1000, 'EEE, d MMM yyyy HH:mm:ss Z');
println("Name: $name $+ \nAge: $age $+ \nCreated: $created");
}
closef($handle);