package domain

class Greeting {
	
    long id;
    String content;

    new(long id, String content) {
        this.id = id;
        this.content = content;
    }

    def long getId() {
        return id;
    }

    def String getContent() {
        return content;
    }
}