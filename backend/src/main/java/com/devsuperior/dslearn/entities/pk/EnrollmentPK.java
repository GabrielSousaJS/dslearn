package com.devsuperior.dslearn.entities.pk;

import com.devsuperior.dslearn.entities.Offer;
import com.devsuperior.dslearn.entities.User;

import javax.persistence.Embeddable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.io.Serial;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class EnrollmentPK implements Serializable {
    @Serial
    private static final long serialVersionUID = 1L;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User student;

    @ManyToOne
    @JoinColumn(name = "offer_id")
    private Offer offer;

    public EnrollmentPK() {
    }

    public EnrollmentPK(User student, Offer offer) {
        this.student = student;
        this.offer = offer;
    }

    public User getStudent() {
        return student;
    }

    public void setStudent(User student) {
        this.student = student;
    }

    public Offer getOffer() {
        return offer;
    }

    public void setOffer(Offer offer) {
        this.offer = offer;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EnrollmentPK that = (EnrollmentPK) o;
        return Objects.equals(student, that.student) && Objects.equals(offer, that.offer);
    }

    @Override
    public int hashCode() {
        return Objects.hash(student, offer);
    }
}
