package com.pedro.fernandes.calculator;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;


//MainActivity is the Launcher class that will run when the app is opened.
//It extends AppCompatActivity which is an Activity in the android support library.
//It implements OnClickListener to handle the views clicks.
public class MainActivity extends AppCompatActivity implements View.OnClickListener {

    //Declaring the views defined in the activity_main.xml file to be used in the activity.
    private TextView txtOperations, txtResult, txtResultTemporary;

    //Declaring the lists to do the calculator math.
    //listValues stores the double values. e.g. [1.5, 20, 4.8]
    //listOperators stores the operators to do the math of the values. e.g. [+, -, *]
    private List<Double> listValues;
    private List<String> listOperators;

    //OnCreate method is the first method in the activity lifecycle called when the activity is created.
    //In this method the views are bind from the xml through the R class id's to local variables,
    //and the lists are instantiated.
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //Declare which xml file will be used by the activity.
        setContentView(R.layout.activity_main);
        bindViews();

        this.listValues = new ArrayList<>();
        this.listOperators = new ArrayList<>();
    }

    //Handle all the buttons click listener.
    //Everytime an operator button is clicked then is added to the lists the current value and the operator clicked.
    //If a number is clicked then it is added its value to the TextView to be used later (default case).
    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btnSum:
                if (addValue())
                    addOperator("+");
                break;
            case R.id.btnSub:
                if (addValue())
                    addOperator("-");
                break;
            case R.id.btnSplit:
                if (addValue())
                    addOperator("/");
                break;
            case R.id.btnTimes:
                if (addValue())
                    addOperator("*");
                break;
            case R.id.btnDot:
                addDot();
                break;
            case R.id.btnClear:
                clear(false);
                break;
            case R.id.btnResult:
                showResult();
                break;
            case R.id.btnDel:
                backspace();
                break;
            default:
                this.txtResultTemporary.setText("");
                showTxtResult();
                String btnText = ((Button) view).getText().toString();
                this.txtResult.setText(String.format("%s%s", getText(this.txtResult), btnText));
                break;
        }
    }

    //Delete the last character of the number TextView using String.substring method then setting
    //the new value of the number TextView
    private void backspace() {
        String currentResult = getText(this.txtResult);

        if (!currentResult.isEmpty()) {
            String newResult = currentResult.substring(0, currentResult.length() - 1);
            this.txtResult.setText(newResult);
        }
    }

    //First add the current value to the list of values.
    //Set a new double variable to be the final result with the first value of the list.
    //Loop through the operators list doing the math of the finalValue with the next value of the list.
    //Then set the final result to the TextView and release the memory.
    private void showResult() {
        addValue();
        if (this.listValues.size() > 0) {
            double finalValue = this.listValues.get(0);

            for (int i = 0; i < this.listOperators.size(); i++) {
                String operator = this.listOperators.get(i);
                if (this.listValues.size() > i + 1) {
                    double next = this.listValues.get(i + 1);

                    finalValue = doMath(operator, finalValue, next);
                }
            }

            this.txtResultTemporary.setText(String.format("%s", finalValue));
            showTxtResultTemp();
            clear(true);
        }
    }

    //Switch through the operator to verify which formula to use
    //then apply it on the two double values received as parameters and return final value.
    //If a not known parameter is received throw runtime exception saying that this operator is not valid.
    private double doMath(String operator, double first, double second) {
        switch (operator) {
            case "+":
                return first + second;
            case "-":
                return first - second;
            case "/":
                return first / second;
            case "*":
                return first * second;
            default:
                throw new RuntimeException("Operator not valid");
        }
    }

    //Add value to the values array. The value comes from the TextView (txtResult) and then converted to double.
    //Add the value to the TextView showing the whole math.
    private boolean addValue() {
        String textLastNumber = getText(this.txtResult);
        if (!textLastNumber.isEmpty()) {
            double lastNumber = Double.valueOf(getText(this.txtResult));
            this.listValues.add(lastNumber);

            this.txtOperations.setText(String.format("%s%s", this.txtOperations.getText().toString(), lastNumber));
            return true;
        }

        return false;
    }

    //Add operator to the operator list, add operator to the TextView showing the whole math,
    //then clear the last value typed.
    private void addOperator(String operator) {
        this.listOperators.add(operator);

        this.txtOperations.setText(this.txtOperations.getText().toString() + " " + operator + " ");

        this.txtResult.setText("");
    }

    //Clear TextViews texts and call lists.clear to release the memory.
    //Accepting parameter to avoid clearing final result.
    private void clear(boolean keepResult) {
        this.txtOperations.setText("");
        this.listValues.clear();
        this.listOperators.clear();
        this.txtResult.setText("");

        if (!keepResult)
            this.txtResultTemporary.setText("");
    }

    //Add a dot to the TextView of the current operation if there was no dot inserted.
    private void addDot() {
        String actualValue = getText(this.txtResult);
        if (!actualValue.contains(".")) {
            if (actualValue.isEmpty()) {
                this.txtResult.setText("0");
            }
            this.txtResult.setText(String.format("%s.", getText(this.txtResult)));
            showTxtResult();
        }
    }

    //Show the textview which shows the value that the user is typing and hide the final result textview.
    private void showTxtResult() {
        this.txtResult.setVisibility(View.VISIBLE);
        this.txtResultTemporary.setVisibility(View.GONE);
    }

    //Show the final result textview and hide the textview which shows the user operation.
    private void showTxtResultTemp() {
        this.txtResult.setVisibility(View.GONE);
        this.txtResultTemporary.setVisibility(View.VISIBLE);
    }

    //return the String value of a TextView.
    private String getText(TextView textView) {
        return textView.getText().toString();
    }

    //Bind the xml views to the variables through the findViewById method,
    //Set the click listeners to all of the buttons giving the activity as handler.
    private void bindViews() {
        this.txtOperations = (TextView) findViewById(R.id.txtOperations);
        this.txtResult = (TextView) findViewById(R.id.txtResult);
        this.txtResultTemporary = (TextView) findViewById(R.id.txtResultTemporary);

        Button btnSum = (Button) findViewById(R.id.btnSum);
        Button btnSub = (Button) findViewById(R.id.btnSub);
        Button btnSplit = (Button) findViewById(R.id.btnSplit);
        Button btnTimes = (Button) findViewById(R.id.btnTimes);

        Button btn0 = (Button) findViewById(R.id.btn0);
        Button btn1 = (Button) findViewById(R.id.btn1);
        Button btn2 = (Button) findViewById(R.id.btn2);
        Button btn3 = (Button) findViewById(R.id.btn3);
        Button btn4 = (Button) findViewById(R.id.btn4);
        Button btn5 = (Button) findViewById(R.id.btn5);
        Button btn6 = (Button) findViewById(R.id.btn6);
        Button btn7 = (Button) findViewById(R.id.btn7);
        Button btn8 = (Button) findViewById(R.id.btn8);
        Button btn9 = (Button) findViewById(R.id.btn9);

        Button btnDot = (Button) findViewById(R.id.btnDot);
        Button btnClear = (Button) findViewById(R.id.btnClear);
        Button btnResult = (Button) findViewById(R.id.btnResult);
        Button btnDel = (Button) findViewById(R.id.btnDel);

        btnSum.setOnClickListener(this);
        btnSub.setOnClickListener(this);
        btnSplit.setOnClickListener(this);
        btnTimes.setOnClickListener(this);

        btn0.setOnClickListener(this);
        btn1.setOnClickListener(this);
        btn2.setOnClickListener(this);
        btn3.setOnClickListener(this);
        btn4.setOnClickListener(this);
        btn5.setOnClickListener(this);
        btn6.setOnClickListener(this);
        btn7.setOnClickListener(this);
        btn8.setOnClickListener(this);
        btn9.setOnClickListener(this);

        btnDot.setOnClickListener(this);
        btnClear.setOnClickListener(this);
        btnResult.setOnClickListener(this);
        btnDel.setOnClickListener(this);
    }
}
