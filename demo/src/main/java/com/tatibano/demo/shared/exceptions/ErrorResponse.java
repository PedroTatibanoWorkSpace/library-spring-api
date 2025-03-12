package com.tatibano.demo.shared.exceptions;

import lombok.Data;

@Data
public class ErrorResponse {
    private Integer error;
    private String details;

    public ErrorResponse(Integer error, String details) {
        this.error = error;
        this.details = details;
    }
}
