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
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.junit.jupiter.api.Assertions.*;

import java.time.Duration;


public class BingTest {
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

        driver.get("https://www.bing.com/");
    }

    @AfterEach
    public void tearDown() {
        driver.quit();
    }

    @Test
    void search(){

        // Find the search input box element
        WebElement searchBox = driver.findElement(By.name("q"));

        // Enter a search query
        searchBox.sendKeys("Selenium testing");

        // Submit
        searchBox.submit();

        // Verify that the search result is displayed
        WebElement searchResults = driver.findElement(By.id("b_content"));
        assertTrue(searchResults.isDisplayed());
    }

    @Test
    void searchByImage() throws InterruptedException {

        // Find the "Images" link and click it (wait for it to be fully loaded)
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
        WebElement imagesLink = wait.until(ExpectedConditions.elementToBeClickable(By.linkText("图片")));
        imagesLink.click();

        // Find the "Camera" icon and click it
        WebElement cameraIcon = driver.findElement(By.id("sb_sbip"));
        cameraIcon.click();

        // Click a sample image
        WebElement imageInput = wait.until(
                ExpectedConditions.elementToBeClickable(By.cssSelector("img[alt='墨镜']")));
        imageInput.click();

        Thread.sleep(10000);

    }

}
