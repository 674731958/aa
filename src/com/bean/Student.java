package com.bean;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
public class Student {
    private Integer id;
    private String name;
    private Boolean sex;
    
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date birthday;
    private Double score;
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }
    public Boolean getSex() {
        return sex;
    }
    public void setSex(Boolean sex) {
        this.sex = sex;
    }
    public Date getBirthday() {
        return birthday;
    }
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
    public Double getScore() {
        return score;
    }
    public void setScore(Double score) {
        this.score = score;
    }
}