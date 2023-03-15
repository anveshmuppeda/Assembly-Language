# ARRAY
Ungraded	
Assume your grocery store sells three types of fruits. Apples, Oranges, and Mangos. Following are the sale numbers for the week (7 days)

.data
apples   dword 42, 47, 52, 63, 74, 34, 73
oranges dword 78, 53, 86, 26, 46, 51, 60
mangos dword 30, 39, 41, 70, 75, 84, 29

Using a single LOOP instruction, write a program to add elements in all these three arrays. Then assign the total result into the eax register. The eax register should have the value 1153 after a successful execution. 
(Note: dword type use 4 bytes. Be sure to run your program before submitting. Submitting code that doesn't run will result in a zero grade for that question)

### Example 1   
```
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
    apples   dword 42, 47, 52, 63, 74, 34, 73
    oranges dword 78, 53, 86, 26, 46, 51, 60
    mangos dword 30, 39, 41, 70, 75, 84, 29
  
.code
main proc
    mov ebx,offset apples
    mov esi,offset oranges
    mov edi,offset mangos
    mov eax,0
    mov ecx,7
top1:
    
    add eax,[ebx]
    add ebx,4

    add eax,[esi]
    add esi,4

    add eax,[edi]
    add edi,4
    loop top1

invoke ExitProcess,0
main endp
end main
```

### Example 2   
```
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode : dword
.data
    apples dword 42, 47, 52, 63, 74, 34, 73
    oranges dword 78, 53, 86, 26, 46, 51, 60
    mangos dword 30, 39, 41, 70, 75, 84, 29
.code
    main proc
    mov ecx, lengthof apples ; value of ecx counter will be 7
    mov eax, 0
    mov esi, 0
    top:
        add eax, apples[esi]
        add eax, oranges[esi]
        add eax, mangos[esi]
        add esi, 4 ;Since dword is 4 bytes
    loop top        

invoke ExitProcess, 0
main endp
end main
```
