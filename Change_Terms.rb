module Vocab
=begin
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
((((()))((((())))((())((((()))((((())))((())((((()))((((())))((())((((()))((((()
-----------------------------Change-Terms-Anytime----------------------
This script overwrites the original terms methods. Yet, it gives the ability
to change the terms mid-game.

How to use:
Use a script call and change the variable's string. For example put this in a
script call:

Vocab::MP_a = "sorry"          <--#Will change MP to sorry
Vocab::HP_a = "poopaaa"        <--#Will change HP to poopa
Vocab::Level_a = "daddyaaaa"
Vocab::HP_a = "poopaaaa"
Vocab::Game_end = "dieaaaa"
Vocab::ShopBuy = "tee nee"     <--#Will change ShopBuy to  tee neee. Note:

You can use this method to change ANY TERMS. So long as you see it in the original
vocab script.


It will change the given variable. For a list of what each variable does, look
below, or at the original VOCAB script within RPG Maker's VX ACe RGSS(at the top
of the script editor).

If you want it to revert back to defualt change it back to nil. This only WORKS
WITH THE TERMS IN THIS SCRIPT. Example:

Vocab::MP_a = nil       <-#Will change it back to the default terms.
#-------------------------------------------------------------------------------
********************************************************************************
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
# Do not touch below unless you know what you're doing.
#This sets the constants in the script.
#-------------------------------------------------------------------------------
=end
  Level = nil
  Level_a = nil
  HP =  nil
  HP_a = nil
  MP =  nil
  MP_a =  nil
  TP =  nil
  TP_a = nil
  Fight = nil
  Escape = nil
  Attack = nil
  Guard =  nil
  Item =  nil
  Skill =  nil
  Equip =  nil
  Status =  nil
  Formation =  nil
  Save =  nil
  Game_end =  nil
  Weapon =  nil
  Armor =  nil
  Key_item =  nil
  Equip2 =  nil
  Optimize =  nil
  Clear =  nil
  New_game =  nil
  Continue =  nil
  Shutdown =  nil
  To_title =  nil
  Cancel =  nil
#--------------------------------------------------------------------------
#-------------------------------------------------------------------------------
# This creates the logic. It uses an or method to decide if nil or not.
#-------------------------------------------------------------------------------

  def self.Level;    Level == nil ?   basic(0) : Level;  end
  def self.level_a;  Level_a == nil ? basic(1) : Level_a ; end   # Level (short)
  def self.hp;       HP == nil ?      basic(2) : HP ; end   # HP
  def self.hp_a;     HP_a == nil ?    basic(3) : HP_a ; end   # HP (short)
  def self.mp;       MP == nil ?      basic(4) : MP ; end   # MP
  def self.mp_a;     MP_a == nil ?    basic(5) : MP_a ; end   # MP (short)
  def self.tp;       TP == nil ?      basic(6) : TP ; end   # TP
  def self.tp_a;     TP_a == nil ?    basic(7) : TP_a ; end   # TP (short)
  def self.fight;    Fight == nil ?   command(0) : Fight ; end   # Fight
  def self.escape;   Escape == nil ?  command(1) : Escape ; end   # Escape
  def self.attack;   Attack == nil ?  command(2) : Attack ; end   # Attack
  def self.guard;    Guard == nil ?   command(3) : Guard ; end   # Guard
  def self.item;     Item == nil ?    command(4) : Item ; end   # Items
  def self.skill;    Skill == nil ?   command(5) : Skill ; end   # Skills
  def self.equip;    Equip == nil ?   command(6) : Equip ; end   # Equip
  def self.status;   Status == nil ?  command(7) : Status ; end  # Status
  def self.formation;Formation == nil ? command(8) : Formation ; end   # Change Formation
  def self.save;     Save == nil ?    command(9) : Save ; end  # Save
  def self.game_end; Game_end == nil ? command(10) : Game_end ; end   # Exit Game
  def self.weapon;   Weapon == nil ?   command(12) : Weapon ; end   # Weapons
  def self.armor;    Armor == nil ?    command(13) : Armor ; end   # Armor
  def self.key_item; Key_item == nil ? command(14) : Key_item ; end  # Key Items
  def self.equip2;   Equip2 == nil ?   command(15) : Equip2 ; end   # Change Equipment
  def self.optimize; Optimize == nil ? command(16) : Optimize ; end   # Ultimate Equipment
  def self.clear;    Clear == nil ?    command(17) : Clear ; end   # Remove All
  def self.new_game; New_game == nil ? command(18) : New_game ; end   # New Game
  def self.continue; Continue == nil ? command(19) : Continue ; end   # Continue
  def self.shutdown; Shutdown == nil ? command(20) : Shutdown ; end   # Shut Down
  def self.to_title; To_title == nil ? command(21) : To_title ; end  # Go to Title
  def self.cancel;   Cancel == nil ?   command(22) : Cancel ; end   # Cancel
#--------------------------------------------------------------------------
end
