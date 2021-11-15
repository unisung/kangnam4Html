package dto;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ImageRepository {
 private List<KinnImage>  list = new ArrayList<>();
 private static ImageRepository instance = new ImageRepository();
 private ImageRepository() {
	list=Arrays.asList(new KinnImage("http://placekitten.com/190/328", "Lorem ipsum dolor sit amet", "http://placekitten.com/30/30", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut magna." ),
			new KinnImage("http://placekitten.com/190/290", "Lorem ipsum dolor sit amet", "http://placekitten.com/30/30", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut magna." ),
			new KinnImage("http://placekitten.com/190/200", "Lorem ipsum dolor sit amet", "http://placekitten.com/30/30", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut magna." ),
			new KinnImage("http://placekitten.com/190/215", "Lorem ipsum dolor sit amet", "http://placekitten.com/30/30", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut magna." ),
			new KinnImage("http://placekitten.com/190/256", "Lorem ipsum dolor sit amet", "http://placekitten.com/30/30", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut magna." ),
			new KinnImage("http://placekitten.com/190/182", "Lorem ipsum dolor sit amet", "http://placekitten.com/30/30", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut magna." ),
			new KinnImage("http://placekitten.com/190/176", "Lorem ipsum dolor sit amet", "http://placekitten.com/30/30", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut magna." ),
			new KinnImage("http://placekitten.com/190/316", "Lorem ipsum dolor sit amet", "http://placekitten.com/30/30", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut magna." ),
			new KinnImage("http://placekitten.com/190/186", "Lorem ipsum dolor sit amet", "http://placekitten.com/30/30", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut magna." ),
			new KinnImage("http://placekitten.com/190/249", "Lorem ipsum dolor sit amet", "http://placekitten.com/30/30", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut magna." ),
			new KinnImage("http://placekitten.com/190/324", "Lorem ipsum dolor sit amet", "http://placekitten.com/30/30", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut magna." ),
			new KinnImage("http://placekitten.com/190/305", "Lorem ipsum dolor sit amet", "http://placekitten.com/30/30", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut magna." ),
			new KinnImage("http://placekitten.com/190/180", "Lorem ipsum dolor sit amet", "http://placekitten.com/30/30", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut magna." ),
			new KinnImage("http://placekitten.com/190/273", "Lorem ipsum dolor sit amet", "http://placekitten.com/30/30", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut magna." ),
			new KinnImage("http://placekitten.com/190/188", "Lorem ipsum dolor sit amet", "http://placekitten.com/30/30", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut magna." ),
			new KinnImage("http://placekitten.com/190/230", "Lorem ipsum dolor sit amet", "http://placekitten.com/30/30", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut magna." ),
			new KinnImage("http://placekitten.com/190/192", "Lorem ipsum dolor sit amet", "http://placekitten.com/30/30", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut magna." ),
			new KinnImage("http://placekitten.com/190/317", "Lorem ipsum dolor sit amet", "http://placekitten.com/30/30", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut magna." ),
			new KinnImage("http://placekitten.com/190/326", "Lorem ipsum dolor sit amet", "http://placekitten.com/30/30", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut magna." ),
			new KinnImage("http://placekitten.com/190/258", "Lorem ipsum dolor sit amet", "http://placekitten.com/30/30", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sem mi, egestas a facilisis eget, egestas ut magna." )			
			);
 }
 
 public static ImageRepository getInstance() {
	return instance;
 }
 
 public List<KinnImage>  getImageList() {
	 return list;
 }

}
