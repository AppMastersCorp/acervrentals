-- Phase 1: db ChangesA L T E R   T A B L E   [ V e h i c l e S a l e ] . [ O f f e r M a s t e r ]   D R O P   C O N S T R A I N T   [ F K _ O f f e r M a s t e r _ V e h i c l e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ W i d g e t ]   D R O P   C O N S T R A I N T   [ F K _ W i d g e t _ P a g e ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e s ]   D R O P   C O N S T R A I N T   [ F K _ V e h i c l e s _ V e h i c l e T y p e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e s ]   D R O P   C O N S T R A I N T   [ F K _ V e h i c l e s _ M o d e l s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e s ]   D R O P   C O N S T R A I N T   [ F K _ V e h i c l e s _ C a t e g o r i e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e s ]   D R O P   C O N S T R A I N T   [ F K _ V e h i c l e s _ B r a n d s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e R e n t l e C o n d i t i o n s ]   D R O P   C O N S T R A I N T   [ F K _ V e h i c l e R e n t l e C o n d i t i o n s _ V e h i c l e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e R e n t ]   D R O P   C O N S T R A I N T   [ F K _ V e h i c l e R e n t _ V e h i c l e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e R e n t ]   D R O P   C O N S T R A I N T   [ F K _ V e h i c l e R e n t _ R e n t T e r m s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e I m a g e s ]   D R O P   C O N S T R A I N T   [ F K _ V e h i c l e I m a g e s _ V e h i c l e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e F e a t u r e s ]   D R O P   C O N S T R A I N T   [ F K _ V e h i c l e F e a t u r e s _ V e h i c l e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e F e a t u r e s ]   D R O P   C O N S T R A I N T   [ F K _ V e h i c l e F e a t u r e s _ F e a t u r e s M a s t e r ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e A m e n t i e s ]   D R O P   C O N S T R A I N T   [ F K _ V e h i c l e A m e n t i e s _ V e h i c l e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e A m e n t i e s ]   D R O P   C O N S T R A I N T   [ F K _ V e h i c l e A m e n t i e s _ A m e n t i e s M a s t e r ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ U p l o a d F i l e s ]   D R O P   C O N S T R A I N T   [ F K _ U p l o a d F i l e s _ F o l d e r s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ F e a t u r e s M a s t e r ]   D R O P   C O N S T R A I N T   [ F K _ F e a t u r e s M a s t e r _ A m e n t i e s M a s t e r ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C a t e g o r i e s ]   D R O P   C O N S T R A I N T   [ F K _ C a t e g o r i e s _ V e h i c l e T y p e s ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ V e h i c l e S a l e ] . [ R o l e s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ V e h i c l e S a l e ] . [ R o l e s ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ V e h i c l e S a l e ] . [ O f f e r M a s t e r ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ V e h i c l e S a l e ] . [ O f f e r M a s t e r ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ V e h i c l e S a l e ] . [ N e w s l e t t e r ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ V e h i c l e S a l e ] . [ N e w s l e t t e r ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ W i s h l i s t ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ W i s h l i s t ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ W i d g e t ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ W i d g e t ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ V e h i c l e T y p e s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ V e h i c l e T y p e s ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ V e h i c l e s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ V e h i c l e s ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ V e h i c l e R e n t l e C o n d i t i o n s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ V e h i c l e R e n t l e C o n d i t i o n s ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ V e h i c l e R e n t ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ V e h i c l e R e n t ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ V e h i c l e I m a g e s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ V e h i c l e I m a g e s ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ V e h i c l e F e a t u r e s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ V e h i c l e F e a t u r e s ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ V e h i c l e A m e n t i e s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ V e h i c l e A m e n t i e s ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ U s e r s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ U s e r s ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ U p l o a d F i l e s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ U p l o a d F i l e s ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ T e s t i m o n i a l ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ T e s t i m o n i a l ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ R e n t T e r m s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ R e n t T e r m s ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P a g e I m a g e s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ P a g e I m a g e s ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P a g e ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ P a g e ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ M o d e l s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ M o d e l s ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ F o l d e r s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ F o l d e r s ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ F e a t u r e s M a s t e r ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ F e a t u r e s M a s t e r ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ F a q ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ F a q ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ C a t e g o r i e s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ C a t e g o r i e s ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ B r a n d s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ B r a n d s ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ B a n n e r s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ B a n n e r s ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ A m e n t i e s M a s t e r ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 D R O P   T A B L E   [ d b o ] . [ A m e n t i e s M a s t e r ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ A m e n t i e s M a s t e r ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ A m e n t i e s M a s t e r ] (  
 	 [ I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N a m e ]   [ n v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ D e s c r i p t i o n ]   [ n v a r c h a r ] ( 5 0 0 )   N U L L ,  
 	 [ I s A c t i v e ]   [ b i t ]   N U L L ,  
 	 [ I m a g e U r l ]   [ n v a r c h a r ] ( 5 0 0 )   N U L L ,  
   C O N S T R A I N T   [ P K _ A m e n t i e s M a s t e r ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ B a n n e r s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ B a n n e r s ] (  
 	 [ I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N a m e ]   [ n v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ B a n n e r U r l ]   [ n v a r c h a r ] ( 5 0 0 )   N U L L ,  
 	 [ B a n n e r L i n k ]   [ n v a r c h a r ] ( 5 0 0 )   N U L L ,  
 	 [ T i t l e ]   [ n v a r c h a r ] ( 5 0 0 )   N U L L ,  
 	 [ D e s c r i p t i o n ]   [ n c h a r ] ( 5 0 0 )   N U L L ,  
 	 [ I s A c t i v e ]   [ b i t ]   N U L L ,  
 	 [ P u b l i c K e y ]   [ n v a r c h a r ] ( 1 0 0 )   N U L L ,  
   C O N S T R A I N T   [ P K _ B a n n e r s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ B r a n d s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ B r a n d s ] (  
 	 [ I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N a m e ]   [ n v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ I s A c t i v e ]   [ b i t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ B r a n d s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ C a t e g o r i e s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ C a t e g o r i e s ] (  
 	 [ I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N a m e ]   [ n v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ V e h i c l e T y p e I D ]   [ i n t ]   N U L L ,  
 	 [ I m a g e U r l ]   [ n v a r c h a r ] ( 5 0 0 )   N U L L ,  
 	 [ I s A c t i v e ]   [ b i t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ C a t e g o r y ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ F a q ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ F a q ] (  
 	 [ F a q I d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ D e s c r i p t i o n ]   [ n v a r c h a r ] ( m a x )   N U L L ,  
 	 [ i s a c t i v e ]   [ b i t ]   N U L L ,  
 	 [ c r e a t e d o n ]   [ d a t e t i m e ]   N U L L ,  
 	 [ u p d a t e d o n ]   [ d a t e t i m e ]   N U L L ,  
 	 [ F a q r e s u l t ]   [ n v a r c h a r ] ( m a x )   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ F a q I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ F e a t u r e s M a s t e r ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ F e a t u r e s M a s t e r ] (  
 	 [ I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ A m e n t i e s I D ]   [ i n t ]   N U L L ,  
 	 [ T i t l e ]   [ n v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ D e s c r i p t i o n ]   [ n v a r c h a r ] ( 5 0 0 )   N U L L ,  
 	 [ I s A c t i v e ]   [ b i t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ F e a t u r e s M a s t e r ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ F o l d e r s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ F o l d e r s ] (  
 	 [ I d ]   [ i n t ]   I D E N T I T Y ( 0 , 1 )   N O T   N U L L ,  
 	 [ F o l d e r N a m e ]   [ v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ C r e a t e d O n ]   [ d a t e t i m e ]   N U L L ,  
 	 [ I s D e l e t e d ]   [ b i t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ F o l d e r s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
  
 G O  
 S E T   A N S I _ P A D D I N G   O F F  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ] (  
 	 [ I d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N a m e ]   [ n v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ E m a i l ]   [ n v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ P r o v i d e r K e y ]   [ n v a r c h a r ] ( m a x )   N U L L ,  
 	 [ P r o v i d e r N a m e ]   [ n v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ I s A c t i v e ]   [ b i t ]   N U L L ,  
 	 [ C r e a t e d O n ]   [ d a t e t i m e ]   N U L L ,  
   C O N S T R A I N T   [ P K _ L o g i n _ S o c a i l N e t w o r k ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ M o d e l s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ M o d e l s ] (  
 	 [ I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N a m e ]   [ n v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ I s A c t i v e ]   [ b i t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ M o d e l ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P a g e ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 S E T   A N S I _ P A D D I N G   O F F  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ P a g e ] (  
 	 [ I d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N a m e ]   [ v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ U r l ]   [ v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ I s D e l e t e d ]   [ b i t ]   N U L L ,  
 	 [ C r e a t e d O n ]   [ d a t e t i m e ]   N U L L   D E F A U L T   ( g e t d a t e ( ) ) ,  
 	 [ U p d a t e d O n ]   [ d a t e t i m e ]   N U L L   D E F A U L T   ( g e t d a t e ( ) ) ,  
   C O N S T R A I N T   [ P K _ P a g e ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
  
 G O  
 S E T   A N S I _ P A D D I N G   O F F  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P a g e I m a g e s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ P a g e I m a g e s ] (  
 	 [ I d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ P a g e I d ]   [ i n t ]   N U L L ,  
 	 [ I m a g e I d ]   [ v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ I m a g e P a t h ]   [ v a r c h a r ] ( m a x )   N U L L ,  
   C O N S T R A I N T   [ P K _ I m a g e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
  
 G O  
 S E T   A N S I _ P A D D I N G   O F F  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ R e n t T e r m s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ R e n t T e r m s ] (  
 	 [ I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ T e r m ]   [ n v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ I s A c t i v e ]   [ b i t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ R e n t T e r m s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ T e s t i m o n i a l ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ T e s t i m o n i a l ] (  
 	 [ I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ D e s c r i p t i o n ]   [ n v a r c h a r ] ( m a x )   N O T   N U L L ,  
 	 [ T i t l e ]   [ n v a r c h a r ] ( m a x )   N O T   N U L L ,  
 	 [ S u m m a r y ]   [ n v a r c h a r ] ( m a x )   N O T   N U L L ,  
 	 [ I m a g e U R l ]   [ v a r c h a r ] ( m a x )   N U L L ,  
 	 [ i s a c t i v e ]   [ b i t ]   N O T   N U L L ,  
 	 [ c r e a t e d o n ]   [ d a t e t i m e ]   N U L L ,  
 	 [ u p d a t e d o n ]   [ d a t e t i m e ]   N U L L ,  
 	 [ R a t i n g ]   [ i n t ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
  
 G O  
 S E T   A N S I _ P A D D I N G   O F F  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ U p l o a d F i l e s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ U p l o a d F i l e s ] (  
 	 [ I d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ F o l d e r I d ]   [ i n t ]   N U L L ,  
 	 [ F i l e N a m e ]   [ v a r c h a r ] ( 5 0 0 )   N U L L ,  
 	 [ I s D e l e t e d ]   [ b i t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ U p l o a d F i l e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
  
 G O  
 S E T   A N S I _ P A D D I N G   O F F  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ U s e r s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ U s e r s ] (  
 	 [ I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ F i r s t N a m e ]   [ n v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ L a s t N a m e ]   [ n v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ E m a i l ]   [ n v a r c h a r ] ( 1 0 0 )   N U L L ,  
 	 [ P h o n e ]   [ n v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ D O B ]   [ d a t e t i m e ]   N U L L ,  
 	 [ P a s s w o r d ]   [ n v a r c h a r ] ( 1 0 0 )   N U L L ,  
 	 [ U s e r N a m e ]   [ n v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ I s A c t i v e ]   [ b i t ]   N U L L ,  
 	 [ R o l e I D ]   [ i n t ]   N U L L ,  
 	 [ F o r g e t P a s s w o r d ]   [ v a r c h a r ] ( 1 0 0 )   N U L L ,  
 	 [ P r o v i d e r K e y ]   [ n v a r c h a r ] ( m a x )   N U L L ,  
   C O N S T R A I N T   [ P K _ U s e r s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
  
 G O  
 S E T   A N S I _ P A D D I N G   O F F  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ V e h i c l e A m e n t i e s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ V e h i c l e A m e n t i e s ] (  
 	 [ I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ V e h i c l e I D ]   [ i n t ]   N U L L ,  
 	 [ A m e n t i e s I D ]   [ i n t ]   N U L L ,  
 	 [ I s A c t i v e ]   [ b i t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ V e h i c l e A m e n t i e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ V e h i c l e F e a t u r e s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ V e h i c l e F e a t u r e s ] (  
 	 [ I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ V e h i c l e I D ]   [ i n t ]   N U L L ,  
 	 [ F e a t u r e I D ]   [ i n t ]   N U L L ,  
 	 [ I s A c t i v e ]   [ b i t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ V e h i c l e F e a t u r e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ V e h i c l e I m a g e s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ V e h i c l e I m a g e s ] (  
 	 [ I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ V e h i c l e I D ]   [ i n t ]   N U L L ,  
 	 [ I m a g e U r l ]   [ n v a r c h a r ] ( 5 0 0 )   N U L L ,  
 	 [ I s A c t i v e ]   [ b i t ]   N U L L ,  
 	 [ V i d e o U r l ]   [ n v a r c h a r ] ( 5 0 0 )   N U L L ,  
 	 [ P u b l i c K e y ]   [ v a r c h a r ] ( 1 0 0 )   N U L L ,  
   C O N S T R A I N T   [ P K _ V e h i c l e I m a g e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
  
 G O  
 S E T   A N S I _ P A D D I N G   O F F  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ V e h i c l e R e n t ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ V e h i c l e R e n t ] (  
 	 [ I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ T e r m I D ]   [ i n t ]   N U L L ,  
 	 [ V e h i c l e I D ]   [ i n t ]   N U L L ,  
 	 [ A m o u n t ]   [ f l o a t ]   N U L L ,  
 	 [ I s A c t i v e ]   [ b i t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ V e h i c l e R e n t ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ V e h i c l e R e n t l e C o n d i t i o n s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ V e h i c l e R e n t l e C o n d i t i o n s ] (  
 	 [ I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ V e h i c l e I D ]   [ i n t ]   N U L L ,  
 	 [ T i t l e ]   [ v a r c h a r ] ( 5 0 0 )   N U L L ,  
 	 [ D e s c r i p t i o n ]   [ n v a r c h a r ] ( m a x )   N U L L ,  
 	 [ I s A c t i v e ]   [ b i t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ V e h i c l e R e n t l e C o n d i t i o n s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
  
 G O  
 S E T   A N S I _ P A D D I N G   O F F  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ V e h i c l e s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ V e h i c l e s ] (  
 	 [ I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ T i t l e ]   [ n v a r c h a r ] ( 1 0 0 )   N U L L ,  
 	 [ D e s c r i p t i o n ]   [ n v a r c h a r ] ( m a x )   N U L L ,  
 	 [ V e h i c l e C o d e ]   [ n v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ V e h i c l e T y p e I D ]   [ i n t ]   N U L L ,  
 	 [ C a t e g o r y I D ]   [ i n t ]   N U L L ,  
 	 [ B r a n d I D ]   [ i n t ]   N U L L ,  
 	 [ M o d e l I D ]   [ i n t ]   N U L L ,  
 	 [ S e a t s ]   [ i n t ]   N U L L ,  
 	 [ S l e e p s ]   [ i n t ]   N U L L ,  
 	 [ Y e a r B u i l t ]   [ i n t ]   N U L L ,  
 	 [ L e n g t h ]   [ n v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ W i d t h ]   [ n v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ I s F e a t u r e d ]   [ b i t ]   N O T   N U L L ,  
 	 [ I s A c t i v e ]   [ b i t ]   N U L L ,  
 	 [ C r e a t e d O n ]   [ d a t e t i m e ]   N U L L ,  
 	 [ U p d a t e d O n ]   [ d a t e t i m e ]   N U L L ,  
 	 [ L o n g i t u d e ]   [ n v a r c h a r ] ( 1 0 0 )   N U L L ,  
 	 [ L a t i t u d e ]   [ n v a r c h a r ] ( 1 0 0 )   N U L L ,  
 	 [ L o c a t i o n ]   [ g e o g r a p h y ]   N U L L ,  
 	 [ I s S a l e a b l e ]   [ b i t ]   N O T   N U L L ,  
 	 [ S a l e P r i c e ]   [ f l o a t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ R V s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ V e h i c l e T y p e s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ V e h i c l e T y p e s ] (  
 	 [ I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N a m e ]   [ n v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ I s A c t i v e ]   [ b i t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ V e h i c l e T y p e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ W i d g e t ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ W i d g e t ] (  
 	 [ I d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ P a g e I d ]   [ i n t ]   N U L L ,  
 	 [ W i d g e t I d ]   [ v a r c h a r ] ( 5 0 )   N U L L ,  
 	 [ T e x t ]   [ n v a r c h a r ] ( m a x )   N U L L ,  
 	 [ C r e a t e d O n ]   [ d a t e t i m e ]   N U L L ,  
 	 [ U p d a t e d O n ]   [ d a t e t i m e ]   N U L L ,  
 	 [ I s D e l e t e d ]   [ b i t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ W i d g e t ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
  
 G O  
 S E T   A N S I _ P A D D I N G   O F F  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ W i s h l i s t ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ W i s h l i s t ] (  
 	 [ I d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ U s e r i d ]   [ i n t ]   N O T   N U L L ,  
 	 [ V e h i c l e i d ]   [ i n t ]   N O T   N U L L ,  
 	 [ C r e a t e d o n ]   [ d a t e t i m e ]   N U L L ,  
 	 [ U p d a t e d o n ]   [ d a t e t i m e ]   N U L L ,  
 	 [ i s a c t i v e ]   [ b i t ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ V e h i c l e S a l e ] . [ N e w s l e t t e r ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 C R E A T E   T A B L E   [ V e h i c l e S a l e ] . [ N e w s l e t t e r ] (  
 	 [ I d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ E m a i l ]   [ v a r c h a r ] ( m a x )   N U L L ,  
 	 [ i s a c t i v e ]   [ b i t ]   N U L L ,  
 	 [ c r e a t e d o n ]   [ d a t e t i m e ]   N U L L ,  
 	 [ u p d a t e d o n ]   [ d a t e t i m e ]   N U L L ,  
 P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I d ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
  
 G O  
 S E T   A N S I _ P A D D I N G   O F F  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ V e h i c l e S a l e ] . [ O f f e r M a s t e r ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ V e h i c l e S a l e ] . [ O f f e r M a s t e r ] (  
 	 [ I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ V e h i c l e I D ]   [ i n t ]   N U L L ,  
 	 [ N o O f N i g h t s ]   [ i n t ]   N U L L ,  
 	 [ L o c a t i o n ]   [ n v a r c h a r ] ( 5 0 0 )   N U L L ,  
 	 [ V a l i d U n t i l l D a t e ]   [ d a t e t i m e ]   N U L L ,  
 	 [ P i c k U p ]   [ d a t e t i m e ]   N U L L ,  
 	 [ R e t u r n D a t e ]   [ d a t e t i m e ]   N U L L ,  
 	 [ O f f e r P r i c e ]   [ f l o a t ]   N U L L ,  
 	 [ D o w n P a y m e n t P e r c e n t a g e ]   [ f l o a t ]   N U L L ,  
 	 [ I s A c t i v e ]   [ b i t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ O f f e r M a s t e r ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ V e h i c l e S a l e ] . [ R o l e s ]         S c r i p t   D a t e :   2 / 2 8 / 2 0 1 7   9 : 1 0 : 2 4   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 S E T   A N S I _ P A D D I N G   O N  
 G O  
 C R E A T E   T A B L E   [ V e h i c l e S a l e ] . [ R o l e s ] (  
 	 [ I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ R o l e N a m e ]   [ v a r c h a r ] ( 2 0 )   N U L L ,  
   C O N S T R A I N T   [ P K _ R o l e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
  
 G O  
 S E T   A N S I _ P A D D I N G   O F F  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ A m e n t i e s M a s t e r ]   O N    
  
 I N S E R T   [ d b o ] . [ A m e n t i e s M a s t e r ]   ( [ I D ] ,   [ N a m e ] ,   [ D e s c r i p t i o n ] ,   [ I s A c t i v e ] ,   [ I m a g e U r l ] )   V A L U E S   ( 1 ,   N ' K i t c h e n ' ,   N ' K i t c h e n   w i t h   R e f r i g e r a t o r ,   M i c r o w a v e ,   S t o v e ,   S i n k ,   O v e n ' ,   1 ,   N ' / P r o d u c t I m a g e / 5 b e 0 f 1 b 6 - b a a 6 - 4 c 0 d - a 6 8 1 - 6 f 3 7 0 2 e 4 1 3 3 f a f d 7 b c 3 4 - a f d 2 - 4 c 1 9 - a f 7 9 - 7 2 5 8 7 0 3 3 e 9 c f s p o o n . p n g ' )  
 I N S E R T   [ d b o ] . [ A m e n t i e s M a s t e r ]   ( [ I D ] ,   [ N a m e ] ,   [ D e s c r i p t i o n ] ,   [ I s A c t i v e ] ,   [ I m a g e U r l ] )   V A L U E S   ( 2 ,   N ' B a t h r o o m ' ,   N ' B a t h r o o m   w i t h   S h o w e r ,   T o i l e t   a n d   S i n k ' ,   1 ,   N ' / P r o d u c t I m a g e / a 9 a d 4 1 3 4 - 0 d e 5 - 4 1 4 8 - 8 4 1 f - 4 a 7 a 2 d 1 d d d 2 f 2 . p n g ' )  
 I N S E R T   [ d b o ] . [ A m e n t i e s M a s t e r ]   ( [ I D ] ,   [ N a m e ] ,   [ D e s c r i p t i o n ] ,   [ I s A c t i v e ] ,   [ I m a g e U r l ] )   V A L U E S   ( 3 ,   N ' R e a r   g a r a g e ' ,   N ' R e a r   g a r a g e ' ,   1 ,   N ' / P r o d u c t I m a g e / 3 7 8 1 e 8 9 8 - 1 a e 9 - 4 0 9 8 - 9 a 6 a - 4 b 5 4 8 8 7 3 b b d 8 o n e . p n g ' )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ A m e n t i e s M a s t e r ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ B a n n e r s ]   O N    
  
 I N S E R T   [ d b o ] . [ B a n n e r s ]   ( [ I D ] ,   [ N a m e ] ,   [ B a n n e r U r l ] ,   [ B a n n e r L i n k ] ,   [ T i t l e ] ,   [ D e s c r i p t i o n ] ,   [ I s A c t i v e ] ,   [ P u b l i c K e y ] )   V A L U E S   ( 1 ,   N ' F i r s t B a n n e r ' ,   N ' / i m a g e s / B a n n e r s / 3 c 1 6 a b 0 b - c 2 6 0 - 4 a 5 6 - 9 a f 6 - 8 f 7 e 0 8 e f 9 d c 4 b a n n e r b g 1 . j p g ' ,   N ' a b c 1 2 1 2 ' ,   N ' B O O K   Y O U R   R V   O R   C A M P E R ' ,   N '     Y O U R   N E X T   F A M I L Y   V A C A T I O N   D O E S N ' ' T   H A V E   T O   B R E A K   T H E   B A N K !                                                   F O R G E T   T H E   C O S T   O F   A I R F A R E   A N D   C A L L   A C E   R V                                                 T O   H I T   T H E   O P E N   R O A D   W I T H   Y O U R   F A M I L Y                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ' ,   1 ,   N ' z q d w k c 0 l r f j t 2 s 1 s b f v 6 ' )  
 I N S E R T   [ d b o ] . [ B a n n e r s ]   ( [ I D ] ,   [ N a m e ] ,   [ B a n n e r U r l ] ,   [ B a n n e r L i n k ] ,   [ T i t l e ] ,   [ D e s c r i p t i o n ] ,   [ I s A c t i v e ] ,   [ P u b l i c K e y ] )   V A L U E S   ( 2 ,   N ' 2 n d   B a n n e r ' ,   N ' / i m a g e s / B a n n e r s / b a n n e r b g 1 . j p g ' ,   N ' a s s s s d d ' ,   N ' B O O K   Y O U R   R V   O R   C A M P E R ' ,   N '     Y O U R   N E X T   F A M I L Y   V A C A T I O N   D O E S N ' ' T   H A V E   T O   B R E A K   T H E   B A N K !                                                   F O R G E T   T H E   C O S T   O F   A I R F A R E   A N D   C A L L   A C E   R V                                                 T O   H I T   T H E   O P E N   R O A D   W I T H   Y O U R   F A M I L Y                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ' ,   1 ,   N ' r 7 d r 2 p d x k t i s d 9 b i m r p p ' )  
 I N S E R T   [ d b o ] . [ B a n n e r s ]   ( [ I D ] ,   [ N a m e ] ,   [ B a n n e r U r l ] ,   [ B a n n e r L i n k ] ,   [ T i t l e ] ,   [ D e s c r i p t i o n ] ,   [ I s A c t i v e ] ,   [ P u b l i c K e y ] )   V A L U E S   ( 3 ,   N ' F i r s t B a n n e r ' ,   N ' / i m a g e s / b a n n e r . j p g ' ,   N ' a b c ' ,   N ' B O O K   Y O U R   R V   O R   C A M P E R ' ,   N '     Y O U R   N E X T   F A M I L Y   V A C A T I O N   D O E S N ' ' T   H A V E   T O   B R E A K   T H E   B A N K !                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ' ,   1 ,   N ' r 7 d r 2 p d x k t i s d 9 b i m r p p ' )  
 I N S E R T   [ d b o ] . [ B a n n e r s ]   ( [ I D ] ,   [ N a m e ] ,   [ B a n n e r U r l ] ,   [ B a n n e r L i n k ] ,   [ T i t l e ] ,   [ D e s c r i p t i o n ] ,   [ I s A c t i v e ] ,   [ P u b l i c K e y ] )   V A L U E S   ( 2 1 3 ,   N U L L ,   N ' / i m a g e s / b a n n e r . j p g ' ,   N ' v x c ' ,   N ' B O O K   Y O U R   R V   O R   C A M P E R ' ,   N '     Y O U R   N E X T   F A M I L Y   V A C A T I O N   D O E S N ' ' T   H A V E   T O   B R E A K   T H E   B A N K !                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ' ,   1 ,   N ' g j m u w o n 1 7 x u a j c 7 z p o z y ' )  
 I N S E R T   [ d b o ] . [ B a n n e r s ]   ( [ I D ] ,   [ N a m e ] ,   [ B a n n e r U r l ] ,   [ B a n n e r L i n k ] ,   [ T i t l e ] ,   [ D e s c r i p t i o n ] ,   [ I s A c t i v e ] ,   [ P u b l i c K e y ] )   V A L U E S   ( 2 3 0 ,   N U L L ,   N ' / i m a g e s / B a n n e r s / b a n n e r . j p g ' ,   N ' s d s d s d ' ,   N ' s d s d s ' ,   N ' s d s d d d d d d d d d d d d d d d d d d d d d                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ' ,   1 ,   N ' g j m u w o n 1 7 x u a j c 7 z p o z y ' )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ B a n n e r s ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ B r a n d s ]   O N    
  
 I N S E R T   [ d b o ] . [ B r a n d s ]   ( [ I D ] ,   [ N a m e ] ,   [ I s A c t i v e ] )   V A L U E S   ( 1 0 0 2 ,   N ' A d m i r a l ' ,   1 )  
 I N S E R T   [ d b o ] . [ B r a n d s ]   ( [ I D ] ,   [ N a m e ] ,   [ I s A c t i v e ] )   V A L U E S   ( 1 0 0 3 ,   N ' A d v e n t u r e r ' ,   1 )  
 I N S E R T   [ d b o ] . [ B r a n d s ]   ( [ I D ] ,   [ N a m e ] ,   [ I s A c t i v e ] )   V A L U E S   ( 1 0 0 5 ,   N ' A e r b u s ' ,   1 )  
 I N S E R T   [ d b o ] . [ B r a n d s ]   ( [ I D ] ,   [ N a m e ] ,   [ I s A c t i v e ] )   V A L U E S   ( 1 0 0 6 ,   N ' A l l e g r o ' ,   1 )  
 I N S E R T   [ d b o ] . [ B r a n d s ]   ( [ I D ] ,   [ N a m e ] ,   [ I s A c t i v e ] )   V A L U E S   ( 1 0 0 7 ,   N ' C o a c h m e n ' ,   1 )  
 I N S E R T   [ d b o ] . [ B r a n d s ]   ( [ I D ] ,   [ N a m e ] ,   [ I s A c t i v e ] )   V A L U E S   ( 1 0 0 8 ,   N ' C o u n t r y   C o a c h ' ,   1 )  
 I N S E R T   [ d b o ] . [ B r a n d s ]   ( [ I D ] ,   [ N a m e ] ,   [ I s A c t i v e ] )   V A L U E S   ( 1 0 0 9 ,   N ' F l e e t w o o d ' ,   1 )  
 I N S E R T   [ d b o ] . [ B r a n d s ]   ( [ I D ] ,   [ N a m e ] ,   [ I s A c t i v e ] )   V A L U E S   ( 1 0 1 0 ,   N ' M o n a c o ' ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ B r a n d s ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ C a t e g o r i e s ]   O N    
  
 I N S E R T   [ d b o ] . [ C a t e g o r i e s ]   ( [ I D ] ,   [ N a m e ] ,   [ V e h i c l e T y p e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] )   V A L U E S   ( 1 ,   N ' C l a s s   A ' ,   1 ,   N ' / P r o d u c t I m a g e / 2 c 7 8 d a d 5 - 1 a 2 8 - 4 6 4 5 - 8 b 1 b - a e 8 2 1 9 9 7 a 4 1 b 9 8 3 8 5 3 0 8 - 7 a c 9 - 4 d 0 d - 8 b b f - d 2 1 b 4 5 3 e a 9 b d c h o o s e 3 . p n g ' ,   1 )  
 I N S E R T   [ d b o ] . [ C a t e g o r i e s ]   ( [ I D ] ,   [ N a m e ] ,   [ V e h i c l e T y p e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] )   V A L U E S   ( 2 ,   N ' C l a s s   B ' ,   1 ,   N ' / P r o d u c t I m a g e / a 0 f 6 e b 2 c - c d e 1 - 4 2 5 e - 8 b a d - 9 2 5 b b 3 4 6 3 b b e c h o o s e 2 . p n g ' ,   1 )  
 I N S E R T   [ d b o ] . [ C a t e g o r i e s ]   ( [ I D ] ,   [ N a m e ] ,   [ V e h i c l e T y p e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] )   V A L U E S   ( 3 ,   N ' C l a s s   C ' ,   1 ,   N ' / P r o d u c t I m a g e / e 8 c d 3 1 5 e - 0 b f 2 - 4 2 f 5 - a d a e - 6 b c 9 c f 6 0 f 1 e d c h o o s e 3 . p n g ' ,   1 )  
 I N S E R T   [ d b o ] . [ C a t e g o r i e s ]   ( [ I D ] ,   [ N a m e ] ,   [ V e h i c l e T y p e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] )   V A L U E S   ( 4 ,   N ' F i f t h   W h e e l   t r a i l e r ' ,   1 ,   N ' / P r o d u c t I m a g e / b e 9 6 c 5 a 4 - f e a 8 - 4 3 5 8 - 8 e f d - 5 9 5 a 7 a e e c f 0 6 c h o o s e 4 . p n g ' ,   1 )  
 I N S E R T   [ d b o ] . [ C a t e g o r i e s ]   ( [ I D ] ,   [ N a m e ] ,   [ V e h i c l e T y p e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] )   V A L U E S   ( 5 ,   N ' T r a v e l   T r a i l e r ' ,   1 ,   N ' / P r o d u c t I m a g e / f 4 8 8 1 2 9 e - 0 2 1 c - 4 7 2 3 - b 8 e d - c 5 8 5 0 e 7 2 3 d 9 7 C h o o s e 5 . p n g ' ,   1 )  
 I N S E R T   [ d b o ] . [ C a t e g o r i e s ]   ( [ I D ] ,   [ N a m e ] ,   [ V e h i c l e T y p e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] )   V A L U E S   ( 6 ,   N ' T r u c k   C a m p e r ' ,   1 ,   N ' / P r o d u c t I m a g e / 1 1 b 2 d b 3 a - 0 b 0 6 - 4 5 c d - 9 b 5 0 - d 9 d 5 c 9 e 6 d 3 7 5 C h o o s e 1 . p n g ' ,   1 )  
 I N S E R T   [ d b o ] . [ C a t e g o r i e s ]   ( [ I D ] ,   [ N a m e ] ,   [ V e h i c l e T y p e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] )   V A L U E S   ( 7 ,   N ' F o l d i n g   T r a i l e r ' ,   1 ,   N ' / P r o d u c t I m a g e / 1 4 4 9 c c 2 f - 0 2 0 d - 4 e 1 d - a 7 2 a - 5 e 4 f 5 d 7 2 7 9 3 9 a 0 f 6 e b 2 c - c d e 1 - 4 2 5 e - 8 b a d - 9 2 5 b b 3 4 6 3 b b e c h o o s e 2 . p n g ' ,   1 )  
 I N S E R T   [ d b o ] . [ C a t e g o r i e s ]   ( [ I D ] ,   [ N a m e ] ,   [ V e h i c l e T y p e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] )   V A L U E S   ( 8 ,   N ' A l l   O t h e r   t y p e s ' ,   1 ,   N ' / P r o d u c t I m a g e / 9 8 3 8 5 3 0 8 - 7 a c 9 - 4 d 0 d - 8 b b f - d 2 1 b 4 5 3 e a 9 b d c h o o s e 3 . p n g ' ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ C a t e g o r i e s ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ F a q ]   O N    
  
 I N S E R T   [ d b o ] . [ F a q ]   ( [ F a q I d ] ,   [ D e s c r i p t i o n ] ,   [ i s a c t i v e ] ,   [ c r e a t e d o n ] ,   [ u p d a t e d o n ] ,   [ F a q r e s u l t ] )   V A L U E S   ( 1 ,   N ' T h i s   i s   P h o t o s h o p ' ' s   v e r s i o n   o f   L o r e m   I p s u m ? ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 7   1 9 : 5 2 : 1 5 . 1 3 7 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 7   1 9 : 5 2 : 1 5 . 1 7 7 '   A S   D a t e T i m e ) ,   N ' A n s w e r   T h i s   i s   P h o t o s h o p ' ' s   v e r s i o n   o f   L o r e m   I p s u m . ' )  
 I N S E R T   [ d b o ] . [ F a q ]   ( [ F a q I d ] ,   [ D e s c r i p t i o n ] ,   [ i s a c t i v e ] ,   [ c r e a t e d o n ] ,   [ u p d a t e d o n ] ,   [ F a q r e s u l t ] )   V A L U E S   ( 2 ,   N ' T h i s   i s   P h o t o s h o p ' ' s   v e r s i o n   o f   L o r e m   I p s u m ? ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 7   1 9 : 5 2 : 3 5 . 1 5 3 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 7   1 9 : 5 2 : 3 5 . 1 5 3 '   A S   D a t e T i m e ) ,   N ' A n s w e r   T h i s   i s   P h o t o s h o p ' ' s   v e r s i o n   o f   L o r e m   I p s u m . ' )  
 I N S E R T   [ d b o ] . [ F a q ]   ( [ F a q I d ] ,   [ D e s c r i p t i o n ] ,   [ i s a c t i v e ] ,   [ c r e a t e d o n ] ,   [ u p d a t e d o n ] ,   [ F a q r e s u l t ] )   V A L U E S   ( 3 ,   N ' T h i s   i s   P h o t o s h o p ' ' s   v e r s i o n   o f   L o r e m   I p s u m ? ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 7   1 9 : 5 3 : 0 7 . 4 2 3 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 7   1 9 : 5 3 : 0 7 . 4 2 3 '   A S   D a t e T i m e ) ,   N ' A n s w e r   T h i s   i s   P h o t o s h o p ' ' s   v e r s i o n   o f   L o r e m   I p s u m . ' )  
 I N S E R T   [ d b o ] . [ F a q ]   ( [ F a q I d ] ,   [ D e s c r i p t i o n ] ,   [ i s a c t i v e ] ,   [ c r e a t e d o n ] ,   [ u p d a t e d o n ] ,   [ F a q r e s u l t ] )   V A L U E S   ( 4 ,   N ' T h i s   i s   P h o t o s h o p ' ' s   v e r s i o n   o f   L o r e m   I p s u m ? ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 7   1 9 : 5 2 : 5 7 . 6 0 7 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 7   1 9 : 5 2 : 5 7 . 6 0 7 '   A S   D a t e T i m e ) ,   N ' A n s w e r   T h i s   i s   P h o t o s h o p ' ' s   v e r s i o n   o f   L o r e m   I p s u m . ' )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ F a q ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ F e a t u r e s M a s t e r ]   O N    
  
 I N S E R T   [ d b o ] . [ F e a t u r e s M a s t e r ]   ( [ I D ] ,   [ A m e n t i e s I D ] ,   [ T i t l e ] ,   [ D e s c r i p t i o n ] ,   [ I s A c t i v e ] )   V A L U E S   ( 1 ,   1 ,   N ' H o t   w a t e r ' ,   N ' H o t   w a t e r ' ,   1 )  
 I N S E R T   [ d b o ] . [ F e a t u r e s M a s t e r ]   ( [ I D ] ,   [ A m e n t i e s I D ] ,   [ T i t l e ] ,   [ D e s c r i p t i o n ] ,   [ I s A c t i v e ] )   V A L U E S   ( 2 ,   1 ,   N ' G e n e r a t o r ' ,   N ' G e n e r a t o r ' ,   1 )  
 I N S E R T   [ d b o ] . [ F e a t u r e s M a s t e r ]   ( [ I D ] ,   [ A m e n t i e s I D ] ,   [ T i t l e ] ,   [ D e s c r i p t i o n ] ,   [ I s A c t i v e ] )   V A L U E S   ( 3 ,   2 ,   N ' F r e s h   w a t e r   t a n k ' ,   N ' F r e s h   w a t e r   t a n k ' ,   1 )  
 I N S E R T   [ d b o ] . [ F e a t u r e s M a s t e r ]   ( [ I D ] ,   [ A m e n t i e s I D ] ,   [ T i t l e ] ,   [ D e s c r i p t i o n ] ,   [ I s A c t i v e ] )   V A L U E S   ( 4 ,   2 ,   N ' W a s t e   w a t e r   t a n k ' ,   N ' W a s t e   w a t e r   t a n k ' ,   1 )  
 I N S E R T   [ d b o ] . [ F e a t u r e s M a s t e r ]   ( [ I D ] ,   [ A m e n t i e s I D ] ,   [ T i t l e ] ,   [ D e s c r i p t i o n ] ,   [ I s A c t i v e ] )   V A L U E S   ( 5 ,   1 ,   N ' R e f r i g e r a t o r ' ,   N ' R e f r i g e r a t o r ' ,   1 )  
 I N S E R T   [ d b o ] . [ F e a t u r e s M a s t e r ]   ( [ I D ] ,   [ A m e n t i e s I D ] ,   [ T i t l e ] ,   [ D e s c r i p t i o n ] ,   [ I s A c t i v e ] )   V A L U E S   ( 6 ,   3 ,   N ' C a n o p y   a w n i n g ' ,   N ' C a n o p y   a w n i n g ' ,   1 )  
 I N S E R T   [ d b o ] . [ F e a t u r e s M a s t e r ]   ( [ I D ] ,   [ A m e n t i e s I D ] ,   [ T i t l e ] ,   [ D e s c r i p t i o n ] ,   [ I s A c t i v e ] )   V A L U E S   ( 1 0 ,   1 ,   N ' w a t e r ' ,   N ' w a t e r ' ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ F e a t u r e s M a s t e r ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ F o l d e r s ]   O N    
  
 I N S E R T   [ d b o ] . [ F o l d e r s ]   ( [ I d ] ,   [ F o l d e r N a m e ] ,   [ C r e a t e d O n ] ,   [ I s D e l e t e d ] )   V A L U E S   ( 1 ,   N ' I m a g e s ' ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 4   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   0 )  
 I N S E R T   [ d b o ] . [ F o l d e r s ]   ( [ I d ] ,   [ F o l d e r N a m e ] ,   [ C r e a t e d O n ] ,   [ I s D e l e t e d ] )   V A L U E S   ( 2 ,   N ' A b o u t U s I m a g e s ' ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 4   2 0 : 0 3 : 5 4 . 1 7 0 '   A S   D a t e T i m e ) ,   0 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ F o l d e r s ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]   O N    
  
 I N S E R T   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]   ( [ I d ] ,   [ N a m e ] ,   [ E m a i l ] ,   [ P r o v i d e r K e y ] ,   [ P r o v i d e r N a m e ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] )   V A L U E S   ( 1 ,   N ' R a m a n d e e p   S i n g h ' ,   N U L L ,   N ' 1 2 4 2 3 8 8 2 3 9 1 7 9 9 7 1 ' ,   N ' F a c e b o o k ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 7   1 5 : 3 1 : 1 4 . 6 4 3 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]   ( [ I d ] ,   [ N a m e ] ,   [ E m a i l ] ,   [ P r o v i d e r K e y ] ,   [ P r o v i d e r N a m e ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] )   V A L U E S   ( 2 ,   N ' R a m a n d e e p   S i n g h ' ,   N U L L ,   N ' 1 2 4 2 3 8 8 2 3 9 1 7 9 9 7 1 ' ,   N ' F a c e b o o k ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 7   1 5 : 3 6 : 3 3 . 4 7 3 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]   ( [ I d ] ,   [ N a m e ] ,   [ E m a i l ] ,   [ P r o v i d e r K e y ] ,   [ P r o v i d e r N a m e ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] )   V A L U E S   ( 3 ,   N ' R a m a n d e e p   S i n g h ' ,   N U L L ,   N ' 1 2 4 2 3 8 8 2 3 9 1 7 9 9 7 1 ' ,   N ' F a c e b o o k ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 7   1 5 : 4 8 : 4 3 . 4 4 7 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]   ( [ I d ] ,   [ N a m e ] ,   [ E m a i l ] ,   [ P r o v i d e r K e y ] ,   [ P r o v i d e r N a m e ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] )   V A L U E S   ( 4 ,   N ' R a m a n d e e p   S i n g h ' ,   N U L L ,   N ' 1 2 4 2 3 8 8 2 3 9 1 7 9 9 7 1 ' ,   N ' F a c e b o o k ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 7   1 5 : 4 9 : 5 7 . 1 4 3 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]   ( [ I d ] ,   [ N a m e ] ,   [ E m a i l ] ,   [ P r o v i d e r K e y ] ,   [ P r o v i d e r N a m e ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] )   V A L U E S   ( 5 ,   N ' M u k e s h   C h a b b r a ' ,   N ' m u k e s h c h a b b r a @ g m a i l . c o m ' ,   N ' e y J h b G c i O i J S U z I 1 N i I s I m t p Z C I 6 I j M 0 Z W N j N z M 3 O G J i M 2 R j N D h k N G N l M D R m N z k y N G M x N j M 0 M j M 0 O T M y Y m Q i f Q . e y J p c 3 M i O i J h Y 2 N v d W 5 0 c y 5 n b 2 9 n b G U u Y 2 9 t I i w i a W F 0 I j o x N D g 3 M z I 4 M T c w L C J l e H A i O j E 0 O D c z M z E 3 N z A s I m F 0 X 2 h h c 2 g i O i J n O V Z 3 a W 1 G c V V f X z Z s U U V h S 1 R s V F Z n I i w i Y X V k I j o i O D g y N z M w O T U 0 N z I x L T V z b W 1 r b j R 1 c T B v a m x r c m p t Y T F j N D h r b G 5 s Z W h n N m 1 k L m F w c H M u Z 2 9 v Z 2 x l d X N l c m N v b n R l b n Q u Y 2 9 t I i w i c 3 V i I j o i M T A 5 N T g x N j I z M T U w M z Q 0 N z U z M D E x I i w i Z W 1 h a W x f d m V y a W Z p Z W Q i O n R y d W U s I m F 6 c C I 6 I j g 4 M j c z M D k 1 N D c y M S 0 1 c 2 1 t a 2 4 0 d X E w b 2 p s a 3 J q b W E x Y z Q 4 a 2 x u b G V o Z z Z t Z C 5 h c H B z L m d v b 2 d s Z X V z Z X J j b 2 5 0 Z W 5 0 L m N v b S I s I m V t Y W l s I j o i b X V r Z X N o Y 2 h h Y m J y Y U B n b W F p b C 5 j b 2 0 i L C J u Y W 1 l I j o i T X V r Z X N o I E N o Y W J i c m E i L C J w a W N 0 d X J l I j o i a H R 0 c H M 6 L y 9 s a D U u Z 2 9 v Z 2 x l d X N l c m N v b n R l b n Q u Y 2 9 t L y 1 1 V G Z Z c V N N N W N s O C 9 B Q U F B Q U F B Q U F B S S 9 B Q U F B Q U F B Q U J u Z y 9 f W n F O c n d a e V 9 y Y y 9 z O T Y t Y y 9 w a G 9 0 b y 5 q c G c i L C J n a X Z l b l 9 u Y W 1 l I j o i T X V r Z X N o I i w i Z m F t a W x 5 X 2 5 h b W U i O i J D a G F i Y n J h I i w i b G 9 j Y W x l I j o i Z W 4 i f Q . i P Y e C _ 6 b n m D y h K T 2 U J J W R R 1 X m e w Q U c C o z G h E c I B t l C 7 w v S z x o S l B z T A 8 - y Z i N G G H k 0 Y S B M n p B t d 1 6 Q V 5 d Q 5 y l 7 w x C T y X S h T Z A C E a 1 6 h l E X z z V h L s q X J V _ 4 B p e U I R j K b D d t 6 r m k K M V h g z 8 v z Z b A S y u K 9 T 9 U m i Q D p f 6 S 8 O o A k v H W N p Z x r R w W 7 q U 5 k q x D w s g F W v I Z A y N z d 2 m _ P I m B v 6 M 2 i u G x N A i g o 5 - Q B J g - 3 0 y Z 6 z H O z 1 8 W X J x 3 M s a r g d R f P e P v 1 w A j 1 X 4 I 2 l R s A V N g I J M D M c T m M T a R y x J o Z E 5 7 R b r P 8 8 Q e V 0 u Z l N t H Z v h t G x y 1 P L m m Z 7 t 9 A 1 k 5 A O u a 1 U F 4 f 4 5 y - 6 G Q ' ,   N ' G o o g l e ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 7   1 6 : 0 3 : 1 7 . 4 7 3 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]   ( [ I d ] ,   [ N a m e ] ,   [ E m a i l ] ,   [ P r o v i d e r K e y ] ,   [ P r o v i d e r N a m e ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] )   V A L U E S   ( 6 ,   N ' M u k e s h   C h a b b r a ' ,   N ' m u k e s h c h a b b r a @ g m a i l . c o m ' ,   N ' e y J h b G c i O i J S U z I 1 N i I s I m t p Z C I 6 I j M 0 Z W N j N z M 3 O G J i M 2 R j N D h k N G N l M D R m N z k y N G M x N j M 0 M j M 0 O T M y Y m Q i f Q . e y J p c 3 M i O i J h Y 2 N v d W 5 0 c y 5 n b 2 9 n b G U u Y 2 9 t I i w i a W F 0 I j o x N D g 3 M z M z O D M x L C J l e H A i O j E 0 O D c z M z c 0 M z E s I m F 0 X 2 h h c 2 g i O i J 5 R T F M T z Y y M 3 Q y d m I w d m Z Z b n J u e j V 3 I i w i Y X V k I j o i O D g y N z M w O T U 0 N z I x L T V z b W 1 r b j R 1 c T B v a m x r c m p t Y T F j N D h r b G 5 s Z W h n N m 1 k L m F w c H M u Z 2 9 v Z 2 x l d X N l c m N v b n R l b n Q u Y 2 9 t I i w i c 3 V i I j o i M T A 5 N T g x N j I z M T U w M z Q 0 N z U z M D E x I i w i Z W 1 h a W x f d m V y a W Z p Z W Q i O n R y d W U s I m F 6 c C I 6 I j g 4 M j c z M D k 1 N D c y M S 0 1 c 2 1 t a 2 4 0 d X E w b 2 p s a 3 J q b W E x Y z Q 4 a 2 x u b G V o Z z Z t Z C 5 h c H B z L m d v b 2 d s Z X V z Z X J j b 2 5 0 Z W 5 0 L m N v b S I s I m V t Y W l s I j o i b X V r Z X N o Y 2 h h Y m J y Y U B n b W F p b C 5 j b 2 0 i L C J u Y W 1 l I j o i T X V r Z X N o I E N o Y W J i c m E i L C J w a W N 0 d X J l I j o i a H R 0 c H M 6 L y 9 s a D U u Z 2 9 v Z 2 x l d X N l c m N v b n R l b n Q u Y 2 9 t L y 1 1 V G Z Z c V N N N W N s O C 9 B Q U F B Q U F B Q U F B S S 9 B Q U F B Q U F B Q U J u Z y 9 f W n F O c n d a e V 9 y Y y 9 z O T Y t Y y 9 w a G 9 0 b y 5 q c G c i L C J n a X Z l b l 9 u Y W 1 l I j o i T X V r Z X N o I i w i Z m F t a W x 5 X 2 5 h b W U i O i J D a G F i Y n J h I i w i b G 9 j Y W x l I j o i Z W 4 i f Q . T v f r 7 q V T n u X j 4 C b 2 z 3 f n w u C 9 L N j t i Q N r Y i C X R B B 4 1 m 8 u u Z h c 3 J - a H l n V W d z N _ 6 g L P m 2 Q l a e Z T - 7 1 h _ t H s y K K T i 5 e j 8 H 3 f z E P C J e 8 q 6 f 3 E v J 1 k T 3 r y - Q 2 z P t 4 5 m r C O I V k 5 9 K _ Q 9 _ B K b G N b U m H 0 W d B E O J q D r m 3 Q Y x _ V Y O i q 2 4 0 v f t w 2 q 8 w j C e J S m Y p f k y r _ l 8 D 0 S 5 O 0 f E h K m M N T a 2 1 I f - a a U x r A U - V U H o J y Q F 6 X P M 5 O b e o 8 A b 8 p P K B l I z D n Z R V Z n c P S G 4 f H _ T d - 2 x k Q c 9 e t t z - - 6 V s N x z Q v r S z W f 0 Q B u - r - C X j T 6 H A Q i z 1 u 7 e h j T O 9 x Q 3 N O S w d j j W B q 8 K a K Y 3 7 W 7 Z b d A ' ,   N ' G o o g l e ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 7   1 7 : 3 7 : 3 8 . 7 3 3 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]   ( [ I d ] ,   [ N a m e ] ,   [ E m a i l ] ,   [ P r o v i d e r K e y ] ,   [ P r o v i d e r N a m e ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] )   V A L U E S   ( 7 ,   N ' R a m a n d e e p   S i n g h ' ,   N U L L ,   N ' 1 2 4 2 3 8 8 2 3 9 1 7 9 9 7 1 ' ,   N ' F a c e b o o k ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 7   1 7 : 5 5 : 0 4 . 6 9 3 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]   ( [ I d ] ,   [ N a m e ] ,   [ E m a i l ] ,   [ P r o v i d e r K e y ] ,   [ P r o v i d e r N a m e ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] )   V A L U E S   ( 8 ,   N ' R a m a n d e e p   S i n g h ' ,   N U L L ,   N ' 1 2 4 2 3 8 8 2 3 9 1 7 9 9 7 1 ' ,   N ' F a c e b o o k ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 7   1 8 : 3 7 : 5 2 . 5 0 7 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]   ( [ I d ] ,   [ N a m e ] ,   [ E m a i l ] ,   [ P r o v i d e r K e y ] ,   [ P r o v i d e r N a m e ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] )   V A L U E S   ( 9 ,   N ' R a m a n d e e p   S i n g h ' ,   N U L L ,   N ' 1 2 4 2 3 8 8 2 3 9 1 7 9 9 7 1 ' ,   N ' F a c e b o o k ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 7   2 0 : 0 6 : 5 4 . 0 9 7 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]   ( [ I d ] ,   [ N a m e ] ,   [ E m a i l ] ,   [ P r o v i d e r K e y ] ,   [ P r o v i d e r N a m e ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] )   V A L U E S   ( 1 0 ,   N ' M u k e s h   C h a b b r a ' ,   N ' m u k e s h c h a b b r a @ g m a i l . c o m ' ,   N ' 1 3 2 0 0 7 1 5 8 8 0 5 4 7 1 2 ' ,   N ' F a c e b o o k ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 7   2 0 : 0 8 : 5 0 . 2 5 0 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]   ( [ I d ] ,   [ N a m e ] ,   [ E m a i l ] ,   [ P r o v i d e r K e y ] ,   [ P r o v i d e r N a m e ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] )   V A L U E S   ( 1 1 ,   N ' G o r a b   R a t u r i ' ,   N U L L ,   N ' 1 7 5 7 9 9 9 5 2 9 1 0 0 7 8 ' ,   N ' F a c e b o o k ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 0   1 2 : 5 5 : 5 2 . 8 2 7 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]   ( [ I d ] ,   [ N a m e ] ,   [ E m a i l ] ,   [ P r o v i d e r K e y ] ,   [ P r o v i d e r N a m e ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] )   V A L U E S   ( 1 2 ,   N ' G o r a b   R a t u r i ' ,   N U L L ,   N ' 1 7 5 7 9 9 9 5 2 9 1 0 0 7 8 ' ,   N ' F a c e b o o k ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 0   1 8 : 1 1 : 1 9 . 1 7 7 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]   ( [ I d ] ,   [ N a m e ] ,   [ E m a i l ] ,   [ P r o v i d e r K e y ] ,   [ P r o v i d e r N a m e ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] )   V A L U E S   ( 1 3 ,   N ' G o r a b   R a t u r i ' ,   N U L L ,   N ' 1 7 5 7 9 9 9 5 2 9 1 0 0 7 8 ' ,   N ' F a c e b o o k ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 0   1 8 : 2 5 : 1 9 . 8 3 0 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]   ( [ I d ] ,   [ N a m e ] ,   [ E m a i l ] ,   [ P r o v i d e r K e y ] ,   [ P r o v i d e r N a m e ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] )   V A L U E S   ( 1 4 ,   N ' G o r a b   R a t u r i ' ,   N U L L ,   N ' 1 7 5 7 9 9 9 5 2 9 1 0 0 7 8 ' ,   N ' F a c e b o o k ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 0   1 8 : 3 8 : 2 0 . 1 0 0 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]   ( [ I d ] ,   [ N a m e ] ,   [ E m a i l ] ,   [ P r o v i d e r K e y ] ,   [ P r o v i d e r N a m e ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] )   V A L U E S   ( 1 5 ,   N ' G o r a b   R a t u r i ' ,   N ' r a t u r i g o r a b 1 5 @ g m a i l . c o m ' ,   N ' e y J h b G c i O i J S U z I 1 N i I s I m t p Z C I 6 I j k y N m Q 2 M G N k M D U 1 O T E x Z j c 1 Z j M y N G F k Z G U x N z A 4 Z D k z M m Y 5 N T k 1 Y W Y i f Q . e y J p c 3 M i O i J h Y 2 N v d W 5 0 c y 5 n b 2 9 n b G U u Y 2 9 t I i w i a W F 0 I j o x N D g 3 N j U x N D c w L C J l e H A i O j E 0 O D c 2 N T U w N z A s I m F 0 X 2 h h c 2 g i O i J V S G 9 Y T 2 Z q a m F a Q l p I d n Z 2 R G 5 5 Z 0 p n I i w i Y X V k I j o i O D g y N z M w O T U 0 N z I x L T V z b W 1 r b j R 1 c T B v a m x r c m p t Y T F j N D h r b G 5 s Z W h n N m 1 k L m F w c H M u Z 2 9 v Z 2 x l d X N l c m N v b n R l b n Q u Y 2 9 t I i w i c 3 V i I j o i M T A 5 M z c 1 N j M 4 M D A 3 M j U y N j Y x M D I z I i w i Z W 1 h a W x f d m V y a W Z p Z W Q i O n R y d W U s I m F 6 c C I 6 I j g 4 M j c z M D k 1 N D c y M S 0 1 c 2 1 t a 2 4 0 d X E w b 2 p s a 3 J q b W E x Y z Q 4 a 2 x u b G V o Z z Z t Z C 5 h c H B z L m d v b 2 d s Z X V z Z X J j b 2 5 0 Z W 5 0 L m N v b S I s I m V t Y W l s I j o i c m F 0 d X J p Z 2 9 y Y W I x N U B n b W F p b C 5 j b 2 0 i L C J u Y W 1 l I j o i R 2 9 y Y W I g U m F 0 d X J p I i w i c G l j d H V y Z S I 6 I m h 0 d H B z O i 8 v b G g 1 L m d v b 2 d s Z X V z Z X J j b 2 5 0 Z W 5 0 L m N v b S 8 t e j Z J d k 1 y Q T d C V k 0 v Q U F B Q U F B Q U F B Q U k v Q U F B Q U F B Q U F B Q U E v Q U R Q b G h m S V U z U G p K O E x K e k d H M 0 N a a 1 R v W U 9 r R l N f b X B 5 Z y 9 z O T Y t Y y 9 w a G 9 0 b y 5 q c G c i L C J n a X Z l b l 9 u Y W 1 l I j o i R 2 9 y Y W I i L C J m Y W 1 p b H l f b m F t Z S I 6 I l J h d H V y a S I s I m x v Y 2 F s Z S I 6 I m V u I n 0 . H 0 0 a k 3 0 Z e r a 0 L M O U H m W 9 f 4 - n y h X l z x u 3 P z 1 S t Z 1 N U T P - _ l A X J E V v H B 3 F B r 9 A _ t g T K 1 L r P i S U E l z v q y J d k K P S - O v j t U D A j m r N i w - B f Q 9 6 _ 8 H J u V R q U y g u P x r K F O o 2 0 e j m S s q V 1 y 2 6 V v T 4 f z N 8 d 3 F I S J Y 6 Z 5 w d 5 p U U n o 3 0 g a - c P 8 q b P F C 2 c 1 0 h i h w O T Y W y f s l 2 6 f H m N z e H N Y A I Y V 0 t Q j 7 u O D M h p c h r R d c N I 2 w I 3 7 z K T m r d T V r g a I Z A 2 w 2 o N H j T S x S U _ 4 S A b D a K 8 y F _ o R 9 4 P q 3 H j O Y 7 m - 1 s W 0 z 1 c - A A 8 l k G 7 O Z J P 2 w B M F J X W z 2 t t h G Q S Q S - a F h P h S a p N d 9 j L R N P y k u 0 9 A ' ,   N ' G o o g l e ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 1   0 9 : 5 1 : 2 7 . 7 7 7 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]   ( [ I d ] ,   [ N a m e ] ,   [ E m a i l ] ,   [ P r o v i d e r K e y ] ,   [ P r o v i d e r N a m e ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] )   V A L U E S   ( 1 6 ,   N ' G o r a b   R a t u r i ' ,   N ' r a t u r i g o r a b 1 5 @ g m a i l . c o m ' ,   N ' e y J h b G c i O i J S U z I 1 N i I s I m t p Z C I 6 I j k y N m Q 2 M G N k M D U 1 O T E x Z j c 1 Z j M y N G F k Z G U x N z A 4 Z D k z M m Y 5 N T k 1 Y W Y i f Q . e y J p c 3 M i O i J h Y 2 N v d W 5 0 c y 5 n b 2 9 n b G U u Y 2 9 t I i w i a W F 0 I j o x N D g 3 N j U y N D k 5 L C J l e H A i O j E 0 O D c 2 N T Y w O T k s I m F 0 X 2 h h c 2 g i O i J P c G 5 I T U 5 5 S 1 I 3 M H l a T 0 R r b n B 1 U V Z n I i w i Y X V k I j o i O D g y N z M w O T U 0 N z I x L T V z b W 1 r b j R 1 c T B v a m x r c m p t Y T F j N D h r b G 5 s Z W h n N m 1 k L m F w c H M u Z 2 9 v Z 2 x l d X N l c m N v b n R l b n Q u Y 2 9 t I i w i c 3 V i I j o i M T A 5 M z c 1 N j M 4 M D A 3 M j U y N j Y x M D I z I i w i Z W 1 h a W x f d m V y a W Z p Z W Q i O n R y d W U s I m F 6 c C I 6 I j g 4 M j c z M D k 1 N D c y M S 0 1 c 2 1 t a 2 4 0 d X E w b 2 p s a 3 J q b W E x Y z Q 4 a 2 x u b G V o Z z Z t Z C 5 h c H B z L m d v b 2 d s Z X V z Z X J j b 2 5 0 Z W 5 0 L m N v b S I s I m V t Y W l s I j o i c m F 0 d X J p Z 2 9 y Y W I x N U B n b W F p b C 5 j b 2 0 i L C J u Y W 1 l I j o i R 2 9 y Y W I g U m F 0 d X J p I i w i c G l j d H V y Z S I 6 I m h 0 d H B z O i 8 v b G g 1 L m d v b 2 d s Z X V z Z X J j b 2 5 0 Z W 5 0 L m N v b S 8 t e j Z J d k 1 y Q T d C V k 0 v Q U F B Q U F B Q U F B Q U k v Q U F B Q U F B Q U F B Q U E v Q U R Q b G h m S V U z U G p K O E x K e k d H M 0 N a a 1 R v W U 9 r R l N f b X B 5 Z y 9 z O T Y t Y y 9 w a G 9 0 b y 5 q c G c i L C J n a X Z l b l 9 u Y W 1 l I j o i R 2 9 y Y W I i L C J m Y W 1 p b H l f b m F t Z S I 6 I l J h d H V y a S I s I m x v Y 2 F s Z S I 6 I m V u I n 0 . P E O x T f k R d D z P A w Q b g y e 0 O n w r Q v Y c c o c B N U n _ Y j R 2 v 6 C Y X x R m A A l T q g L J e U - a T p q u 1 O m a 6 L n L Y X S J s a n c s T Y R g c O C m Z e A T 3 M 5 5 2 k y K 8 u I G P b D 8 k y 0 i - b 0 R t I q j c s b D u T X z S 8 S y Y e 5 5 p 0 N 6 J L 2 l m e t 6 t _ g v B e 1 t r s I w 7 T 3 h E 1 c p m t U v S v i N 1 9 O y R T X Q _ y N W J _ v 3 X Z y d T f Q j a 3 5 o 6 O y e Z f F a O 8 2 r U E h T e 5 4 O k k G K Q V 7 D 1 0 g J 2 R I R n t L 8 y 3 L 7 F w 5 o F T D T H I - 3 B s J 6 h U K G 7 K 7 W P q 4 p f R 6 d Y 7 T _ 8 G - B P r L U 5 3 _ q M q L 0 j U E L y j 7 q q o v D q w C A 7 h c z 8 8 Q u s l 4 M t C L c E 9 f 0 z S Z z Q ' ,   N ' G o o g l e ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 1   1 0 : 0 8 : 3 7 . 4 8 3 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]   ( [ I d ] ,   [ N a m e ] ,   [ E m a i l ] ,   [ P r o v i d e r K e y ] ,   [ P r o v i d e r N a m e ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] )   V A L U E S   ( 1 7 ,   N ' G o r a b   R a t u r i ' ,   N ' r a t u r i g o r a b 1 5 @ g m a i l . c o m ' ,   N ' e y J h b G c i O i J S U z I 1 N i I s I m t p Z C I 6 I j k y N m Q 2 M G N k M D U 1 O T E x Z j c 1 Z j M y N G F k Z G U x N z A 4 Z D k z M m Y 5 N T k 1 Y W Y i f Q . e y J p c 3 M i O i J h Y 2 N v d W 5 0 c y 5 n b 2 9 n b G U u Y 2 9 t I i w i a W F 0 I j o x N D g 3 N j U y N j k 3 L C J l e H A i O j E 0 O D c 2 N T Y y O T c s I m F 0 X 2 h h c 2 g i O i J O O E 5 x W V A z V 3 p 4 a E h M V G l 6 d k 1 R d U 1 3 I i w i Y X V k I j o i O D g y N z M w O T U 0 N z I x L T V z b W 1 r b j R 1 c T B v a m x r c m p t Y T F j N D h r b G 5 s Z W h n N m 1 k L m F w c H M u Z 2 9 v Z 2 x l d X N l c m N v b n R l b n Q u Y 2 9 t I i w i c 3 V i I j o i M T A 5 M z c 1 N j M 4 M D A 3 M j U y N j Y x M D I z I i w i Z W 1 h a W x f d m V y a W Z p Z W Q i O n R y d W U s I m F 6 c C I 6 I j g 4 M j c z M D k 1 N D c y M S 0 1 c 2 1 t a 2 4 0 d X E w b 2 p s a 3 J q b W E x Y z Q 4 a 2 x u b G V o Z z Z t Z C 5 h c H B z L m d v b 2 d s Z X V z Z X J j b 2 5 0 Z W 5 0 L m N v b S I s I m V t Y W l s I j o i c m F 0 d X J p Z 2 9 y Y W I x N U B n b W F p b C 5 j b 2 0 i L C J u Y W 1 l I j o i R 2 9 y Y W I g U m F 0 d X J p I i w i c G l j d H V y Z S I 6 I m h 0 d H B z O i 8 v b G g 1 L m d v b 2 d s Z X V z Z X J j b 2 5 0 Z W 5 0 L m N v b S 8 t e j Z J d k 1 y Q T d C V k 0 v Q U F B Q U F B Q U F B Q U k v Q U F B Q U F B Q U F B Q U E v Q U R Q b G h m S V U z U G p K O E x K e k d H M 0 N a a 1 R v W U 9 r R l N f b X B 5 Z y 9 z O T Y t Y y 9 w a G 9 0 b y 5 q c G c i L C J n a X Z l b l 9 u Y W 1 l I j o i R 2 9 y Y W I i L C J m Y W 1 p b H l f b m F t Z S I 6 I l J h d H V y a S I s I m x v Y 2 F s Z S I 6 I m V u I n 0 . P n R B - k Y c y c Y s p x x y m f e X 3 2 5 E L k s E 9 J y h p 7 j v v d B c x W a Y 3 M T O 7 v a C 4 X D b z v E O x L A D B X Y k t n s A o 2 x G V p E v j E H G b T w q Q A Q 6 C f f F 8 A k s r g A S v E 5 7 U n e D 6 t 6 U F w V d H G y Z F n 0 A s X 3 e 6 x 6 2 y A K y x 4 M T O C I 9 3 s e O W K 1 4 b X q s L O w 8 o Z C W 0 s p M X y Q T 7 C Y I _ j 9 I m E z q f H Z k W r M i I Z u U c R 6 A E h K m U f M T X 7 4 5 U 9 8 Z H E Z 5 e j M 6 Q f T F R T C C V D U d V 9 e _ m 7 R K X 0 X 8 r R h i D L c O D g M - l - m 0 X i N p 1 m g h W C o x U g l l d o u c X e r U B O n i u L j h U j v _ R e i 0 l 4 y - F 1 G B 1 f 9 h f K V j H j Z P V 5 H O 8 p s Q b J k 3 t Q ' ,   N ' G o o g l e ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 1   1 0 : 1 1 : 5 5 . 1 5 7 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]   ( [ I d ] ,   [ N a m e ] ,   [ E m a i l ] ,   [ P r o v i d e r K e y ] ,   [ P r o v i d e r N a m e ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] )   V A L U E S   ( 1 8 ,   N ' M a n i s h a   T e s t ' ,   N ' m a n i s h a t e s t 8 8 @ g m a i l . c o m ' ,   N ' e y J h b G c i O i J S U z I 1 N i I s I m t p Z C I 6 I j c w Y W F l M D k 3 Y m U w Z m E y Y T k 5 O T g 1 M m Q 1 N 2 E 0 O D B l N G N h Z D Z i Z G I 4 M W M i f Q . e y J p c 3 M i O i J h Y 2 N v d W 5 0 c y 5 n b 2 9 n b G U u Y 2 9 t I i w i a W F 0 I j o x N D g 3 O T I 3 N D k 4 L C J l e H A i O j E 0 O D c 5 M z E w O T g s I m F 0 X 2 h h c 2 g i O i I z Q 2 N o c F F B R 2 Y 1 e n h 5 N T F G Z k p l a F l B I i w i Y X V k I j o i O D g y N z M w O T U 0 N z I x L T V z b W 1 r b j R 1 c T B v a m x r c m p t Y T F j N D h r b G 5 s Z W h n N m 1 k L m F w c H M u Z 2 9 v Z 2 x l d X N l c m N v b n R l b n Q u Y 2 9 t I i w i c 3 V i I j o i M T E x N z E 3 O T Y 1 N T Q w N j A 0 M z g 3 M j k z I i w i Z W 1 h a W x f d m V y a W Z p Z W Q i O n R y d W U s I m F 6 c C I 6 I j g 4 M j c z M D k 1 N D c y M S 0 1 c 2 1 t a 2 4 0 d X E w b 2 p s a 3 J q b W E x Y z Q 4 a 2 x u b G V o Z z Z t Z C 5 h c H B z L m d v b 2 d s Z X V z Z X J j b 2 5 0 Z W 5 0 L m N v b S I s I m V t Y W l s I j o i b W F u a X N o Y X R l c 3 Q 4 O E B n b W F p b C 5 j b 2 0 i L C J u Y W 1 l I j o i T W F u a X N o Y S B U Z X N 0 I i w i c G l j d H V y Z S I 6 I m h 0 d H B z O i 8 v b G g 2 L m d v b 2 d s Z X V z Z X J j b 2 5 0 Z W 5 0 L m N v b S 8 t e H Z p b C 1 x N m 9 3 U m s v Q U F B Q U F B Q U F B Q U k v Q U F B Q U F B Q U F B Q U E v Q U F v b X Z W M G s 0 a 3 h r e V N f U F V f S U t P e E R R U F h x a 2 Z I R 3 l k Z y 9 z O T Y t Y y 9 w a G 9 0 b y 5 q c G c i L C J n a X Z l b l 9 u Y W 1 l I j o i T W F u a X N o Y S I s I m Z h b W l s e V 9 u Y W 1 l I j o i V G V z d C I s I m x v Y 2 F s Z S I 6 I m V u I n 0 . l k R W G i y p H b x 0 U M 1 M c H a _ L T k t F L f Z L V _ U 0 l h n R H m T 5 I b N K 8 F 5 C o D O h v O 0 T 8 1 g a P X u X M 6 8 m - x 3 t d 7 o k R 5 1 Q k 2 M X t C F 0 d 9 h g s f X 7 J 2 d y J I v t 3 X K g L o 5 d X q j M D A z N u J U W e m G I P X A M 7 w - L 5 r K v k J Q z g K N 4 I I Q A c M 4 y h 2 e r I T Q E 1 P W V Q 4 f o F H M W 4 c 1 p 0 F w U W 5 0 e g d y R r 1 n 2 t p 3 6 Q I e s a 7 B - k r d N Q A Z 2 L G R s S 8 G r D 3 7 Y M b E f 4 e e D O a T V u 6 h F Q 5 q z t Z e 6 7 J v M V 4 Y E i h l p K 9 x q 2 t m l Y b V P w R i w V O 4 r h v u q L u 2 u 4 P c 2 D E X C _ S e c D K B - n h m o l 8 7 5 w j l M j - X k 3 v W m j C B t Y d - G 5 k c V w ' ,   N ' G o o g l e ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 4   0 9 : 1 2 : 0 6 . 1 8 3 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]   ( [ I d ] ,   [ N a m e ] ,   [ E m a i l ] ,   [ P r o v i d e r K e y ] ,   [ P r o v i d e r N a m e ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] )   V A L U E S   ( 1 9 ,   N ' T o d d   R o n ' ,   N ' t e s t n a m e 2 3 3 @ g m a i l . c o m ' ,   N ' 2 0 2 2 4 3 0 5 3 5 8 9 6 8 6 ' ,   N ' F a c e b o o k ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 4   0 9 : 1 7 : 5 7 . 5 3 3 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]   ( [ I d ] ,   [ N a m e ] ,   [ E m a i l ] ,   [ P r o v i d e r K e y ] ,   [ P r o v i d e r N a m e ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] )   V A L U E S   ( 2 0 ,   N ' M U K E S H   C H A B B R A ' ,   N ' m u k e s h c h a b b r a 5 @ g m a i l . c o m ' ,   N ' e y J h b G c i O i J S U z I 1 N i I s I m t p Z C I 6 I j g x M D k x N G Z i O T k 0 O G Y x Z T Q z N T d j Y z g 3 M j Y 4 M D g 3 M j k 4 Z T g z N T l k M j A i f Q . e y J p c 3 M i O i J h Y 2 N v d W 5 0 c y 5 n b 2 9 n b G U u Y 2 9 t I i w i a W F 0 I j o x N D g 4 M j A 3 M D M w L C J l e H A i O j E 0 O D g y M T A 2 M z A s I m F 0 X 2 h h c 2 g i O i J N c G Z h S D N W Z V l J O V h 2 Q j N f N m J R V U d n I i w i Y X V k I j o i O D g y N z M w O T U 0 N z I x L T V z b W 1 r b j R 1 c T B v a m x r c m p t Y T F j N D h r b G 5 s Z W h n N m 1 k L m F w c H M u Z 2 9 v Z 2 x l d X N l c m N v b n R l b n Q u Y 2 9 t I i w i c 3 V i I j o i M T A 0 N j Q 5 N T c z N z g 2 N j A z O T A 0 M z Y y I i w i Z W 1 h a W x f d m V y a W Z p Z W Q i O n R y d W U s I m F 6 c C I 6 I j g 4 M j c z M D k 1 N D c y M S 0 1 c 2 1 t a 2 4 0 d X E w b 2 p s a 3 J q b W E x Y z Q 4 a 2 x u b G V o Z z Z t Z C 5 h c H B z L m d v b 2 d s Z X V z Z X J j b 2 5 0 Z W 5 0 L m N v b S I s I m V t Y W l s I j o i b X V r Z X N o Y 2 h h Y m J y Y T V A Z 2 1 h a W w u Y 2 9 t I i w i b m F t Z S I 6 I k 1 V S 0 V T S C B D S E F C Q l J B I i w i c G l j d H V y Z S I 6 I m h 0 d H B z O i 8 v b G g 1 L m d v b 2 d s Z X V z Z X J j b 2 5 0 Z W 5 0 L m N v b S 8 t Y 0 5 3 S l N W M n R H e l U v Q U F B Q U F B Q U F B Q U k v Q U F B Q U F B Q U F B Q U E v Q U F v b X Z W M m 5 m a z B R c V l t Y m l N c D R x e F Z Q d 0 1 Q V 3 F M N m R q d y 9 z O T Y t Y y 9 w a G 9 0 b y 5 q c G c i L C J n a X Z l b l 9 u Y W 1 l I j o i T V V L R V N I I i w i Z m F t a W x 5 X 2 5 h b W U i O i J D S E F C Q l J B I i w i b G 9 j Y W x l I j o i Z W 4 i f Q . m f C l Z 8 B V v g 8 4 j b y I Y B 6 T y J 9 1 n p u o x g o O 3 3 i M h V s Q S 2 W l a G l p a Z h p P 2 1 N R c s B B n L X R c s Z 9 k X W 5 a 5 c y g y Z h H N a N e o M a X K I 2 G o 8 g E 4 m X F O X w C D 8 P o e u P q i g w W P 2 3 9 p S 8 S Q P c C 7 c c q 5 x C b 1 S Y d O 0 r s D B E p u u u 7 A W C H O w m p Q _ G I O n v n F l 6 h e 6 a i T W t - y u q 2 R Q t v J _ k B f a i o 8 t 8 b w d d V t 4 m r l U D 7 9 4 m f 0 a 8 q - i 4 x A Q d 9 2 e S W W d v V 0 A X Q 9 B u A b 3 U X T W Q 3 H - k k O C 7 P F 7 - x c x J f G a g C q 8 O b r k z E 4 f P 5 C B Z 5 w 4 v C p r t R Z h p A a y e a u j 5 V z w r V B W l 9 8 x G H Y 2 r 3 Z U p u I 7 g 5 I n d M L 3 a w ' ,   N ' G o o g l e ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 7   1 4 : 5 0 : 3 3 . 2 9 3 '   A S   D a t e T i m e ) )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ L o g i n _ S o c a i l N e t w o r k ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ M o d e l s ]   O N    
  
 I N S E R T   [ d b o ] . [ M o d e l s ]   ( [ I D ] ,   [ N a m e ] ,   [ I s A c t i v e ] )   V A L U E S   ( 1 ,   N ' S p o r t s   C o a c h ' ,   1 )  
 I N S E R T   [ d b o ] . [ M o d e l s ]   ( [ I D ] ,   [ N a m e ] ,   [ I s A c t i v e ] )   V A L U E S   ( 2 ,   N ' M i r a d a ' ,   1 )  
 I N S E R T   [ d b o ] . [ M o d e l s ]   ( [ I D ] ,   [ N a m e ] ,   [ I s A c t i v e ] )   V A L U E S   ( 3 ,   N ' C r o s s f i t ' ,   1 )  
 I N S E R T   [ d b o ] . [ M o d e l s ]   ( [ I D ] ,   [ N a m e ] ,   [ I s A c t i v e ] )   V A L U E S   ( 4 ,   N ' C o n c o r d ' ,   1 )  
 I N S E R T   [ d b o ] . [ M o d e l s ]   ( [ I D ] ,   [ N a m e ] ,   [ I s A c t i v e ] )   V A L U E S   ( 5 ,   N ' A D R E N A L I N E ' ,   1 )  
 I N S E R T   [ d b o ] . [ M o d e l s ]   ( [ I D ] ,   [ N a m e ] ,   [ I s A c t i v e ] )   V A L U E S   ( 6 ,   N ' C H A P A R R A L ' ,   1 )  
 I N S E R T   [ d b o ] . [ M o d e l s ]   ( [ I D ] ,   [ N a m e ] ,   [ I s A c t i v e ] )   V A L U E S   ( 7 ,   N ' T i o g a ' ,   1 )  
 I N S E R T   [ d b o ] . [ M o d e l s ]   ( [ I D ] ,   [ N a m e ] ,   [ I s A c t i v e ] )   V A L U E S   ( 1 8 ,   N ' d e l u x e ' ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ M o d e l s ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ P a g e ]   O N    
  
 I N S E R T   [ d b o ] . [ P a g e ]   ( [ I d ] ,   [ N a m e ] ,   [ U r l ] ,   [ I s D e l e t e d ] ,   [ C r e a t e d O n ] ,   [ U p d a t e d O n ] )   V A L U E S   ( 1 ,   N ' A b o u t U s ' ,   N ' H o m e / A b o u t U s ' ,   0 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 4   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 4   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ P a g e ]   ( [ I d ] ,   [ N a m e ] ,   [ U r l ] ,   [ I s D e l e t e d ] ,   [ C r e a t e d O n ] ,   [ U p d a t e d O n ] )   V A L U E S   ( 2 ,   N ' R e f u n d P o l i c y ' ,   N ' H o m e / R e f u n d P o l i c y ' ,   0 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 4   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 4   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) )  
 I N S E R T   [ d b o ] . [ P a g e ]   ( [ I d ] ,   [ N a m e ] ,   [ U r l ] ,   [ I s D e l e t e d ] ,   [ C r e a t e d O n ] ,   [ U p d a t e d O n ] )   V A L U E S   ( 3 ,   N ' T e r m s A n d C o n d i t i o n s ' ,   N ' H o m e / T e r m s A n d C o n d i t i o n s ' ,   0 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 0 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 4   1 2 : 5 8 : 4 0 . 2 5 0 '   A S   D a t e T i m e ) )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ P a g e ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ P a g e I m a g e s ]   O N    
  
 I N S E R T   [ d b o ] . [ P a g e I m a g e s ]   ( [ I d ] ,   [ P a g e I d ] ,   [ I m a g e I d ] ,   [ I m a g e P a t h ] )   V A L U E S   ( 1 ,   1 ,   N ' s i n g l e I m g 1 ' ,   N ' / C o n t e n t / U p l o a d / I m a g e s / q m c g q d a r . u 3 d d o w n l o a d . p n g ' )  
 I N S E R T   [ d b o ] . [ P a g e I m a g e s ]   ( [ I d ] ,   [ P a g e I d ] ,   [ I m a g e I d ] ,   [ I m a g e P a t h ] )   V A L U E S   ( 2 ,   1 ,   N ' s i n g l e I m g 2 ' ,   N ' / i m a g e s / d o w n l o a d . p n g ' )  
 I N S E R T   [ d b o ] . [ P a g e I m a g e s ]   ( [ I d ] ,   [ P a g e I d ] ,   [ I m a g e I d ] ,   [ I m a g e P a t h ] )   V A L U E S   ( 3 ,   1 ,   N U L L ,   N ' / C o n t e n t / U p l o a d / A b o u t U s I m a g e s / o h m j z 5 s t . 4 g 2 3 2 d f 1 6 3 e - 4 6 e d - 4 5 f 8 - b 4 d 3 - 1 9 1 7 5 c 8 c 4 a 3 2 b a n n e r . j p g ' )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ P a g e I m a g e s ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ R e n t T e r m s ]   O N    
  
 I N S E R T   [ d b o ] . [ R e n t T e r m s ]   ( [ I D ] ,   [ T e r m ] ,   [ I s A c t i v e ] )   V A L U E S   ( 1 ,   N ' O n e   N i g h t ' ,   1 )  
 I N S E R T   [ d b o ] . [ R e n t T e r m s ]   ( [ I D ] ,   [ T e r m ] ,   [ I s A c t i v e ] )   V A L U E S   ( 2 ,   N ' M o n t h l y ' ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ R e n t T e r m s ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ T e s t i m o n i a l ]   O N    
  
 I N S E R T   [ d b o ] . [ T e s t i m o n i a l ]   ( [ I D ] ,   [ D e s c r i p t i o n ] ,   [ T i t l e ] ,   [ S u m m a r y ] ,   [ I m a g e U R l ] ,   [ i s a c t i v e ] ,   [ c r e a t e d o n ] ,   [ u p d a t e d o n ] ,   [ R a t i n g ] )   V A L U E S   ( 1 ,   N ' t e s t i m o n a l s   D e s c r i p t i o n s ' ,   N ' T h i s   i s   P h o t o s h o p ' ' s   v e r s i o n     o f   L o r e m   I p s u m . ' ,   N ' L o r e m   i p s u m   d o l o r   s i t   a m e t ,   c o n s e c t e t u r   a d i p i s i c i n g   e l i t . ' ,   N ' / I m a g e s / t e s t i m o n l a s i m a g e s / c 5 0 0 a 2 a 4 - d 3 f 4 - 4 1 8 b - 8 c 1 4 - 2 1 2 b d b e 0 9 5 f 0 t e s t i m o n i a l 1 . p n g ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 7   1 5 : 2 9 : 5 9 . 1 9 0 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 7   1 5 : 2 9 : 5 9 . 1 9 0 '   A S   D a t e T i m e ) ,   2 )  
 I N S E R T   [ d b o ] . [ T e s t i m o n i a l ]   ( [ I D ] ,   [ D e s c r i p t i o n ] ,   [ T i t l e ] ,   [ S u m m a r y ] ,   [ I m a g e U R l ] ,   [ i s a c t i v e ] ,   [ c r e a t e d o n ] ,   [ u p d a t e d o n ] ,   [ R a t i n g ] )   V A L U E S   ( 2 ,   N ' t e s t i m o n a l s   D e s c r i p t i o n s ' ,   N ' T h i s   i s   P h o t o s h o p ' ' s   v e r s i o n     o f   L o r e m   I p s u m . ' ,   N ' L o r e m   i p s u m   d o l o r   s i t   a m e t ,   c o n s e c t e t u r   a d i p i s i c i n g   e l i t . ' ,   N ' / I m a g e s / t e s t i m o n l a s i m a g e s / t e s t i m o n i a l 2 . p n g ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 6   0 7 : 0 3 : 3 2 . 6 2 3 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 6   0 7 : 0 3 : 3 2 . 6 2 3 '   A S   D a t e T i m e ) ,   3 )  
 I N S E R T   [ d b o ] . [ T e s t i m o n i a l ]   ( [ I D ] ,   [ D e s c r i p t i o n ] ,   [ T i t l e ] ,   [ S u m m a r y ] ,   [ I m a g e U R l ] ,   [ i s a c t i v e ] ,   [ c r e a t e d o n ] ,   [ u p d a t e d o n ] ,   [ R a t i n g ] )   V A L U E S   ( 3 ,   N ' t e s t i m o n a l s   D e s c r i p t i o n s ' ,   N ' T h i s   i s   P h o t o s h o p ' ' s   v e r s i o n     o f   L o r e m   I p s u m . ' ,   N ' L o r e m   i p s u m   d o l o r   s i t   a m e t ,   c o n s e c t e t u r   a d i p i s i c i n g   e l i t . ' ,   N ' / I m a g e s / t e s t i m o n l a s i m a g e s / t e s t i m o n i a l 3 . p n g ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 6   0 7 : 0 4 : 5 5 . 5 0 0 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 6   0 7 : 0 4 : 5 5 . 5 0 0 '   A S   D a t e T i m e ) ,   5 )  
 I N S E R T   [ d b o ] . [ T e s t i m o n i a l ]   ( [ I D ] ,   [ D e s c r i p t i o n ] ,   [ T i t l e ] ,   [ S u m m a r y ] ,   [ I m a g e U R l ] ,   [ i s a c t i v e ] ,   [ c r e a t e d o n ] ,   [ u p d a t e d o n ] ,   [ R a t i n g ] )   V A L U E S   ( 4 ,   N ' t e s t i m o n a l s   D e s c r i p t i o n s ' ,   N ' T h i s   i s   P h o t o s h o p ' ' s   v e r s i o n     o f   L o r e m   I p s u m . ' ,   N ' L o r e m   i p s u m   d o l o r   s i t   a m e t ,   c o n s e c t e t u r   a d i p i s i c i n g   e l i t . ' ,   N ' / I m a g e s / t e s t i m o n l a s i m a g e s / t e s t i m o n i a l 4 . p n g ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 6   0 7 : 3 0 : 5 5 . 7 2 0 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 6   0 7 : 3 0 : 5 5 . 7 2 0 '   A S   D a t e T i m e ) ,   3 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ T e s t i m o n i a l ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ U p l o a d F i l e s ]   O N    
  
 I N S E R T   [ d b o ] . [ U p l o a d F i l e s ]   ( [ I d ] ,   [ F o l d e r I d ] ,   [ F i l e N a m e ] ,   [ I s D e l e t e d ] )   V A L U E S   ( 1 ,   2 ,   N ' o h m j z 5 s t . 4 g 2 3 2 d f 1 6 3 e - 4 6 e d - 4 5 f 8 - b 4 d 3 - 1 9 1 7 5 c 8 c 4 a 3 2 b a n n e r . j p g ' ,   0 )  
 I N S E R T   [ d b o ] . [ U p l o a d F i l e s ]   ( [ I d ] ,   [ F o l d e r I d ] ,   [ F i l e N a m e ] ,   [ I s D e l e t e d ] )   V A L U E S   ( 2 ,   1 ,   N ' a g x 1 j j f w . h o s 8 c 9 5 9 5 f 2 - 5 9 4 b - 4 2 a 9 - a 8 f 7 - c f 5 4 7 c 8 c c b d 2 2 . p n g ' ,   0 )  
 I N S E R T   [ d b o ] . [ U p l o a d F i l e s ]   ( [ I d ] ,   [ F o l d e r I d ] ,   [ F i l e N a m e ] ,   [ I s D e l e t e d ] )   V A L U E S   ( 3 ,   1 ,   N ' q m c g q d a r . u 3 d d o w n l o a d . p n g ' ,   0 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ U p l o a d F i l e s ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ U s e r s ]   O N    
  
 I N S E R T   [ d b o ] . [ U s e r s ]   ( [ I D ] ,   [ F i r s t N a m e ] ,   [ L a s t N a m e ] ,   [ E m a i l ] ,   [ P h o n e ] ,   [ D O B ] ,   [ P a s s w o r d ] ,   [ U s e r N a m e ] ,   [ I s A c t i v e ] ,   [ R o l e I D ] ,   [ F o r g e t P a s s w o r d ] ,   [ P r o v i d e r K e y ] )   V A L U E S   ( 1 ,   N ' R o h i t ' ,   N ' K a t o c h ' ,   N ' r o h i t @ g m a i l . c o m ' ,   N ' 8 9 8 9 8 9 8 8 9 ' ,   C A S T ( N ' 1 9 8 6 - 0 2 - 0 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   N ' f c 0 i U k g 3 3 1 q k 3 V 8 H Y 6 M W v Q = = ' ,   N ' r o h i t ' ,   1 ,   1 ,   N U L L ,   N U L L )  
 I N S E R T   [ d b o ] . [ U s e r s ]   ( [ I D ] ,   [ F i r s t N a m e ] ,   [ L a s t N a m e ] ,   [ E m a i l ] ,   [ P h o n e ] ,   [ D O B ] ,   [ P a s s w o r d ] ,   [ U s e r N a m e ] ,   [ I s A c t i v e ] ,   [ R o l e I D ] ,   [ F o r g e t P a s s w o r d ] ,   [ P r o v i d e r K e y ] )   V A L U E S   ( 3 ,   N ' G o r a b ' ,   N ' R a t u r i ' ,   N ' g o r a b @ t e c h n o c o d z . c o m ' ,   N ' 1 1 2 3 3 2 4 3 5 3 4 5 ' ,   C A S T ( N ' 1 9 9 3 - 1 2 - 1 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   N ' Y g n / u Z c / F Z M J u h L Y 8 v a b m A = = ' ,   N ' g o r a b ' ,   1 ,   2 ,   N ' 6 7 6 8 7 9 ' ,   N U L L )  
 I N S E R T   [ d b o ] . [ U s e r s ]   ( [ I D ] ,   [ F i r s t N a m e ] ,   [ L a s t N a m e ] ,   [ E m a i l ] ,   [ P h o n e ] ,   [ D O B ] ,   [ P a s s w o r d ] ,   [ U s e r N a m e ] ,   [ I s A c t i v e ] ,   [ R o l e I D ] ,   [ F o r g e t P a s s w o r d ] ,   [ P r o v i d e r K e y ] )   V A L U E S   ( 4 ,   N ' A m i t ' ,   N ' S i n g h ' ,   N ' g o r a b @ t e c h n o c o d z . c o m f f ' ,   N ' 1 2 3 2 4 4 4 2 4 4 ' ,   C A S T ( N ' 1 9 9 3 - 1 2 - 1 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   N ' f c 0 i U k g 3 3 1 q k 3 V 8 H Y 6 M W v Q = = ' ,   N ' 1 2 3 ' ,   0 ,   2 ,   N U L L ,   N U L L )  
 I N S E R T   [ d b o ] . [ U s e r s ]   ( [ I D ] ,   [ F i r s t N a m e ] ,   [ L a s t N a m e ] ,   [ E m a i l ] ,   [ P h o n e ] ,   [ D O B ] ,   [ P a s s w o r d ] ,   [ U s e r N a m e ] ,   [ I s A c t i v e ] ,   [ R o l e I D ] ,   [ F o r g e t P a s s w o r d ] ,   [ P r o v i d e r K e y ] )   V A L U E S   ( 5 ,   N ' f d f ' ,   N ' f d d f ' ,   N ' g o r a b @ t e c h n o c o d g h z . c o m ' ,   N ' 2 1 3 2 1 3 2 1 3 ' ,   C A S T ( N ' 1 9 9 2 - 1 2 - 1 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   N ' f c 0 i U k g 3 3 1 q k 3 V 8 H Y 6 M W v Q = = ' ,   N ' 1 2 ' ,   0 ,   2 ,   N U L L ,   N U L L )  
 I N S E R T   [ d b o ] . [ U s e r s ]   ( [ I D ] ,   [ F i r s t N a m e ] ,   [ L a s t N a m e ] ,   [ E m a i l ] ,   [ P h o n e ] ,   [ D O B ] ,   [ P a s s w o r d ] ,   [ U s e r N a m e ] ,   [ I s A c t i v e ] ,   [ R o l e I D ] ,   [ F o r g e t P a s s w o r d ] ,   [ P r o v i d e r K e y ] )   V A L U E S   ( 6 ,   N ' d d d ' ,   N ' s s s ' ,   N ' g o r a b @ t e c h n o c o d f d z . c o m ' ,   N ' 1 2 3 3 3 4 4 4 ' ,   C A S T ( N ' 1 9 9 3 - 1 2 - 1 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   N ' f c 0 i U k g 3 3 1 q k 3 V 8 H Y 6 M W v Q = = ' ,   N ' 1 2 ' ,   0 ,   2 ,   N U L L ,   N U L L )  
 I N S E R T   [ d b o ] . [ U s e r s ]   ( [ I D ] ,   [ F i r s t N a m e ] ,   [ L a s t N a m e ] ,   [ E m a i l ] ,   [ P h o n e ] ,   [ D O B ] ,   [ P a s s w o r d ] ,   [ U s e r N a m e ] ,   [ I s A c t i v e ] ,   [ R o l e I D ] ,   [ F o r g e t P a s s w o r d ] ,   [ P r o v i d e r K e y ] )   V A L U E S   ( 7 ,   N ' d s d ' ,   N ' s a ' ,   N ' g o r a b @ t e c h n o c d d o d z . c o m ' ,   N ' 2 3 2 1 3 1 2 3 ' ,   C A S T ( N ' 1 9 9 3 - 1 2 - 1 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   N ' f c 0 i U k g 3 3 1 q k 3 V 8 H Y 6 M W v Q = = ' ,   N ' 1 2 2 ' ,   0 ,   2 ,   N U L L ,   N U L L )  
 I N S E R T   [ d b o ] . [ U s e r s ]   ( [ I D ] ,   [ F i r s t N a m e ] ,   [ L a s t N a m e ] ,   [ E m a i l ] ,   [ P h o n e ] ,   [ D O B ] ,   [ P a s s w o r d ] ,   [ U s e r N a m e ] ,   [ I s A c t i v e ] ,   [ R o l e I D ] ,   [ F o r g e t P a s s w o r d ] ,   [ P r o v i d e r K e y ] )   V A L U E S   ( 8 ,   N ' s s ' ,   N ' d ' ,   N ' g o r a b @ t e c h n o z . c o m ' ,   N ' 1 2 3 2 4 3 2 4 ' ,   C A S T ( N ' 1 9 9 3 - 1 2 - 1 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   N ' B h V N v i A 0 q 7 E R N 5 U n 3 A z I P g = = ' ,   N ' d s a ' ,   1 ,   2 ,   N U L L ,   N U L L )  
 I N S E R T   [ d b o ] . [ U s e r s ]   ( [ I D ] ,   [ F i r s t N a m e ] ,   [ L a s t N a m e ] ,   [ E m a i l ] ,   [ P h o n e ] ,   [ D O B ] ,   [ P a s s w o r d ] ,   [ U s e r N a m e ] ,   [ I s A c t i v e ] ,   [ R o l e I D ] ,   [ F o r g e t P a s s w o r d ] ,   [ P r o v i d e r K e y ] )   V A L U E S   ( 9 ,   N ' f f ' ,   N ' d s f ' ,   N ' g o r a b @ t e c h n o c f f o d z . c o m ' ,   N ' 1 2 3 2 3 2 4 4 4 ' ,   C A S T ( N ' 1 9 9 9 - 1 2 - 1 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   N ' f c 0 i U k g 3 3 1 q k 3 V 8 H Y 6 M W v Q = = ' ,   N ' 1 2 2 ' ,   1 ,   2 ,   N ' r Q 5 W 5 v Z 8 W / s 3 m 0 j x l D E a d w = = ' ,   N U L L )  
 I N S E R T   [ d b o ] . [ U s e r s ]   ( [ I D ] ,   [ F i r s t N a m e ] ,   [ L a s t N a m e ] ,   [ E m a i l ] ,   [ P h o n e ] ,   [ D O B ] ,   [ P a s s w o r d ] ,   [ U s e r N a m e ] ,   [ I s A c t i v e ] ,   [ R o l e I D ] ,   [ F o r g e t P a s s w o r d ] ,   [ P r o v i d e r K e y ] )   V A L U E S   ( 1 0 ,   N ' M u k e s h ' ,   N ' C h a b b r a ' ,   N ' m u k e s h c h a b b r a @ g m a i l . c o m ' ,   N ' 9 8 9 8 9 8 9 8 ' ,   C A S T ( N ' 2 0 1 4 - 0 2 - 0 5   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   N ' f c 0 i U k g 3 3 1 q k 3 V 8 H Y 6 M W v Q = = ' ,   N ' m u k e s h ' ,   0 ,   2 ,   N U L L ,   N U L L )  
 I N S E R T   [ d b o ] . [ U s e r s ]   ( [ I D ] ,   [ F i r s t N a m e ] ,   [ L a s t N a m e ] ,   [ E m a i l ] ,   [ P h o n e ] ,   [ D O B ] ,   [ P a s s w o r d ] ,   [ U s e r N a m e ] ,   [ I s A c t i v e ] ,   [ R o l e I D ] ,   [ F o r g e t P a s s w o r d ] ,   [ P r o v i d e r K e y ] )   V A L U E S   ( 1 1 ,   N ' G o r a b ' ,   N ' R a t u r i ' ,   N ' g o r a b @ t e c h n o c o d h h z . c o m ' ,   N ' 1 2 3 2 4 3 4 4 ' ,   C A S T ( N ' 1 9 9 3 - 1 2 - 1 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   N ' f c 0 i U k g 3 3 1 q k 3 V 8 H Y 6 M W v Q = = ' ,   N ' g o r a b ' ,   0 ,   2 ,   N ' v u d K + S 4 + 7 J 2 m J I s N S N W s Z w = = ' ,   N U L L )  
 I N S E R T   [ d b o ] . [ U s e r s ]   ( [ I D ] ,   [ F i r s t N a m e ] ,   [ L a s t N a m e ] ,   [ E m a i l ] ,   [ P h o n e ] ,   [ D O B ] ,   [ P a s s w o r d ] ,   [ U s e r N a m e ] ,   [ I s A c t i v e ] ,   [ R o l e I D ] ,   [ F o r g e t P a s s w o r d ] ,   [ P r o v i d e r K e y ] )   V A L U E S   ( 1 2 ,   N ' G o r a b ' ,   N ' R a t u r i ' ,   N ' g o r a b @ t e c h n o c d d o d z . c o m ' ,   N ' 9 5 4 4 3 5 3 4 3 3 ' ,   C A S T ( N ' 1 9 9 3 - 1 2 - 1 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   N ' f c 0 i U k g 3 3 1 q k 3 V 8 H Y 6 M W v Q = = ' ,   N ' g o r a b ' ,   0 ,   2 ,   N ' a k f 8 c 9 y 7 8 b v 5 i o R G l 6 L i q g = = ' ,   N U L L )  
 I N S E R T   [ d b o ] . [ U s e r s ]   ( [ I D ] ,   [ F i r s t N a m e ] ,   [ L a s t N a m e ] ,   [ E m a i l ] ,   [ P h o n e ] ,   [ D O B ] ,   [ P a s s w o r d ] ,   [ U s e r N a m e ] ,   [ I s A c t i v e ] ,   [ R o l e I D ] ,   [ F o r g e t P a s s w o r d ] ,   [ P r o v i d e r K e y ] )   V A L U E S   ( 1 3 ,   N ' G o r a b ' ,   N ' R a t u r i ' ,   N ' g o r a b @ t e c h n o c o d d z . c o m ' ,   N ' 1 2 1 4 4 4 4 3 4 ' ,   C A S T ( N ' 1 9 9 3 - 1 2 - 1 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   N ' A D X 4 V e u w J 0 B A o X S O X n t Y d J Q J o R d 6 1 V + N / T N e P n J f u 3 8 = ' ,   N ' 1 2 3 3 ' ,   1 ,   2 ,   N U L L ,   N U L L )  
 I N S E R T   [ d b o ] . [ U s e r s ]   ( [ I D ] ,   [ F i r s t N a m e ] ,   [ L a s t N a m e ] ,   [ E m a i l ] ,   [ P h o n e ] ,   [ D O B ] ,   [ P a s s w o r d ] ,   [ U s e r N a m e ] ,   [ I s A c t i v e ] ,   [ R o l e I D ] ,   [ F o r g e t P a s s w o r d ] ,   [ P r o v i d e r K e y ] )   V A L U E S   ( 1 4 ,   N ' f f f ' ,   N ' s s s ' ,   N ' f @ g . c o m ' ,   N ' 1 2 3 4 5 6 7 ' ,   C A S T ( N ' 1 9 9 3 - 1 2 - 1 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   N ' f c 0 i U k g 3 3 1 q k 3 V 8 H Y 6 M W v Q = = ' ,   N ' 1 2 3 3 3 ' ,   0 ,   2 ,   N U L L ,   N U L L )  
 I N S E R T   [ d b o ] . [ U s e r s ]   ( [ I D ] ,   [ F i r s t N a m e ] ,   [ L a s t N a m e ] ,   [ E m a i l ] ,   [ P h o n e ] ,   [ D O B ] ,   [ P a s s w o r d ] ,   [ U s e r N a m e ] ,   [ I s A c t i v e ] ,   [ R o l e I D ] ,   [ F o r g e t P a s s w o r d ] ,   [ P r o v i d e r K e y ] )   V A L U E S   ( 1 5 ,   N ' G o r a b ' ,   N ' R a t u r i ' ,   N ' g o r a b @ t e c h n o c a a o d z . c o m ' ,   N ' 2 3 4 2 3 4 2 3 4 ' ,   C A S T ( N ' 1 9 9 3 - 1 2 - 1 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   N ' f c 0 i U k g 3 3 1 q k 3 V 8 H Y 6 M W v Q = = ' ,   N ' 1 2 3 3 3 ' ,   0 ,   2 ,   N U L L ,   N U L L )  
 I N S E R T   [ d b o ] . [ U s e r s ]   ( [ I D ] ,   [ F i r s t N a m e ] ,   [ L a s t N a m e ] ,   [ E m a i l ] ,   [ P h o n e ] ,   [ D O B ] ,   [ P a s s w o r d ] ,   [ U s e r N a m e ] ,   [ I s A c t i v e ] ,   [ R o l e I D ] ,   [ F o r g e t P a s s w o r d ] ,   [ P r o v i d e r K e y ] )   V A L U E S   ( 1 6 ,   N ' s s ' ,   N ' a a ' ,   N ' g o r a b @ t e c h n o c o d z s s . c o m ' ,   N ' 8 4 5 3 4 5 3 ' ,   C A S T ( N ' 1 9 9 3 - 1 2 - 1 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   N ' f c 0 i U k g 3 3 1 q k 3 V 8 H Y 6 M W v Q = = ' ,   N ' 1 1 ' ,   0 ,   2 ,   N U L L ,   N U L L )  
 I N S E R T   [ d b o ] . [ U s e r s ]   ( [ I D ] ,   [ F i r s t N a m e ] ,   [ L a s t N a m e ] ,   [ E m a i l ] ,   [ P h o n e ] ,   [ D O B ] ,   [ P a s s w o r d ] ,   [ U s e r N a m e ] ,   [ I s A c t i v e ] ,   [ R o l e I D ] ,   [ F o r g e t P a s s w o r d ] ,   [ P r o v i d e r K e y ] )   V A L U E S   ( 1 7 ,   N ' s s ' ,   N ' a a ' ,   N ' g o r a b @ t e c h f f f n o c o d z . c o m ' ,   N ' 3 2 4 2 1 3 3 2 3 ' ,   C A S T ( N ' 1 9 9 3 - 1 2 - 1 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   N ' f c 0 i U k g 3 3 1 q k 3 V 8 H Y 6 M W v Q = = ' ,   N ' 1 2 3 3 3 ' ,   0 ,   2 ,   N U L L ,   N U L L )  
 I N S E R T   [ d b o ] . [ U s e r s ]   ( [ I D ] ,   [ F i r s t N a m e ] ,   [ L a s t N a m e ] ,   [ E m a i l ] ,   [ P h o n e ] ,   [ D O B ] ,   [ P a s s w o r d ] ,   [ U s e r N a m e ] ,   [ I s A c t i v e ] ,   [ R o l e I D ] ,   [ F o r g e t P a s s w o r d ] ,   [ P r o v i d e r K e y ] )   V A L U E S   ( 2 8 ,   N ' G o r a b ' ,   N ' R a t u r i ' ,   N ' g o r a b @ t e c h n o c o d d d z . c o m ' ,   N ' 2 1 3 3 4 2 1 4 ' ,   C A S T ( N ' 1 9 9 3 - 1 2 - 1 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   N ' f c 0 i U k g 3 3 1 q k 3 V 8 H Y 6 M W v Q = = ' ,   N ' s d f s ' ,   0 ,   2 ,   N U L L ,   N ' 1 7 5 7 9 9 9 5 2 9 1 0 0 7 8 ' )  
 I N S E R T   [ d b o ] . [ U s e r s ]   ( [ I D ] ,   [ F i r s t N a m e ] ,   [ L a s t N a m e ] ,   [ E m a i l ] ,   [ P h o n e ] ,   [ D O B ] ,   [ P a s s w o r d ] ,   [ U s e r N a m e ] ,   [ I s A c t i v e ] ,   [ R o l e I D ] ,   [ F o r g e t P a s s w o r d ] ,   [ P r o v i d e r K e y ] )   V A L U E S   ( 2 9 ,   N ' G o r a b ' ,   N ' R a t u r i ' ,   N ' r a t u r i g o r a b 1 5 @ g m a i l . c o m ' ,   N ' 2 3 2 1 3 3 2 1 1 3 2 ' ,   C A S T ( N ' 1 9 9 0 - 1 2 - 1 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   N ' f c 0 i U k g 3 3 1 q k 3 V 8 H Y 6 M W v Q = = ' ,   N ' d d ' ,   1 ,   2 ,   N U L L ,   N ' e y J h b G c i O i J S U z I 1 N i I s I m t p Z C I 6 I j k y N m Q 2 M G N k M D U 1 O T E x Z j c 1 Z j M y N G F k Z G U x N z A 4 Z D k z M m Y 5 N T k 1 Y W Y i f Q . e y J p c 3 M i O i J h Y 2 N v d W 5 0 c y 5 n b 2 9 n b G U u Y 2 9 t I i w i a W F 0 I j o x N D g 3 N j U y N D k 5 L C J l e H A i O j E 0 O D c 2 N T Y w O T k s I m F 0 X 2 h h c 2 g i O i J P c G 5 I T U 5 5 S 1 I 3 M H l a T 0 R r b n B 1 U V Z n I i w i Y X V k I j o i O D g y N z M w O T U 0 N z I x L T V z b W 1 r b j R 1 c T B v a m x r c m p t Y T F j N D h r b G 5 s Z W h n N m 1 k L m F w c H M u Z 2 9 v Z 2 x l d X N l c m N v b n R l b n Q u Y 2 9 t I i w i c 3 V i I j o i M T A 5 M z c 1 N j M 4 M D A 3 M j U y N j Y x M D I z I i w i Z W 1 h a W x f d m V y a W Z p Z W Q i O n R y d W U s I m F 6 c C I 6 I j g 4 M j c z M D k 1 N D c y M S 0 1 c 2 1 t a 2 4 0 d X E w b 2 p s a 3 J q b W E x Y z Q 4 a 2 x u b G V o Z z Z t Z C 5 h c H B z L m d v b 2 d s Z X V z Z X J j b 2 5 0 Z W 5 0 L m N v b S I s I m V t Y W l s I j o i c m F 0 d X J p Z 2 9 y Y W I x N U B n b W F p b C 5 j b 2 0 i L C J u Y W 1 l I j o i R 2 9 y Y W I g U m F 0 d X J p I i w i c G l j d H V y Z S I 6 I m h 0 d H B z O i 8 v b G g 1 L m d v b 2 d s Z X V z Z X J j b 2 5 0 Z W 5 0 L m N v b S 8 t e j Z J d k 1 y Q T d C V k 0 v Q U F B Q U F B Q U F B Q U k v Q U F B Q U F B Q U F B Q U E v Q U R Q b G h m S V U z U G p K O E x K e k d H M 0 N a a 1 R v W U 9 r R l N f b X B 5 Z y 9 z O T Y t Y y 9 w a G 9 0 b y 5 q c G c i L C J n a X Z l b l 9 u Y W 1 l I j o i R 2 9 y Y W I i L C J m Y W 1 p b H l f b m F t Z S I 6 I l J h d H V y a S I s I m x v Y 2 F s Z S I 6 I m V u I n 0 . P E O x T f k R d D z P A w Q b g y e 0 O n w r Q v Y c c o c B N U n _ Y j R 2 v 6 C Y X x R m A A l T q g L J e U - a T p q u 1 O m a 6 L n L Y X S J s a n c s T Y R g c O C m Z e A T 3 M 5 5 2 k y K 8 u I G P b D 8 k y 0 i - b 0 R t I q j c s b D u T X z S 8 S y Y e 5 5 p 0 N 6 J L 2 l m e t 6 t _ g v B e 1 t r s I w 7 T 3 h E 1 c p m t U v S v i N 1 9 O y R T X Q _ y N W J _ v 3 X Z y d T f Q j a 3 5 o 6 O y e Z f F a O 8 2 r U E h T e 5 4 O k k G K Q V 7 D 1 0 g J 2 R I R n t L 8 y 3 L 7 F w 5 o F T D T H I - 3 B s J 6 h U K G 7 K 7 W P q 4 p f R 6 d Y 7 T _ 8 G - B P r L U 5 3 _ q M q L 0 j U E L y j 7 q q o v D q w C A 7 h c z 8 8 Q u s l 4 M t C L c E 9 f 0 z S Z z Q ' )  
 I N S E R T   [ d b o ] . [ U s e r s ]   ( [ I D ] ,   [ F i r s t N a m e ] ,   [ L a s t N a m e ] ,   [ E m a i l ] ,   [ P h o n e ] ,   [ D O B ] ,   [ P a s s w o r d ] ,   [ U s e r N a m e ] ,   [ I s A c t i v e ] ,   [ R o l e I D ] ,   [ F o r g e t P a s s w o r d ] ,   [ P r o v i d e r K e y ] )   V A L U E S   ( 3 0 ,   N ' m a n i s h a ' ,   N ' t e s t ' ,   N ' m a n i s h a t e s t 8 8 @ g m a i l . c o m ' ,   N ' h j h j h j k h k j h ' ,   C A S T ( N ' 1 8 8 9 - 0 9 - 0 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   N ' f c 0 i U k g 3 3 1 q k 3 V 8 H Y 6 M W v Q = = ' ,   N ' m a n i s h a ' ,   0 ,   2 ,   N U L L ,   N U L L )  
 I N S E R T   [ d b o ] . [ U s e r s ]   ( [ I D ] ,   [ F i r s t N a m e ] ,   [ L a s t N a m e ] ,   [ E m a i l ] ,   [ P h o n e ] ,   [ D O B ] ,   [ P a s s w o r d ] ,   [ U s e r N a m e ] ,   [ I s A c t i v e ] ,   [ R o l e I D ] ,   [ F o r g e t P a s s w o r d ] ,   [ P r o v i d e r K e y ] )   V A L U E S   ( 3 1 ,   N ' T o d d ' ,   N ' R o n ' ,   N ' t e s t n a m e 2 3 3 @ g m a i l . c o m ' ,   N ' 1 2 3 4 5 6 7 8 9 8 ' ,   C A S T ( N ' 1 8 8 9 - 0 9 - 0 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   N ' f c 0 i U k g 3 3 1 q k 3 V 8 H Y 6 M W v Q = = ' ,   N ' t o d d ' ,   0 ,   2 ,   N U L L ,   N U L L )  
 I N S E R T   [ d b o ] . [ U s e r s ]   ( [ I D ] ,   [ F i r s t N a m e ] ,   [ L a s t N a m e ] ,   [ E m a i l ] ,   [ P h o n e ] ,   [ D O B ] ,   [ P a s s w o r d ] ,   [ U s e r N a m e ] ,   [ I s A c t i v e ] ,   [ R o l e I D ] ,   [ F o r g e t P a s s w o r d ] ,   [ P r o v i d e r K e y ] )   V A L U E S   ( 3 2 ,   N ' h j h ' ,   N ' j k j ' ,   N ' j k j k j @ f g e r . o l ' ,   N ' 8 9 8 9 8 9 8 9 ' ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 4   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   N ' f c 0 i U k g 3 3 1 q k 3 V 8 H Y 6 M W v Q = = ' ,   N ' j j k j ' ,   0 ,   2 ,   N U L L ,   N U L L )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ U s e r s ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ V e h i c l e A m e n t i e s ]   O N    
  
 I N S E R T   [ d b o ] . [ V e h i c l e A m e n t i e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ A m e n t i e s I D ] ,   [ I s A c t i v e ] )   V A L U E S   ( 1 ,   1 ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ V e h i c l e A m e n t i e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ A m e n t i e s I D ] ,   [ I s A c t i v e ] )   V A L U E S   ( 2 ,   1 ,   2 ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ V e h i c l e A m e n t i e s ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ V e h i c l e F e a t u r e s ]   O N    
  
 I N S E R T   [ d b o ] . [ V e h i c l e F e a t u r e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ F e a t u r e I D ] ,   [ I s A c t i v e ] )   V A L U E S   ( 3 ,   1 ,   3 ,   1 )  
 I N S E R T   [ d b o ] . [ V e h i c l e F e a t u r e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ F e a t u r e I D ] ,   [ I s A c t i v e ] )   V A L U E S   ( 4 ,   1 ,   4 ,   1 )  
 I N S E R T   [ d b o ] . [ V e h i c l e F e a t u r e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ F e a t u r e I D ] ,   [ I s A c t i v e ] )   V A L U E S   ( 8 ,   1 ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ V e h i c l e F e a t u r e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ F e a t u r e I D ] ,   [ I s A c t i v e ] )   V A L U E S   ( 9 ,   1 ,   6 ,   1 )  
 I N S E R T   [ d b o ] . [ V e h i c l e F e a t u r e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ F e a t u r e I D ] ,   [ I s A c t i v e ] )   V A L U E S   ( 1 1 ,   2 ,   2 ,   1 )  
 I N S E R T   [ d b o ] . [ V e h i c l e F e a t u r e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ F e a t u r e I D ] ,   [ I s A c t i v e ] )   V A L U E S   ( 1 2 ,   2 ,   1 ,   1 )  
 I N S E R T   [ d b o ] . [ V e h i c l e F e a t u r e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ F e a t u r e I D ] ,   [ I s A c t i v e ] )   V A L U E S   ( 1 3 ,   2 ,   4 ,   1 )  
 I N S E R T   [ d b o ] . [ V e h i c l e F e a t u r e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ F e a t u r e I D ] ,   [ I s A c t i v e ] )   V A L U E S   ( 1 6 ,   5 ,   1 ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ V e h i c l e F e a t u r e s ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ V e h i c l e I m a g e s ]   O N    
  
 I N S E R T   [ d b o ] . [ V e h i c l e I m a g e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] ,   [ V i d e o U r l ] ,   [ P u b l i c K e y ] )   V A L U E S   ( 1 ,   1 ,   N ' / P r o d u c t I m a g e / 0 f 9 f f d d 1 - 4 6 5 6 - 4 3 c 5 - b 6 d b - 1 4 0 0 6 b f f f a 5 a b a n n e r . j p g ' ,   1 ,   N U L L ,   N ' r 7 d r 2 p d x k t i s d 9 b i m r p p ' )  
 I N S E R T   [ d b o ] . [ V e h i c l e I m a g e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] ,   [ V i d e o U r l ] ,   [ P u b l i c K e y ] )   V A L U E S   ( 2 ,   2 ,   N ' / P r o d u c t I m a g e / e f 4 c f c d b - 1 8 c 8 - 4 e c 0 - a e 9 d - b 1 e d c 8 6 2 f 8 b 4 1 9 1 0 . p n g ' ,   1 ,   N ' h t t p s : / / w w w . y o u t u b e . c o m / w a t c h ? v = m b 7 V 3 y y f z 7 Q ' ,   N ' r 7 d r 2 p d x k t i s d 9 b i m r p p ' )  
 I N S E R T   [ d b o ] . [ V e h i c l e I m a g e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] ,   [ V i d e o U r l ] ,   [ P u b l i c K e y ] )   V A L U E S   ( 4 ,   4 ,   N ' / P r o d u c t I m a g e / 3 2 d f 1 6 3 e - 4 6 e d - 4 5 f 8 - b 4 d 3 - 1 9 1 7 5 c 8 c 4 a 3 2 b a n n e r . j p g ' ,   1 ,   N ' h t t p s : / / w w w . y o u t u b e . c o m / w a t c h ? v = G K d r 4 Z 1 L B K Y ' ,   N ' r 7 d r 2 p d x k t i s d 9 b i m r p p ' )  
 I N S E R T   [ d b o ] . [ V e h i c l e I m a g e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] ,   [ V i d e o U r l ] ,   [ P u b l i c K e y ] )   V A L U E S   ( 5 ,   1 ,   N ' / P r o d u c t I m a g e / 3 2 d f 1 6 3 e - 4 6 e d - 4 5 f 8 - b 4 d 3 - 1 9 1 7 5 c 8 c 4 a 3 2 b a n n e r . j p g ' ,   1 ,   N ' h t t p s : / / w w w . y o u t u b e . c o m / w a t c h ? v = G K d r 4 Z 1 L B K Y ' ,   N ' r 7 d r 2 p d x k t i s d 9 b i m r p p ' )  
 I N S E R T   [ d b o ] . [ V e h i c l e I m a g e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] ,   [ V i d e o U r l ] ,   [ P u b l i c K e y ] )   V A L U E S   ( 6 ,   2 ,   N ' / P r o d u c t I m a g e / 3 2 d f 1 6 3 e - 4 6 e d - 4 5 f 8 - b 4 d 3 - 1 9 1 7 5 c 8 c 4 a 3 2 b a n n e r . j p g ' ,   1 ,   N ' h t t p s : / / w w w . y o u t u b e . c o m / w a t c h ? v = G K d r 4 Z 1 L B K Y ' ,   N ' r 7 d r 2 p d x k t i s d 9 b i m r p p ' )  
 I N S E R T   [ d b o ] . [ V e h i c l e I m a g e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] ,   [ V i d e o U r l ] ,   [ P u b l i c K e y ] )   V A L U E S   ( 7 ,   2 ,   N ' / P r o d u c t I m a g e / 3 6 8 9 - J a y c o 2 0 1 7 _ P r e c e p t 3 1 U L _ 3 4 F r o n t _ O c e a n B l u e . p n g ' ,   1 ,   N ' h t t p s : / / w w w . y o u t u b e . c o m / w a t c h ? v = z 3 2 F f a 0 n V 4 Y ' ,   N ' g j m u w o n 1 7 x u a j c 7 z p o z y ' )  
 I N S E R T   [ d b o ] . [ V e h i c l e I m a g e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] ,   [ V i d e o U r l ] ,   [ P u b l i c K e y ] )   V A L U E S   ( 8 ,   2 ,   N ' / P r o d u c t I m a g e / 3 6 8 9 - J a y c o 2 0 1 7 _ P r e c e p t 3 1 U L _ 3 4 F r o n t _ O c e a n B l u e . p n g ' ,   1 ,   N U L L ,   N ' g j m u w o n 1 7 x u a j c 7 z p o z y ' )  
 I N S E R T   [ d b o ] . [ V e h i c l e I m a g e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] ,   [ V i d e o U r l ] ,   [ P u b l i c K e y ] )   V A L U E S   ( 9 ,   2 ,   N ' / P r o d u c t I m a g e / 3 2 d f 1 6 3 e - 4 6 e d - 4 5 f 8 - b 4 d 3 - 1 9 1 7 5 c 8 c 4 a 3 2 b a n n e r . j p g ' ,   N U L L ,   N ' h t t p s : / / w w w . y o u t u b e . c o m / w a t c h ? v = z 3 2 F f a 0 n V 4 Y ' ,   N ' g j m u w o n 1 7 x u a j c 7 z p o z y ' )  
 I N S E R T   [ d b o ] . [ V e h i c l e I m a g e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] ,   [ V i d e o U r l ] ,   [ P u b l i c K e y ] )   V A L U E S   ( 1 0 ,   1 ,   N ' / P r o d u c t I m a g e / 8 6 b d a 2 3 d - 3 3 1 6 - 4 a 4 7 - 8 e 1 6 - d 2 c 7 b a 4 d c 8 c 4 b a n n e r . j p g ' ,   1 ,   N U L L ,   N ' g j m u w o n 1 7 x u a j c 7 z p o z y ' )  
 I N S E R T   [ d b o ] . [ V e h i c l e I m a g e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] ,   [ V i d e o U r l ] ,   [ P u b l i c K e y ] )   V A L U E S   ( 1 1 ,   1 ,   N U L L ,   1 ,   N U L L ,   N ' g j m u w o n 1 7 x u a j c 7 z p o z y ' )  
 I N S E R T   [ d b o ] . [ V e h i c l e I m a g e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] ,   [ V i d e o U r l ] ,   [ P u b l i c K e y ] )   V A L U E S   ( 1 2 ,   2 ,   N ' / P r o d u c t I m a g e / c 0 c 2 4 5 1 4 - 6 3 e a - 4 b 5 0 - 9 7 d 9 - 5 c d 7 3 5 8 9 7 0 4 a f 2 0 1 3 1 0 1 3 5 0 K i r b y . j p g ' ,   1 ,   N ' h t t p s : / / w w w . f a c e b o o k . c o m / T h e T i n y S t o r i e s / v i d e o s / 9 3 0 5 4 4 4 1 3 7 1 8 9 7 8 / ' ,   N ' g j m u w o n 1 7 x u a j c 7 z p o z y ' )  
 I N S E R T   [ d b o ] . [ V e h i c l e I m a g e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] ,   [ V i d e o U r l ] ,   [ P u b l i c K e y ] )   V A L U E S   ( 1 3 ,   1 ,   N ' / P r o d u c t I m a g e / 3 c 1 6 a b 0 b - c 2 6 0 - 4 a 5 6 - 9 a f 6 - 8 f 7 e 0 8 e f 9 d c 4 b a n n e r b g 1 . j p g ' ,   1 ,   N U L L ,   N ' g j m u w o n 1 7 x u a j c 7 z p o z y ' )  
 I N S E R T   [ d b o ] . [ V e h i c l e I m a g e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] ,   [ V i d e o U r l ] ,   [ P u b l i c K e y ] )   V A L U E S   ( 1 4 ,   5 ,   N ' / P r o d u c t I m a g e / e f d 1 a 0 7 8 - 7 4 b a - 4 3 4 2 - 8 9 f 1 - 9 8 a 2 5 9 6 1 4 8 5 1 b a n n e r . j p g ' ,   1 ,   N U L L ,   N ' g j m u w o n 1 7 x u a j c 7 z p o z y ' )  
 I N S E R T   [ d b o ] . [ V e h i c l e I m a g e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] ,   [ V i d e o U r l ] ,   [ P u b l i c K e y ] )   V A L U E S   ( 2 0 ,   9 ,   N ' / P r o d u c t I m a g e / 2 3 e 3 5 9 1 9 - 4 f c 4 - 4 7 9 8 - 8 a f e - 8 6 2 b b a e 7 3 4 a e b 7 7 1 5 3 b f - 2 3 3 0 - 4 d 1 5 - 8 2 2 3 - 9 5 e 0 c 8 f 9 b 4 b c b a n n e r b g 1 . j p g ' ,   1 ,   N U L L ,   N ' x e l m y s 0 a k j p d m j n m r h t m ' )  
 I N S E R T   [ d b o ] . [ V e h i c l e I m a g e s ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ I m a g e U r l ] ,   [ I s A c t i v e ] ,   [ V i d e o U r l ] ,   [ P u b l i c K e y ] )   V A L U E S   ( 2 2 ,   3 ,   N ' / P r o d u c t I m a g e / 7 2 0 9 d 4 9 2 - e e d 9 - 4 4 1 4 - 9 c 8 d - b 1 3 5 2 4 c a b 6 5 5 b a n n e r b g 1 . j p g ' ,   1 ,   N U L L ,   N ' w 3 h n c 5 6 i k x z j l 7 r d g 1 o h ' )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ V e h i c l e I m a g e s ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ V e h i c l e R e n t ]   O N    
  
 I N S E R T   [ d b o ] . [ V e h i c l e R e n t ]   ( [ I D ] ,   [ T e r m I D ] ,   [ V e h i c l e I D ] ,   [ A m o u n t ] ,   [ I s A c t i v e ] )   V A L U E S   ( 1 ,   1 ,   1 ,   2 5 5 ,   1 )  
 I N S E R T   [ d b o ] . [ V e h i c l e R e n t ]   ( [ I D ] ,   [ T e r m I D ] ,   [ V e h i c l e I D ] ,   [ A m o u n t ] ,   [ I s A c t i v e ] )   V A L U E S   ( 2 ,   2 ,   1 ,   7 5 0 0 ,   0 )  
 I N S E R T   [ d b o ] . [ V e h i c l e R e n t ]   ( [ I D ] ,   [ T e r m I D ] ,   [ V e h i c l e I D ] ,   [ A m o u n t ] ,   [ I s A c t i v e ] )   V A L U E S   ( 3 ,   1 ,   2 ,   2 5 8 ,   1 )  
 I N S E R T   [ d b o ] . [ V e h i c l e R e n t ]   ( [ I D ] ,   [ T e r m I D ] ,   [ V e h i c l e I D ] ,   [ A m o u n t ] ,   [ I s A c t i v e ] )   V A L U E S   ( 4 ,   1 ,   3 ,   2 5 9 ,   1 )  
 I N S E R T   [ d b o ] . [ V e h i c l e R e n t ]   ( [ I D ] ,   [ T e r m I D ] ,   [ V e h i c l e I D ] ,   [ A m o u n t ] ,   [ I s A c t i v e ] )   V A L U E S   ( 5 ,   1 ,   4 ,   2 8 2 ,   1 )  
 I N S E R T   [ d b o ] . [ V e h i c l e R e n t ]   ( [ I D ] ,   [ T e r m I D ] ,   [ V e h i c l e I D ] ,   [ A m o u n t ] ,   [ I s A c t i v e ] )   V A L U E S   ( 8 ,   1 ,   1 ,   4 4 4 ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ V e h i c l e R e n t ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ V e h i c l e s ]   O N    
  
 I N S E R T   [ d b o ] . [ V e h i c l e s ]   ( [ I D ] ,   [ T i t l e ] ,   [ D e s c r i p t i o n ] ,   [ V e h i c l e C o d e ] ,   [ V e h i c l e T y p e I D ] ,   [ C a t e g o r y I D ] ,   [ B r a n d I D ] ,   [ M o d e l I D ] ,   [ S e a t s ] ,   [ S l e e p s ] ,   [ Y e a r B u i l t ] ,   [ L e n g t h ] ,   [ W i d t h ] ,   [ I s F e a t u r e d ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] ,   [ U p d a t e d O n ] ,   [ L o n g i t u d e ] ,   [ L a t i t u d e ] ,   [ L o c a t i o n ] ,   [ I s S a l e a b l e ] ,   [ S a l e P r i c e ] )   V A L U E S   ( 1 ,   N ' 2 2    F l e e t w o o d   T i o g a   c l a s s   C   m o t o r h o m e ' ,   N ' T h i s   c l a s s   A   m o t o r h o m e   c a n   s l e e p   u p   t o   7   p a s s e n g e r s .   I t   h a s   a   b i g   d o u b l e   b e d   i n   t h e   s l i d e - o u t   t o   t h e   r e a r ,   b u n k   b e d s   i n   t h e   l a r g e r   s l i d e - o u t ,   a n d   a n   o p t i o n a l   b e d   i n   t h e   l i v i n g   a r e a .     N i c e   f e a t u r e s   i n c l u d e   3   T V s   a n d   a   D V D   p l a y e r . ' ,   N ' R V   2 ' ,   1 ,   3 ,   1 0 0 9 ,   7 ,   6 ,   8 ,   2 0 1 4 ,   N ' 2 2 ' ,   N ' 1 2 ' ,   1 ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 8   1 2 : 0 5 : 3 6 . 3 7 7 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 8   1 2 : 0 5 : 3 6 . 3 7 7 '   A S   D a t e T i m e ) ,   N ' 7 2 . 8 2 7 5 1 0 8 3 3 7 4 0 2 3 ' ,   N ' 1 8 . 9 4 6 8 8 1 6 1 9 5 5 5 4 4 8 ' ,   N U L L ,   1 ,   2 6 0 0 0 )  
 I N S E R T   [ d b o ] . [ V e h i c l e s ]   ( [ I D ] ,   [ T i t l e ] ,   [ D e s c r i p t i o n ] ,   [ V e h i c l e C o d e ] ,   [ V e h i c l e T y p e I D ] ,   [ C a t e g o r y I D ] ,   [ B r a n d I D ] ,   [ M o d e l I D ] ,   [ S e a t s ] ,   [ S l e e p s ] ,   [ Y e a r B u i l t ] ,   [ L e n g t h ] ,   [ W i d t h ] ,   [ I s F e a t u r e d ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] ,   [ U p d a t e d O n ] ,   [ L o n g i t u d e ] ,   [ L a t i t u d e ] ,   [ L o c a t i o n ] ,   [ I s S a l e a b l e ] ,   [ S a l e P r i c e ] )   V A L U E S   ( 2 ,   N ' A d m i r a l   c l a s s   A   s p o r t s   c o a c h   r v ' ,   N ' T h i s   c l a s s   A   m o t o r h o m e   c a n   s l e e p   u p   t o   7   p a s s e n g e r s .   I t   h a s   a   b i g   d o u b l e   b e d   i n   t h e   s l i d e - o u t   t o   t h e   r e a r ,   b u n k   b e d s   i n   t h e   l a r g e r   s l i d e - o u t ,   a n d   a n   o p t i o n a l   b e d   i n   t h e   l i v i n g   a r e a .   N i c e   f e a t u r e s   i n c l u d e   3   T V s   a n d   a   D V D   p l a y e r . ' ,   N ' R V   4 ' ,   1 ,   1 ,   1 0 0 2 ,   1 ,   6 ,   5 ,   2 0 1 5 ,   N ' 2 5 ' ,   N ' 1 2 ' ,   1 ,   1 ,   N U L L ,   N U L L ,   N U L L ,   N U L L ,   N U L L ,   0 ,   N U L L )  
 I N S E R T   [ d b o ] . [ V e h i c l e s ]   ( [ I D ] ,   [ T i t l e ] ,   [ D e s c r i p t i o n ] ,   [ V e h i c l e C o d e ] ,   [ V e h i c l e T y p e I D ] ,   [ C a t e g o r y I D ] ,   [ B r a n d I D ] ,   [ M o d e l I D ] ,   [ S e a t s ] ,   [ S l e e p s ] ,   [ Y e a r B u i l t ] ,   [ L e n g t h ] ,   [ W i d t h ] ,   [ I s F e a t u r e d ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] ,   [ U p d a t e d O n ] ,   [ L o n g i t u d e ] ,   [ L a t i t u d e ] ,   [ L o c a t i o n ] ,   [ I s S a l e a b l e ] ,   [ S a l e P r i c e ] )   V A L U E S   ( 3 ,   N ' a s a ' ,   N U L L ,   N ' R V   1 ' ,   1 ,   1 ,   1 0 0 2 ,   1 ,   8 ,   1 2 ,   1 9 8 9 ,   N ' 2 2   f t ' ,   N ' 1 2 ' ,   0 ,   1 ,   N U L L ,   N U L L ,   N U L L ,   N U L L ,   N U L L ,   0 ,   N U L L )  
 I N S E R T   [ d b o ] . [ V e h i c l e s ]   ( [ I D ] ,   [ T i t l e ] ,   [ D e s c r i p t i o n ] ,   [ V e h i c l e C o d e ] ,   [ V e h i c l e T y p e I D ] ,   [ C a t e g o r y I D ] ,   [ B r a n d I D ] ,   [ M o d e l I D ] ,   [ S e a t s ] ,   [ S l e e p s ] ,   [ Y e a r B u i l t ] ,   [ L e n g t h ] ,   [ W i d t h ] ,   [ I s F e a t u r e d ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] ,   [ U p d a t e d O n ] ,   [ L o n g i t u d e ] ,   [ L a t i t u d e ] ,   [ L o c a t i o n ] ,   [ I s S a l e a b l e ] ,   [ S a l e P r i c e ] )   V A L U E S   ( 4 ,   N ' T h e   R V   H u l k ' ,   N U L L ,   N ' 2 2 3 4 5 ' ,   1 ,   3 ,   1 0 0 2 ,   1 ,   8 ,   8 ,   2 0 1 6 ,   N ' 1 3 ' ,   N ' 1 5 ' ,   1 ,   1 ,   N U L L ,   N U L L ,   N U L L ,   N U L L ,   N U L L ,   0 ,   N U L L )  
 I N S E R T   [ d b o ] . [ V e h i c l e s ]   ( [ I D ] ,   [ T i t l e ] ,   [ D e s c r i p t i o n ] ,   [ V e h i c l e C o d e ] ,   [ V e h i c l e T y p e I D ] ,   [ C a t e g o r y I D ] ,   [ B r a n d I D ] ,   [ M o d e l I D ] ,   [ S e a t s ] ,   [ S l e e p s ] ,   [ Y e a r B u i l t ] ,   [ L e n g t h ] ,   [ W i d t h ] ,   [ I s F e a t u r e d ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] ,   [ U p d a t e d O n ] ,   [ L o n g i t u d e ] ,   [ L a t i t u d e ] ,   [ L o c a t i o n ] ,   [ I s S a l e a b l e ] ,   [ S a l e P r i c e ] )   V A L U E S   ( 5 ,   N ' A d m i r a l   c l a s s   A   s p o r t s   c o a a a c h   r v ' ,   N ' T h i s   c l a s s   A   m o t o r h o m e   c a n   s l e e p   u p   t o   7   p a s s e n g e r s .   I t   h a s   a   b i g   d o u b l e   b e d   i n   t h e   s l i d e - o u t   t o   t h e   r e a r ,   b u n k   b e d s   i n   t h e   l a r g e r   s l i d e - o u t ,   a n d   a n   o p t i o n a l   b e d   i n   t h e   l i v i n g   a r e a .   N i c e   f e a t u r e s   i n c l u d e   3   T V s   a n d   a   D V D   p l a y e r . ' ,   N ' R V   4 ' ,   1 ,   1 ,   1 0 0 2 ,   1 ,   6 ,   8 ,   2 0 1 6 ,   N ' 2 4 ' ,   N ' 1 2 ' ,   1 ,   1 ,   N U L L ,   N U L L ,   N U L L ,   N U L L ,   N U L L ,   1 ,   2 5 0 0 0 )  
 I N S E R T   [ d b o ] . [ V e h i c l e s ]   ( [ I D ] ,   [ T i t l e ] ,   [ D e s c r i p t i o n ] ,   [ V e h i c l e C o d e ] ,   [ V e h i c l e T y p e I D ] ,   [ C a t e g o r y I D ] ,   [ B r a n d I D ] ,   [ M o d e l I D ] ,   [ S e a t s ] ,   [ S l e e p s ] ,   [ Y e a r B u i l t ] ,   [ L e n g t h ] ,   [ W i d t h ] ,   [ I s F e a t u r e d ] ,   [ I s A c t i v e ] ,   [ C r e a t e d O n ] ,   [ U p d a t e d O n ] ,   [ L o n g i t u d e ] ,   [ L a t i t u d e ] ,   [ L o c a t i o n ] ,   [ I s S a l e a b l e ] ,   [ S a l e P r i c e ] )   V A L U E S   ( 9 ,   N ' d s d ' ,   N ' s d s d ' ,   N ' v 2 2 ' ,   1 ,   1 ,   1 0 0 2 ,   1 ,   2 3 ,   3 6 ,   1 5 8 5 ,   N ' 2 5 ' ,   N ' 2 5 ' ,   1 ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 7   1 9 : 0 2 : 5 5 . 4 3 3 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 7   1 9 : 0 2 : 5 5 . 4 3 3 '   A S   D a t e T i m e ) ,   N ' 5 6 5 6 5 ' ,   N ' 8 9 8 9 ' ,   N U L L ,   0 ,   N U L L )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ V e h i c l e s ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ V e h i c l e T y p e s ]   O N    
  
 I N S E R T   [ d b o ] . [ V e h i c l e T y p e s ]   ( [ I D ] ,   [ N a m e ] ,   [ I s A c t i v e ] )   V A L U E S   ( 1 ,   N ' R V ' ,   N U L L )  
 I N S E R T   [ d b o ] . [ V e h i c l e T y p e s ]   ( [ I D ] ,   [ N a m e ] ,   [ I s A c t i v e ] )   V A L U E S   ( 2 ,   N ' T r a i l e r ' ,   N U L L )  
 I N S E R T   [ d b o ] . [ V e h i c l e T y p e s ]   ( [ I D ] ,   [ N a m e ] ,   [ I s A c t i v e ] )   V A L U E S   ( 3 ,   N ' V a n ' ,   N U L L )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ V e h i c l e T y p e s ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ W i d g e t ]   O N    
  
 I N S E R T   [ d b o ] . [ W i d g e t ]   ( [ I d ] ,   [ P a g e I d ] ,   [ W i d g e t I d ] ,   [ T e x t ] ,   [ C r e a t e d O n ] ,   [ U p d a t e d O n ] ,   [ I s D e l e t e d ] )   V A L U E S   ( 2 ,   1 ,   N ' W i d g e t 1 ' ,   N ' < h 1 > L o r e m   i p s u m   d o l l e r   t o   s e t . < / h 1 > < p > T i n c i d u n t f u s c e   m a u r i s   p o r t t i t o r   h e n d r e r i t p h a s e l l u s   n a t o q u e   o d i o .   A t   c u m   n u n c   e n i m   v i t a e n u n c ,   p o t e n t i   s u s p e n d i s s e   l o b o r t i s d o n e c   n e t u s .   V i v e r r a   i n t e g e r   g r a v i d a d u i s   p h a r e t r a   n i s i p e l l e n t e s q u e .   P h a s e l l u s   c o n g u e   e u p r a e s e n t ,   e g e s t a s d o n e c   v e s t i b u l u m   c o n d i m e n t u m .   H a c   s e m   f a c i l i s i m a e c e n a s   n i s i .   E t   m i n u l l a   q u a m   m a x i m u s . < / p > < p > S e m p e r   i n t e g e r   u r n a v i v a m u s   e n i m .   Q u i s   e r o s   f a u c i b u s m a u r i s .   T u r p i s n u l l a m   n o s t r a   l e c t u s   l a c u s   t e m p u s v e s t i b u l u m ,   c o n s e c t e t u r   u r n a m o r b i   t e m p u s   f a c i l i s i c u r a b i t u r   p r a e s e n t ,   u l t r i c i e s   l i g u l a   t o r t o r   c o n g u e ,   e u f u s c e   p r i m i s   j u s t o .   P o r t t i t o r   m a x i m u s   p r o i n ,   e x s e d   m o n t e s   h e n d r e r i t p h a s e l l u s   m a e c e n a s ,   h e n d r e r i t   v e n e n a t i s   m a u r i s p h a s e l l u s .   T a c i t i   t o r q u e n t   t u r p i s   e g e t   t e l l u s f u s c e ,   p u r u s e t i a m   i d c r a s   n u l l a m   o r n a r e   d i a m f u s c e .   I m p e r d i e t   n u l l a m a e c e n a s   a c   d i g n i s s i m .   L o r e m   a c c u m s a n   i n c e p t o s   f a m e s   v e h i c u l a .   N i s l n a m   e u i s m o d   a u c t o r   t e m p u s m a u r i s   i d s e d ,   d a p i b u s a l i q u a m   c o n v a l l i s c u r a b i t u r   e g e t v e s t i b u l u m   m u s i n . < / p > ' ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 4   1 7 : 4 9 : 5 8 . 6 7 0 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 4   1 8 : 5 1 : 0 1 . 8 1 0 '   A S   D a t e T i m e ) ,   N U L L )  
 I N S E R T   [ d b o ] . [ W i d g e t ]   ( [ I d ] ,   [ P a g e I d ] ,   [ W i d g e t I d ] ,   [ T e x t ] ,   [ C r e a t e d O n ] ,   [ U p d a t e d O n ] ,   [ I s D e l e t e d ] )   V A L U E S   ( 3 ,   1 ,   N ' W i d g e t 2 ' ,   N ' < h 1 > W h y   C h o o s e   u s . < / h 1 > < p > L o r e m f u s c e   a r c u   p u r u s   t o r q u e n t ,   r i s u s a l i q u a m   m i n u l l a   m o l e s t i e c u r a b i t u r .   D u i v e s t i b u l u m   n i s l   s e m   u r n a m o r b i   e x s e d .   A n t e p h a s e l l u s   m a x i m u s   u r n a v i v a m u s   v o l u t p a t e t i a m   p o s u e r e m o r b i . . < / p > < u l > < l i > L o r e m   i s p u m   d o l l e r   t o   s e t   c o n e t a i n   t h e   v e i w   o n   t h e   s e c e t   t o   i m p r o v e   t h e   c i r c u i t   t h e   m a i n   c o n c e p t . < / l i > < l i > L o r e m   i s p u m   d o l l e r   t o   s e t   c o n e t a i n   t h e   v e i w   o n   t h e   s e c e t   t o   i m p r o v e   t h e   c i r c u i t   t h e   m a i n   c o n c e p t . < / l i > < l i > L o r e m   i s p u m   d o l l e r   t o   s e t   c o n e t a i n   t h e   v e i w   o n   t h e   s e c e t   t o   i m p r o v e   t h e   c i r c u i t   t h e   m a i n   c o n c e p t . < / l i > < l i > L o r e m   i s p u m   d o l l e r   t o   s e t   c o n e t a i n   t h e   v e i w   o n   t h e   s e c e t   t o   i m p r o v e   t h e   c i r c u i t   t h e   m a i n   c o n c e p t . < / l i > < l i > L o r e m   i s p u m   d o l l e r   t o   s e t   c o n e t a i n   t h e   v e i w   o n   t h e   s e c e t   t o   i m p r o v e   t h e   c i r c u i t   t h e   m a i n   c o n c e p t . < / l i > < / u l > ' ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 4   1 8 : 1 3 : 2 9 . 2 5 3 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 8   1 0 : 2 9 : 4 4 . 0 9 0 '   A S   D a t e T i m e ) ,   N U L L )  
 I N S E R T   [ d b o ] . [ W i d g e t ]   ( [ I d ] ,   [ P a g e I d ] ,   [ W i d g e t I d ] ,   [ T e x t ] ,   [ C r e a t e d O n ] ,   [ U p d a t e d O n ] ,   [ I s D e l e t e d ] )   V A L U E S   ( 4 ,   2 ,   N ' W i d g e t 2 ' ,   N ' < p > < s t r o n g > R V   D e a l s   a n d   P o l i c y < / s t r o n g > < / p > < p > P l a n n i n g   a   V i s i t   o r   a   V a c a t i o n   t o   t h e   U S A ?   A c e   R V   R e n t a l s   i s   n o w   o f f e r i n g   d i s c o u n t e d    U S A   R V   R e n t a l   P a c k a g e    f o r   o n l y   � 1 7 5 / d a y   t o   o u r   E u r o p e a n   V i s i t o r s ,   t o   s h o w   o u r   a p p r e c i a t i o n . < / p > < p > T h e   U S A   R V   r e n t a l   p a c k a g e   i n c l u d e s : < / p > < u l > < l i > A n y   R V   r e n t a l   f r o m   A c e   R V . < / l i > < l i > G u e s t   P i c k   u p   a n d   D r o p   o f f   s e r v i c e   t o   a n d   f r o m   D u l l e s   I n t e r n a t i o n a l   A i r p o r t   o r   R e a g a n   N a t i o n a l   A i r p o r t ,   D C < / l i > < l i > F r e e   L o c a l   C a l l i n g < / l i > < / u l > < h 3 > W e   a r e   a l s o   o f f e r i n g   a   F u l l   R V   D a t a   P a c k a g e   f o r   a n   a d d i t i o n a l   � 1 7 5 / w e e k   o n l y ,   t h a t   i n c l u d e s   u n l i m i t e d   d a t a   u s e   a n d   f r e e   l o c a l   p h o n e   c a l l s   M i l e a g e   P a c k a g e s   a r e   a l s o   a v a i l a b l e .   C o n t a c t   c u s t o m e r   s e r v i c e   f o r   m o r e   i n f o r m a t i o n . < b r > N o t e :   P r i c e   d o e s   n o t   i n c l u d e   T a x e s ,   I n s u r a n c e   a n d   a n y   o t h e r   a d d i t i o n a l   s e r v i c e   c h a r g e s .   O f f e r   e x p i r e s   M a r c h   3 1 s t   2 0 1   5   F o r   m o r e   d e t a i l s   p l e a s e   c o n t a c t   C u s t o m e r   s e r v i c e   u s i n g   o u r   c o n t a c t   f o r m   ,   o r   s i m p l y   c a l l   u s   o n   t h e   f o l l o w i n g   n u m b e r s : < b r > P h o n e :   1 - 8 0 0 - 4 5 5 - 0 1 4 4   |   D C   :   ( 2 0 2 )   7 3 9 - 1 9 4 7   |   V A   ( 7 0 3 )   9 4 4 - 6 1 7 6   P a r a   e s p a � o l :   ( 5 7 1 ) - 2 2 0 - 9 7 7 9 < / h 3 > ' ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 4   1 8 : 2 5 : 1 4 . 8 5 7 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 4   1 8 : 2 5 : 3 4 . 6 7 7 '   A S   D a t e T i m e ) ,   N U L L )  
 I N S E R T   [ d b o ] . [ W i d g e t ]   ( [ I d ] ,   [ P a g e I d ] ,   [ W i d g e t I d ] ,   [ T e x t ] ,   [ C r e a t e d O n ] ,   [ U p d a t e d O n ] ,   [ I s D e l e t e d ] )   V A L U E S   ( 5 ,   2 ,   N ' W i d g e t 3 ' ,   N ' < p > P l a n n i n g   a   V i s i t   o r   a   V a c a t i o n   t o   t h e   U S A ?   A c e   R V   R e n t a l s   i s   n o w   o f f e r i n g   d i s c o u n t e d    U S A   R V   R e n t a l   P a c k a g e    f o r   o n l y   � 1 7 5 / d a y   t o   o u r   E u r o p e a n   V i s i t o r s ,   t o   s h o w   o u r   a p p r e c i a t i o n . < / p > < p > T h e   U S A   R V   r e n t a l   p a c k a g e   i n c l u d e s : < / p > < h 3 > W e   a r e   a l s o   o f f e r i n g   a   F u l l   R V   D a t a   P a c k a g e   f o r   a n   a d d i t i o n a l   � 1 7 5 / w e e k   o n l y ,   t h a t   i n c l u d e s   u n l i m i t e d   d a t a   u s e   a n d   f r e e   l o c a l   p h o n e   c a l l s   M i l e a g e   P a c k a g e s   a r e   a l s o   a v a i l a b l e .   C o n t a c t   c u s t o m e r   s e r v i c e   f o r   m o r e   i n f o r m a t i o n . < b r > N o t e :   P r i c e   d o e s   n o t   i n c l u d e   T a x e s ,   I n s u r a n c e   a n d   a n y   o t h e r   a d d i t i o n a l   s e r v i c e   c h a r g e s .   O f f e r   e x p i r e s   M a r c h   3 1 s t   2 0 1   5   F o r   m o r e   d e t a i l s   p l e a s e   c o n t a c t   C u s t o m e r   s e r v i c e   u s i n g   o u r   c o n t a c t   f o r m   ,   o r   s i m p l y   c a l l   u s   o n   t h e   f o l l o w i n g   n u m b e r s : < b r > P h o n e :   1 - 8 0 0 - 4 5 5 - 0 1 4 4   |   D C   :   ( 2 0 2 )   7 3 9 - 1 9 4 7   |   V A   ( 7 0 3 )   9 4 4 - 6 1 7 6   P a r a   e s p a � o l :   ( 5 7 1 ) - 2 2 0 - 9 7 7 9 < / h 3 > ' ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 4   1 8 : 2 5 : 1 6 . 6 2 0 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 4   1 8 : 2 5 : 3 2 . 8 7 3 '   A S   D a t e T i m e ) ,   N U L L )  
 I N S E R T   [ d b o ] . [ W i d g e t ]   ( [ I d ] ,   [ P a g e I d ] ,   [ W i d g e t I d ] ,   [ T e x t ] ,   [ C r e a t e d O n ] ,   [ U p d a t e d O n ] ,   [ I s D e l e t e d ] )   V A L U E S   ( 6 ,   2 ,   N ' W i d g e t 1 ' ,   N ' < p > D I G I T A L   G O O D S :     L o r e m   i p s u m   d o l l e r   t o   s e t   t h e   m a i n   c o n t a u i n r t   t o   i m p [ r o v e   t h e   c i r c u i t   t o   t h e   m a i n   c o n c e n t r a t e   t i   i m p r o v e   t h e   c i c u t i t .   < / p > ' ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 4   1 8 : 2 5 : 1 7 . 7 1 7 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 4   1 8 : 2 5 : 3 6 . 1 7 0 '   A S   D a t e T i m e ) ,   N U L L )  
 I N S E R T   [ d b o ] . [ W i d g e t ]   ( [ I d ] ,   [ P a g e I d ] ,   [ W i d g e t I d ] ,   [ T e x t ] ,   [ C r e a t e d O n ] ,   [ U p d a t e d O n ] ,   [ I s D e l e t e d ] )   V A L U E S   ( 7 ,   3 ,   N ' W i d g e t 1 ' ,   N ' < p > T e r m   & a m p ;   C o n d i t i o n < / p > < p > L o r e m   i s p u m   d o l l e r   t o   s e t   t h e   m a i n   c o u r s e   t o   i m p r o v e   t h e   c i c u i t   t o   i n v o x   t h e   m a i n   p a g e   t o   i m r p v e   t h e   c i r c u i t   t h e   d o l l e r   t o   s e t   i p s u m   t o   c o n t a i n   t h e   m a i n   c o u r s e   t o   i m r p o v e   t h e   c c i u i t   t o   y e t   t h e   m a i n   c o u r s e   t o   i m r p o v e   t h e   m a i n   c o u r s e   t h e   m a i n   t o   i m r v e   t h e   m a i n   c o u r s e   t o   s e t i m p r o v e   t h e   c i c u i t   t o   i n v o x   t h e   m a i n   p a g e   t o   i m r p v e   t h e   c i r c u i t   t h e   d o l l e r   t o   s e t   i p s u m   t o   c o n t a i n   t h e   m a i n   c o u r s e   t o   i m r p o v e   t h e   c c i u i t   t o   y e t   t h e   m a i n   c o u r s e   t o   i m r p o v e   t h e   m a i n   c o u r s e   t h e   m a i n   t o   i m r v e . < / p > < p > L o r e m   i s p u m   d o l l e r   t o   s e t   t h e   m a i n   c o u r s e   t o   i m p r o v e   t h e   c i c u i t   t o   i n v o x   t h e   m a i n   p a g e   t o   i m r p v e   t h e   c i r c u i t   t h e   d o l l e r   t o   s e t   i p s u m   t o   c o n t a i n   t h e   m a i n   c o u r s e   t o   i m r p o v e   t h e   c c i u i t   t o   y e t   t h e   m a i n   c o u r s e i m p r o v e   t h e   c i c u i t   t o   i n v o x   t h e   m a i n   p a g e   t o   i m r p v e   t h e   c i r c u i t   t h e   d o l l e r   t o   s e t   i p s u m   t o   c o n t a i n   t h e   m a i n   c o u r s e   t o   i m r p o v e   t h e   c c i u i t   t o   y e t   t h e   m a i n   c o u r s e   t o   i m r p o v e   t h e   m a i n   c o u r s e   t h e   m a i n   t o   i m r v e < / p > < u l > < l i > D o l l e r   t o   s e t   t h e   m a i n   c o n t e n t   t o   i m p r o v e   t h e   c i c u i t   t o   s e t . < / l i > < l i > I p s u m   t o   s e t   t h e   m a i n   c o n t e n t   t o   i m p r o v e   t h e   c i c u i t   t o   s e t . < / l i > < l i > T o l l e n t   t o   s e t   t h e   m a i n   c o n t e n t   t o   i m p r o v e   t h e   c i c u i t   t o   s e t . < / l i > < l i > I p s u m   t o   s e t   t h e   m a i n   c o n t e n t   t o   i m p r o v e   t h e   c i c u i t   t o   s e t . < / l i > < l i > M a i n   t o   s e t   t h e   m a i n   c o n t e n t   t o   i m p r o v e   t h e   c i c u i t   t o   s e t . < / l i > < / u l > < p > < s t r o n g > C O N T E N T   T O   L O R E M   I P S U M < / s t r o n g > < / p > < p > L o r e m   i s p u m   d o l l e r   t o   s e t   t h e   m a i n   c o u r s e   t o   i m p r o v e   t h e   c i c u i t   t o   i n v o x   t h e   m a i n   p a g e   t o   i m r p v e   t h e   c i r c u i t   t h e   d o l l e r   t o   s e t   i p s u m   t o   c o n t a i n   t h e   m a i n   c o u r s e   t o   i m r p o v e   t h e   c c i u i t   t o   y e t   t h e   m a i n   c o u r s e   t o   i m r p o v e   t h e   m a i n   c o u r s e   t h e   m a i n   t o   i m r v e   t h e   m a i n   c o u r s e   t o   s e t i m p r o v e   t h e   c i c u i t   t o   i n v o x   t h e   m a i n   p a g e   t o   i m r p v e   t h e   c i r c u i t   t h e   d o l l e r   t o   s e t   i p s u m   t o   c o n t a i n   t h e   m a i n   c o u r s e   t o   i m r p o v e   t h e   c c i u i t   t o   y e t   t h e   m a i n   c o u r s e   t o   i m r p o v e   t h e   m a i n   c o u r s e   t h e   m a i n   t o   i m r v e . < / p > < p > L o r e m   i s p u m   d o l l e r   t o   s e t   t h e   m a i n   c o u r s e   t o   i m p r o v e   t h e   c i c u i t   t o   i n v o x   t h e   m a i n   p a g e   t o   i m r p v e   t h e   c i r c u i t   t h e   d o l l e r   t o   s e t   i p s u m   t o   c o n t a i n   t h e   m a i n   c o u r s e   t o   i m r p o v e   t h e   c c i u i t   t o   y e t   t h e   m a i n   c o u r s e i m p r o v e   t h e   c i c u i t   t o   i n v o x   t h e   m a i n   p a g e   t o   i m r p v e   t h e   c i r c u i t   t h e   d o l l e r   t o   s e t   i p s u m   t o   c o n t a i n   t h e   m a i n   c o u r s e   t o   i m r p o v e   t h e   c c i u i t   t o   y e t   t h e   m a i n   c o u r s e   t o   i m r p o v e   t h e   m a i n   c o u r s e   t h e   m a i n   t o   i m r v e < / p > ' ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 4   1 8 : 2 7 : 3 0 . 1 2 3 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 4   1 8 : 3 0 : 3 6 . 5 3 7 '   A S   D a t e T i m e ) ,   N U L L )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ W i d g e t ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ W i s h l i s t ]   O N    
  
 I N S E R T   [ d b o ] . [ W i s h l i s t ]   ( [ I d ] ,   [ U s e r i d ] ,   [ V e h i c l e i d ] ,   [ C r e a t e d o n ] ,   [ U p d a t e d o n ] ,   [ i s a c t i v e ] )   V A L U E S   ( 8 ,   1 ,   2 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 4   0 9 : 0 6 : 4 8 . 9 9 0 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 4   0 9 : 0 6 : 4 8 . 9 9 0 '   A S   D a t e T i m e ) ,   1 )  
 I N S E R T   [ d b o ] . [ W i s h l i s t ]   ( [ I d ] ,   [ U s e r i d ] ,   [ V e h i c l e i d ] ,   [ C r e a t e d o n ] ,   [ U p d a t e d o n ] ,   [ i s a c t i v e ] )   V A L U E S   ( 1 4 ,   1 ,   3 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 7   1 9 : 4 5 : 0 8 . 5 7 0 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 7   1 9 : 4 5 : 0 8 . 5 7 0 '   A S   D a t e T i m e ) ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ W i s h l i s t ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ V e h i c l e S a l e ] . [ N e w s l e t t e r ]   O N    
  
 I N S E R T   [ V e h i c l e S a l e ] . [ N e w s l e t t e r ]   ( [ I d ] ,   [ E m a i l ] ,   [ i s a c t i v e ] ,   [ c r e a t e d o n ] ,   [ u p d a t e d o n ] )   V A L U E S   ( 1 ,   N ' r a m a n d e e p s i n g h @ g m a i l . c o m ' ,   0 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 1   1 5 : 4 7 : 2 0 . 7 3 7 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 1   1 5 : 4 8 : 1 9 . 9 4 3 '   A S   D a t e T i m e ) )  
 I N S E R T   [ V e h i c l e S a l e ] . [ N e w s l e t t e r ]   ( [ I d ] ,   [ E m a i l ] ,   [ i s a c t i v e ] ,   [ c r e a t e d o n ] ,   [ u p d a t e d o n ] )   V A L U E S   ( 2 ,   N ' r m n s i n g h 4 1 @ g m a i l . c o m ' ,   1 ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 1   1 5 : 5 2 : 0 2 . 9 0 7 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 2 1   1 5 : 5 2 : 0 3 . 0 6 0 '   A S   D a t e T i m e ) )  
 S E T   I D E N T I T Y _ I N S E R T   [ V e h i c l e S a l e ] . [ N e w s l e t t e r ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ V e h i c l e S a l e ] . [ O f f e r M a s t e r ]   O N    
  
 I N S E R T   [ V e h i c l e S a l e ] . [ O f f e r M a s t e r ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ N o O f N i g h t s ] ,   [ L o c a t i o n ] ,   [ V a l i d U n t i l l D a t e ] ,   [ P i c k U p ] ,   [ R e t u r n D a t e ] ,   [ O f f e r P r i c e ] ,   [ D o w n P a y m e n t P e r c e n t a g e ] ,   [ I s A c t i v e ] )   V A L U E S   ( 1 ,   2 ,   1 2 ,   N ' U S - 9 8 0 4 2   C o v i n g t o n ' ,   C A S T ( N ' 2 0 1 7 - 0 5 - 3 0   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 5 - 0 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 5 - 1 4   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   2 3 0 0 ,   1 5 ,   1 )  
 I N S E R T   [ V e h i c l e S a l e ] . [ O f f e r M a s t e r ]   ( [ I D ] ,   [ V e h i c l e I D ] ,   [ N o O f N i g h t s ] ,   [ L o c a t i o n ] ,   [ V a l i d U n t i l l D a t e ] ,   [ P i c k U p ] ,   [ R e t u r n D a t e ] ,   [ O f f e r P r i c e ] ,   [ D o w n P a y m e n t P e r c e n t a g e ] ,   [ I s A c t i v e ] )   V A L U E S   ( 6 ,   1 ,   2 ,   N ' i n d i a ' ,   C A S T ( N ' 2 0 0 6 - 0 2 - 2 1   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 0 2 - 0 1 - 0 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   C A S T ( N ' 2 0 1 7 - 0 2 - 1 2   0 0 : 0 0 : 0 0 . 0 0 0 '   A S   D a t e T i m e ) ,   1 1 ,   1 1 ,   1 )  
 S E T   I D E N T I T Y _ I N S E R T   [ V e h i c l e S a l e ] . [ O f f e r M a s t e r ]   O F F  
 S E T   I D E N T I T Y _ I N S E R T   [ V e h i c l e S a l e ] . [ R o l e s ]   O N    
  
 I N S E R T   [ V e h i c l e S a l e ] . [ R o l e s ]   ( [ I D ] ,   [ R o l e N a m e ] )   V A L U E S   ( 1 ,   N ' A d m i n ' )  
 I N S E R T   [ V e h i c l e S a l e ] . [ R o l e s ]   ( [ I D ] ,   [ R o l e N a m e ] )   V A L U E S   ( 2 ,   N ' U s e r ' )  
 S E T   I D E N T I T Y _ I N S E R T   [ V e h i c l e S a l e ] . [ R o l e s ]   O F F  
 A L T E R   T A B L E   [ d b o ] . [ C a t e g o r i e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C a t e g o r i e s _ V e h i c l e T y p e s ]   F O R E I G N   K E Y ( [ V e h i c l e T y p e I D ] )  
 R E F E R E N C E S   [ d b o ] . [ V e h i c l e T y p e s ]   ( [ I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C a t e g o r i e s ]   C H E C K   C O N S T R A I N T   [ F K _ C a t e g o r i e s _ V e h i c l e T y p e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ F e a t u r e s M a s t e r ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ F e a t u r e s M a s t e r _ A m e n t i e s M a s t e r ]   F O R E I G N   K E Y ( [ A m e n t i e s I D ] )  
 R E F E R E N C E S   [ d b o ] . [ A m e n t i e s M a s t e r ]   ( [ I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ F e a t u r e s M a s t e r ]   C H E C K   C O N S T R A I N T   [ F K _ F e a t u r e s M a s t e r _ A m e n t i e s M a s t e r ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ U p l o a d F i l e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ U p l o a d F i l e s _ F o l d e r s ]   F O R E I G N   K E Y ( [ F o l d e r I d ] )  
 R E F E R E N C E S   [ d b o ] . [ F o l d e r s ]   ( [ I d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ U p l o a d F i l e s ]   C H E C K   C O N S T R A I N T   [ F K _ U p l o a d F i l e s _ F o l d e r s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e A m e n t i e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ V e h i c l e A m e n t i e s _ A m e n t i e s M a s t e r ]   F O R E I G N   K E Y ( [ A m e n t i e s I D ] )  
 R E F E R E N C E S   [ d b o ] . [ A m e n t i e s M a s t e r ]   ( [ I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e A m e n t i e s ]   C H E C K   C O N S T R A I N T   [ F K _ V e h i c l e A m e n t i e s _ A m e n t i e s M a s t e r ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e A m e n t i e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ V e h i c l e A m e n t i e s _ V e h i c l e s ]   F O R E I G N   K E Y ( [ V e h i c l e I D ] )  
 R E F E R E N C E S   [ d b o ] . [ V e h i c l e s ]   ( [ I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e A m e n t i e s ]   C H E C K   C O N S T R A I N T   [ F K _ V e h i c l e A m e n t i e s _ V e h i c l e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e F e a t u r e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ V e h i c l e F e a t u r e s _ F e a t u r e s M a s t e r ]   F O R E I G N   K E Y ( [ F e a t u r e I D ] )  
 R E F E R E N C E S   [ d b o ] . [ F e a t u r e s M a s t e r ]   ( [ I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e F e a t u r e s ]   C H E C K   C O N S T R A I N T   [ F K _ V e h i c l e F e a t u r e s _ F e a t u r e s M a s t e r ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e F e a t u r e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ V e h i c l e F e a t u r e s _ V e h i c l e s ]   F O R E I G N   K E Y ( [ V e h i c l e I D ] )  
 R E F E R E N C E S   [ d b o ] . [ V e h i c l e s ]   ( [ I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e F e a t u r e s ]   C H E C K   C O N S T R A I N T   [ F K _ V e h i c l e F e a t u r e s _ V e h i c l e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e I m a g e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ V e h i c l e I m a g e s _ V e h i c l e s ]   F O R E I G N   K E Y ( [ V e h i c l e I D ] )  
 R E F E R E N C E S   [ d b o ] . [ V e h i c l e s ]   ( [ I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e I m a g e s ]   C H E C K   C O N S T R A I N T   [ F K _ V e h i c l e I m a g e s _ V e h i c l e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e R e n t ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ V e h i c l e R e n t _ R e n t T e r m s ]   F O R E I G N   K E Y ( [ T e r m I D ] )  
 R E F E R E N C E S   [ d b o ] . [ R e n t T e r m s ]   ( [ I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e R e n t ]   C H E C K   C O N S T R A I N T   [ F K _ V e h i c l e R e n t _ R e n t T e r m s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e R e n t ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ V e h i c l e R e n t _ V e h i c l e s ]   F O R E I G N   K E Y ( [ V e h i c l e I D ] )  
 R E F E R E N C E S   [ d b o ] . [ V e h i c l e s ]   ( [ I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e R e n t ]   C H E C K   C O N S T R A I N T   [ F K _ V e h i c l e R e n t _ V e h i c l e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e R e n t l e C o n d i t i o n s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ V e h i c l e R e n t l e C o n d i t i o n s _ V e h i c l e s ]   F O R E I G N   K E Y ( [ V e h i c l e I D ] )  
 R E F E R E N C E S   [ d b o ] . [ V e h i c l e s ]   ( [ I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e R e n t l e C o n d i t i o n s ]   C H E C K   C O N S T R A I N T   [ F K _ V e h i c l e R e n t l e C o n d i t i o n s _ V e h i c l e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ V e h i c l e s _ B r a n d s ]   F O R E I G N   K E Y ( [ B r a n d I D ] )  
 R E F E R E N C E S   [ d b o ] . [ B r a n d s ]   ( [ I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e s ]   C H E C K   C O N S T R A I N T   [ F K _ V e h i c l e s _ B r a n d s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ V e h i c l e s _ C a t e g o r i e s ]   F O R E I G N   K E Y ( [ C a t e g o r y I D ] )  
 R E F E R E N C E S   [ d b o ] . [ C a t e g o r i e s ]   ( [ I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e s ]   C H E C K   C O N S T R A I N T   [ F K _ V e h i c l e s _ C a t e g o r i e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ V e h i c l e s _ M o d e l s ]   F O R E I G N   K E Y ( [ M o d e l I D ] )  
 R E F E R E N C E S   [ d b o ] . [ M o d e l s ]   ( [ I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e s ]   C H E C K   C O N S T R A I N T   [ F K _ V e h i c l e s _ M o d e l s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ V e h i c l e s _ V e h i c l e T y p e s ]   F O R E I G N   K E Y ( [ V e h i c l e T y p e I D ] )  
 R E F E R E N C E S   [ d b o ] . [ V e h i c l e T y p e s ]   ( [ I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e h i c l e s ]   C H E C K   C O N S T R A I N T   [ F K _ V e h i c l e s _ V e h i c l e T y p e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ W i d g e t ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ W i d g e t _ P a g e ]   F O R E I G N   K E Y ( [ P a g e I d ] )  
 R E F E R E N C E S   [ d b o ] . [ P a g e ]   ( [ I d ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ W i d g e t ]   C H E C K   C O N S T R A I N T   [ F K _ W i d g e t _ P a g e ]  
 G O  
 A L T E R   T A B L E   [ V e h i c l e S a l e ] . [ O f f e r M a s t e r ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ O f f e r M a s t e r _ V e h i c l e s ]   F O R E I G N   K E Y ( [ V e h i c l e I D ] )  
 R E F E R E N C E S   [ d b o ] . [ V e h i c l e s ]   ( [ I D ] )  
 G O  
 A L T E R   T A B L E   [ V e h i c l e S a l e ] . [ O f f e r M a s t e r ]   C H E C K   C O N S T R A I N T   [ F K _ O f f e r M a s t e r _ V e h i c l e s ]  
 G O  
 
