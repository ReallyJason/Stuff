#include <iostream>
#include <string>
#include <ctime>
using std::cin;
using std::cout;
using std::string;

void Age(){
    string bMonth;
    int bDay, bYear, b_month_number=100;
    int a[12][1];
    static int bdate=0;
    string nameMonth[12]={{"January"},{"February"},{"March"},{"April"},{"May"},{"June"},{"July"},{"August"},{"September"},{"October"},{"November"},{"December"}};
    int numbMonth[12]={{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12}};
    int valDate[12]={{31},{29},{31},{30},{31},{30},{31},{31},{30},{31},{30},{31}};
    
    setenv("TZ", "EST5EDT", 1); // Set the timezone to Eastern Time (ET)
    tzset(); // Apply the changes
    time_t currentTime; // Get the current time in Eastern Time
    time(&currentTime);
    struct tm *localTime = localtime(&currentTime); // Convert the time to local time (Eastern Time)
    
    std::time_t t = std::time(nullptr);
    std::tm *const pTInfo = std::localtime(&t);
    int day_in_month=pTInfo->tm_mday; //day in the month
    int todayMonth=pTInfo->tm_mon; //the #month-1
    int thisYear=(1900 + pTInfo->tm_year); //tm_year shows the number of years since 1900
    
    cout << "When is your birthday? ";
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
    
    if(b_month_number<todayMonth+1)cout << "You are " << (thisYear-bYear-0) << " years old.";
    else if (b_month_number==todayMonth+1){
        if (bDay<=day_in_month)cout << "You are " << (thisYear-bYear-0) << " years old.";
        else cout << "You are " << (thisYear-bYear-1) << " years old.";
    }
    else cout << "You are " << (thisYear-bYear-1) << " years old.";
}

int main(){
    Age();
    return 0;
}
