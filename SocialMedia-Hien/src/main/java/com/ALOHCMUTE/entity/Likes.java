package com.ALOHCMUTE.entity;

import java.io.Serializable;
import java.util.Optional;

import javax.persistence.*;

import lombok.*;

@SuppressWarnings({ "serial", "unused" })
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "Likes")
public class Likes implements Serializable {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "LikeId")
    private int likeId;
    

    @ManyToOne
    @JoinColumn(name = "userId")
    private Users users;

    @ManyToOne
    @JoinColumn(name = "postId")
    private Posts posts;
}
