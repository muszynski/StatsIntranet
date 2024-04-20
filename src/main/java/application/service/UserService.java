package application.service;

import org.springframework.stereotype.Service;

@Service
public class UserService {

    public String getUserName() {
        return "Łukasz";
    }

    public String getCompanyName(){
        return "Santander Bank Polska";
    }
}
