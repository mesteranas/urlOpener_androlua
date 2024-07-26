require "import"
import "android.widget.*"
import "android.view.*"
name="URL opener"
layout={
    LinearLayout;
    {
        EditText;
        hint="url";
        id="url";
    };
    {
        Button;
        text="open";
        onClick=function ()
            if url.getText().toString()~="" then
                local intent = Intent(Intent.ACTION_VIEW)
                intent.setData(Uri.parse(url.getText().toString()))
                dlg.startActivity(intent)
            end
        end
    }
}
dlg=activity
dlg.setTitle(name)
dlg.setContentView(loadlayout(layout))
