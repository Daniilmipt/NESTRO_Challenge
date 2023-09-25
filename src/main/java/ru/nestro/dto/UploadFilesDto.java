package ru.nestro.dto;

import lombok.Builder;
import org.springframework.web.multipart.MultipartFile;

@Builder
public record UploadFilesDto(
        MultipartFile file,
        String name
) {}
