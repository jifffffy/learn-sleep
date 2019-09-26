# recursively find all files
@files = `find .`;
# print out the number of files we found
println("There are " . size(@files) . " files here. :)");

# There are 2948 files here. :)