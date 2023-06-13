package com.example.blogger.web.admin;

import com.example.blogger.po.Type;
import com.example.blogger.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

@Controller
@RequestMapping("/admin")
public class TypeController {
    @Autowired
    private TypeService typeService;


    @GetMapping("/types")
    public String types(@PageableDefault(size=5,sort = {"id"},direction = Sort.Direction.DESC) Pageable pageable, Model model){
        model.addAttribute("page",typeService.listType(pageable));
        return "admin/types";
    }

    @GetMapping("/types/input")
    public String input(Model model){
        model.addAttribute("type",new Type());
        return "admin/types-input";
    }

    @GetMapping("/types/{id}/input")
    public String editInput(@PathVariable Long id, Model model){
        model.addAttribute("type",typeService.getType(id));
        return "admin/types-edit";
    }

    @PostMapping("/types")
    public String post(@Validated Type type, BindingResult result, RedirectAttributes attributes){
        Type type1=typeService.getTypeByName(type.getName());
        if(type1!=null){
            result.rejectValue("name","nameError","该分类不能重复添加");
        }
        if(result.hasErrors()){
            return "admin/types-edit";
        }
        Type type2=typeService.saveType(type);
        if(type2==null){
            attributes.addFlashAttribute("message","新增失败");
        }else {
            attributes.addFlashAttribute("message","新增成功");
        }
        return "redirect:/admin/types";
    }

    @PostMapping("/types/{id}")
    public String editpost(@Valid Type type, BindingResult result,@PathVariable Long id, RedirectAttributes attributes){
        Type type3=typeService.getTypeByName(type.getName());
        if(type3!=null){
            result.rejectValue("name","nameError","该分类不能重复添加");
        }
        if(result.hasErrors()){
            return "admin/types-edit";
        }
        Type type4=typeService.updateType(id,type);
        if(type4==null){
            attributes.addFlashAttribute("message","更新失败");
        }else {
            attributes.addFlashAttribute("message","更新成功");
        }
        return "redirect:/admin/types";
    }

    @GetMapping("/types/{id}/delete")
    public String delete(@PathVariable Long id,RedirectAttributes attributes){
        typeService.deleteType(id);
        attributes.addFlashAttribute("message","删除成功");
        return "redirect:/admin/types";
    }


}
