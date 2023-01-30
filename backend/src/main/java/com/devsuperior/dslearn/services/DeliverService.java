package com.devsuperior.dslearn.services;

import com.devsuperior.dslearn.dto.DeliverRevisionDTO;
import com.devsuperior.dslearn.entities.Deliver;
import com.devsuperior.dslearn.repositories.DeliverRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class DeliverService {

    @Autowired
    private DeliverRepository repository;

    @Transactional
    public void saveRevision(Long id, DeliverRevisionDTO dto) {
        Deliver entity = repository.getReferenceById(id);
        entity.setStatus(dto.getStatus());
        entity.setFeedback(dto.getFeedback());
        entity.setCorrectCount(dto.getCorrectCount());
        repository.save(entity);
    }

}
