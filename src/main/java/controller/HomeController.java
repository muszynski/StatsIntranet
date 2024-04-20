package controller;

import application.service.DataService;
import application.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    private final UserService userService;
    private final DataService dataService;

    @Autowired
    public HomeController(UserService userService, DataService dataService) {
        this.userService = userService;
        this.dataService = dataService;
        logger.debug("HomeController initialized with UserService and DataService");
    }

    @ModelAttribute
    public void addAttributes(Model model) {
        logger.debug("Adding global attributes to model");
        model.addAttribute("companyName", userService.getCompanyName());
        model.addAttribute("user", userService.getUserName());
        model.addAttribute("currentDate", dataService.getCurrentDate());
    }

    @GetMapping("/")  // Dostęp do głównej strony
    public String home(Model model) {
        logger.debug("Home page accessed. Model has attributes: {}", model);
        return "index";
    }

    @GetMapping("/top50")  // Dostęp do strony 'Top 50'
    public String top50(Model model) {
        logger.debug("Entering /top50 endpoint. Model has attributes: {}", model);
        return "top50";
    }

    @GetMapping("/test")  // Dostęp do strony testowej
    public String test(Model model) {
        logger.debug("Test page accessed. Model has attributes: {}", model);
        return "test";
    }
}
