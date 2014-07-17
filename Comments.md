## Comments
### Enterprise Solution

To make a robust and scalable enterprise n-gram extraction system I would likely use Hadoop. This is a mature distributed framework that can scale horizontally with commodity hardware.

This would require a rewrite of the code into Java or one of the other supported Hadoop languages.

In order to distribute the processing load, incoming documents could be sent to a given server based upon the modulo of the hash of the document contents, or the size of the document in bytes.

All this assumes some kind of sensible ETL workflow that can manage incoming documents and puts completed document n-gram results in separate HDFS folders. 

This is a batch approach.  A more elegant streaming approach (or the batch approach) could be implemented using Apache Spark.

### Example output

	By Size:
	one 1
	two 1
	three 1
	four 1
	five 1
	one two 2
	four five 2
	three four 2
	two three 2
	one two three 3
	two three four 3
	three four five 3

	Alphabetically:
	five 1
	four 1
	four five 2
	one 1
	one two 2
	one two three 3
	three 1
	three four 2
	three four five 3
	two 1
	two three 2
	two three four 3


