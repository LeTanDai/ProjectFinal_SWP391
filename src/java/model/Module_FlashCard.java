/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author lethe
 */
public class Module_FlashCard {
    
    private int module_id;
    private int flashcard_id;

    public Module_FlashCard() {
    }

    public Module_FlashCard(int module_id, int flashcard_id) {
        this.module_id = module_id;
        this.flashcard_id = flashcard_id;
    }

    public int getModule_id() {
        return module_id;
    }

    public void setModule_id(int module_id) {
        this.module_id = module_id;
    }

    public int getFlashcard_id() {
        return flashcard_id;
    }

    public void setFlashcard_id(int flashcard_id) {
        this.flashcard_id = flashcard_id;
    }

    @Override
    public String toString() {
        return "Module_FlashCard{" + "module_id=" + module_id + ", flashcard_id=" + flashcard_id + '}';
    }
    
}
