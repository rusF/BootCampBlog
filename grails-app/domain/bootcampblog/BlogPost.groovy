package bootcampblog

class BlogPost {
	String title
	Date dateCreated
	
	String textField
	
	static mapping = {
		textField type: 'text'
	 }

    static constraints = {
    }
}
