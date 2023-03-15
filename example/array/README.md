## Array   
You were given the following negative array. write a program that converts each array element to its positive representation. Then add all these array elements and assign them to the dl register. 

.data
    myarr sbyte -5, -6, -7, -4
.code
     ; Write the rest of the program and paste the fully working code in the space below.  
As shown in the image, the dl register should have the value 22 after summing up all elements in the array. 

```
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
myarr sbyte -5, -6, -7, -4
.code
main:
  mov ecx, 4
  xor edx, edx
  mov esi, 0
  
top1:
  mov al, byte ptr [myarr + esi]
  neg al
  add dl, al
  inc esi
  loop top1
 
invoke ExitProcess,0

end main
```


