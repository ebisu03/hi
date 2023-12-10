package com.ALOHCMUTE.entity;

import java.io.Serializable;
import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;

@SuppressWarnings({ "serial", "unused" })
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "Messages")
public class Messages implements Serializable {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MessageId")
    private int messageId;
    
    @Column(name = "Content", columnDefinition = "nvarchar(2000)")
    private String content;
    
    @DateTimeFormat(pattern = "dd/MM/yyyy HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Column(name = "CreateTime")
    private Date createTime;
    
    @Column(name = "ReceiverId")
    private int receiverId;
    
    @Column(name = "Status")
    private Boolean status;
    
    @Column(name = "MessageType", columnDefinition = "nvarchar(2000)")
    private String messageType;

    @ManyToOne
    @JoinColumn(name = "userId")
    private Users users;
}
