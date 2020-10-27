package com.noirix.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class CustomContextListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("Context is UP");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("Context is DOWN");
    }
}
