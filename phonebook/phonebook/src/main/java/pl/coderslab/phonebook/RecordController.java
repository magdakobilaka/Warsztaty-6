package pl.coderslab.phonebook;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
@RequestMapping("/records")
@RequiredArgsConstructor
public class RecordController {

    private final RecordRepository recordRepository;

    @GetMapping
    @ResponseBody
    public String getForm(Model model) {
        model.addAttribute("record", new Record());
        return "records/form";
    }

    @PostMapping
    public String saveRecord(@ModelAttribute Record record, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "records/form";
        }
       recordRepository.save(record);
        return "redirect:/records/list";

    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable long id, Model model) {
        Optional<Record> category = recordRepository.findById(id);
        model.addAttribute("record", category.orElseThrow(IllegalArgumentException::new));
        return "records/edit";
    }

    @PostMapping("/edit")
    public String update(@ModelAttribute Record record, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "records/edit";
        }
        recordRepository.save(record);
        return "redirect:/records/list";
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


    @GetMapping("/list")
    public String getList(Model model) {
        model.addAttribute("records", recordRepository.findAll());
        return "list";
    }

}
