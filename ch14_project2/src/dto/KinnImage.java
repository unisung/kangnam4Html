package dto;

public class KinnImage {
  String src;
  String paperLink;
  String paperText;
public KinnImage(String src, String paperLink, String paperText) {
	this.src = src;
	this.paperLink = paperLink;
	this.paperText = paperText;
}
public String getSrc() {
	return src;
}
public void setSrc(String src) {
	this.src = src;
}
public String getPaperLink() {
	return paperLink;
}
public void setPaperLink(String paperLink) {
	this.paperLink = paperLink;
}
public String getPaperText() {
	return paperText;
}
public void setPaperText(String paperText) {
	this.paperText = paperText;
}
    
}
