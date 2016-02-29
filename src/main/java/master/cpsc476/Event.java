/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package master.cpsc476;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

/**
 *
 * @author Mussa
 */
public class Event implements Comparable<Event>{
       private Long id=null;
       private String title=null;
       private String description=null;
       private LocalDateTime time=null;
       private String location=null;
       private Long createdBy =null;

    public DateTimeFormatter getEventTimeFormat() {
        return DateTimeFormatter.ofPattern("MMM dd,yyyy HH:mm");
    }
       
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDateTime getTime() {
        return time;
    }
    
    public String getTimeStr() {
        return time.format(this.getEventTimeFormat());
    }
    public void setTime(LocalDateTime time) {
        this.time = time;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public void setCreatedBy(Long createdBy) {
        this.createdBy = createdBy;
    }

    public Long getCreatedBy() {
        return createdBy;
    }
    
    @Override
    public String toString(){
        return "event: "+this.getId()+" is:"+this.getTitle()
                + " In: "+this.getTimeStr()+" At:"+this.getLocation();
    }  

   @Override
    public int compareTo(Event otherEvent) {
        return this.getTime().compareTo( otherEvent.getTime());
    }
}   
