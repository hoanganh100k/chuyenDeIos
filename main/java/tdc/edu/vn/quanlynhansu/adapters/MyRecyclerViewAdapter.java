package tdc.edu.vn.quanlynhansu.adapters;

import android.app.Activity;
import android.support.annotation.NonNull;
import android.support.v7.widget.CardView;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.ArrayList;

import tdc.edu.vn.quanlynhansu.QuanLyNhanSuActivity;
import tdc.edu.vn.quanlynhansu.R;
import tdc.edu.vn.quanlynhansu.data_models.Person;

public class MyRecyclerViewAdapter extends RecyclerView.Adapter<MyRecyclerViewAdapter.myViewHolder>{
    private Activity content;
    private int layoutID;
    private ArrayList<Person> persons;

    public MyRecyclerViewAdapter(Activity content, int layoutID, ArrayList<Person> persons) {
        this.content = content;
        this.layoutID = layoutID;
        this.persons = persons;
    }

    @NonNull
    @Override
    public myViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        LayoutInflater inflater =content.getLayoutInflater();
        CardView cardView =(CardView)inflater.inflate(viewType,viewGroup,false);

        return new myViewHolder(cardView,persons);
    }

    @Override
    public void onBindViewHolder(@NonNull myViewHolder viewHolder, int position) {
        //get data from person list
        Person person = persons.get(position);
        viewHolder.txtName.setText(person.getName());
        viewHolder.txtHobbies.setText(person.getHobbies());
        viewHolder.setPosition(position);
        viewHolder.chkSeledtion.setChecked(false);

        // Fill data from the person to the view
        if (person.getDegree().equalsIgnoreCase(QuanLyNhanSuActivity.CAODANG)) {
            viewHolder.image.setBackground(content.getResources().getDrawable(R.mipmap.college));
        }
        else if (person.getDegree().equalsIgnoreCase(QuanLyNhanSuActivity.DAIHOC)) {
            viewHolder.image.setBackground(content.getResources().getDrawable(R.mipmap.university));
        }
        else if (person.getDegree().equalsIgnoreCase(QuanLyNhanSuActivity.TRUNGCAP)) {
            viewHolder.image.setBackground(content.getResources().getDrawable(R.mipmap.midium));
        }
        else {
            viewHolder.image.setBackground(content.getResources().getDrawable(R.mipmap.none));
        }
    }

    @Override
    public int getItemViewType(int position) {
        return layoutID;
    }

    @Override
    public int getItemCount() {
        return persons.size();
    }
    //create ViewHolder
    public static class myViewHolder extends RecyclerView.ViewHolder{
        private ImageView image;
        private CheckBox chkSeledtion;
        private TextView txtName,txtHobbies;
        private int position=0;

        public void setPosition(int position) {
            this.position = position;
        }

        public myViewHolder(@NonNull View itemView,final ArrayList<Person> members) {
            super(itemView);
            image = itemView.findViewById(R.id.degreeImage);
            chkSeledtion= itemView.findViewById(R.id.chkChosen);
            txtName =itemView.findViewById(R.id.lblName);
            txtHobbies =itemView.findViewById(R.id.lblHoppies);

            chkSeledtion.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (((CheckBox)v).isChecked()) {
                        members.get(position).setCheck(true);
                    }
                    else {
                        members.get(position).setCheck(false);
                    }
                }
            });
        }
    }
}

