package in.vcaretechs.tryingphpapicreatedbyme;

import android.content.Context;
import android.text.Layout;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;

import java.util.ArrayList;

public class SliderAdpater extends RecyclerView.Adapter<SliderAdpater.ViewHolder>
{

    private ArrayList<GYM> gyms;
    Context context;

    public SliderAdpater(ArrayList<GYM> gyms, Context context) {
        this.gyms = gyms;
        this.context = context;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view= LayoutInflater.from(parent.getContext()).inflate(R.layout.custom_slider,parent,false);
        return new ViewHolder(view);

    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {

        holder.textView.setText(gyms.get(position).getId());


        Toast.makeText(context, "", Toast.LENGTH_SHORT).show();
     Glide.with(context).load(gyms.get(position).getImage()).error(R.drawable.ic_launcher_background).into(holder.imageView);

    }

    @Override
    public int getItemCount() {
        return gyms.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {


        private ImageView imageView;
        TextView textView;
        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            textView=itemView.findViewById(R.id.text);
            imageView=itemView.findViewById(R.id.images);
        }
    }
}
