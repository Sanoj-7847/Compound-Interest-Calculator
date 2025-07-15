<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>interest calculator</title>
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-blue-500">

<div>


    <div class="bg-white mx-auto text-center w-1/2 py-5 shadow-xl rounded-3xl my-96 max-w-2xl ">
        <h2 class="text-4xl font-semibold border-b pb-2 mx-6">Compound Interest Calculator</h2>
        <h3 class="bg-red-300 text-red-900 font-semibold text-xl w-80 rounded-lg my-2 mx-auto ">${error}</h3>
        <form method="post" action="/">

            <div class="grid grid-cols-2 gap-4 my-4 mx-8">
                <label class="text-xl-flex items-center">Principal Amount :</label>
                <input class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 rounded-2xl focus:outline-none focus:ring-2" id="principle-amount" type="number" name="principalAmountss" value=${principalAmount}>

                <label class="text-xl-flex items-center">Interest Percentage :</label>
                <input class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 rounded-2xl focus:outline-none focus:ring-2" id="interest" type="number" min="1" max="100" name="interest" value=${interestPresentage}>

                <label class="text-xl-flex items-center">Interest Compounded per year :</label>
                <input class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 rounded-2xl focus:outline-none focus:ring-2" id="year" type="number" min="1" name="years" value=${years}>

                <label class="text-xl-flex items-center">Times per year :</label>
                <input class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 rounded-2xl focus:outline-none focus:ring-2" id="compundingperiod" type="number" min="1" max="12" name="compunding" value=${compundingPeriod}>
            </div>


            <button class="bg-blue-300 text-xl font-semibold px-4 py-1 rounded-lg hover:bg-blue-800  hover:text-white" type="submit">Calculate</button>


            <p class="text-3xl font-mono text-yellow-400 ">Result : ${result}</p>


        </form>
    </div>

</div>
</body>
</html>