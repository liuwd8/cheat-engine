��            �         �
     �
     �
     �
     �
     �
  [   �
  �   <            �   &     �     �  �	    �   �  �   �     �     �     �  (   �     �  
   �  >   �  �	  *  �  �"  L   �%     &  �  -  /   �3     �3     �3     �3  q   �3     g4  N   t4  �   �4  %  �5     �:  !   �:     �:  �   �:  "   �;     �;     �;     �;     �;     <     <     )<     0<     P<  $   W<     |<     �<     �<     �<     �<     �<  #   =  "   &=     I=     e=     =     �=     �=      �=     �=     >     .>     L>     f>     �>      �>     �>     �>      �>  #   ?     :?     V?      p?     �?     �?  !   �?      �?  #   @     2@  %   N@     t@     �@      �@    �@  -   �A  �  B  <  �H  7   �O     P     +P  5   AP    wP  9   S  5   �S  6   �S     &T     >T     ZT  1   yT     �T     �T  "   �T  "   U     +U      IU  #   jU  %   �U     �U  9   �U  E   V     LV     ^V     pV     �V  R   �V     �V  R   �V  E   LW     �W     �W  =  �W     �X     
Y     Y     Y  	   &Y  v   0Y  �   �Y     �Z     �Z  �   �Z     �[  %   �[  �
  �[  �   �f  F  �g     �h     �h     �h  R   i     Vi  
   ^i  V   ii  �  �i  �  wu  ^   .�  �  ��  �  /�  R   ��     �     �     .�  �   =�     Ð  [   ֐    2�  �  M�     C�  *   L�  	   w�  �   ��  -   ~�     ��  #   ��     ٙ  %   �     �     �     .�  $   7�     \�  1   e�     ��      ��     ��     ʚ     Ӛ     ܚ     �     �     ��     �     	�     �     �     !�     &�     )�     1�     8�     <�     E�     I�     N�     V�     Z�     _�     r�     z�     ~�     ��     ��     ��     ��     ��     ��     ��     қ     ֛     ؛  Y  ݛ  -   7�  �  e�  j  a�  =   ̦     
�  !   �  Y   <�  �  ��  6   X�  4   ��  4   ī     ��     ��     �  +   �     9�     =�     F�     R�     ^�     e�     j�     }�     ��  +   ��  -   ��     ��     ��     ��     �  '   �     5�  '   =�  (   e�     ��     ��     i       ;           9       w   e          c          C   "   m       p                  '   b   U   t       l   d   L             O   ,   N      }   :   0   <   6   g   r   o   	               K       V   \       Y   2   3   n      _   f       y           =   ~   Q                     j           |              T   A   Z          `      .   $   P       &   (   +   -   /   1   #   5   ^   4   *       ]          [          X      W      ?   v          R   J   7      @   q      I   k          x   
   F   B                s       a           G   E          !   S   8         h   M   H               u   %   >       )              z   D                 {      (double) (float) 090453 Ammo And you can always check out the Cheat Engine Forum for useful information and ask for help Aw, you've almost reached the end. But don't worry, multilevel pointers can be a real pain when dealing with. If you get more experienced someday you can try it again. Are you sure you want to quit? C. Player 3: HAL C. Player 4: KITT Can't figure out how to do this? Don't worry. Try asking in the forum at cheatengine.org or perhaps someone already explained it better there. Are you sure you want to quit? Cheat Engine Forum Cheat Engine Tutorial v3.3 Code injection is a technique where one injects a piece of code into the target process, and then reroute the execution of code to go through your own written code

In this tutorial you'll have a health value and a button that will decrease your health with 1 each time you click it.
Your task is to use code injection to increase the value of your health with 2 every time it is clicked

Start with finding the address and then find what writes to it.
then when you've found the code that decreases it browse to that address in the disassembler, and open the auto assembler window (ctrl+a)
There click on template and then code injection, and give it the address that decreases health (If it isn't already filled in correctly)
That will generate a basic auto assembler injection framework you can use for your code.

Notice the alloc, that will allocate a block of memory for your code cave, in the past, in the pre windows 2000 systems, people had to find code caves in the memory(regions of memory unused by the game), but that's luckily a thing of the past since windows 2000, and will these days cause errors when trying to be used, due to SP2 of XP and the NX bit of new CPU's

Also notice the line newmem: and originalcode: and the text "Place your code here"
As you guessed it, write your code here that will increase the  health with 2.
An usefull assembler instruction in this case is the "ADD instruction"
here are a few examples:
"ADD [00901234],9" to increase the address at 00901234 with 9
"ADD [ESP+4],9" to increase the address pointed to by ESP+4 with 9
In this case, you'll have to use the same thing between the brackets as the original code has that decreases your health

Notice:
It is recommended to delete the line that decreases your health from the original code section, else you'll have to increase your health with 3 (you increase with 3, the original code decreases with 1, so the end result is increase with 2), which might become confusing. But it's all up to you and your programming.

Notice 2:
In some games the original code can exist out of multiple instructions, and sometimes, not always, it might happen that a code at another place jumps into your jump instruction end will then cause unknown behavior. If that happens, you should usually look near that instruction and see the jumps and fix it, or perhaps even choose to use a different address to do the code injection from. As long as you're able to figure out the address to change from inside your injected code.
 Code injections too tough? No problem, memory scanning and basic pointers should be enough to get you experienced enough and you can always try the tutorial later. Are you sure you want to quit? Come on. This step is simple. For health do a float scan, and for ammo a double type. (don't forget to disable fastscan for double in this case) Just ignore the fact that it looks different because it has a "." in the value. You sure you want to quit? DEAD Failure. Your team died Fire First step too hard? Better give up now! Health Health: %s I think you're dead!%sPress ok to become a brain eating zombie In the previous step I explained how to use the Code finder to handle changing locations. But that method alone makes it difficult to find the address to set the values you want.
That's why there are pointers:

At the bottom you'll find 2 buttons. One will change the value, and the other changes the value AND the location of the value.
For this step you don't really need to know assembler, but it helps a lot if you do.

First find the address of the value. When you've found it use the function to find out what accesses this address.
Change the value again, and a item will show in the list. Double click that item. (or select and click on more info) and a new window will open with detailed information on what happened when the instruction ran.
If the assembler instruction doesn't have anything between a '[' and ']' then use another item in the list.
If it does it will say what it think will be the value of the pointer you need.
Go back to the main cheat engine window (you can keep this extra info window open if you want, but if you close it, remember what is between the [ and ] ) and do a 4 byte scan in hexadecimal for the value the extra info told you.
When done scanning it may return 1 or a few hundred addresses. Most of the time the address you need will be the smallest one. Now click on manually add and select the pointer checkbox.

The window will change and allow you to type in the address of a pointer and a offset.
Fill in as address the address you just found.
If the assembler instruction has a calculation (e.g: [esi+12]) at the end then type the value in that's at the end. else leave it 0. If it was a more complicated instruction look at the calculation.

example of a more complicated instruction:
[EAX*2+EDX+00000310] eax=4C and edx=00801234.
In this case EDX would be the value the pointer has, and EAX*2+00000310 the offset, so the offset you'd fill in would be 2*4C+00000310=3A8.  (this is all in hex, use calc.exe from windows in scientific mode to calculate)

Back to the tutorial, click OK and the address will be added, If all went right the address will show P->xxxxxxx, with xxxxxxx being the address of the value you found. If thats not right, you've done something wrong.
Now, change the value using the pointer you added in 5000 and freeze it. Then click Change pointer, and if all went 
right the next button will become visible.


extra:
And you could also use the pointer scanner to find the pointer to this address
 In the previous tutorial we used bytes to scan, but some games store information in so called 'floating point' notations. 
(probably to prevent simple memory scanners from finding it the easy way)
a floating point is a value with some digits behind the point. (like 5.12 or 11321.1)

Below you see your health and ammo. Both are stored as Floating point notations, but health is stored as a float and ammo is stored as a double.
Click on hit me to lose some health, and on shoot to decrease your ammo with 0.5
 
You have to set BOTH values to 5000 or higher to proceed.

Exact value scan will work fine here, but you may want to experiment with other types too.














Hint: It is recommended to disable "Fast Scan" for type double
 Just play around with the tutorial and learn how the other scanmethods work. Now that you have opened the tutorial with Cheat Engine let's get on with the next step.

You can see at the bottom of this window is the text Health: xxx
Each time you click 'Hit me'  your health gets decreased.

To get to the next step you have to find this value and change it to 1000

To find the value there are different ways, but I'll tell you about the easiest, 'Exact Value':
First make sure value type is set to at least 2-bytes or 4-bytes. 1-byte will also work, but you'll run into an easy to fix problem when you've found the address and want to change it. The 8-byte may perhaps works if the bytes after the address are 0, but I wouldn't take the bet.
Single, double, and the other scans just don't work, because they store the value in a different way.

When the value type is set correctly, make sure the scantype is set to 'Exact Value'
Then fill in the number your health is in the value box. And click 'First Scan'
After a while (if you have a extremely slow pc) the scan is done and the results are shown in the list on the left

If you find more than 1 address and you don't know for sure which address it is, click 'Hit me', fill in the new health value into the value box, and click 'Next Scan'
repeat this until you're sure you've found it. (that includes that there's only 1 address in the list.....)

Now double click the address in the list on the left. This makes the address pop-up in the list at the bottom, showing you the current value.
Double click the value, (or select it and press enter), and change the value to 1000.

If everything went ok the next button should become enabled, and you're ready for the next step.


Note:
If you did anything wrong while scanning, click "New Scan" and repeat the scanning again.
Also, try playing around with the value and click 'hit me'
 Ok, seeing that you've figured out how to find a value using exact value let's move on to the next step.

First things first though. Since you are doing a new scan, you have to click on New Scan first, to start a new scan. (You may think this is straighforward, but you'd be surprised how many people get stuck on that step) I won't be explaining this step again, so keep this in mind
Now that you've started a new scan, let's continue

In the previous test we knew the initial value so we could do a exact value, but now we have a status bar where we don't know the starting value.
We only know that the value is between 0 and 500. And each time you click 'hit me' you lose some health. The amount you lose each time is shown above the status bar.

Again there are several different ways to find the value. (like doing a decreased value by... scan), but I'll only explain the easiest. "Unknown initial value", and decreased value.
Because you don't know the value it is right now, a exact value wont do any good, so choose as scantype 'Unknown initial value', again, the value type is 4-bytes. (most windows apps use 4-bytes)click first scan and wait till it's done.

When it is done click 'hit me'. You'll lose some of your health. (the amount you lost shows for a few seconds and then disappears, but you don't need that)
Now go to Cheat Engine, and choose 'Decreased Value' and click 'Next Scan'
When that scan is done, click hit me again, and repeat the above till you only find a few. 

We know the value is between 0 and 500, so pick the one that is most likely the address we need, and add it to the list.
Now change the health to 5000, to proceed to the next step.
 Out of ammo!%sPress ok to stock up on some ammo Password Player 1: Dave Player 2: Eric Quitting on step2? This is the easiest step there is. Find health, change health, done.... Sure you want to quit? Restart game Seems you've done it again! Let me get a replacement! (And restart your scan!) So, pointers are too difficult eh? Don't worry, try again later. For most beginners this is difficult to grasp. But I have to tell you it's a powerfull feature if you learn to use it. Are you sure you want to quit? Sometimes the location something is stored at changes when you restart the game, or even while you're playing.. In that case you can use 2 things to still make a table that works.
In this step I'll try to describe how to use the Code Finder function.

The value down here will be at a different location each time you start the tutorial, so a normal entry in the address list wouldn't work.
First try to find the address. (you've got to this point so I assume you know how to)
When you've found the address, right-click the address in Cheat Engine and choose "Find out what writes to this address". A window will pop up with an empty list.
Then click on the Change value button in this tutorial, and go back to Cheat Engine. If everything went right there should be an address with assembler code there now.
Click it and choose the replace option to replace it with code that does nothing. That will also add the code address to the code list in the advanced options window. (Which gets saved if you save your table)

Click on stop, so the game will start running normal again, and close to close the window.
Now, click on Change value, and if everything went right the Next button should become enabled.

Note: When you're freezing the address with a high enough speed it may happen that next becomes visible anyhow
 Step 2 Step 2: Exact Value scanning (PW= Step 3 Step 3 isn't really that hard. Just do a new scan, unkown initial value and then decreased value till you find it. Almost everyone gets past this one. Sure you want to quit? Step 3: Unknown initial value (PW= Step 4 Step 4: Floating points (PW= Step 5 Step 5: Code finder (PW=%s) Step 6 Step 6: Pointers: (PW=%s) Step 7 Step 7: Code Injection: (PW=%s) Step 8 Step 8: Multilevel pointers: (PW=%s) Step 9 Step 9: Shared code: (PW=%s) Stop TFORM10.BUTTON5.CAPTIONAttack TFORM10.BUTTON7.CAPTIONAttack TFORM10.BUTTON8.CAPTIONAttack TFORM10.LABEL10.CAPTIONHealth: 500 TFORM10.LABEL6.CAPTIONHealth: 100 TFORM2.BUTTON1.CAPTIONNext TFORM2.LABEL1.CAPTION100 TFORM2.LABEL2.CAPTIONHealth: TFORM3.BUTTON1.CAPTIONNext TFORM3.BUTTON2.CAPTIONHit me TFORM3.SPEEDBUTTON1.CAPTIONSkip TFORM4.BUTTON1.CAPTIONOK TFORM5.BUTTON2.CAPTIONNext TFORM5.BUTTON3.CAPTIONHit me TFORM5.LABEL1.CAPTION100 TFORM5.LABEL3.CAPTIONHealth: TFORM5.LABEL4.CAPTION100 TFORM5.SPEEDBUTTON1.CAPTIONSkip TFORM6.BUTTON2.CAPTIONNext TFORM6.LABEL1.CAPTION100 TFORM6.SPEEDBUTTON1.CAPTIONSkip TFORM7.BUTTON1.CAPTIONChange value TFORM7.BUTTON2.CAPTIONNext TFORM7.LABEL1.CAPTION100 TFORM7.SPEEDBUTTON1.CAPTIONSkip TFORM8.BUTTON1.CAPTIONHit me TFORM8.BUTTON2.CAPTIONNext TFORM8.LABEL1.CAPTIONHealth: 100 TFORM8.SPEEDBUTTON1.CAPTIONSkip TFORM9.BUTTON1.CAPTIONChange value TFORM9.BUTTON2.CAPTIONNext TFORM9.BUTTON3.CAPTIONChange pointer TFORM9.LABEL1.CAPTION100 TFORM9.LABEL2.CAPTION3 TFORM9.SPEEDBUTTON1.CAPTIONSkip This may look difficult. but it's basicly. Find health, rigthclick health, find what writes, change health, click replace, change health, done.  But don't feel down if you don't get it. at least you know the basicas of memory scanning...  Are you sure you want to quit? This player is already dead. Restart the game This step will explain how to deal with code that is used for other object of the same type

Often when you've found health of a unit or your own player, you will find that if you remove the code, it affects enemies as well.
In these cases you must find out how to distinguish between your and the enemies objects.
Sometimes this is as easy as checking the first 4 bytes (Function pointer table) which often point to a unique location for the player, and sometimes it's a team number, or a pointer to a pointer to a pointer to a pointer to a pointer to a playername. It all depends on the complexity of the game, and your luck

The easiest method is finding what addresses the code you found writes to and then use the dissect data feature to compare against two structures. (Your unit(s)/player and the enemies) And then see if you can find out a way to distinguish between them.
When you have found out how to distinguish between you and the computer you can inject an assembler script that checks for the condition and then either do not execute the code or do something else. (One hit kills for example)
Alternatively, you can also use this to build a so called "Array of byte" string which you can use to search which will result in a list of all your or the enemies players
In this tutorial I have implemented the most amazing game you will ever play.
It has 4 players. 2 Players belong to your team, and 2 Players belong to the computer. 
Your task is to find the code that writes the health and make it so you win the game WITHOUT freezing your health
To continue, press "Restart game and autoplay" to test that your code is correct


Tip: Health is a float
Tip2: There are multiple solutions
 This step will explain how to use multi-level pointers.
In step 6 you had a simple level-1 pointer, with the first address found already being the real base address.
This step however is a level-4 pointer. It has a pointer to a pointer to a pointer to a pointer to a pointer to the health.

You basicly do the same as in step 6. Find out what accesses the value, look at the instruction and what probably is the base pointer value, and what is the offset, and already fill that in or write it down. But in this case the address you'll find will also be a pointer. You just have to find out the pointer to that pointer exactly the same way as you did with the value. Find out what accesses that address you found, look at the assembler instruction, note the probable instruction and offset, and use that.
and continue till you can't get any further (usually when the base address is a static address, shown up as green)

Click Change Value to let the tutorial access the health.
If you think you've found the pointer path click Change Register. The pointers and value will then change and you'll have 3 seconds to freeze the address to 5000

Extra: This problem can also be solved using a auto assembler script, or using the pointer scanner
Extra2: In some situations it is recommended to change ce's codefinder settings to Access violations when 
Encountering instructions like mov eax,[eax] since debugregisters show it AFTER it was changed, making it hard to find out the the value of the pointer





Extra3: If you're still reading. You might notice that when looking at the assembler instructions that the pointer is being read and filled out in the same codeblock (same routine, if you know assembler, look up till the start of the routine). This doesn't always happen, but can be really useful in finding a pointer when debugging is troublesome
 This was the last tutorial and you skipped it. You lose Tutorial End Unrandomizer detected Use this to go imeadiatly to the step you want to try Welcome to the Cheat Engine Tutorial. (v3.3)

This tutorial will try to explain the basics of cheating on games, and getting you more familiar with Cheat Engine.

First open Cheat Engine if it hasn't been opened yet.
Then click on the 'open process' icon. (top left icon, with the computer on it)

When the process window is open find this tutorial. The process name is probably 'tutorial.exe' unless you renamed it.
Select it, and click "Open". Just ignore all the other buttons right now, but experiment with them later if you feel like it.

When everything went right, the process window should be gone now and at the top of CE the process name is shown.

Now, click NEXT to continue to the next step. (Or fill in the password to proceed to that particular step you want)
 Well done, you've completed the tutorial of Cheat Engine. You have %s second%s left to change the value to 5000 You've got %s seconds left to change the value to 5000 tform1.btnok.captionOK tform1.button1.captionNext tform10.button4.captionAttack tform10.button6.captionRestart game and autoplay tform10.label1.caption100 tform10.label2.captionHealth: tform10.label4.captionHealth: 100 tform10.label8.captionHealth: 500 tform2.button2.captionHit me tform2.speedbutton1.captionSkip tform6.button1.captionChange value tform7.button3.captionChange pointer tform7.label2.caption3 unit10.rsrestartgameandautoplayRestart game and autoplay unit2.rsawyouredeathletmereviveyouAw, you're dead! Let me revive you unit2.rsloserBOO unit3.rsloserBOO unit5.rsloserBOO unit6.rsloserBOO unit6.rswelldoneyouscrewedupthetutorialWell done, you screwed up the tutorial!!!! unit7.rsloserBOO unit7.rswelldoneyouscrewedupthetutorialWell done, you screwed up the tutorial!!!! unit8.rsawyouredeathletmereviveyouAw, you're dead! Let me revive you unit8.rsloserBOO unit9.rsloserBOO Content-Type: text/plain; charset=UTF-8
Project-Id-Version: Traduction de Cheat Engine Version 6.6.0.0 Tutoriel
POT-Creation-Date: 
PO-Revision-Date: 
Last-Translator: 
Language-Team: KéKéCoRe
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Language: fr_FR
X-Generator: Poedit 1.8.9
X-Poedit-SourceCharset: UTF-8
 La valeur diminue de  (Double) (Flottante) 090453 Munitions Et vous pouvez toujours vérifier le Forum de Cheat Engine pour obtenir des informations utiles et demander de l'aide. Aw, vous avez presque atteint la fin. Mais ne vous inquiétez pas, les pointeurs à plusieurs niveaux peuvent-être très dur. Si vous obtenez plus d'expérience un jour, vous pouvez essayer de nouveau. Êtes-vous sûr de vouloir quitter? C. Joueur 3: HAL C. Joueur 4: KITT Vous ne parvenez pas à faire ça? Ne vous inquiétez pas. Essayez de demander dans le forum à cheatengine.org où peut-être que quelqu'un l'a déjà expliqué. Êtes-vous sûr de vouloir quitter? Forum Cheat Engine Tutoriel Moteur de Triche Version 3.3 Injection de code est une technique où on injecte un morceau de code dans le processus cible, puis on redirige l'exécution du code pour passer par votre propre code injecté.

Dans cette étape, vous aurez une valeur de santé et un bouton qui va diminuer votre santé par 1 chaque fois que vous cliquez dessus.
Votre tâche consiste à utiliser l'injection de code pour augmenter la valeur de votre santé par 2 à chaque fois qu'il est cliqué.

Commencez par trouver l'adresse de la santé puis trouver ce qui lui écrit.
Puis quand vous avez trouvé le code qui la diminue accédez à cette adresse dans le désassembleur et ouvrez la fenêtre auto-assembleur (Ctrl + A)
Cliquer sur modèle, puis injection de code, et donnez lui l'adresse qui diminue la santé (Si ce n'est déjà rempli correctement)
Cela va générer un modèle d'injection auto-assembleur de base que vous pouvez utiliser pour votre code.

Remarquez l'alloc, qui allouera un bloc de mémoire pour votre cave de code, dans le passé, dans les pré systèmes de Windows 2000, les gens devait trouver les caves de code dans la mémoire (les régions de mémoire inutilisés par le jeu), mais c'est heureusement une chose du passé depuis Windows 2000, de nos jours, ça cause des erreurs, en raison de SP2 de XP et le bit NX des nouveaux CPUs.

Notez également la ligne newmem: et originalcode: et le texte 'Placez votre code ici '
Comme vous l'aurez deviné, écrivez votre code ici qui augmentera la santé avec deux.
Une instruction assembleur utile dans ce cas est l'instruction ADD.
Voici quelques exemples:
'ADD [00901234], 9' pour augmenter l'adresse à 00901234 avec 9.
'ADD [ESP + 4], 9' pour augmenter l'adresse pointée par ESP+4 avec  9.
Dans ce cas, vous devrez utiliser la même chose entre les crochets que le code original qui diminue votre santé utilise.

Remarquez:
Il est recommandé de supprimer la ligne qui diminue votre santé de la section de code d'origine, sinon vous devrez augmenter votre santé avec trois (vous augmentez avec 3, le code d'origine diminue avec 1, de sorte que le résultat final est augmentation de 2) , ce qui pourrait devenir source de confusion. Mais c'est tout à vous et votre programmation.

Remarquez 2:
Dans certains jeux, le code original peut exister sur plusieurs instructions, et parfois, pas toujours, il peut arriver qu'un code à un autre endroit saute dans votre instruction de saut et causera alors un comportement inconnu. Si cela se produit, vous devriez normalement trouver à proximité de cette instruction et de voir les sauts et le réparer, ou peut-être même choisir d'utiliser une adresse différente pour faire l'injection de code. Tant que vous êtes en mesure de déterminer l'adresse a changer de l'intérieur de votre code injecté.
 Injections de code trop difficile? Pas de problème, le scan de la mémoire et des points de base devraient être assez pour vous. Avec assez d'expérience, vous pouvez toujours essayer le tutoriel plus tard. Êtes-vous sûr de vouloir quitter? Allons. Cette étape est simple. Pour la santé faire une Analyse d'une Valeur Flottante, et pour les munitions d'un type Double. (N'oubliez pas de désactiver l'Analyse Rapide pour Double dans ce cas) simplement ignorer le fait qu'il semble différent parce qu'il a une '.' dans la valeur. Êtes-vous sûr de vouloir quitter? MORT Échec. Votre équipe est morte Feu La première étape est trop difficile? Vous feriez mieux d'abandonner maintenant! Santé: Santé: %s Je pense que vous êtes mort!%s Appuyez sur ok à devenir un zombie mangeur de cerveau Dans l'étape précédente, j'ai expliqué comment utiliser le Détecteur de Code pour gérer le changement d'emplacement. Mais cette méthode seul fait qu'il est difficile de trouver l'adresse pour définir les valeurs que vous voulez.
C'est pourquoi il y a des pointeurs:

En bas, vous trouverez deux boutons. Un va changer la valeur, et l'autre modifie la valeur et son emplacement.
Pour cette étape, vous n'avez pas vraiment besoin de connaître l'assembleur (Programmer dans le language ASM), mais ça aide beaucoup si vous le connaissez.

D'abord trouvez l'adresse de la valeur. Lorsque vous l'avez trouvé, utilisez la fonction pour savoir ce qui accède à cette adresse.
Modifiez la valeur de nouveau, un élément s'affiche dans la liste. Double-cliquez sur cet élément. (Ou sélectionnez et cliquez sur plus d'infos) et une nouvelle fenêtre s'ouvrira avec des informations détaillées sur ce qui est arrivé lorsque l'instruction à été exécutée.
Si l'instruction assembleur n'a rien entre un '[' et ']' alors utilisez un autre élément dans la liste.
Si ce n'est pas le cas, il va dire ce qui -a son avis- sera la valeur du pointeur dont vous avez besoin.
Retour à la fenêtre principale de Cheat Engine (vous pouvez garder cette fenêtre info supplémentaire ouverte si vous voulez, mais si vous la fermez, rappelez-vous ce qui est entre le [xxx]) et faire une analyse de 4 Bytes en hexadécimal avec la valeur que l'info supplémentaire vous a donné.
Lorsque vous avez terminé l'analyse, il peut retourner une ou quelques centaines d'adresses. La plupart du temps l'adresse que vous cherchez sera la plus petite. Maintenant, cliquez sur ajouter manuellement et cochez la case de pointeur.

La fenêtre va changer et vous permettre de taper l'adresse d'un pointeur et un offset (décalage).
Remplissez comme adresse l'adresse que vous venez de trouver.
Si l'instruction assembleur a un calcul (par exemple: [esi+12]) à la fin alors tapez la valeur qui est à la fin. Sinon laisser la 0. Si c'était une instruction plus compliquée, regardez le calcul.

Exemple d'une instruction plus compliquée:
[EAX*2+EDX+00000310] eax=4C et edx=00801234.
Dans ces cas EDX serait la valeur du pointeur, et EAX * 2 + 00000310 le décalage (offset), de sorte que le décalage que vous remplissez serait 2 * 4C + 00000310 = 3A8. (c'est tout en hexadécimal, utilisez la calculatrice de Windows en mode scientifique pour calculer)

Retour vers le tutoriel, cliquez sur OK et l'adresse sera ajoutée, si tout va bien, l'adresse montrera P> xxxxxxx, avec xxxxxxx étant l'adresse de la valeur que vous avez trouvé. Si ce n'est pas le cas, vous avez fait une erreur.
Maintenant, changez la valeur en utilisant le pointeur vous avez ajouté à 5000 et gelez là. Puis cliquez sur Modifier pointeur, et si tout c'est bien passé 
le bouton 'Suivant' se débloquera pour l'étape suivante.


extra:
Vous pouvez aussi utiliser l'analyseur du pointeur pour trouver le pointeur à cette adresse.
 Dans l'étape précédente, j'ai expliqué comment utiliser le Détecteur de Code pour gérer le changement d'emplacement. Mais cette méthode seul fait qu'il est difficile de trouver l'adresse pour définir les valeurs que vous voulez.
C'est pourquoi il y a des pointeurs:

En bas, vous trouverez deux boutons. Un va changer la valeur, et l'autre modifie la valeur et son emplacement.
Pour cette étape, vous n'avez pas vraiment besoin de connaître l'assembleur (Programmer dans le language ASM), mais ça aide beaucoup si vous le connaissez.

D'abord trouvez l'adresse de la valeur. Lorsque vous l'avez trouvé, utilisez la fonction pour savoir ce qui accède à cette adresse.
Modifiez la valeur de nouveau, un élément s'affiche dans la liste. Double-cliquez sur cet élément. (Ou sélectionnez et cliquez sur plus d'infos) et une nouvelle fenêtre s'ouvrira avec des informations détaillées sur ce qui est arrivé lorsque l'instruction à été exécutée.
Si l'instruction assembleur n'a rien entre un '[' et ']' alors utilisez un autre élément dans la liste.
Si ce n'est pas le cas, il va dire ce qui -a son avis- sera la valeur du pointeur dont vous avez besoin.
Retour à la fenêtre principale de Cheat Engine (vous pouvez garder cette fenêtre info supplémentaire ouverte si vous voulez, mais si vous la fermez, rappelez-vous ce qui est entre le [xxx]) et faire une analyse de 4 Bytes en hexadécimal avec la valeur que l'info supplémentaire vous a donné.
Lorsque vous avez terminé l'analyse, il peut retourner une ou quelques centaines d'adresses. La plupart du temps l'adresse que vous cherchez sera la plus petite. Maintenant, cliquez sur ajouter manuellement et cochez la case de pointeur.

La fenêtre va changer et vous permettre de taper l'adresse d'un pointeur et un offset (décalage).
Remplissez comme adresse l'adresse que vous venez de trouver.
Si l'instruction assembleur a un calcul (par exemple: [esi+12]) à la fin alors tapez la valeur qui est à la fin. Sinon laisser la 0. Si c'était une instruction plus compliquée, regardez le calcul.

Exemple d'une instruction plus compliquée:
[EAX*2+EDX+00000310] eax=4C et edx=00801234.
Dans ces cas EDX serait la valeur du pointeur, et EAX * 2 + 00000310 le décalage (offset), de sorte que le décalage que vous remplissez serait 2 * 4C + 00000310 = 3A8. (c'est tout en hexadécimal, utilisez la calculatrice de Windows en mode scientifique pour calculer)

Retour vers le tutoriel, cliquez sur OK et l'adresse sera ajoutée, si tout va bien, l'adresse montrera P> xxxxxxx, avec xxxxxxx étant l'adresse de la valeur que vous avez trouvé. Si ce n'est pas le cas, vous avez fait une erreur.
Maintenant, changez la valeur en utilisant le pointeur vous avez ajouté à 5000 et gelez là. Puis cliquez sur Modifier pointeur, et si tout c'est bien passé 
le bouton 'Suivant' se débloquera pour l'étape suivante.


extra:
Vous pouvez aussi utiliser l'analyseur du pointeur pour trouver le pointeur à cette adresse.
 Expérimente avec le tutoriel et apprends comment les autres méthodes d'analyse fonctionnent. Maintenant que vous avez ouvert le tutoriel avec Cheat Engine, commençons l'étape suivante.

Vous voyez au bas de cette fenêtre le texte Santé: xxx.
Chaque fois que vous cliquez sur 'Frappe' votre santé diminue.

Pour passer à l'étape suivante, vous devez trouver cette valeur et la changer à 1000.

Pour trouver la valeur, il y a différentes méthodes, mais je vais vous montrer la plus facile, 'valeur exacte':
Premièrement assurez-vous que le type de valeur est fixé à au moins 2 Bytes ou 4 Bytes, 1 Byte fonctionnera également, mais vous trouverez  (facile a corriger) quand vous voudrez changer la valeur, Le 8 Bytes pourrait fonctionner si les
Bytes après l'adresse sont 0, mais je ne voudrais pas prendre le pari.
Float, Double, et les autres type ne fonctionneront pas, car elles stockent la valeur d'une manière différente.

Lorsque le Type de Valeur est définie correctement sur Cheat Engine, assurez-vous que le Type d'Analyse est réglé sur 'Valeur Exacte'.
Ensuite, remplissez la valeur de votre santé sur Cheat Engine dans la case valeur. Et cliquez sur 'Premier scan'.
Après un certain temps (si vous avez un PC extrêmement lent) l'analyse est effectuée et les résultats sont présentés dans la Liste d'Adresse sur la gauche.

Si vous trouvez plus d'une Adresse et vous ne savez pas avec certitude quelle Adresse c'est, cliquez sur 'Frappe', remplissez la nouvelle valeur de la santé dans la case valeur, et cliquez sur 'scan Suivant'.
Répéter jusqu'à ce que vous êtes sûr que vous l'avez trouvé. (une seule adresse dans la liste d'adresse..)

Double-cliquez sur l'adresse dans la liste d'adresse de gauche, une fois trouvé. Cela va rendre l'adresse trouver dans la liste d'adresse en bas, vous montrant la valeur actuelle.
Double-cliquez sur la valeur (Ou Sélectionnez-le et appuyez sur Entrée), et modifiez la valeur à 1000.

Si tout s'est bien passé vous pouvez aller à l'étape suivante en cliquant sur le bouton 'Suivant' qui s'est déverrouillé, et vous êtes prêt pour la prochaine étape.


Remarque:
Si vous avez fait une erreur pendant la scan, cliquez sur 'Nouveau scan' et recommencez.
Essayez de jouer avec la valeur et cliquez sur 'Frappe'.
 Comme vous avez appris comment trouver une valeur exacte. Passons à cette étape.
Dans l'étape précédente, nous connaissions la valeur initiale, et on pouvait faire un scan a valeur exacte, mais maintenant nous avons une barre d'état où on ne connaît pas la valeur de départ.
Nous savons seulement que la valeur est comprise entre 0 et 500. Et chaque fois que vous cliquez sur 'Frappe' la santé diminue. Le montant que vous perdez à chaque fois est indiqué au dessus de barre d'état.

Encore une fois, il y a plusieurs façons de trouver la valeur. Mais j'expliquerais la méthode la plus facile. 'Valeur Initiale Inconnue', et la 'Valeur a Diminué'.
Parce que vous ne connaissez pas la valeur. Donc, choisissiez dans Type de Valeur, '4 Bytes' et dans Type de d'Analyse 'Valeur Initiale Inconnue'. La plus part des Application et jeu utilise des Valeurs en 4 Bytes.

Quand c'est fait. A chaque fois, que vous cliquez sur 'Frappe', la santé diminue et vous indique de combien elle a diminué. (C'est juste une information)
Maintenant sur Cheat Engine, une fois la première analyse faite, mettre dans Type d'Analyse 'Valeur Diminuée' et cliquer sur Analyse Suivante.
Lorsque l'analyse est terminée, recommencez; d'abord cliquez sur 'Frappe' et Analyse Suivante. Jusqu'à ce que vous trouvez l'adresse de la valeur voulue.
Pour accéder à l'étape suivante, vous devez changer la valeur de la santé a 5000.
 À court de munitions! %s Appuyez sur OK pour approvisionner en quelques munitions Mot de Passe Joueur 1: Dave Joueur 2: Eric Vous voulez quitté l'étape 1? C'est l'étape la plus facile. Trouvez la santé, changez la, c'est fait.... Sûr de vouloir quitter? Redémarrer le jeu Vous l'avez encore fait? appuyez sur OK pour avoir une nouvelle vie, et redémarrer le scan Donc, les pointeurs sont trop difficiles, hein? Ne vous inquiétez pas, réessayez plus tard. Pour la plupart des débutants c'est difficile à saisir. Mais je dois vous dire que c'est une fonctionnalité puissante si vous apprenez à l'utiliser. Êtes-vous sûr de vouloir quitter? Parfois, l'emplacement ou des données sont stockées change quand vous redémarrez le jeu, ou même pendant que vous jouez .. Dans ces cas, vous pouvez utiliser deux choses pour faire une table qui fonctionne.
Dans cette étape, je vais essayer de décrire comment utiliser la fonction Détecteur de Code.

La valeur ici sera à un endroit différent à chaque fois que vous démarrez le tutoriel, donc une entrée normale dans la liste d'adresses ne fonctionnera pas.
Essayez d'abord de trouver l'adresse. (Vous êtes arrivés à ce point donc je suppose que vous savez comment faire)
Lorsque vous avez trouvé l'adresse, cliquez-droit sur l'adresse dans Cheat Engine et choisissez 'Découvrez ce que écrit à cette adresse'. Une fenêtre s'ouvrira avec une liste vide.
Ensuite, cliquez sur le bouton Modifier de la valeur dans ce tutoriel, et revenez à Cheat Engine. Si tout va bien il devrait y avoir une adresse avec un code assembleur.
Cliquez dessus et choisissez l'option de le remplacer par un code qui ne fait rien. Cela va également ajouter l'adresse du code à la liste de code dans la fenêtre des options avancées. (Qui est enregistrée quand vous enregistrez votre table)

Cliquez sur arrêt, le jeu va commencer à fonctionner à nouveau normalement, et 'fermer' pour fermer la fenêtre.
Maintenant, cliquez sur Modifier la valeur, et si tout va bien le bouton Suivant devrait être débloqué.

Remarque: Si vous gelez la valeur avec une vitesse suffisante ,le button 'suivant' pourrait devenir visible.
 Étape 1 Étape 1: Scan d'Une Valeur Exacte: (MP=%s Étape 2 L'étape 2 n'est pas vraiment difficile. Il suffit de faire un nouveau scan, Valeur Initiale Inconnue, puis (la valeur à diminué) jusqu'à ce que vous trouvez l'adresse. Presque tout le monde a passé cette étape. Êtes-vous sûr de vouloir quitter? Étape 2: Analyse d'Une Valeur Inconnue: (MP= Étape 3 Étape 3: Virgules Flottantes: (MP= Étape 4 Étape 4: Détecteur de Code: (MP=%s) Étape 5 Étape 5: Pointeurs: (MP=%s) Étape 6 Étape 6: Injection de Code: (MP=%s) Étape 7 Étape 7: Pointeurs de Plusieurs Niveaux: (MP=%s) Étape 8 Étape 8: Code Partagé: (MP=%s) Arrêter Attaquer Attaquer Attaquer Santé: 500 Santé: 100 Suivant 100 Santé:  Suivant Frappe Saut OK Suivant Frappe 100 Santé:  100 Saut Suivant 100 Saut Modifier la valeur Suivant 100 Saut Frappe Suivant Santé: 100 Saut Modifier la valeur Suivant Changer le pointeur 100 3 Saut Faites comme dans les étapes précédentes, puis une fois avoir trouver l'Adresse de la Santé, clique-droit de la souris, puis cliquer sur découvrir ce qui écrit a cette adresse, une fois avoir trouvé l'instruction cliquez sur remplacer et ok. Vous connaissez les bases de l'analyse de la mémoire. Êtes-vous sûr que vous voulez quitter ? Ce joueur est déjà mort. Redémarrez le jeu Cette étape vous expliquera comment faire face a un code qui est utilisé par d'autre objets du même type.

Souvent, quand vous avez trouvé la santé d'une unité ou de votre propre joueur, vous verrez que si vous supprimez le code, il affectera vos ennemis aussi.
Dans ces cas, vous devez trouver un moyen de distinguer entre vos ennemis et vous.
Parfois, c'est aussi facile que de vérifier les quatre premiers Bytes (Tableau des Fonctions du Pointeur) qui pointent souvent vers un emplacement unique pour le joueur, et parfois c'est un numéro d'équipe, ou un pointeur vers un pointeur vers un pointeur vers un pointeur vers un pointeur à un nom de joueur. Tout dépend de la complexité du jeu, et votre chance.

La méthode la plus simple est de trouver les adresses où le code que vous avez trouvé écrit des données, puis utiliser la fonctionnalité (Dissection de données) pour comparer deux structures. (Votre unité(s) / Joueur et les Ennemis) et ensuite voir si vous pouvez trouver un moyen de distinguer entre eux.
Lorsque vous avez trouvé comment faire la distinction entre vous et l'ordinateur vous pouvez injecter un Script Assembleur qui vérifie la condition et ensuite, soit qui n'execute pas le code ou qui fais autre chose (Un coup mortel par exemple)
Sinon, vous pouvez également l'utiliser pour construire un soi-disant "Tableau de Byte" "chaîne que vous pouvez utiliser pour rechercher, ce qui résultera par une liste de tous vos ennemis ou vos joueurs"
Dans ce tutoriel, j'ai mis en place le jeu le plus incroyable que vous jouerez jamais.
Il dispose de 4 joueurs. 2 joueurs appartiennent à votre équipe, et deux autres appartiennent à l'ordinateur (l'autre équipe).
Votre tâche est de trouvé le code qui écrit à la santé et faire en sorte que vous gagnez le jeu SANS geler votre santé.
Pour continuer, appuyez sur "Redémarrez le jeu  et Lecture Automatique" pour tester que votre code est correct.


Astuce: La santé est float (donc une Valeur Flottante).
Astuce2: Il y a plusieurs solutions.
 Cette étape va expliquer comment utiliser des pointeurs à plusieurs niveaux.
Dans l'étape 5, vous aviez un simple pointeur de niveau 1, avec la première adresse trouvée étant déjà l'adresse de base réelle.
Dans cette étape, c'est un pointeur de niveau 4. Un pointeur vers un pointeur vers un pointeur vers un pointeur vers un pointeur vers la santé.

 Ce fut la dernière étape et vous sautez, cela. Tu as perdu! Fin du Tutoriel Générateur Aléatoire Détecté Utilisez cette option pour vous rendre immédiatement à l'étape que vous voulez essayer Bienvenue au tutoriel de Cheat Engine. (v3.2)

Ce tutoriel va essayer d'expliquer les bases de tricherie dans les jeux, et vous apprendre à utiliser Cheat Engine.

Ouvrez le programme Cheat Engine, s'il n'est pas encore ouvert.
Ensuite, cliquez sur l'icône "Ouverture de Processus". (icône en haut à gauche, avec l'ordinateur sur elle)

Lorsque la fenêtre de processus est ouverte, trouvez ce tutoriel. Le nom du processus est probablement 'tutorial.exe' sauf si vous l'avez renommé.
Sélectionnez-le et cliquez sur OK. ignorez tous les autres boutons pour le moment, vous pourrez toujours les essayer plus tard.

Si tout est correct, la fenêtre des processus devrait avoir disparu maintenant et dans le haut de CE le nom du processus ouvert devrait apparaître.

Maintenant, cliquez sur Suivant pour continuer à l'étape suivante. (Ou remplissez le mot de passe pour accéder à l'étape que vous voulez qui se trouve dans le titre de l'étape par MP)
 Bravo, vous avez terminé le tutoriel de Cheat Engine. Vous avez %s secondes pour changer la valeur à 5000 Vous avez %s secondes pour changer la valeur à 5000 OK Suivant Attaquer Redémarrer le jeu avec Lecture Automatique 100 Santé:  Santé: 100 Santé: 500 Frappe Saut Modifier la valeur Changer le pointeur 3 Redémarrer le jeu avec Lecture Automatique Aw, vous êtes mort! Laissez-moi vous revivre Perdant Perdant Perdant Perdant Bravo, vous avez foiré le tutoriel!!!! Perdant Bravo, vous avez foiré le tutoriel!!!! Aw, vous êtes mort! Laissez-moi revivre Perdant Perdant 