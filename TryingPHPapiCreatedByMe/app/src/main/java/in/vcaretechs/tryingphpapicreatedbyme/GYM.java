package in.vcaretechs.tryingphpapicreatedbyme;

public class GYM
{

    private String id;
    private String image;

    public GYM(String id, String image) {
        this.id = id;
        this.image = image;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
