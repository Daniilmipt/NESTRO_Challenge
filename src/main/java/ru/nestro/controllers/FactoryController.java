package ru.nestro.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ru.nestro.models.Attribute;
import ru.nestro.services.AttributeService;
import ru.nestro.services.FactoryAttributeService;
import ru.nestro.services.FactoryService;

import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Controller
@RequiredArgsConstructor
public class FactoryController {
    private final FactoryService factoryService;
    private final FactoryAttributeService factoryAttributeService;
    private final AttributeService attributeService;

    @GetMapping("/factory")
    public String show(Model model) {
        model.addAttribute("factories", factoryService.findAll());
        return "factory_list";
    }

    @GetMapping("/factory/show/{id}")
    public String showMore(@PathVariable("id") Long factoryId, Model model) {
        List<Attribute> attributeList = factoryAttributeService.findAvailableAttributeByFactoryId(factoryId);
        model.addAttribute("attributes", attributeList);
        model.addAttribute("factory", factoryService.getFactory(factoryId).orElse(null));
        return "factory";
    }

    @PostMapping("/factory/upload")
    public String upload(@RequestParam("factoryName") String factoryName) {
        if (!factoryName.isEmpty()) {
            factoryService.saveByName(factoryName);
            Long id = factoryService.geIdByName(factoryName);
            return "redirect:/factory/show/" + id;
        }
        return "redirect:/";
    }
}
