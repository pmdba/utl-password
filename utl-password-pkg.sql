create or replace package utl_password as
/******************************************************************************

    Name: utl_password
    Purpose:

    The utl_password package allows you to generate a random alphanumeric
    password (with special characters) of the length specified in the input.

    Revisions:
    Ver  Date         Author      Description
    ===  ===========  ==========  ========================================
    1.0  02-JAN-2019  PJM         Oiginal Release

******************************************************************************/

    function generate_random (p_length number) return varchar2;

end utl_password;
/

create or replace package body utl_password as

    function generate_random (p_length number) return varchar2
    as
       my_str   varchar2 (4000);
    begin
       /* Build a random alphanumeric string of the length specified in the input */
       for i in 1 .. (p_length-1)
       loop
           my_str := my_str || 
                     dbms_random.string (
                         case when dbms_random.value (0, 1) < 0.5 then 'l' else 'x' end,
                     1);
       end loop;

       /* Replace 12 random alphanumeric characters with special characters */
       --my_str := translate (my_str, dbms_random.string ('A', 12), '_+/#)^!&*(%|');
       my_str := translate (my_str, dbms_random.string ('A', 12), '____________');
       
       /* Ensure that our string starts with a character */
       my_str := dbms_random.string('a', 1) || my_str;

       return my_str;
    end generate_random;

end utl_password;
/
