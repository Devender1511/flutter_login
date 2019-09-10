package in.vcaretechs.tryingphpapicreatedbyme;

import retrofit2.Call;
import retrofit2.http.POST;
import retrofit2.http.Query;

public interface Api {


    @POST("api.php")
    Call<Slider> slider(
            @Query("action") String action
            ,@Query("image") String image);


}
