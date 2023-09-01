#include <iostream>
#include <string>
#include <ctime>
using std::cin;
using std::cout;
using std::string;
using std::endl;

void birthday (){
    string bMonth;
    int bDay, bYear, day_in_month, todayMonth, thisYear, b_month_number=100;
    int a[12][1];
    static int bdate=0;
    string nameMonth[12]={{"January"},{"February"},{"March"},{"April"},{"May"},{"June"},{"July"},{"August"},{"September"},{"October"},{"November"},{"December"}};
    int numbMonth[12]={{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12}};
    int valDate[12]={{31},{29},{31},{30},{31},{30},{31},{31},{30},{31},{30},{31}};
    
    cout << "What is the earlier date? ";
    cin >> day_in_month >> todayMonth >> thisYear;
    
    cout << "What is the later date? ";
    cin >> bMonth >> bDay >> bYear;
    
    for(int i=0;i<12;i++){
        if(nameMonth[i]==bMonth){
            if(valDate[i]<bDay || bDay<1){
                cout << "The day of your birth month is impossible.";
                exit(0);
            }
        b_month_number=numbMonth[i];
        break;
        }
        if(i!=11)continue;
        cout << "You've incorrectly spelled the month.";
        exit(0);
    }
    
    if(b_month_number<todayMonth+1)cout << "You are " << (thisYear-bYear-0) << " years old." << endl;
    else if (b_month_number==todayMonth+1){
        if (bDay<=day_in_month)cout << "You are " << (thisYear-bYear-0) << " years old." << endl;
        else cout << "You are " << (thisYear-bYear-1) << " years old." << endl;
    }
    else cout << "You are " << (thisYear-bYear-1) << " years old." << endl;
    
    if(b_month_number<todayMonth){
        if((((thisYear+1) % 4 == 0) && ((thisYear+1) % 100 != 0)) || ((thisYear+1) % 400 == 0)) int a[12][1]={{31},{29},{31},{30},{31},{30},{31},{31},{30},{31},{30},{31}};
        else int a[12][1]={{31},{28},{31},{30},{31},{30},{31},{31},{30},{31},{30},{31}};
    }
    else{
        if(((thisYear % 4 == 0) && (thisYear % 100 != 0)) || (thisYear % 400 == 0)) int a[12][1]={{31},{29},{31},{30},{31},{30},{31},{31},{30},{31},{30},{31}}; 
        else int a[12][1]={{31},{28},{31},{30},{31},{30},{31},{31},{30},{31},{30},{31}};
    }
    
    if(b_month_number==todayMonth){
        if(day_in_month>bDay)cout << "Your birthday will be in " << (bDay-day_in_month+365) << " days.";
        if(day_in_month<bDay)cout << "Your birthday will be in " << bDay-day_in_month << " days.";
        if(day_in_month==bDay)cout << "Today is your birthday!";
    }
    if(b_month_number>todayMonth){
        if(b_month_number-todayMonth-1==2){
            bdate=((a[todayMonth-1][0]-day_in_month)+bDay);
            cout << "Your birthday will be in " << bdate << " days.";
            exit(0);
        }
        else for(int i=todayMonth;i<b_month_number-1;i++)bdate=bdate+a[i][0];
        bdate=bdate+(a[todayMonth-1][0]-day_in_month)+bDay;
        cout << "Your birthday will be in " << bdate << " days.";
    }
    if(b_month_number<todayMonth){
        if(todayMonth==12 && b_month_number==1){
            bdate=((a[(todayMonth-1)%11][0]-day_in_month)+bDay);
            cout << "Your birthday will be in " << bdate << " days.";
        }
        else{
            for(int i=0;i<abs(12-todayMonth+b_month_number-1);i++){
                bdate=bdate+a[(todayMonth+i)%12][0];
            }
            bdate=bdate+(a[todayMonth-1][0]-day_in_month)+bDay;
            cout << "Your birthday will be in " << bdate << " days.";
        }
    }
}

int main(){
    birthday();
    return 0;
}
