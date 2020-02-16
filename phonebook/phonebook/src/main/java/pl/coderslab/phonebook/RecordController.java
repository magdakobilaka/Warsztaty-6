package pl.coderslab.phonebook;

import lombok.RequiredArgsConstructor;
import org.hibernate.search.jpa.FullTextEntityManager;
import org.hibernate.search.jpa.Search;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.persistence.EntityManager;
import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/records")
@RequiredArgsConstructor
public class RecordController {

    private final RecordRepository recordRepository;

    //wyswietlanie listy
    @GetMapping("/list")
    public String getList(Model model) {
        model.addAttribute("record", recordRepository.findAll());
        return "records/list";
    }

    //Formulaz pobieranie
    @GetMapping("/form")
    public String addContact(Model model) {
        Record record = new Record();
        model.addAttribute("record", record);
        return "records/form";
    }

    //wswietlanie dodanego kontaktu
    @PostMapping("/form")
    public String addFormposyt(@ModelAttribute("record") @Valid Record record, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "records/form";
        }
        recordRepository.save(record);

        return "redirect:list";
    }


    @GetMapping("/edit/{id}")
    public String edit(@PathVariable long id, Model model) {
        Optional<Record> category = recordRepository.findById(id);
        model.addAttribute("record", category.orElseThrow(IllegalArgumentException::new));
        return "records/edit";
    }

    @PostMapping("/edit")
    public String update(@ModelAttribute("record") @Valid Record record, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "records/edit";
        }
        recordRepository.save(record);
        return "redirect:list";
    }

    @GetMapping("/delete/{id}")
    public String deleteCheck(@PathVariable long id, Model model) {
        model.addAttribute("recordId", id);
        return "records/delete";
    }

    @GetMapping("/delete-action/{id}")
    public String delete(@PathVariable long id, @RequestParam("action") boolean action) {
        if (action) {
            recordRepository.deleteById(id);
        }
        return "redirect:/records/list";
    }

    @GetMapping("/search")
    public String searchForm(Model model) {
        Record record = new Record();
        model.addAttribute("record", record);
        return "records/search";
    }
    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public String getBySurname(@RequestParam("surname") String surname, ModelMap modelMap) {
        modelMap.addAttribute("record", recordRepository.findBySurname(surname));
        return "records/list";
    }
//    @RequestMapping(value = "/search", method = RequestMethod.POST)
//    public String getByNameAndSurname(@RequestParam("city") String city,@RequestParam("street") String street,@RequestParam("flatnumber") String flatnumber, ModelMap modelMap) {
//        modelMap.addAttribute("record", recordRepository.findByCityAndStreetAndFlatnumber(city,street,flatnumber));
//        return "records/list";
//    }

}
