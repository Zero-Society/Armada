package com.armada.qrscanner;

import android.os.Bundle;
import android.os.StrictMode;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.widget.ArrayAdapter;
import android.widget.Spinner;

import com.google.zxing.Result;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import me.dm7.barcodescanner.zxing.ZXingScannerView;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class MainActivity extends AppCompatActivity implements ZXingScannerView.ResultHandler {
    private static final String TAG = "ssa";
    private static final String DOMAIN = "http://159.65.134.252:3000";

    private ZXingScannerView scannerView;
    private Spinner spinner;

    @Override
    public void onCreate(Bundle state) {
        super.onCreate(state);

        StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
        StrictMode.setThreadPolicy(policy);

        setContentView(R.layout.activity_main);
        scannerView = findViewById(R.id.scanner);
        spinner = findViewById(R.id.spinner);

        List<String> list = new ArrayList<String>();
        list.add("0");
        list.add("1");
        list.add("2");
        list.add("3");
        ArrayAdapter<String> adapter = new ArrayAdapter<String>(this,
                R.layout.spinner_text_layout, list);

        spinner.setAdapter(adapter);
    }

    @Override
    public void onResume() {
        super.onResume();
        scannerView.setResultHandler(this);
        scannerView.startCamera();
    }

    @Override
    public void onPause() {
        super.onPause();
        scannerView.stopCamera();
    }

    @Override
    public void handleResult(Result rawResult) {
        Log.v(TAG, rawResult.getText());
        Log.v(TAG, rawResult.getBarcodeFormat().toString());

        scannerView.resumeCameraPreview(this);

        String orderId = rawResult.getText();
        String checkpointId = spinner.getSelectedItem().toString();


        try {
            String strUrl = DOMAIN + "/order/" + orderId + "/checkpoint/" + checkpointId;
            URL url = new URL(strUrl);

            Log.v(TAG, strUrl);

            HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
            InputStream in = new BufferedInputStream(urlConnection.getInputStream());
            InputStreamReader read = new InputStreamReader(in);
            BufferedReader buff = new BufferedReader(read);
            StringBuilder dta = new StringBuilder();
            String chunks ;
            while((chunks = buff.readLine()) != null)
            {
                dta.append(chunks);
            }
            Log.v(TAG, chunks);
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        finally {

        }

        //startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse("http://www.stackoverflow.com")));
    }
}