package com.ALOHCMUTE.entity;

import java.io.Serializable;
import javax.persistence.*;

import lombok.*;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name ="Profiles")
public class Profiles implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ProfileId")
    private int profileId;
    
    @Column(name = "Avatar", columnDefinition = "nvarchar(2000)")
    private String avatar;
    
    @Column(name = "Background", columnDefinition = "nvarchar(2000)")
    private String background;

    @OneToOne
    @JoinColumn(name = "userId")
    private Users users;
}
