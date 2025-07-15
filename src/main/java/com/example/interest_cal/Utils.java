package com.example.interest_cal;

public class Utils {

    public static double calculateCompoundInterest(double pricipal, double interest, int years, int compundingPeriod){

        return Math.round(pricipal * Math.pow(1 +(interest/compundingPeriod),(compundingPeriod * years)));


    }
}
