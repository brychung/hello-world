# Not sure if the rounding is going to be perfect w.r.t. float imprecision. Must investigate

while True:   #I found some sample error handling code on the Internet and
    try:      #Adapted it to my needs
        gallons = float(input("How many gallons of gas are we talking about? "))
        break
    except ValueError:
        print("Please enter a numerical value")

if gallons <= 0:
    print("Please try again with a positive number")
else:
    liters = gallons * 3.7854   #initializing values based on assignment requirements
    bbloil = gallons / 19.5
    usdcost = gallons * 3.65

    if gallons == 1:            #we want the output to make grammatical sense
        unitword = " gallon"
    else:
        unitword = " gallons"

    print(gallons, unitword, " of gas is equal to ", "{:.3f}".format(liters), \
        " liters, takes ", "{:.3f}".format(bbloil), " of a barrel of oil to" \
        " produce, and costs $", "{:.2f}".format(usdcost), ".", sep = "")
      #I chose decimal formats that provided reasonable precision without becoming illegible
