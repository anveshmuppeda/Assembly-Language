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
