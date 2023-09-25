package ru.nestro.controllers;

import lombok.RequiredArgsConstructor;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ru.nestro.models.Attribute;
import ru.nestro.services.AttributeService;
import ru.nestro.services.FactoryAttributeService;
import ru.nestro.services.FactoryService;

import javax.validation.Valid;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Controller
@RequiredArgsConstructor
public class AttributeController {
    private final FactoryService factoryService;
    private final FactoryAttributeService factoryAttributeService;
    private final AttributeService attributeService;

    @PostMapping("/attribute/download/{factory_id}/{attribute_id}")
    public ResponseEntity<InputStreamResource> download(@PathVariable("attribute_id") Long attributeId,
                                                        @PathVariable("factory_id") @Valid Long factoryId) {
        List<Attribute> attributeList = factoryAttributeService.getAllAttributesByFactoryId(factoryId);
        System.out.println(attributeList);
        Map<Long, String> attributeStringPathMap = attributeList
                .stream()
                .collect(
                        Collectors.toMap(
                                Attribute::getId
                                ,attribute->attributeService.findAttributePathByFactoryId(factoryId, attribute.getId())
                        )
                );
        String filePath = attributeStringPathMap.get(attributeId);
        String fileName = filePath.split("/")[10];
        try {
            InputStream excelInputStream = new FileInputStream(filePath);

            String encodedFilename = "attachment; filename="+fileName;

            // Set up the response for file download.
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
            headers.add(HttpHeaders.CONTENT_DISPOSITION, encodedFilename);

            // Wrap the InputStream in an InputStreamResource.
            InputStreamResource resource = new InputStreamResource(excelInputStream);

            return ResponseEntity.ok()
                    .headers(headers)
                    .body(resource);
        }
        catch (Exception ignored){
            return null;
        }
    }


    @PostMapping("/attribute/upload/{factory_id}")
    public String upload(@RequestParam("file") MultipartFile file,
                         @PathVariable("factory_id") @Valid String factoryId,
                         Model model) {
        System.out.println(file.getOriginalFilename());
        System.out.println(file);
        if (!file.isEmpty()) {
            try {
                // Create a new Workbook (in this example, an XLSX workbook)
                Workbook workbook = new XSSFWorkbook(file.getInputStream());

                // Specify the path where you want to save the Excel file
                String directoryPath = "/home/daniil/IdeaProjects/NESTRO_Challenge/src/main/resources/excel_files/factory_" + factoryId;
                String excelFilePath = directoryPath +"/"+ file.getOriginalFilename();
                System.out.println(excelFilePath);

                if (!Files.exists(Path.of(excelFilePath))){
                    Files.createDirectory(Path.of(directoryPath));
                }
                try (FileOutputStream outputStream = new FileOutputStream(excelFilePath)) {
                    workbook.write(outputStream);
                }

                String name = file.getOriginalFilename().split("\\.")[0];
                attributeService.saveByName(name);
                factoryAttributeService.saveByRow(Long.parseLong(factoryId), attributeService.geIdByName(name), excelFilePath);
                return "redirect:/factory/show/" + factoryId; // Redirect to a success page
            } catch (IOException e) {
                e.printStackTrace();
                return "redirect:/factory/show/" + factoryId; // Redirect to a failure page in case of an error
            }
        } else {
            return "redirect:/factory/show/" + factoryId; // Handle the case when no file was selected
        }
    }

    @PostMapping("/attribute/delete/{factory_id}/{attribute_id}")
    public String delete(@PathVariable("attribute_id") Long attributeId,
                                                        @PathVariable("factory_id") @Valid Long factoryId,
                                                      Model model) {
        System.out.println(factoryId + " " + attributeId);
//        System.out.println(factoryAttributeService.getAllAttributesByFactoryId(factoryId).size());
        factoryAttributeService.deleteByFactoryAttributeId(factoryId, attributeId);
//        List<Attribute> attributeList = factoryAttributeService.getAllAttributesByFactoryId(factoryId);
//        model.addAttribute("attributes", attributeList);
//        model.addAttribute("factoryId", factoryId);
//        System.out.println(attributeList.size());
//        System.out.println("-----------");
        return "redirect:/factory/show/" + factoryId;
    }
}
