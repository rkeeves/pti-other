/* Chapter 3 Excercise 8
 * Discuss how you can guarantee that rational numbers used in ordinary programs are always 'simplified'.
 */
/* The only way is to ensure that instead of working directly with Q we always simplify it.
 * 
 * The other "way" would be to only let the user intstantiate Q instances via mkQ functioon,
 * but unless we can enforce it somehow it is not viable.
 * (In this case new instances could be created via:
 * - mkQ : calls simplify
 * - (+): calls mkQ
 * - (-): calls mkQ
 * - (*): calls mkQ
 * - (/): calls mkQ 
 * But directly instantiating a Q typed object does not guarantee the "simplified" property)
 * In OOP languages I would probably make the ctor private and provide a factory class or a static factory function.
 */