package com.example.seleniumdemo2;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class TeedyTest {
    private WebDriver driver;

    @BeforeAll
    public static void setupDriver(){
        WebDriverManager.chromedriver().setup();
    }

    @BeforeEach
    public void setUp() {
        ChromeOptions options = new ChromeOptions();
        options.addArguments("--remote-allow-origins=*");
        driver = new ChromeDriver(options);

        driver.get("http://localhost:8080/docs-web/src/");
    }

    @AfterEach
    public void tearDown() {
        driver.quit();
    }

    @Test
    void login() throws InterruptedException {

        // Find the input box for username and password
        WebElement idInput = driver.findElement(By.id("inputUsername"));
        WebElement pwdInput = driver.findElement(By.id("inputPassword"));

        // Fill in the input box
        idInput.sendKeys("admin");
        pwdInput.sendKeys("admin");

        // Click login
        WebElement button = driver.findElement(By.xpath("//button[@ng-click='login()']"));
        button.click();

        Thread.sleep(8000);

    }

}
