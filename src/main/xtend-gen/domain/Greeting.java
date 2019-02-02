package domain;

@SuppressWarnings("all")
public class Greeting {
  private long id;
  
  private String content;
  
  public Greeting(final long id, final String content) {
    this.id = id;
    this.content = content;
  }
  
  public long getId() {
    return this.id;
  }
  
  public String getContent() {
    return this.content;
  }
}
