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

### Example 2   
```
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode : dword
.data
    myarr sbyte -5, -6, -7, -4
.code
    main proc
    neg myarr
    neg myarr+1
    neg myarr+2
    neg myarr+3
    mov dl, myarr
    add dl, myarr+1
    add dl, myarr+2
    add dl, myarr+3

invoke ExitProcess, 0
main endp
end main
```

### Example 2   
```
; Another way of doing the same using a LOOP
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode : dword
.data
    myarr sbyte -5, -6, -7, -4
.code
    main proc
    mov ecx, lengthof myarr 
    mov eax, 0
    mov dl, 0
    top:
        neg [myarr+eax]
        add dl, [myarr+eax]
        inc eax
    loop top

invoke ExitProcess, 0
main endp
end main
```
