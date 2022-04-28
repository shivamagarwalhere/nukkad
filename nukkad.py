import pandas as pd #basic connections
import mysql.connector as sqltor
import winsound

def beep():
    frequency = 600
    duration = 200
    winsound.Beep(frequency, duration)

def adm_menu(): #administrator menu
    print("The following tasks can be done: \n 1. Inject CSV files into MySQL")
    adq=int(input("Enter choice:"))
    if adq!=1:
        print("Invalid Entry")
    else:
        filename=input("Enter CSV file Name:")
        import pymysql
        from sqlalchemy import create_engine
        engine=create_engine('mysql+pymysql://root:admin@localhost/nukkad')
        conn=engine.connect()
        tdf=pd.read_csv(filename)
        tdf.to_sql(filename,conn,index=False,if_exists='replace')

def cust_menu(): #customer menu
    print("Namaste,",custdet.Customer_Name[0])
    print("What would you like to do today?")
    print("1. Shop for Products.")
    print("2. Search for a Shop.")
    print("3. View your profile.")
    print("4. Update your Details.")
    print("5. Sign out")

def analysis_menu(): #analysis for sellers menu
    print("This feature helps you grow your business, you can analyze the following:")
    print("1. Show your sales")
    print("2. Show your earnings")
    print("3. Number of customers served")
    print("4. Your product vs prices graph.")
    print("5. Your product vs quantities graph.")
    print("6. Your business scope.")
 
def seller_menu(): # seller menu
    print("Hello "+str(seldet.Seller_Name[0])+" What would you like to do today?")
    print("1. See your profile")
    print("2. Update your details")
    print("3. See your products")
    print("4. Update products details")
    print("5. Data Analysis")
    print("6. Sign out")







#--------------------------------------------------------------------------------------                    
mycon=sqltor.connect(host="localhost",user="root",password="admin",database="nukkad")
cursor=mycon.cursor()

if mycon.is_connected()==False:
    print("Connection Error\n\n")#connection error
    beep()
else:
    while True:
        print("\t Welcome to Nukkad")#welcome message
        print("\t your everyday nukkad ki dukan!")
        print("**"*20)
        print("--"*20)
        print("**"*20)
        print("Are you a \n 1. Customer? \n 2. Seller? \n 3. Administrator? \n 4. Exit")
        log1=int(input("Please enter appropriate number."))
        print("**"*20)
        if log1 not in [1,2,3,4]:
            print("Inappropriate Entry\n\n")
            beep()
            continue
        elif log1==3: #for administrative rights
            adpswd=input("For administrative rights, enter root password:")
            if adpswd!="admin":
                print("Invalid Credentials")
                beep()
            else:
                adm_menu()
                
        #for customer interface
        elif log1==1: # STEP-1: Customer Login
            print("Enter your login Credentials")
            cusn=input("Enter User ID:")
            cpswd=input("Enter Password:")
            print("--"*20)
            print("--"*20)
            mc_usm=pd.read_sql("Select Customer_Mail from customers where Customer_Mail like '%s';" %(cusn,), mycon)
            custdet=pd.read_sql("Select * from customers where Customer_Mail like '%s';" %(cusn,), mycon) #extracting customer details
            mc_pswd=pd.read_sql("Select Customer_Pass from customers where Customer_Mail like '%s';" %(cusn,), mycon)
            if mc_usm.Customer_Mail[0]!=cusn or mc_pswd.Customer_Pass[0]!=cpswd:
                print("Invalid Credentials")
                beep()
            else:
                #VALID CUSTOMER
                while True:
                    cust_menu()#STEP-2: Menu
                    cme=int(input("Enter your choice:"))
                    if cme not in [1,2,3,4,5]:
                        print("Inappropriate Entry")
                        beep()
                    if cme==1: #STEP 2.1: Shop for Products
                        print("**"*20)
                        pros=input("Search for:")
                        prosq=pd.read_sql("Select * from products where Product_Name like '%s';" %(pros,), mycon) #extracting product details
                        count=len(prosq.index)
                        i=0
                        for i in range(count):
                            selid=prosq.SellerID[i]
                            selpr=pd.read_sql("Select * from sellers where SellerID like '%s';"  %(selid,), mycon)
                            print("**"*20)
                            print("--"*20)
                            print("**"*20)
                            print("Name:",prosq.Product_Name[i])
                            print("Category:",prosq.Product_Categrory[i])
                            print("Price:",prosq.Product_Rate[i])
                            print("Sold by:", selpr.Seller_Name[i])
                            print("Contact them at: \n Mail:", selpr.Seller_Mail[i], "\n Phone:",selpr.Seller_Num[i], "\n Address:",selpr.Seller_Address[i])
                            print("Availability:",prosq.Product_Qty[i])
                            print("Product Ratings:",prosq.Product_Ratings[i])
                            buy=input("Enter 'yes' to buy this product")
                            if buy.lower()!="yes":
                                print(prosq.Product_Name[i], "will be missing you :(")
                            else:
                                from datetime import date
                                salesid=str(custdet.CustomerID[0])+str(prosq.ProductID[i])
                                salesdate=date.today()
                                salesqty=int(input("Enter the quantity:"))
                                salescost=salesqty*prosq.Product_Rate[i]
                                newavb=prosq.Product_Qty[i]-salesqty
                                selid=selpr.SellerID[i]
                                sale="Insert into sales values({},{},{},'{}',{},{},'{}',{},{});".format(salesid,custdet.CustomerID[0],prosq.ProductID[i],salesdate,salesqty,prosq.Product_Rate[i],prosq.Product_Name[i],salescost,selid)
                                updav="Update products set Product_Qty="+ str(newavb) +" where ProductID="+str(prosq.ProductID[i])+";"
                                cursor.execute(updav)
                                cursor.execute(sale)
                                mycon.commit()
                                print("Your order is placed! \n you'll be soon contacted for further assistance")
                                print("Your total cost is"+str(salescost))
                                print("Thankyou for supporting Local Businesses, you rock! #VocalForLocal")
                            print("**"*20)
                            
                        print("--"*20)
                        print("**"*20)
                        print("End of Results:",i,"Results found")

                    elif cme==2: #STEP 2.2: Search for Shops
                        shoprch=print("How would you like to search for shops?")
                        print("1. By Name")
                        print("2. By Pincode")
                        shopsrchh=int(input("Enter your choice:"))
                        if shopsrchh not in [1,2]:
                            print("Inappropriate Entry.")
                            beep()
                        if shopsrchh==1: # search by name
                            shopn=input("Search for:")
                            shopsn=pd.read_sql("Select * from sellers where Seller_Name like '%%%s%%';" %(shopn,), mycon)
                            count=len(shopsn.index)
                            i=0
                            for i in range(count):
                                shopprd=pd.read_sql("Select * from products where SellerID like '%s';" %(shopsn.SellerID[i],), mycon)
                                print("**"*20)
                                print("--"*20)
                                print("**"*20)
                                print("Name:",shopsn.Seller_Name[i])
                                print("Mail:",shopsn.Seller_Mail[i])
                                print("Address:",shopsn.Seller_Address[i])
                                print("Pincode:",shopsn.Seller_Pincode[i])
                                print("**"*20)
                                prods=shopprd[['Product_Name','Product_Categrory','Product_Rate','Product_Qty','Product_Ratings']]
                                print(prods)
                                print("**"*20)
                                i+=1
                            print("--"*20)
                            print("**"*20)
                            print("End of Results, "+str(i)+" Records found.")
                        if shopsrchh==2: # search by pincode
                            shopn=input("Search at:")
                            shopsn=pd.read_sql("Select * from sellers where Seller_Pincode like '%s';" %(shopn,), mycon)
                            count=len(shopsn.index)
                            i=0
                            for i in range(count):
                                shopprd=pd.read_sql("Select * from products where SellerID like '%s';" %(shopsn.SellerID[i],), mycon)
                                print("**"*20)
                                print("--"*20)
                                print("**"*20)
                                print("Name:",shopsn.Seller_Name[i])
                                print("Mail:",shopsn.Seller_Mail[i])
                                print("Address:",shopsn.Seller_Address[i])
                                print("Pincode:",shopsn.Seller_Pincode[i])
                                print("**"*20)
                                prods=shopprd[['Product_Name','Product_Categrory','Product_Rate','Product_Qty','Product_Ratings']]
                                i+=1
                                print(prods)
                                print("**"*20)
                            print("--"*20)
                            print("**"*20)
                            print("End of Results, "+str(i)+" Records Found.")
                    elif cme==3: #STEP 2.3 View Customer Profile
                        print("--"*20)
                        print("Name:", custdet.Customer_Name[0])
                        print("E-Mail Adderss:", custdet.Customer_Mail[0])
                        print("Contact Number:", custdet.Customer_Num[0])
                        print("Address:", custdet.Customer_address[0])
                        print("Pincode:", custdet.Customer_Pincode[0])
                        print("--"*20)
                        print("**"*20)
                    elif cme==4: #STEP 2.4 Change Customer details
                        choice=int(input("What would you like to update? \n 1. Name \n 2. Password \n 3. Mail \n 4. Address \n 5. Pincode \n Your Choice="))
                        if choice not in [1,2,3,4,5]:
                            print("Invalid Choice")
                            beep()
                        if choice==1: #change name
                            new=input("Enter new name:")
                            updav="Update customers set Customer_Name='"+ str(new)+"' where CustomerID="+ str(custdet.CustomerID[0])+";"
                            cursor.execute(updav)
                            mycon.commit()
                            print("Details Updated Successfully")
                        if choice==2: #change password
                            old=input("Enter old password:")
                            if str(old)==custdet.Customer_Pass[0]:
                                new=input("Enter new password:")
                                newag=input("Enter new password again:")
                                if new==newag:
                                    updav="Update customers set Customer_Pass='"+ str(new)+"' where CustomerID="+str(custdet.CustomerID[0])+";"
                                    cursor.execute(updav)
                                    mycon.commit()
                                    print("Details Updated Successfully")
                                else:
                                    print("Passwords do not match")
                                    beep()
                            else:
                                print("Wrong Password")
                                beep()
                        if choice==3: #change mail address
                            new=input("Enter new Mail:")
                            updav="Update customers set Customer_Mail='"+ str(new) +"' where CustomerID="+str(custdet.CustomerID[0])+";"
                            cursor.execute(updav)
                            mycon.commit()
                            print("Details Updated Successfully")
                        if choice==4: #change address
                            new=input("Enter new Address:")
                            updav="Update customers set Customer_Address='"+ str(new) +"' where CustomerID="+str(custdet.CustomerID[0])+";"
                            cursor.execute(updav)
                            mycon.commit()
                            print("Details Updated Successfully")
                        if choice==5: #change pincode
                            new=input("Enter new Pincode:")
                            updav="Update customers set Customer_Pincode="+ str(new) +" where CustomerID="+str(custdet.CustomerID[0])+";"
                            cursor.execute(updav)
                            mycon.commit()
                            print("Details Updated Successfully")
                                

                    else:
                        break



                    
        elif log1==2: #STEP-1: Seller Login
            print("Enter your login Credentials")
            cusn=input("Enter User ID:")
            cpswd=input("Enter Password:")
            print("--"*20)
            print("--"*20)
            mc_usm=pd.read_sql("Select Seller_Mail from sellers where Seller_Mail like '%s';" %(cusn,), mycon)
            seldet=pd.read_sql("Select * from sellers where Seller_Mail like '%s';" %(cusn,), mycon) #extracting seller details
            mc_pswd=pd.read_sql("Select Seller_Pass from sellers where Seller_Mail like '%s';" %(cusn,), mycon)
            if mc_usm.Seller_Mail[0]!=cusn or mc_pswd.Seller_Pass[0]!=cpswd:
                print("Invalid Credentials")
                beep()
            else:
                #VALID SELLER
                while True:
                    seller_menu() #STEP 2: Sellers' Menu
                    sme=int(input("Enter your choice:"))
                    print("**"*20)
                    if sme not in [1,2,3,4,5,6]:
                        print("Invalid Choice")
                        beep()
                    elif sme==1: #STEP 2.1: view  profile
                        print("--"*20)
                        print("**"*20)
                        print("ID:",seldet.SellerID[0])
                        print("MailID:",seldet.Seller_Mail[0])
                        print("Name:",seldet.Seller_Name[0])
                        print("Mail:",seldet.Seller_Mail[0])
                        print("Address:",seldet.Seller_Address[0])
                        print("Pincode:",seldet.Seller_Pincode[0])
                    elif sme==2: #STEP 2.2: update details
                        choice=int(input("What would you like to update? \n 1. Name \n 2. Password \n 3. Mail \n 4. Address \n 5. Pincode \n Your Choice="))
                        if choice not in [1,2,3,4,5]:
                            print("Invalid Choice")
                        if choice==1: #change name
                            new=input("Enter new name:")
                            updav="Update sellers set Seller_Name='"+ str(new)+"' where SellerID="+ str(seldet.SellerID[0])+";"
                            cursor.execute(updav)
                            mycon.commit()
                            print("Details Updated Successfully")
                        if choice==2: #change password
                            old=input("Enter old password:")
                            if str(old)==seldet.Seller_Pass[0]:
                                new=input("Enter new password:")
                                newag=input("Enter new password again:")
                                if new==newag:
                                    updav="Update sellers set Seller_Pass='"+ str(new)+"' where SellerID="+str(seldet.SellerID[0])+";"
                                    cursor.execute(updav)
                                    mycon.commit()
                                    print("Details Updated Successfully")
                                else:
                                    print("Passwords do not match")
                                    beep()
                            else:
                                print("Wrong Password")
                                beep()
                        if choice==3: #change mail address
                            new=input("Enter new Mail:")
                            updav="Update sellers set Seller_Mail='"+ str(new) +"' where SellerID="+str(seldet.SellerID[0])+";"
                            cursor.execute(updav)
                            mycon.commit()
                            print("Details Updated Successfully")
                        if choice==4: #change address
                            new=input("Enter new Address:")
                            updav="Update sellers set Seller_Address='"+ str(new) +"' where SellerID="+str(seldet.SellerID[0])+";"
                            cursor.execute(updav)
                            mycon.commit()
                            print("Details Updated Successfully")
                        if choice==5: #change pincode
                            new=input("Enter new Pincode:")
                            updav="Update sellers set Seller_Pincode="+ str(new) +" where SellerID="+str(seldet.SellerID[0])+";"
                            cursor.execute(updav)
                            mycon.commit()
                            print("Details Updated Successfully")
                    elif sme==3: #STEP 2.3: Show products
                        shopid=str(seldet.SellerID[0])
                        shopprd=pd.read_sql("Select * from products where SellerID like '%s';" %(shopid,),mycon)
                        m=0
                        for m in range(len(shopprd.index)):
                            print("Product ID:",shopprd.ProductID[m])
                            print("Product Name:",shopprd.Product_Name[m])
                            print("Product Category:",shopprd.Product_Categrory[m])
                            print("Product Rate:",shopprd.Product_Rate[m])
                            print("Product Quantity:",shopprd.Product_Qty[m])
                            print("Product Ratings:",shopprd.Product_Ratings[m])
                            print("--"*20)
                            m+=1
                    elif sme==4: #STEP2.4: Edit Products
                        prid=int(input("Enter Product ID for the Product you'd like to edit:"))
                        prdf=pd.read_sql("Select * from products where ProductID='%s'" %(prid,),mycon)
                        choice=int(input("What would you like to update? \n 1. Product Name \n 2. Product Category \n 3. Product Rate \n 4. Product Quantity \n 5. Product Rating \n Your Choice="))
                        if choice not in [1,2,3,4,5]:
                            print("Invalid Choice")
                            beep()
                        if choice==1:
                            new=input("Enter new name:") #change name
                            updav="Update products set Product_Name='"+ str(new)+"' where ProductID="+ str(prdf.ProductID[0])+";"
                            cursor.execute(updav)
                            mycon.commit()
                            print("Details Updated Successfully")
                        if choice==2:
                            new=input("Enter new category:") #change category
                            updav="Update products set Product_Categrory='"+ str(new)+"' where ProductID="+ str(prdf.ProductID[0])+";"
                            cursor.execute(updav)
                            mycon.commit()
                            print("Details Updated Successfully")
                        if choice==3:
                            new=input("Enter new Rate:") #change rate
                            updav="Update products set Product_Rate='"+ str(new)+"' where ProductID="+ str(prdf.ProductID[0])+";"
                            cursor.execute(updav)
                            mycon.commit()
                            print("Details Updated Successfully")
                        if choice==4:
                            new=input("Enter new Quantity:") #change quantity
                            updav="Update products set Product_Qty='"+ str(new)+"' where ProductID="+ str(prdf.ProductID[0])+";"
                            cursor.execute(updav)
                            mycon.commit()
                            print("Details Updated Successfully")
                        if choice==5:
                            new=input("Enter new Ratings:") #change ratings
                            updav="Update products set Product_Ratings='"+ str(new)+"' where ProductID="+ str(prdf.ProductID[0])+";"
                            cursor.execute(updav)
                            mycon.commit()
                            print("Details Updated Successfully")
                    elif sme==5:
                        analysis_menu() #STEP 2.5: Analysis Menu
                        anamenu=int(input("Enter your choice:"))
                        if anamenu not in [1,2,3,4,5,6]:
                            print("Invalid Choice:")
                            beep()
                        if anamenu==6: #Business projection tool
                            aai=int(input("Enter Annual Average Income:"))
                            lob=int(input("Enter expected Life of Business:"))
                            ii=int(input("Enter Initial Investment:"))
                            pp=ii/aai
                            if pp<=lob:
                                print("Business is feasible. :)")
                            else:
                                print("Business is not feasible. :(")
                        if anamenu==1: #show sales
                            salesdf=pd.read_sql("Select * from sales where SellerID = '%s'" %(seldet.SellerID[0],),mycon)
                            if salesdf.empty is True:
                                print("You have not had any sales yet.")
                            else:
                                for i in range(len(salesdf.index)):
                                    print("Sales ID:",salesdf.SalesID[i])
                                    print("Date of Sale:",salesdf.Salesdate[i])
                                    print("Product ID:",salesdf.ProductID[i])
                                    print("Product Name:",salesdf.Product_Name[i])
                                    print("Product Rate:",salesdf.Product_Rate[i])
                                    print("Product Quantity:",salesdf.Product_Qty[i])
                                    print("Sales Cost:",salesdf.Product_Cost[i])
                                    print("--"*20)
                                    i+=1
                        if anamenu==2: #show total sales
                            salesdf=pd.read_sql("Select * from sales where SellerID = '%s'" %(seldet.SellerID[0],),mycon)
                            totalsales=0
                            i=0
                            if salesdf.empty is True:
                                print("You have not had any sales yet.")
                            else:
                                for i in range(len(salesdf.index)):
                                    totalsales+=salesdf.Product_Cost[i]
                                print("Your Total Sales is:",totalsales)
                        if anamenu==3: #show number of customers served
                            salesdf=pd.read_sql("Select * from sales where SellerID = '%s'" %(seldet.SellerID[0],),mycon)
                            print("You have served "+str(len(salesdf.index))+" customers yet.")
                        if anamenu==4: # product vs price graph
                            import matplotlib.pyplot as plt
                            prodnamel=[]
                            prodpricel=[]
                            shopprd=pd.read_sql("Select * from products where SellerID like '%s';" %(seldet.SellerID[0],),mycon)
                            i=0
                            for i in range(len(shopprd.index)):
                                prodnamel.append(shopprd.Product_Name[i])
                                prodpricel.append(shopprd.Product_Rate[i])
                            plt.bar(prodnamel,prodpricel)
                            plt.xlabel("Products")
                            plt.ylabel("Price")
                            plt.show()
                        if anamenu==5: #product vs qty graph
                            import matplotlib.pyplot as plt
                            prodnamel=[]
                            prodqtyl=[]
                            shopprd=pd.read_sql("Select * from products where SellerID like '%s';" %(seldet.SellerID[0],),mycon)
                            i=0
                            for i in range(len(shopprd.index)):
                                prodnamel.append(shopprd.Product_Name[i])
                                prodqtyl.append(shopprd.Product_Qty[i])
                            plt.plot(prodnamel,prodqtyl)
                            plt.xlabel("Products")
                            plt.ylabel("Qty")
                            plt.show()
                    else:
                        break
        else:
            print("Thanks for using Nukkad!")
            break
