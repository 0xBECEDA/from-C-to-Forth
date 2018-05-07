
forth:     file format elf32-i386


Disassembly of section .interp:

08048154 <.interp>:
 8048154:	2f                   	das    
 8048155:	6c                   	insb   (%dx),%es:(%edi)
 8048156:	69 62 2f 6c 64 2d 6c 	imul   $0x6c2d646c,0x2f(%edx),%esp
 804815d:	69 6e 75 78 2e 73 6f 	imul   $0x6f732e78,0x75(%esi),%ebp
 8048164:	2e 32 00             	xor    %cs:(%eax),%al

Disassembly of section .note.ABI-tag:

08048168 <.note.ABI-tag>:
 8048168:	04 00                	add    $0x0,%al
 804816a:	00 00                	add    %al,(%eax)
 804816c:	10 00                	adc    %al,(%eax)
 804816e:	00 00                	add    %al,(%eax)
 8048170:	01 00                	add    %eax,(%eax)
 8048172:	00 00                	add    %al,(%eax)
 8048174:	47                   	inc    %edi
 8048175:	4e                   	dec    %esi
 8048176:	55                   	push   %ebp
 8048177:	00 00                	add    %al,(%eax)
 8048179:	00 00                	add    %al,(%eax)
 804817b:	00 02                	add    %al,(%edx)
 804817d:	00 00                	add    %al,(%eax)
 804817f:	00 06                	add    %al,(%esi)
 8048181:	00 00                	add    %al,(%eax)
 8048183:	00 20                	add    %ah,(%eax)
 8048185:	00 00                	add    %al,(%eax)
	...

Disassembly of section .note.gnu.build-id:

08048188 <.note.gnu.build-id>:
 8048188:	04 00                	add    $0x0,%al
 804818a:	00 00                	add    %al,(%eax)
 804818c:	14 00                	adc    $0x0,%al
 804818e:	00 00                	add    %al,(%eax)
 8048190:	03 00                	add    (%eax),%eax
 8048192:	00 00                	add    %al,(%eax)
 8048194:	47                   	inc    %edi
 8048195:	4e                   	dec    %esi
 8048196:	55                   	push   %ebp
 8048197:	00 6b 9b             	add    %ch,-0x65(%ebx)
 804819a:	78 5f                	js     80481fb <INITIAL_DATA_SEGMENT_SIZE+0x80381fb>
 804819c:	25 45 69 9c 97       	and    $0x979c6945,%eax
 80481a1:	78 cf                	js     8048172 <INITIAL_DATA_SEGMENT_SIZE+0x8038172>
 80481a3:	99                   	cltd   
 80481a4:	bb bb 4e 69 41       	mov    $0x41694ebb,%ebx
 80481a9:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
 80481aa:	6c                   	insb   (%dx),%es:(%edi)
 80481ab:	5f                   	pop    %edi

Disassembly of section .gnu.hash:

080481ac <.gnu.hash>:
 80481ac:	03 00                	add    (%eax),%eax
 80481ae:	00 00                	add    %al,(%eax)
 80481b0:	1e                   	push   %ds
 80481b1:	00 00                	add    %al,(%eax)
 80481b3:	00 02                	add    %al,(%edx)
 80481b5:	00 00                	add    %al,(%eax)
 80481b7:	00 06                	add    %al,(%esi)
 80481b9:	00 00                	add    %al,(%eax)
 80481bb:	00 88 04 22 01 00    	add    %cl,0x12204(%eax)
 80481c1:	e5 40                	in     $0x40,%eax
 80481c3:	2b 1e                	sub    (%esi),%ebx
 80481c5:	00 00                	add    %al,(%eax)
 80481c7:	00 21                	add    %ah,(%ecx)
 80481c9:	00 00                	add    %al,(%eax)
 80481cb:	00 26                	add    %ah,(%esi)
 80481cd:	00 00                	add    %al,(%eax)
 80481cf:	00 4a 04             	add    %cl,0x4(%edx)
 80481d2:	b1 3f                	mov    $0x3f,%cl
 80481d4:	42                   	inc    %edx
 80481d5:	45                   	inc    %ebp
 80481d6:	d5 ec                	aad    $0xec
 80481d8:	bb e3 92 7c ac       	mov    $0xac7c92e3,%ebx
 80481dd:	4b                   	dec    %ebx
 80481de:	e3 c0                	jecxz  80481a0 <INITIAL_DATA_SEGMENT_SIZE+0x80381a0>
 80481e0:	6a 7f                	push   $0x7f
 80481e2:	9a 7c b8 8d f1 0e d8 	lcall  $0xd80e,$0xf18db87c
 80481e9:	71 58                	jno    8048243 <INITIAL_DATA_SEGMENT_SIZE+0x8038243>
 80481eb:	1c 39                	sbb    $0x39,%al
 80481ed:	f2 8b 1c eb          	repnz mov (%ebx,%ebp,8),%ebx
 80481f1:	d3 ef                	shr    %cl,%edi
 80481f3:	0e                   	push   %cs

Disassembly of section .dynsym:

080481f4 <.dynsym>:
	...
 8048204:	50                   	push   %eax
 8048205:	01 00                	add    %eax,(%eax)
	...
 804820f:	00 12                	add    %dl,(%edx)
 8048211:	00 00                	add    %al,(%eax)
 8048213:	00 f8                	add    %bh,%al
	...
 804821d:	00 00                	add    %al,(%eax)
 804821f:	00 12                	add    %dl,(%edx)
 8048221:	00 00                	add    %al,(%eax)
 8048223:	00 61 01             	add    %ah,0x1(%ecx)
	...
 804822e:	00 00                	add    %al,(%eax)
 8048230:	12 00                	adc    (%eax),%al
 8048232:	00 00                	add    %al,(%eax)
 8048234:	85 00                	test   %eax,(%eax)
	...
 804823e:	00 00                	add    %al,(%eax)
 8048240:	12 00                	adc    (%eax),%al
 8048242:	00 00                	add    %al,(%eax)
 8048244:	dc 00                	faddl  (%eax)
	...
 804824e:	00 00                	add    %al,(%eax)
 8048250:	12 00                	adc    (%eax),%al
 8048252:	00 00                	add    %al,(%eax)
 8048254:	7a 00                	jp     8048256 <INITIAL_DATA_SEGMENT_SIZE+0x8038256>
	...
 804825e:	00 00                	add    %al,(%eax)
 8048260:	12 00                	adc    (%eax),%al
 8048262:	00 00                	add    %al,(%eax)
 8048264:	d3 01                	roll   %cl,(%ecx)
	...
 804826e:	00 00                	add    %al,(%eax)
 8048270:	12 00                	adc    (%eax),%al
 8048272:	00 00                	add    %al,(%eax)
 8048274:	ed                   	in     (%dx),%eax
 8048275:	01 00                	add    %eax,(%eax)
	...
 804827f:	00 12                	add    %dl,(%edx)
 8048281:	00 00                	add    %al,(%eax)
 8048283:	00 d2                	add    %dl,%dl
	...
 804828d:	00 00                	add    %al,(%eax)
 804828f:	00 12                	add    %dl,(%edx)
 8048291:	00 00                	add    %al,(%eax)
 8048293:	00 eb                	add    %ch,%bl
	...
 804829d:	00 00                	add    %al,(%eax)
 804829f:	00 12                	add    %dl,(%edx)
 80482a1:	00 00                	add    %al,(%eax)
 80482a3:	00 b6 01 00 00 00    	add    %dh,0x1(%esi)
 80482a9:	00 00                	add    %al,(%eax)
 80482ab:	00 00                	add    %al,(%eax)
 80482ad:	00 00                	add    %al,(%eax)
 80482af:	00 12                	add    %dl,(%edx)
 80482b1:	00 00                	add    %al,(%eax)
 80482b3:	00 71 00             	add    %dh,0x0(%ecx)
	...
 80482be:	00 00                	add    %al,(%eax)
 80482c0:	12 00                	adc    (%eax),%al
 80482c2:	00 00                	add    %al,(%eax)
 80482c4:	7d 01                	jge    80482c7 <INITIAL_DATA_SEGMENT_SIZE+0x80382c7>
	...
 80482ce:	00 00                	add    %al,(%eax)
 80482d0:	12 00                	adc    (%eax),%al
 80482d2:	00 00                	add    %al,(%eax)
 80482d4:	ab                   	stos   %eax,%es:(%edi)
 80482d5:	01 00                	add    %eax,(%eax)
	...
 80482df:	00 12                	add    %dl,(%edx)
 80482e1:	00 00                	add    %al,(%eax)
 80482e3:	00 30                	add    %dh,(%eax)
 80482e5:	01 00                	add    %eax,(%eax)
	...
 80482ef:	00 12                	add    %dl,(%edx)
 80482f1:	00 00                	add    %al,(%eax)
 80482f3:	00 db                	add    %bl,%bl
 80482f5:	01 00                	add    %eax,(%eax)
	...
 80482ff:	00 12                	add    %dl,(%edx)
 8048301:	00 00                	add    %al,(%eax)
 8048303:	00 bb 01 00 00 00    	add    %bh,0x1(%ebx)
 8048309:	00 00                	add    %al,(%eax)
 804830b:	00 00                	add    %al,(%eax)
 804830d:	00 00                	add    %al,(%eax)
 804830f:	00 12                	add    %dl,(%edx)
 8048311:	00 00                	add    %al,(%eax)
 8048313:	00 21                	add    %ah,(%ecx)
	...
 804831d:	00 00                	add    %al,(%eax)
 804831f:	00 20                	add    %ah,(%eax)
 8048321:	00 00                	add    %al,(%eax)
 8048323:	00 bd 00 00 00 00    	add    %bh,0x0(%ebp)
 8048329:	00 00                	add    %al,(%eax)
 804832b:	00 00                	add    %al,(%eax)
 804832d:	00 00                	add    %al,(%eax)
 804832f:	00 12                	add    %dl,(%edx)
 8048331:	00 00                	add    %al,(%eax)
 8048333:	00 40 01             	add    %al,0x1(%eax)
	...
 804833e:	00 00                	add    %al,(%eax)
 8048340:	12 00                	adc    (%eax),%al
 8048342:	00 00                	add    %al,(%eax)
 8048344:	13 01                	adc    (%ecx),%eax
	...
 804834e:	00 00                	add    %al,(%eax)
 8048350:	12 00                	adc    (%eax),%al
 8048352:	00 00                	add    %al,(%eax)
 8048354:	94                   	xchg   %eax,%esp
	...
 804835d:	00 00                	add    %al,(%eax)
 804835f:	00 12                	add    %dl,(%edx)
 8048361:	00 00                	add    %al,(%eax)
 8048363:	00 a6 00 00 00 00    	add    %ah,0x0(%esi)
 8048369:	00 00                	add    %al,(%eax)
 804836b:	00 00                	add    %al,(%eax)
 804836d:	00 00                	add    %al,(%eax)
 804836f:	00 12                	add    %dl,(%edx)
 8048371:	00 00                	add    %al,(%eax)
 8048373:	00 f5                	add    %dh,%ch
 8048375:	01 00                	add    %eax,(%eax)
	...
 804837f:	00 12                	add    %dl,(%edx)
 8048381:	00 00                	add    %al,(%eax)
 8048383:	00 d4                	add    %dl,%ah
 8048385:	01 00                	add    %eax,(%eax)
	...
 804838f:	00 12                	add    %dl,(%edx)
 8048391:	00 00                	add    %al,(%eax)
 8048393:	00 b1 01 00 00 00    	add    %dh,0x1(%ecx)
 8048399:	00 00                	add    %al,(%eax)
 804839b:	00 00                	add    %al,(%eax)
 804839d:	00 00                	add    %al,(%eax)
 804839f:	00 12                	add    %dl,(%edx)
 80483a1:	00 00                	add    %al,(%eax)
 80483a3:	00 35 00 00 00 00    	add    %dh,0x0
 80483a9:	00 00                	add    %al,(%eax)
 80483ab:	00 00                	add    %al,(%eax)
 80483ad:	00 00                	add    %al,(%eax)
 80483af:	00 20                	add    %ah,(%eax)
 80483b1:	00 00                	add    %al,(%eax)
 80483b3:	00 12                	add    %dl,(%edx)
	...
 80483bd:	00 00                	add    %al,(%eax)
 80483bf:	00 20                	add    %ah,(%eax)
 80483c1:	00 00                	add    %al,(%eax)
 80483c3:	00 51 00             	add    %dl,0x0(%ecx)
	...
 80483ce:	00 00                	add    %al,(%eax)
 80483d0:	20 00                	and    %al,(%eax)
 80483d2:	00 00                	add    %al,(%eax)
 80483d4:	0a 01                	or     (%ecx),%al
 80483d6:	00 00                	add    %al,(%eax)
 80483d8:	50                   	push   %eax
 80483d9:	88 04 08             	mov    %al,(%eax,%ecx,1)
 80483dc:	00 00                	add    %al,(%eax)
 80483de:	00 00                	add    %al,(%eax)
 80483e0:	12 00                	adc    (%eax),%al
 80483e2:	00 00                	add    %al,(%eax)
 80483e4:	fa                   	cli    
 80483e5:	01 00                	add    %eax,(%eax)
 80483e7:	00 c0                	add    %al,%al
 80483e9:	c0 04 08 00          	rolb   $0x0,(%eax,%ecx,1)
 80483ed:	00 00                	add    %al,(%eax)
 80483ef:	00 10                	add    %dl,(%eax)
 80483f1:	00 19                	add    %bl,(%ecx)
 80483f3:	00 0d 02 00 00 e4    	add    %cl,0xe4000002
 80483f9:	23 06                	and    (%esi),%eax
 80483fb:	08 00                	or     %al,(%eax)
 80483fd:	00 00                	add    %al,(%eax)
 80483ff:	00 10                	add    %dl,(%eax)
 8048401:	00 1a                	add    %bl,(%edx)
 8048403:	00 9c 01 00 00 cc 95 	add    %bl,-0x6a340000(%ecx,%eax,1)
 804840a:	04 08                	add    $0x8,%al
 804840c:	04 00                	add    $0x0,%al
 804840e:	00 00                	add    %al,(%eax)
 8048410:	11 00                	adc    %eax,(%eax)
 8048412:	10 00                	adc    %al,(%eax)
 8048414:	e8 01 00 00 f5       	call   fd04841a <_end+0xf4fe6036>
 8048419:	94                   	xchg   %eax,%esp
 804841a:	04 08                	add    $0x8,%al
 804841c:	0f 00 00             	sldt   (%eax)
 804841f:	00 12                	add    %dl,(%edx)
 8048421:	00 0e                	add    %cl,(%esi)
 8048423:	00 6b 00             	add    %ch,0x0(%ebx)
 8048426:	00 00                	add    %al,(%eax)
 8048428:	04 88                	add    $0x88,%al
 804842a:	04 08                	add    $0x8,%al
 804842c:	00 00                	add    %al,(%eax)
 804842e:	00 00                	add    %al,(%eax)
 8048430:	12 00                	adc    (%eax),%al
 8048432:	0b 00                	or     (%eax),%eax
 8048434:	01 02                	add    %eax,(%edx)
 8048436:	00 00                	add    %al,(%eax)
 8048438:	c0 c0 04             	rol    $0x4,%al
 804843b:	08 00                	or     %al,(%eax)
 804843d:	00 00                	add    %al,(%eax)
 804843f:	00 10                	add    %dl,(%eax)
 8048441:	00 1a                	add    %bl,(%edx)
 8048443:	00 cc                	add    %cl,%ah
 8048445:	01 00                	add    %eax,(%eax)
 8048447:	00 00                	add    %al,(%eax)
 8048449:	d0 04 08             	rolb   (%eax,%ecx,1)
 804844c:	04 00                	add    $0x0,%al
 804844e:	00 00                	add    %al,(%eax)
 8048450:	11 00                	adc    %eax,(%eax)
 8048452:	1a 00                	sbb    (%eax),%al
 8048454:	8c 01                	mov    %es,(%ecx)
 8048456:	00 00                	add    %al,(%eax)
 8048458:	b4 95                	mov    $0x95,%ah
 804845a:	04 08                	add    $0x8,%al
 804845c:	00 00                	add    %al,(%eax)
 804845e:	00 00                	add    %al,(%eax)
 8048460:	12 00                	adc    (%eax),%al
 8048462:	0f                   	.byte 0xf
	...

Disassembly of section .dynstr:

08048464 <.dynstr>:
 8048464:	00 6c 69 62          	add    %ch,0x62(%ecx,%ebp,2)
 8048468:	53                   	push   %ebx
 8048469:	44                   	inc    %esp
 804846a:	4c                   	dec    %esp
 804846b:	32 2d 32 2e 30 2e    	xor    0x2e302e32,%ch
 8048471:	73 6f                	jae    80484e2 <INITIAL_DATA_SEGMENT_SIZE+0x80384e2>
 8048473:	2e 30 00             	xor    %al,%cs:(%eax)
 8048476:	5f                   	pop    %edi
 8048477:	5f                   	pop    %edi
 8048478:	67 6d                	insl   (%dx),%es:(%di)
 804847a:	6f                   	outsl  %ds:(%esi),(%dx)
 804847b:	6e                   	outsb  %ds:(%esi),(%dx)
 804847c:	5f                   	pop    %edi
 804847d:	73 74                	jae    80484f3 <INITIAL_DATA_SEGMENT_SIZE+0x80384f3>
 804847f:	61                   	popa   
 8048480:	72 74                	jb     80484f6 <INITIAL_DATA_SEGMENT_SIZE+0x80384f6>
 8048482:	5f                   	pop    %edi
 8048483:	5f                   	pop    %edi
 8048484:	00 5f 4a             	add    %bl,0x4a(%edi)
 8048487:	76 5f                	jbe    80484e8 <INITIAL_DATA_SEGMENT_SIZE+0x80384e8>
 8048489:	52                   	push   %edx
 804848a:	65 67 69 73 74 65 72 	imul   $0x6c437265,%gs:0x74(%bp,%di),%esi
 8048491:	43 6c 
 8048493:	61                   	popa   
 8048494:	73 73                	jae    8048509 <INITIAL_DATA_SEGMENT_SIZE+0x8038509>
 8048496:	65 73 00             	gs jae 8048499 <INITIAL_DATA_SEGMENT_SIZE+0x8038499>
 8048499:	5f                   	pop    %edi
 804849a:	49                   	dec    %ecx
 804849b:	54                   	push   %esp
 804849c:	4d                   	dec    %ebp
 804849d:	5f                   	pop    %edi
 804849e:	64 65 72 65          	fs gs jb 8048507 <INITIAL_DATA_SEGMENT_SIZE+0x8038507>
 80484a2:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%bp,%di),%esi
 80484a9:	4d 
 80484aa:	43                   	inc    %ebx
 80484ab:	6c                   	insb   (%dx),%es:(%edi)
 80484ac:	6f                   	outsl  %ds:(%esi),(%dx)
 80484ad:	6e                   	outsb  %ds:(%esi),(%dx)
 80484ae:	65 54                	gs push %esp
 80484b0:	61                   	popa   
 80484b1:	62 6c 65 00          	bound  %ebp,0x0(%ebp,%eiz,2)
 80484b5:	5f                   	pop    %edi
 80484b6:	49                   	dec    %ecx
 80484b7:	54                   	push   %esp
 80484b8:	4d                   	dec    %ebp
 80484b9:	5f                   	pop    %edi
 80484ba:	72 65                	jb     8048521 <INITIAL_DATA_SEGMENT_SIZE+0x8038521>
 80484bc:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%bp,%di),%esi
 80484c3:	4d 
 80484c4:	43                   	inc    %ebx
 80484c5:	6c                   	insb   (%dx),%es:(%edi)
 80484c6:	6f                   	outsl  %ds:(%esi),(%dx)
 80484c7:	6e                   	outsb  %ds:(%esi),(%dx)
 80484c8:	65 54                	gs push %esp
 80484ca:	61                   	popa   
 80484cb:	62 6c 65 00          	bound  %ebp,0x0(%ebp,%eiz,2)
 80484cf:	5f                   	pop    %edi
 80484d0:	69 6e 69 74 00 53 44 	imul   $0x44530074,0x69(%esi),%ebp
 80484d7:	4c                   	dec    %esp
 80484d8:	5f                   	pop    %edi
 80484d9:	49                   	dec    %ecx
 80484da:	6e                   	outsb  %ds:(%esi),(%dx)
 80484db:	69 74 00 53 44 4c 5f 	imul   $0x4d5f4c44,0x53(%eax,%eax,1),%esi
 80484e2:	4d 
 80484e3:	61                   	popa   
 80484e4:	70 52                	jo     8048538 <INITIAL_DATA_SEGMENT_SIZE+0x8038538>
 80484e6:	47                   	inc    %edi
 80484e7:	42                   	inc    %edx
 80484e8:	00 53 44             	add    %dl,0x44(%ebx)
 80484eb:	4c                   	dec    %esp
 80484ec:	5f                   	pop    %edi
 80484ed:	47                   	inc    %edi
 80484ee:	65 74 56             	gs je  8048547 <INITIAL_DATA_SEGMENT_SIZE+0x8038547>
 80484f1:	65 72 73             	gs jb  8048567 <INITIAL_DATA_SEGMENT_SIZE+0x8038567>
 80484f4:	69 6f 6e 00 53 44 4c 	imul   $0x4c445300,0x6e(%edi),%ebp
 80484fb:	5f                   	pop    %edi
 80484fc:	55                   	push   %ebp
 80484fd:	6e                   	outsb  %ds:(%esi),(%dx)
 80484fe:	6c                   	insb   (%dx),%es:(%edi)
 80484ff:	6f                   	outsl  %ds:(%esi),(%dx)
 8048500:	63 6b 53             	arpl   %bp,0x53(%ebx)
 8048503:	75 72                	jne    8048577 <INITIAL_DATA_SEGMENT_SIZE+0x8038577>
 8048505:	66 61                	popaw  
 8048507:	63 65 00             	arpl   %sp,0x0(%ebp)
 804850a:	53                   	push   %ebx
 804850b:	44                   	inc    %esp
 804850c:	4c                   	dec    %esp
 804850d:	5f                   	pop    %edi
 804850e:	53                   	push   %ebx
 804850f:	65 74 52             	gs je  8048564 <INITIAL_DATA_SEGMENT_SIZE+0x8038564>
 8048512:	65 6e                	outsb  %gs:(%esi),(%dx)
 8048514:	64 65 72 44          	fs gs jb 804855c <INITIAL_DATA_SEGMENT_SIZE+0x803855c>
 8048518:	72 61                	jb     804857b <INITIAL_DATA_SEGMENT_SIZE+0x803857b>
 804851a:	77 43                	ja     804855f <INITIAL_DATA_SEGMENT_SIZE+0x803855f>
 804851c:	6f                   	outsl  %ds:(%esi),(%dx)
 804851d:	6c                   	insb   (%dx),%es:(%edi)
 804851e:	6f                   	outsl  %ds:(%esi),(%dx)
 804851f:	72 00                	jb     8048521 <INITIAL_DATA_SEGMENT_SIZE+0x8038521>
 8048521:	53                   	push   %ebx
 8048522:	44                   	inc    %esp
 8048523:	4c                   	dec    %esp
 8048524:	5f                   	pop    %edi
 8048525:	47                   	inc    %edi
 8048526:	65 74 57             	gs je  8048580 <INITIAL_DATA_SEGMENT_SIZE+0x8038580>
 8048529:	69 6e 64 6f 77 53 75 	imul   $0x7553776f,0x64(%esi),%ebp
 8048530:	72 66                	jb     8048598 <INITIAL_DATA_SEGMENT_SIZE+0x8038598>
 8048532:	61                   	popa   
 8048533:	63 65 00             	arpl   %sp,0x0(%ebp)
 8048536:	53                   	push   %ebx
 8048537:	44                   	inc    %esp
 8048538:	4c                   	dec    %esp
 8048539:	5f                   	pop    %edi
 804853a:	44                   	inc    %esp
 804853b:	65 6c                	gs insb (%dx),%es:(%edi)
 804853d:	61                   	popa   
 804853e:	79 00                	jns    8048540 <INITIAL_DATA_SEGMENT_SIZE+0x8038540>
 8048540:	53                   	push   %ebx
 8048541:	44                   	inc    %esp
 8048542:	4c                   	dec    %esp
 8048543:	5f                   	pop    %edi
 8048544:	52                   	push   %edx
 8048545:	57                   	push   %edi
 8048546:	46                   	inc    %esi
 8048547:	72 6f                	jb     80485b8 <INITIAL_DATA_SEGMENT_SIZE+0x80385b8>
 8048549:	6d                   	insl   (%dx),%es:(%edi)
 804854a:	46                   	inc    %esi
 804854b:	69 6c 65 00 53 44 4c 	imul   $0x5f4c4453,0x0(%ebp,%eiz,2),%ebp
 8048552:	5f 
 8048553:	47                   	inc    %edi
 8048554:	65 74 45             	gs je  804859c <INITIAL_DATA_SEGMENT_SIZE+0x803859c>
 8048557:	72 72                	jb     80485cb <INITIAL_DATA_SEGMENT_SIZE+0x80385cb>
 8048559:	6f                   	outsl  %ds:(%esi),(%dx)
 804855a:	72 00                	jb     804855c <INITIAL_DATA_SEGMENT_SIZE+0x803855c>
 804855c:	53                   	push   %ebx
 804855d:	44                   	inc    %esp
 804855e:	4c                   	dec    %esp
 804855f:	5f                   	pop    %edi
 8048560:	52                   	push   %edx
 8048561:	65 6e                	outsb  %gs:(%esi),(%dx)
 8048563:	64 65 72 50          	fs gs jb 80485b7 <INITIAL_DATA_SEGMENT_SIZE+0x80385b7>
 8048567:	72 65                	jb     80485ce <INITIAL_DATA_SEGMENT_SIZE+0x80385ce>
 8048569:	73 65                	jae    80485d0 <INITIAL_DATA_SEGMENT_SIZE+0x80385d0>
 804856b:	6e                   	outsb  %ds:(%esi),(%dx)
 804856c:	74 00                	je     804856e <INITIAL_DATA_SEGMENT_SIZE+0x803856e>
 804856e:	53                   	push   %ebx
 804856f:	44                   	inc    %esp
 8048570:	4c                   	dec    %esp
 8048571:	5f                   	pop    %edi
 8048572:	51                   	push   %ecx
 8048573:	75 69                	jne    80485de <INITIAL_DATA_SEGMENT_SIZE+0x80385de>
 8048575:	74 00                	je     8048577 <INITIAL_DATA_SEGMENT_SIZE+0x8038577>
 8048577:	53                   	push   %ebx
 8048578:	44                   	inc    %esp
 8048579:	4c                   	dec    %esp
 804857a:	5f                   	pop    %edi
 804857b:	43                   	inc    %ebx
 804857c:	72 65                	jb     80485e3 <INITIAL_DATA_SEGMENT_SIZE+0x80385e3>
 804857e:	61                   	popa   
 804857f:	74 65                	je     80485e6 <INITIAL_DATA_SEGMENT_SIZE+0x80385e6>
 8048581:	54                   	push   %esp
 8048582:	65 78 74             	gs js  80485f9 <INITIAL_DATA_SEGMENT_SIZE+0x80385f9>
 8048585:	75 72                	jne    80485f9 <INITIAL_DATA_SEGMENT_SIZE+0x80385f9>
 8048587:	65 46                	gs inc %esi
 8048589:	72 6f                	jb     80485fa <INITIAL_DATA_SEGMENT_SIZE+0x80385fa>
 804858b:	6d                   	insl   (%dx),%es:(%edi)
 804858c:	53                   	push   %ebx
 804858d:	75 72                	jne    8048601 <INITIAL_DATA_SEGMENT_SIZE+0x8038601>
 804858f:	66 61                	popaw  
 8048591:	63 65 00             	arpl   %sp,0x0(%ebp)
 8048594:	53                   	push   %ebx
 8048595:	44                   	inc    %esp
 8048596:	4c                   	dec    %esp
 8048597:	5f                   	pop    %edi
 8048598:	52                   	push   %edx
 8048599:	65 6e                	outsb  %gs:(%esi),(%dx)
 804859b:	64 65 72 43          	fs gs jb 80485e2 <INITIAL_DATA_SEGMENT_SIZE+0x80385e2>
 804859f:	6c                   	insb   (%dx),%es:(%edi)
 80485a0:	65 61                	gs popa 
 80485a2:	72 00                	jb     80485a4 <INITIAL_DATA_SEGMENT_SIZE+0x80385a4>
 80485a4:	53                   	push   %ebx
 80485a5:	44                   	inc    %esp
 80485a6:	4c                   	dec    %esp
 80485a7:	5f                   	pop    %edi
 80485a8:	4c                   	dec    %esp
 80485a9:	6f                   	outsl  %ds:(%esi),(%dx)
 80485aa:	63 6b 53             	arpl   %bp,0x53(%ebx)
 80485ad:	75 72                	jne    8048621 <INITIAL_DATA_SEGMENT_SIZE+0x8038621>
 80485af:	66 61                	popaw  
 80485b1:	63 65 00             	arpl   %sp,0x0(%ebp)
 80485b4:	53                   	push   %ebx
 80485b5:	44                   	inc    %esp
 80485b6:	4c                   	dec    %esp
 80485b7:	5f                   	pop    %edi
 80485b8:	43                   	inc    %ebx
 80485b9:	72 65                	jb     8048620 <INITIAL_DATA_SEGMENT_SIZE+0x8038620>
 80485bb:	61                   	popa   
 80485bc:	74 65                	je     8048623 <INITIAL_DATA_SEGMENT_SIZE+0x8038623>
 80485be:	57                   	push   %edi
 80485bf:	69 6e 64 6f 77 00 53 	imul   $0x5300776f,0x64(%esi),%ebp
 80485c6:	44                   	inc    %esp
 80485c7:	4c                   	dec    %esp
 80485c8:	5f                   	pop    %edi
 80485c9:	43                   	inc    %ebx
 80485ca:	72 65                	jb     8048631 <INITIAL_DATA_SEGMENT_SIZE+0x8038631>
 80485cc:	61                   	popa   
 80485cd:	74 65                	je     8048634 <INITIAL_DATA_SEGMENT_SIZE+0x8038634>
 80485cf:	57                   	push   %edi
 80485d0:	69 6e 64 6f 77 41 6e 	imul   $0x6e41776f,0x64(%esi),%ebp
 80485d7:	64 52                	fs push %edx
 80485d9:	65 6e                	outsb  %gs:(%esi),(%dx)
 80485db:	64 65 72 65          	fs gs jb 8048644 <INITIAL_DATA_SEGMENT_SIZE+0x8038644>
 80485df:	72 00                	jb     80485e1 <INITIAL_DATA_SEGMENT_SIZE+0x80385e1>
 80485e1:	53                   	push   %ebx
 80485e2:	44                   	inc    %esp
 80485e3:	4c                   	dec    %esp
 80485e4:	5f                   	pop    %edi
 80485e5:	4c                   	dec    %esp
 80485e6:	6f                   	outsl  %ds:(%esi),(%dx)
 80485e7:	61                   	popa   
 80485e8:	64 42                	fs inc %edx
 80485ea:	4d                   	dec    %ebp
 80485eb:	50                   	push   %eax
 80485ec:	5f                   	pop    %edi
 80485ed:	52                   	push   %edx
 80485ee:	57                   	push   %edi
 80485ef:	00 5f 66             	add    %bl,0x66(%edi)
 80485f2:	69 6e 69 00 6c 69 62 	imul   $0x62696c00,0x69(%esi),%ebp
 80485f9:	63 2e                	arpl   %bp,(%esi)
 80485fb:	73 6f                	jae    804866c <INITIAL_DATA_SEGMENT_SIZE+0x803866c>
 80485fd:	2e 36 00 5f 49       	cs add %bl,%ss:0x49(%edi)
 8048602:	4f                   	dec    %edi
 8048603:	5f                   	pop    %edi
 8048604:	73 74                	jae    804867a <INITIAL_DATA_SEGMENT_SIZE+0x803867a>
 8048606:	64 69 6e 5f 75 73 65 	imul   $0x64657375,%fs:0x5f(%esi),%ebp
 804860d:	64 
 804860e:	00 73 72             	add    %dh,0x72(%ebx)
 8048611:	61                   	popa   
 8048612:	6e                   	outsb  %ds:(%esi),(%dx)
 8048613:	64 00 70 75          	add    %dh,%fs:0x75(%eax)
 8048617:	74 73                	je     804868c <INITIAL_DATA_SEGMENT_SIZE+0x803868c>
 8048619:	00 74 69 6d          	add    %dh,0x6d(%ecx,%ebp,2)
 804861d:	65 00 5f 5f          	add    %bl,%gs:0x5f(%edi)
 8048621:	73 74                	jae    8048697 <INITIAL_DATA_SEGMENT_SIZE+0x8038697>
 8048623:	61                   	popa   
 8048624:	63 6b 5f             	arpl   %bp,0x5f(%ebx)
 8048627:	63 68 6b             	arpl   %bp,0x6b(%eax)
 804862a:	5f                   	pop    %edi
 804862b:	66 61                	popaw  
 804862d:	69 6c 00 73 74 64 65 	imul   $0x72656474,0x73(%eax,%eax,1),%ebp
 8048634:	72 
 8048635:	72 00                	jb     8048637 <INITIAL_DATA_SEGMENT_SIZE+0x8038637>
 8048637:	66 70 72             	data16 jo 80486ac <INITIAL_DATA_SEGMENT_SIZE+0x80386ac>
 804863a:	69 6e 74 66 00 5f 5f 	imul   $0x5f5f0066,0x74(%esi),%ebp
 8048641:	6c                   	insb   (%dx),%es:(%edi)
 8048642:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%edx),%esp
 8048649:	72 74                	jb     80486bf <INITIAL_DATA_SEGMENT_SIZE+0x80386bf>
 804864b:	5f                   	pop    %edi
 804864c:	6d                   	insl   (%dx),%es:(%edi)
 804864d:	61                   	popa   
 804864e:	69 6e 00 5f 5f 63 78 	imul   $0x78635f5f,0x0(%esi),%ebp
 8048655:	61                   	popa   
 8048656:	5f                   	pop    %edi
 8048657:	61                   	popa   
 8048658:	74 65                	je     80486bf <INITIAL_DATA_SEGMENT_SIZE+0x80386bf>
 804865a:	78 69                	js     80486c5 <INITIAL_DATA_SEGMENT_SIZE+0x80386c5>
 804865c:	74 00                	je     804865e <INITIAL_DATA_SEGMENT_SIZE+0x803865e>
 804865e:	5f                   	pop    %edi
 804865f:	65 64 61             	gs fs popa 
 8048662:	74 61                	je     80486c5 <INITIAL_DATA_SEGMENT_SIZE+0x80386c5>
 8048664:	00 5f 5f             	add    %bl,0x5f(%edi)
 8048667:	62 73 73             	bound  %esi,0x73(%ebx)
 804866a:	5f                   	pop    %edi
 804866b:	73 74                	jae    80486e1 <INITIAL_DATA_SEGMENT_SIZE+0x80386e1>
 804866d:	61                   	popa   
 804866e:	72 74                	jb     80486e4 <INITIAL_DATA_SEGMENT_SIZE+0x80386e4>
 8048670:	00 5f 65             	add    %bl,0x65(%edi)
 8048673:	6e                   	outsb  %ds:(%esi),(%dx)
 8048674:	64 00 47 4c          	add    %al,%fs:0x4c(%edi)
 8048678:	49                   	dec    %ecx
 8048679:	42                   	inc    %edx
 804867a:	43                   	inc    %ebx
 804867b:	5f                   	pop    %edi
 804867c:	32 2e                	xor    (%esi),%ch
 804867e:	34 00                	xor    $0x0,%al
 8048680:	47                   	inc    %edi
 8048681:	4c                   	dec    %esp
 8048682:	49                   	dec    %ecx
 8048683:	42                   	inc    %edx
 8048684:	43                   	inc    %ebx
 8048685:	5f                   	pop    %edi
 8048686:	32 2e                	xor    (%esi),%ch
 8048688:	31 2e                	xor    %ebp,(%esi)
 804868a:	33 00                	xor    (%eax),%eax
 804868c:	47                   	inc    %edi
 804868d:	4c                   	dec    %esp
 804868e:	49                   	dec    %ecx
 804868f:	42                   	inc    %edx
 8048690:	43                   	inc    %ebx
 8048691:	5f                   	pop    %edi
 8048692:	32 2e                	xor    (%esi),%ch
 8048694:	30 00                	xor    %al,(%eax)

Disassembly of section .gnu.version:

08048696 <.gnu.version>:
	...
 80486a2:	00 00                	add    %al,(%eax)
 80486a4:	02 00                	add    (%eax),%al
 80486a6:	03 00                	add    (%eax),%eax
 80486a8:	00 00                	add    %al,(%eax)
 80486aa:	00 00                	add    %al,(%eax)
 80486ac:	02 00                	add    (%eax),%al
 80486ae:	00 00                	add    %al,(%eax)
 80486b0:	00 00                	add    %al,(%eax)
 80486b2:	02 00                	add    (%eax),%al
 80486b4:	00 00                	add    %al,(%eax)
 80486b6:	02 00                	add    (%eax),%al
 80486b8:	04 00                	add    $0x0,%al
	...
 80486c6:	02 00                	add    (%eax),%al
 80486c8:	02 00                	add    (%eax),%al
 80486ca:	02 00                	add    (%eax),%al
	...
 80486d4:	01 00                	add    %eax,(%eax)
 80486d6:	01 00                	add    %eax,(%eax)
 80486d8:	01 00                	add    %eax,(%eax)
 80486da:	01 00                	add    %eax,(%eax)
 80486dc:	01 00                	add    %eax,(%eax)
 80486de:	01 00                	add    %eax,(%eax)
 80486e0:	02 00                	add    (%eax),%al
 80486e2:	01 00                	add    %eax,(%eax)

Disassembly of section .gnu.version_r:

080486e4 <.gnu.version_r>:
 80486e4:	01 00                	add    %eax,(%eax)
 80486e6:	03 00                	add    (%eax),%eax
 80486e8:	92                   	xchg   %eax,%edx
 80486e9:	01 00                	add    %eax,(%eax)
 80486eb:	00 10                	add    %dl,(%eax)
 80486ed:	00 00                	add    %al,(%eax)
 80486ef:	00 00                	add    %al,(%eax)
 80486f1:	00 00                	add    %al,(%eax)
 80486f3:	00 14 69             	add    %dl,(%ecx,%ebp,2)
 80486f6:	69 0d 00 00 04 00 12 	imul   $0x212,0x40000,%ecx
 80486fd:	02 00 00 
 8048700:	10 00                	adc    %al,(%eax)
 8048702:	00 00                	add    %al,(%eax)
 8048704:	73 1f                	jae    8048725 <INITIAL_DATA_SEGMENT_SIZE+0x8038725>
 8048706:	69 09 00 00 03 00    	imul   $0x30000,(%ecx),%ecx
 804870c:	1c 02                	sbb    $0x2,%al
 804870e:	00 00                	add    %al,(%eax)
 8048710:	10 00                	adc    %al,(%eax)
 8048712:	00 00                	add    %al,(%eax)
 8048714:	10 69 69             	adc    %ch,0x69(%ecx)
 8048717:	0d 00 00 02 00       	or     $0x20000,%eax
 804871c:	28 02                	sub    %al,(%edx)
 804871e:	00 00                	add    %al,(%eax)
 8048720:	00 00                	add    %al,(%eax)
	...

Disassembly of section .rel.dyn:

08048724 <.rel.dyn>:
 8048724:	fc                   	cld    
 8048725:	bf 04 08 06 1c       	mov    $0x1c060804,%edi
 804872a:	00 00                	add    %al,(%eax)
 804872c:	00 d0                	add    %dl,%al
 804872e:	04 08                	add    $0x8,%al
 8048730:	05                   	.byte 0x5
 8048731:	25                   	.byte 0x25
	...

Disassembly of section .rel.plt:

08048734 <.rel.plt>:
 8048734:	0c c0                	or     $0xc0,%al
 8048736:	04 08                	add    $0x8,%al
 8048738:	07                   	pop    %es
 8048739:	01 00                	add    %eax,(%eax)
 804873b:	00 10                	add    %dl,(%eax)
 804873d:	c0 04 08 07          	rolb   $0x7,(%eax,%ecx,1)
 8048741:	1e                   	push   %ds
 8048742:	00 00                	add    %al,(%eax)
 8048744:	14 c0                	adc    $0xc0,%al
 8048746:	04 08                	add    $0x8,%al
 8048748:	07                   	pop    %es
 8048749:	02 00                	add    (%eax),%al
 804874b:	00 18                	add    %bl,(%eax)
 804874d:	c0 04 08 07          	rolb   $0x7,(%eax,%ecx,1)
 8048751:	03 00                	add    (%eax),%eax
 8048753:	00 1c c0             	add    %bl,(%eax,%eax,8)
 8048756:	04 08                	add    $0x8,%al
 8048758:	07                   	pop    %es
 8048759:	04 00                	add    $0x0,%al
 804875b:	00 20                	add    %ah,(%eax)
 804875d:	c0 04 08 07          	rolb   $0x7,(%eax,%ecx,1)
 8048761:	05 00 00 24 c0       	add    $0xc0240000,%eax
 8048766:	04 08                	add    $0x8,%al
 8048768:	07                   	pop    %es
 8048769:	06                   	push   %es
 804876a:	00 00                	add    %al,(%eax)
 804876c:	28 c0                	sub    %al,%al
 804876e:	04 08                	add    $0x8,%al
 8048770:	07                   	pop    %es
 8048771:	07                   	pop    %es
 8048772:	00 00                	add    %al,(%eax)
 8048774:	2c c0                	sub    $0xc0,%al
 8048776:	04 08                	add    $0x8,%al
 8048778:	07                   	pop    %es
 8048779:	08 00                	or     %al,(%eax)
 804877b:	00 30                	add    %dh,(%eax)
 804877d:	c0 04 08 07          	rolb   $0x7,(%eax,%ecx,1)
 8048781:	09 00                	or     %eax,(%eax)
 8048783:	00 34 c0             	add    %dh,(%eax,%eax,8)
 8048786:	04 08                	add    $0x8,%al
 8048788:	07                   	pop    %es
 8048789:	0a 00                	or     (%eax),%al
 804878b:	00 38                	add    %bh,(%eax)
 804878d:	c0 04 08 07          	rolb   $0x7,(%eax,%ecx,1)
 8048791:	0b 00                	or     (%eax),%eax
 8048793:	00 3c c0             	add    %bh,(%eax,%eax,8)
 8048796:	04 08                	add    $0x8,%al
 8048798:	07                   	pop    %es
 8048799:	0c 00                	or     $0x0,%al
 804879b:	00 40 c0             	add    %al,-0x40(%eax)
 804879e:	04 08                	add    $0x8,%al
 80487a0:	07                   	pop    %es
 80487a1:	0d 00 00 44 c0       	or     $0xc0440000,%eax
 80487a6:	04 08                	add    $0x8,%al
 80487a8:	07                   	pop    %es
 80487a9:	0e                   	push   %cs
 80487aa:	00 00                	add    %al,(%eax)
 80487ac:	48                   	dec    %eax
 80487ad:	c0 04 08 07          	rolb   $0x7,(%eax,%ecx,1)
 80487b1:	0f 00 00             	sldt   (%eax)
 80487b4:	4c                   	dec    %esp
 80487b5:	c0 04 08 07          	rolb   $0x7,(%eax,%ecx,1)
 80487b9:	10 00                	adc    %al,(%eax)
 80487bb:	00 50 c0             	add    %dl,-0x40(%eax)
 80487be:	04 08                	add    $0x8,%al
 80487c0:	07                   	pop    %es
 80487c1:	11 00                	adc    %eax,(%eax)
 80487c3:	00 54 c0 04          	add    %dl,0x4(%eax,%eax,8)
 80487c7:	08 07                	or     %al,(%edi)
 80487c9:	13 00                	adc    (%eax),%eax
 80487cb:	00 58 c0             	add    %bl,-0x40(%eax)
 80487ce:	04 08                	add    $0x8,%al
 80487d0:	07                   	pop    %es
 80487d1:	14 00                	adc    $0x0,%al
 80487d3:	00 5c c0 04          	add    %bl,0x4(%eax,%eax,8)
 80487d7:	08 07                	or     %al,(%edi)
 80487d9:	15 00 00 60 c0       	adc    $0xc0600000,%eax
 80487de:	04 08                	add    $0x8,%al
 80487e0:	07                   	pop    %es
 80487e1:	16                   	push   %ss
 80487e2:	00 00                	add    %al,(%eax)
 80487e4:	64 c0 04 08 07       	rolb   $0x7,%fs:(%eax,%ecx,1)
 80487e9:	17                   	pop    %ss
 80487ea:	00 00                	add    %al,(%eax)
 80487ec:	68 c0 04 08 07       	push   $0x70804c0
 80487f1:	18 00                	sbb    %al,(%eax)
 80487f3:	00 6c c0 04          	add    %ch,0x4(%eax,%eax,8)
 80487f7:	08 07                	or     %al,(%edi)
 80487f9:	19 00                	sbb    %eax,(%eax)
 80487fb:	00 70 c0             	add    %dh,-0x40(%eax)
 80487fe:	04 08                	add    $0x8,%al
 8048800:	07                   	pop    %es
 8048801:	1a 00                	sbb    (%eax),%al
	...

Disassembly of section .init:

08048804 <_init>:
 8048804:	53                   	push   %ebx
 8048805:	83 ec 08             	sub    $0x8,%esp
 8048808:	e8 13 02 00 00       	call   8048a20 <__x86.get_pc_thunk.bx>
 804880d:	81 c3 f3 37 00 00    	add    $0x37f3,%ebx
 8048813:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048819:	85 c0                	test   %eax,%eax
 804881b:	74 05                	je     8048822 <_init+0x1e>
 804881d:	e8 be 01 00 00       	call   80489e0 <puts@plt+0x10>
 8048822:	83 c4 08             	add    $0x8,%esp
 8048825:	5b                   	pop    %ebx
 8048826:	c3                   	ret    

Disassembly of section .plt:

08048830 <SDL_CreateWindow@plt-0x10>:
 8048830:	ff 35 04 c0 04 08    	pushl  0x804c004
 8048836:	ff 25 08 c0 04 08    	jmp    *0x804c008
 804883c:	00 00                	add    %al,(%eax)
	...

08048840 <SDL_CreateWindow@plt>:
 8048840:	ff 25 0c c0 04 08    	jmp    *0x804c00c
 8048846:	68 00 00 00 00       	push   $0x0
 804884b:	e9 e0 ff ff ff       	jmp    8048830 <_init+0x2c>

08048850 <SDL_Quit@plt>:
 8048850:	ff 25 10 c0 04 08    	jmp    *0x804c010
 8048856:	68 08 00 00 00       	push   $0x8
 804885b:	e9 d0 ff ff ff       	jmp    8048830 <_init+0x2c>

08048860 <SDL_RenderPresent@plt>:
 8048860:	ff 25 14 c0 04 08    	jmp    *0x804c014
 8048866:	68 10 00 00 00       	push   $0x10
 804886b:	e9 c0 ff ff ff       	jmp    8048830 <_init+0x2c>

08048870 <SDL_CreateWindowAndRenderer@plt>:
 8048870:	ff 25 18 c0 04 08    	jmp    *0x804c018
 8048876:	68 18 00 00 00       	push   $0x18
 804887b:	e9 b0 ff ff ff       	jmp    8048830 <_init+0x2c>

08048880 <SDL_GetVersion@plt>:
 8048880:	ff 25 1c c0 04 08    	jmp    *0x804c01c
 8048886:	68 20 00 00 00       	push   $0x20
 804888b:	e9 a0 ff ff ff       	jmp    8048830 <_init+0x2c>

08048890 <SDL_RWFromFile@plt>:
 8048890:	ff 25 20 c0 04 08    	jmp    *0x804c020
 8048896:	68 28 00 00 00       	push   $0x28
 804889b:	e9 90 ff ff ff       	jmp    8048830 <_init+0x2c>

080488a0 <SDL_MapRGB@plt>:
 80488a0:	ff 25 24 c0 04 08    	jmp    *0x804c024
 80488a6:	68 30 00 00 00       	push   $0x30
 80488ab:	e9 80 ff ff ff       	jmp    8048830 <_init+0x2c>

080488b0 <fprintf@plt>:
 80488b0:	ff 25 28 c0 04 08    	jmp    *0x804c028
 80488b6:	68 38 00 00 00       	push   $0x38
 80488bb:	e9 70 ff ff ff       	jmp    8048830 <_init+0x2c>

080488c0 <__cxa_atexit@plt>:
 80488c0:	ff 25 2c c0 04 08    	jmp    *0x804c02c
 80488c6:	68 40 00 00 00       	push   $0x40
 80488cb:	e9 60 ff ff ff       	jmp    8048830 <_init+0x2c>

080488d0 <SDL_Delay@plt>:
 80488d0:	ff 25 30 c0 04 08    	jmp    *0x804c030
 80488d6:	68 48 00 00 00       	push   $0x48
 80488db:	e9 50 ff ff ff       	jmp    8048830 <_init+0x2c>

080488e0 <SDL_GetError@plt>:
 80488e0:	ff 25 34 c0 04 08    	jmp    *0x804c034
 80488e6:	68 50 00 00 00       	push   $0x50
 80488eb:	e9 40 ff ff ff       	jmp    8048830 <_init+0x2c>

080488f0 <time@plt>:
 80488f0:	ff 25 38 c0 04 08    	jmp    *0x804c038
 80488f6:	68 58 00 00 00       	push   $0x58
 80488fb:	e9 30 ff ff ff       	jmp    8048830 <_init+0x2c>

08048900 <SDL_Init@plt>:
 8048900:	ff 25 3c c0 04 08    	jmp    *0x804c03c
 8048906:	68 60 00 00 00       	push   $0x60
 804890b:	e9 20 ff ff ff       	jmp    8048830 <_init+0x2c>

08048910 <SDL_LoadBMP_RW@plt>:
 8048910:	ff 25 40 c0 04 08    	jmp    *0x804c040
 8048916:	68 68 00 00 00       	push   $0x68
 804891b:	e9 10 ff ff ff       	jmp    8048830 <_init+0x2c>

08048920 <srand@plt>:
 8048920:	ff 25 44 c0 04 08    	jmp    *0x804c044
 8048926:	68 70 00 00 00       	push   $0x70
 804892b:	e9 00 ff ff ff       	jmp    8048830 <_init+0x2c>

08048930 <SDL_RenderClear@plt>:
 8048930:	ff 25 48 c0 04 08    	jmp    *0x804c048
 8048936:	68 78 00 00 00       	push   $0x78
 804893b:	e9 f0 fe ff ff       	jmp    8048830 <_init+0x2c>

08048940 <__libc_start_main@plt>:
 8048940:	ff 25 4c c0 04 08    	jmp    *0x804c04c
 8048946:	68 80 00 00 00       	push   $0x80
 804894b:	e9 e0 fe ff ff       	jmp    8048830 <_init+0x2c>

08048950 <__stack_chk_fail@plt>:
 8048950:	ff 25 50 c0 04 08    	jmp    *0x804c050
 8048956:	68 88 00 00 00       	push   $0x88
 804895b:	e9 d0 fe ff ff       	jmp    8048830 <_init+0x2c>

08048960 <SDL_GetWindowSurface@plt>:
 8048960:	ff 25 54 c0 04 08    	jmp    *0x804c054
 8048966:	68 90 00 00 00       	push   $0x90
 804896b:	e9 c0 fe ff ff       	jmp    8048830 <_init+0x2c>

08048970 <SDL_LockSurface@plt>:
 8048970:	ff 25 58 c0 04 08    	jmp    *0x804c058
 8048976:	68 98 00 00 00       	push   $0x98
 804897b:	e9 b0 fe ff ff       	jmp    8048830 <_init+0x2c>

08048980 <SDL_CreateTextureFromSurface@plt>:
 8048980:	ff 25 5c c0 04 08    	jmp    *0x804c05c
 8048986:	68 a0 00 00 00       	push   $0xa0
 804898b:	e9 a0 fe ff ff       	jmp    8048830 <_init+0x2c>

08048990 <SDL_UnlockSurface@plt>:
 8048990:	ff 25 60 c0 04 08    	jmp    *0x804c060
 8048996:	68 a8 00 00 00       	push   $0xa8
 804899b:	e9 90 fe ff ff       	jmp    8048830 <_init+0x2c>

080489a0 <SDL_SetRenderDrawColor@plt>:
 80489a0:	ff 25 64 c0 04 08    	jmp    *0x804c064
 80489a6:	68 b0 00 00 00       	push   $0xb0
 80489ab:	e9 80 fe ff ff       	jmp    8048830 <_init+0x2c>

080489b0 <exit@plt>:
 80489b0:	ff 25 68 c0 04 08    	jmp    *0x804c068
 80489b6:	68 b8 00 00 00       	push   $0xb8
 80489bb:	e9 70 fe ff ff       	jmp    8048830 <_init+0x2c>

080489c0 <printf@plt>:
 80489c0:	ff 25 6c c0 04 08    	jmp    *0x804c06c
 80489c6:	68 c0 00 00 00       	push   $0xc0
 80489cb:	e9 60 fe ff ff       	jmp    8048830 <_init+0x2c>

080489d0 <puts@plt>:
 80489d0:	ff 25 70 c0 04 08    	jmp    *0x804c070
 80489d6:	68 c8 00 00 00       	push   $0xc8
 80489db:	e9 50 fe ff ff       	jmp    8048830 <_init+0x2c>

Disassembly of section .plt.got:

080489e0 <.plt.got>:
 80489e0:	ff 25 fc bf 04 08    	jmp    *0x804bffc
 80489e6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

080489f0 <_start>:
 80489f0:	31 ed                	xor    %ebp,%ebp
 80489f2:	5e                   	pop    %esi
 80489f3:	89 e1                	mov    %esp,%ecx
 80489f5:	83 e4 f0             	and    $0xfffffff0,%esp
 80489f8:	50                   	push   %eax
 80489f9:	54                   	push   %esp
 80489fa:	52                   	push   %edx
 80489fb:	68 70 95 04 08       	push   $0x8049570
 8048a00:	68 10 95 04 08       	push   $0x8049510
 8048a05:	51                   	push   %ecx
 8048a06:	56                   	push   %esi
 8048a07:	68 f5 94 04 08       	push   $0x80494f5
 8048a0c:	e8 2f ff ff ff       	call   8048940 <__libc_start_main@plt>
 8048a11:	f4                   	hlt    
 8048a12:	66 90                	xchg   %ax,%ax
 8048a14:	66 90                	xchg   %ax,%ax
 8048a16:	66 90                	xchg   %ax,%ax
 8048a18:	66 90                	xchg   %ax,%ax
 8048a1a:	66 90                	xchg   %ax,%ax
 8048a1c:	66 90                	xchg   %ax,%ax
 8048a1e:	66 90                	xchg   %ax,%ax

08048a20 <__x86.get_pc_thunk.bx>:
 8048a20:	8b 1c 24             	mov    (%esp),%ebx
 8048a23:	c3                   	ret    
 8048a24:	66 90                	xchg   %ax,%ax
 8048a26:	66 90                	xchg   %ax,%ax
 8048a28:	66 90                	xchg   %ax,%ax
 8048a2a:	66 90                	xchg   %ax,%ax
 8048a2c:	66 90                	xchg   %ax,%ax
 8048a2e:	66 90                	xchg   %ax,%ax

08048a30 <deregister_tm_clones>:
 8048a30:	b8 c3 c0 04 08       	mov    $0x804c0c3,%eax
 8048a35:	2d c0 c0 04 08       	sub    $0x804c0c0,%eax
 8048a3a:	83 f8 06             	cmp    $0x6,%eax
 8048a3d:	76 1a                	jbe    8048a59 <deregister_tm_clones+0x29>
 8048a3f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048a44:	85 c0                	test   %eax,%eax
 8048a46:	74 11                	je     8048a59 <deregister_tm_clones+0x29>
 8048a48:	55                   	push   %ebp
 8048a49:	89 e5                	mov    %esp,%ebp
 8048a4b:	83 ec 14             	sub    $0x14,%esp
 8048a4e:	68 c0 c0 04 08       	push   $0x804c0c0
 8048a53:	ff d0                	call   *%eax
 8048a55:	83 c4 10             	add    $0x10,%esp
 8048a58:	c9                   	leave  
 8048a59:	f3 c3                	repz ret 
 8048a5b:	90                   	nop
 8048a5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048a60 <register_tm_clones>:
 8048a60:	b8 c0 c0 04 08       	mov    $0x804c0c0,%eax
 8048a65:	2d c0 c0 04 08       	sub    $0x804c0c0,%eax
 8048a6a:	c1 f8 02             	sar    $0x2,%eax
 8048a6d:	89 c2                	mov    %eax,%edx
 8048a6f:	c1 ea 1f             	shr    $0x1f,%edx
 8048a72:	01 d0                	add    %edx,%eax
 8048a74:	d1 f8                	sar    %eax
 8048a76:	74 1b                	je     8048a93 <register_tm_clones+0x33>
 8048a78:	ba 00 00 00 00       	mov    $0x0,%edx
 8048a7d:	85 d2                	test   %edx,%edx
 8048a7f:	74 12                	je     8048a93 <register_tm_clones+0x33>
 8048a81:	55                   	push   %ebp
 8048a82:	89 e5                	mov    %esp,%ebp
 8048a84:	83 ec 10             	sub    $0x10,%esp
 8048a87:	50                   	push   %eax
 8048a88:	68 c0 c0 04 08       	push   $0x804c0c0
 8048a8d:	ff d2                	call   *%edx
 8048a8f:	83 c4 10             	add    $0x10,%esp
 8048a92:	c9                   	leave  
 8048a93:	f3 c3                	repz ret 
 8048a95:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048a99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048aa0 <__do_global_dtors_aux>:
 8048aa0:	80 3d 04 d0 04 08 00 	cmpb   $0x0,0x804d004
 8048aa7:	75 13                	jne    8048abc <__do_global_dtors_aux+0x1c>
 8048aa9:	55                   	push   %ebp
 8048aaa:	89 e5                	mov    %esp,%ebp
 8048aac:	83 ec 08             	sub    $0x8,%esp
 8048aaf:	e8 7c ff ff ff       	call   8048a30 <deregister_tm_clones>
 8048ab4:	c6 05 04 d0 04 08 01 	movb   $0x1,0x804d004
 8048abb:	c9                   	leave  
 8048abc:	f3 c3                	repz ret 
 8048abe:	66 90                	xchg   %ax,%ax

08048ac0 <frame_dummy>:
 8048ac0:	b8 08 bf 04 08       	mov    $0x804bf08,%eax
 8048ac5:	8b 10                	mov    (%eax),%edx
 8048ac7:	85 d2                	test   %edx,%edx
 8048ac9:	75 05                	jne    8048ad0 <frame_dummy+0x10>
 8048acb:	eb 93                	jmp    8048a60 <register_tm_clones>
 8048acd:	8d 76 00             	lea    0x0(%esi),%esi
 8048ad0:	ba 00 00 00 00       	mov    $0x0,%edx
 8048ad5:	85 d2                	test   %edx,%edx
 8048ad7:	74 f2                	je     8048acb <frame_dummy+0xb>
 8048ad9:	55                   	push   %ebp
 8048ada:	89 e5                	mov    %esp,%ebp
 8048adc:	83 ec 14             	sub    $0x14,%esp
 8048adf:	50                   	push   %eax
 8048ae0:	ff d2                	call   *%edx
 8048ae2:	83 c4 10             	add    $0x10,%esp
 8048ae5:	c9                   	leave  
 8048ae6:	e9 75 ff ff ff       	jmp    8048a60 <register_tm_clones>

08048aeb <load_sprite>:
 8048aeb:	55                   	push   %ebp
 8048aec:	89 e5                	mov    %esp,%ebp
 8048aee:	83 ec 08             	sub    $0x8,%esp
 8048af1:	83 ec 08             	sub    $0x8,%esp
 8048af4:	68 d0 95 04 08       	push   $0x80495d0
 8048af9:	ff 75 08             	pushl  0x8(%ebp)
 8048afc:	e8 8f fd ff ff       	call   8048890 <SDL_RWFromFile@plt>
 8048b01:	83 c4 10             	add    $0x10,%esp
 8048b04:	83 ec 08             	sub    $0x8,%esp
 8048b07:	6a 01                	push   $0x1
 8048b09:	50                   	push   %eax
 8048b0a:	e8 01 fe ff ff       	call   8048910 <SDL_LoadBMP_RW@plt>
 8048b0f:	83 c4 10             	add    $0x10,%esp
 8048b12:	89 c2                	mov    %eax,%edx
 8048b14:	a1 08 d0 04 08       	mov    0x804d008,%eax
 8048b19:	83 ec 08             	sub    $0x8,%esp
 8048b1c:	52                   	push   %edx
 8048b1d:	50                   	push   %eax
 8048b1e:	e8 5d fe ff ff       	call   8048980 <SDL_CreateTextureFromSurface@plt>
 8048b23:	83 c4 10             	add    $0x10,%esp
 8048b26:	c9                   	leave  
 8048b27:	c3                   	ret    

08048b28 <init>:
 8048b28:	55                   	push   %ebp
 8048b29:	89 e5                	mov    %esp,%ebp
 8048b2b:	83 ec 18             	sub    $0x18,%esp
 8048b2e:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048b34:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048b37:	31 c0                	xor    %eax,%eax
 8048b39:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8048b40:	83 ec 0c             	sub    $0xc,%esp
 8048b43:	6a 20                	push   $0x20
 8048b45:	e8 b6 fd ff ff       	call   8048900 <SDL_Init@plt>
 8048b4a:	83 c4 10             	add    $0x10,%esp
 8048b4d:	85 c0                	test   %eax,%eax
 8048b4f:	74 1e                	je     8048b6f <init+0x47>
 8048b51:	e8 8a fd ff ff       	call   80488e0 <SDL_GetError@plt>
 8048b56:	89 c2                	mov    %eax,%edx
 8048b58:	a1 00 d0 04 08       	mov    0x804d000,%eax
 8048b5d:	83 ec 04             	sub    $0x4,%esp
 8048b60:	52                   	push   %edx
 8048b61:	68 d3 95 04 08       	push   $0x80495d3
 8048b66:	50                   	push   %eax
 8048b67:	e8 44 fd ff ff       	call   80488b0 <fprintf@plt>
 8048b6c:	83 c4 10             	add    $0x10,%esp
 8048b6f:	83 ec 0c             	sub    $0xc,%esp
 8048b72:	68 50 88 04 08       	push   $0x8048850
 8048b77:	e8 04 0a 00 00       	call   8049580 <atexit>
 8048b7c:	83 c4 10             	add    $0x10,%esp
 8048b7f:	83 ec 0c             	sub    $0xc,%esp
 8048b82:	68 08 d0 04 08       	push   $0x804d008
 8048b87:	8d 45 f0             	lea    -0x10(%ebp),%eax
 8048b8a:	50                   	push   %eax
 8048b8b:	6a 00                	push   $0x0
 8048b8d:	68 e0 01 00 00       	push   $0x1e0
 8048b92:	68 20 03 00 00       	push   $0x320
 8048b97:	e8 d4 fc ff ff       	call   8048870 <SDL_CreateWindowAndRenderer@plt>
 8048b9c:	83 c4 20             	add    $0x20,%esp
 8048b9f:	a1 08 d0 04 08       	mov    0x804d008,%eax
 8048ba4:	83 ec 0c             	sub    $0xc,%esp
 8048ba7:	68 ff 00 00 00       	push   $0xff
 8048bac:	68 ff 00 00 00       	push   $0xff
 8048bb1:	68 ff 00 00 00       	push   $0xff
 8048bb6:	68 ff 00 00 00       	push   $0xff
 8048bbb:	50                   	push   %eax
 8048bbc:	e8 df fd ff ff       	call   80489a0 <SDL_SetRenderDrawColor@plt>
 8048bc1:	83 c4 20             	add    $0x20,%esp
 8048bc4:	a1 08 d0 04 08       	mov    0x804d008,%eax
 8048bc9:	83 ec 0c             	sub    $0xc,%esp
 8048bcc:	50                   	push   %eax
 8048bcd:	e8 5e fd ff ff       	call   8048930 <SDL_RenderClear@plt>
 8048bd2:	83 c4 10             	add    $0x10,%esp
 8048bd5:	a1 08 d0 04 08       	mov    0x804d008,%eax
 8048bda:	83 ec 0c             	sub    $0xc,%esp
 8048bdd:	50                   	push   %eax
 8048bde:	e8 7d fc ff ff       	call   8048860 <SDL_RenderPresent@plt>
 8048be3:	83 c4 10             	add    $0x10,%esp
 8048be6:	83 ec 0c             	sub    $0xc,%esp
 8048be9:	6a 00                	push   $0x0
 8048beb:	e8 00 fd ff ff       	call   80488f0 <time@plt>
 8048bf0:	83 c4 10             	add    $0x10,%esp
 8048bf3:	83 ec 0c             	sub    $0xc,%esp
 8048bf6:	50                   	push   %eax
 8048bf7:	e8 24 fd ff ff       	call   8048920 <srand@plt>
 8048bfc:	83 c4 10             	add    $0x10,%esp
 8048bff:	90                   	nop
 8048c00:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048c03:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048c0a:	74 05                	je     8048c11 <init+0xe9>
 8048c0c:	e8 3f fd ff ff       	call   8048950 <__stack_chk_fail@plt>
 8048c11:	c9                   	leave  
 8048c12:	c3                   	ret    

08048c13 <gameover>:
 8048c13:	55                   	push   %ebp
 8048c14:	89 e5                	mov    %esp,%ebp
 8048c16:	83 ec 08             	sub    $0x8,%esp
 8048c19:	0f b6 05 c2 21 06 08 	movzbl 0x80621c2,%eax
 8048c20:	0f b6 c0             	movzbl %al,%eax
 8048c23:	83 ec 08             	sub    $0x8,%esp
 8048c26:	50                   	push   %eax
 8048c27:	68 e1 95 04 08       	push   $0x80495e1
 8048c2c:	e8 8f fd ff ff       	call   80489c0 <printf@plt>
 8048c31:	83 c4 10             	add    $0x10,%esp
 8048c34:	0f b6 05 20 20 06 08 	movzbl 0x8062020,%eax
 8048c3b:	0f be d0             	movsbl %al,%edx
 8048c3e:	0f b6 05 e0 23 06 08 	movzbl 0x80623e0,%eax
 8048c45:	0f be c0             	movsbl %al,%eax
 8048c48:	83 ec 04             	sub    $0x4,%esp
 8048c4b:	52                   	push   %edx
 8048c4c:	50                   	push   %eax
 8048c4d:	68 f3 95 04 08       	push   $0x80495f3
 8048c52:	e8 69 fd ff ff       	call   80489c0 <printf@plt>
 8048c57:	83 c4 10             	add    $0x10,%esp
 8048c5a:	83 ec 0c             	sub    $0xc,%esp
 8048c5d:	68 05 96 04 08       	push   $0x8049605
 8048c62:	e8 69 fd ff ff       	call   80489d0 <puts@plt>
 8048c67:	83 c4 10             	add    $0x10,%esp
 8048c6a:	83 ec 0c             	sub    $0xc,%esp
 8048c6d:	6a 00                	push   $0x0
 8048c6f:	e8 3c fd ff ff       	call   80489b0 <exit@plt>

08048c74 <code_STATE>:
 8048c74:	68 7c c0 04 08       	push   $0x804c07c
 8048c79:	ad                   	lods   %ds:(%esi),%eax
 8048c7a:	ff 20                	jmp    *(%eax)

08048c7c <code_HERE>:
 8048c7c:	68 80 c0 04 08       	push   $0x804c080
 8048c81:	ad                   	lods   %ds:(%esi),%eax
 8048c82:	ff 20                	jmp    *(%eax)

08048c84 <code_LATEST>:
 8048c84:	68 84 c0 04 08       	push   $0x804c084
 8048c89:	ad                   	lods   %ds:(%esi),%eax
 8048c8a:	ff 20                	jmp    *(%eax)

08048c8c <code_SZ>:
 8048c8c:	68 88 c0 04 08       	push   $0x804c088
 8048c91:	ad                   	lods   %ds:(%esi),%eax
 8048c92:	ff 20                	jmp    *(%eax)

08048c94 <code_BASE>:
 8048c94:	68 8c c0 04 08       	push   $0x804c08c
 8048c99:	ad                   	lods   %ds:(%esi),%eax
 8048c9a:	ff 20                	jmp    *(%eax)

08048c9c <code_VERSION>:
 8048c9c:	6a 2f                	push   $0x2f
 8048c9e:	ad                   	lods   %ds:(%esi),%eax
 8048c9f:	ff 20                	jmp    *(%eax)

08048ca1 <code_RZ>:
 8048ca1:	68 00 10 05 08       	push   $0x8051000
 8048ca6:	ad                   	lods   %ds:(%esi),%eax
 8048ca7:	ff 20                	jmp    *(%eax)

08048ca9 <code___DOCOL>:
 8048ca9:	68 d0 8f 04 08       	push   $0x8048fd0
 8048cae:	ad                   	lods   %ds:(%esi),%eax
 8048caf:	ff 20                	jmp    *(%eax)

08048cb1 <code___F_IMMED>:
 8048cb1:	68 80 00 00 00       	push   $0x80
 8048cb6:	ad                   	lods   %ds:(%esi),%eax
 8048cb7:	ff 20                	jmp    *(%eax)

08048cb9 <code___F_HIDDEN>:
 8048cb9:	6a 20                	push   $0x20
 8048cbb:	ad                   	lods   %ds:(%esi),%eax
 8048cbc:	ff 20                	jmp    *(%eax)

08048cbe <code___F_LENMASK>:
 8048cbe:	6a 1f                	push   $0x1f
 8048cc0:	ad                   	lods   %ds:(%esi),%eax
 8048cc1:	ff 20                	jmp    *(%eax)

08048cc3 <code_SYS_EXIT>:
 8048cc3:	6a 01                	push   $0x1
 8048cc5:	ad                   	lods   %ds:(%esi),%eax
 8048cc6:	ff 20                	jmp    *(%eax)

08048cc8 <code_SYS_OPEN>:
 8048cc8:	6a 05                	push   $0x5
 8048cca:	ad                   	lods   %ds:(%esi),%eax
 8048ccb:	ff 20                	jmp    *(%eax)

08048ccd <code_SYS_CLOSE>:
 8048ccd:	6a 06                	push   $0x6
 8048ccf:	ad                   	lods   %ds:(%esi),%eax
 8048cd0:	ff 20                	jmp    *(%eax)

08048cd2 <code_SYS_READ>:
 8048cd2:	6a 03                	push   $0x3
 8048cd4:	ad                   	lods   %ds:(%esi),%eax
 8048cd5:	ff 20                	jmp    *(%eax)

08048cd7 <code_SYS_WRITE>:
 8048cd7:	6a 04                	push   $0x4
 8048cd9:	ad                   	lods   %ds:(%esi),%eax
 8048cda:	ff 20                	jmp    *(%eax)

08048cdc <code_SYS_CREAT>:
 8048cdc:	6a 08                	push   $0x8
 8048cde:	ad                   	lods   %ds:(%esi),%eax
 8048cdf:	ff 20                	jmp    *(%eax)

08048ce1 <code___O_RDONLY>:
 8048ce1:	6a 00                	push   $0x0
 8048ce3:	ad                   	lods   %ds:(%esi),%eax
 8048ce4:	ff 20                	jmp    *(%eax)

08048ce6 <code___O_WRONLY>:
 8048ce6:	6a 01                	push   $0x1
 8048ce8:	ad                   	lods   %ds:(%esi),%eax
 8048ce9:	ff 20                	jmp    *(%eax)

08048ceb <code___O_RDWR>:
 8048ceb:	6a 02                	push   $0x2
 8048ced:	ad                   	lods   %ds:(%esi),%eax
 8048cee:	ff 20                	jmp    *(%eax)

08048cf0 <code___O_CREAT>:
 8048cf0:	6a 40                	push   $0x40
 8048cf2:	ad                   	lods   %ds:(%esi),%eax
 8048cf3:	ff 20                	jmp    *(%eax)

08048cf5 <code___O_EXCL>:
 8048cf5:	68 80 00 00 00       	push   $0x80
 8048cfa:	ad                   	lods   %ds:(%esi),%eax
 8048cfb:	ff 20                	jmp    *(%eax)

08048cfd <code___O_TRUNC>:
 8048cfd:	68 00 02 00 00       	push   $0x200
 8048d02:	ad                   	lods   %ds:(%esi),%eax
 8048d03:	ff 20                	jmp    *(%eax)

08048d05 <code___O_APPEND>:
 8048d05:	68 00 04 00 00       	push   $0x400
 8048d0a:	ad                   	lods   %ds:(%esi),%eax
 8048d0b:	ff 20                	jmp    *(%eax)

08048d0d <code___O_NONBLOCK>:
 8048d0d:	68 00 08 00 00       	push   $0x800
 8048d12:	ad                   	lods   %ds:(%esi),%eax
 8048d13:	ff 20                	jmp    *(%eax)

08048d15 <code_SDLINIT>:
 8048d15:	68 00 e0 04 08       	push   $0x804e000
 8048d1a:	e8 61 fb ff ff       	call   8048880 <SDL_GetVersion@plt>
 8048d1f:	83 c4 04             	add    $0x4,%esp
 8048d22:	31 c0                	xor    %eax,%eax
 8048d24:	a0 02 e0 04 08       	mov    0x804e002,%al
 8048d29:	50                   	push   %eax
 8048d2a:	a0 01 e0 04 08       	mov    0x804e001,%al
 8048d2f:	50                   	push   %eax
 8048d30:	a0 00 e0 04 08       	mov    0x804e000,%al
 8048d35:	50                   	push   %eax
 8048d36:	68 c8 97 04 08       	push   $0x80497c8
 8048d3b:	e8 80 fc ff ff       	call   80489c0 <printf@plt>
 8048d40:	83 c4 10             	add    $0x10,%esp
 8048d43:	6a 20                	push   $0x20
 8048d45:	e8 b6 fb ff ff       	call   8048900 <SDL_Init@plt>
 8048d4a:	83 c4 04             	add    $0x4,%esp
 8048d4d:	c1 e8 1f             	shr    $0x1f,%eax
 8048d50:	84 c0                	test   %al,%al
 8048d52:	74 1a                	je     8048d6e <_sdlinit_success>

08048d54 <_sdlinit_err>:
 8048d54:	e8 87 fb ff ff       	call   80488e0 <SDL_GetError@plt>
 8048d59:	50                   	push   %eax
 8048d5a:	68 ef 97 04 08       	push   $0x80497ef
 8048d5f:	e8 5c fc ff ff       	call   80489c0 <printf@plt>
 8048d64:	83 c4 08             	add    $0x8,%esp
 8048d67:	b8 00 00 00 00       	mov    $0x0,%eax
 8048d6c:	eb 12                	jmp    8048d80 <_sdlinit_ret>

08048d6e <_sdlinit_success>:
 8048d6e:	68 1b 98 04 08       	push   $0x804981b
 8048d73:	e8 58 fc ff ff       	call   80489d0 <puts@plt>
 8048d78:	83 c4 04             	add    $0x4,%esp
 8048d7b:	b8 01 00 00 00       	mov    $0x1,%eax

08048d80 <_sdlinit_ret>:
 8048d80:	ad                   	lods   %ds:(%esi),%eax
 8048d81:	ff 20                	jmp    *(%eax)

08048d83 <code_SDLQUIT>:
 8048d83:	e8 c8 fa ff ff       	call   8048850 <SDL_Quit@plt>
 8048d88:	68 40 98 04 08       	push   $0x8049840
 8048d8d:	e8 3e fc ff ff       	call   80489d0 <puts@plt>
 8048d92:	83 c4 04             	add    $0x4,%esp
 8048d95:	ad                   	lods   %ds:(%esi),%eax
 8048d96:	ff 20                	jmp    *(%eax)

08048d98 <code_SDLWND>:
 8048d98:	6a 04                	push   $0x4
 8048d9a:	68 e0 01 00 00       	push   $0x1e0
 8048d9f:	68 80 02 00 00       	push   $0x280
 8048da4:	68 00 00 ff 1f       	push   $0x1fff0000
 8048da9:	68 00 00 ff 1f       	push   $0x1fff0000
 8048dae:	68 60 98 04 08       	push   $0x8049860
 8048db3:	e8 88 fa ff ff       	call   8048840 <SDL_CreateWindow@plt>
 8048db8:	83 c4 18             	add    $0x18,%esp
 8048dbb:	a3 03 e0 04 08       	mov    %eax,0x804e003
 8048dc0:	85 c0                	test   %eax,%eax
 8048dc2:	75 16                	jne    8048dda <_sdlwnd_ready_window>

08048dc4 <_sdlwnd_failed_window>:
 8048dc4:	e8 17 fb ff ff       	call   80488e0 <SDL_GetError@plt>
 8048dc9:	50                   	push   %eax
 8048dca:	ff 35 6d 98 04 08    	pushl  0x804986d
 8048dd0:	e8 eb fb ff ff       	call   80489c0 <printf@plt>
 8048dd5:	83 c4 08             	add    $0x8,%esp
 8048dd8:	eb 05                	jmp    8048ddf <_sdlwnd_ret>

08048dda <_sdlwnd_ready_window>:
 8048dda:	b8 01 00 00 00       	mov    $0x1,%eax

08048ddf <_sdlwnd_ret>:
 8048ddf:	ad                   	lods   %ds:(%esi),%eax
 8048de0:	ff 20                	jmp    *(%eax)

08048de2 <code_SURFACE>:
 8048de2:	a1 03 e0 04 08       	mov    0x804e003,%eax
 8048de7:	50                   	push   %eax
 8048de8:	e8 73 fb ff ff       	call   8048960 <SDL_GetWindowSurface@plt>
 8048ded:	a3 07 e0 04 08       	mov    %eax,0x804e007
 8048df2:	85 c0                	test   %eax,%eax
 8048df4:	75 15                	jne    8048e0b <_surface_success>

08048df6 <_surface_err>:
 8048df6:	e8 e5 fa ff ff       	call   80488e0 <SDL_GetError@plt>
 8048dfb:	50                   	push   %eax
 8048dfc:	68 a8 98 04 08       	push   $0x80498a8
 8048e01:	e8 ba fb ff ff       	call   80489c0 <printf@plt>
 8048e06:	83 c4 0c             	add    $0xc,%esp
 8048e09:	eb 05                	jmp    8048e10 <_surface_ret>

08048e0b <_surface_success>:
 8048e0b:	b8 01 00 00 00       	mov    $0x1,%eax

08048e10 <_surface_ret>:
 8048e10:	ad                   	lods   %ds:(%esi),%eax
 8048e11:	ff 20                	jmp    *(%eax)

08048e13 <code_DELAY>:
 8048e13:	ff 35 03 e0 04 08    	pushl  0x804e003
 8048e19:	68 88 13 00 00       	push   $0x1388
 8048e1e:	e8 ad fa ff ff       	call   80488d0 <SDL_Delay@plt>
 8048e23:	ad                   	lods   %ds:(%esi),%eax
 8048e24:	ff 20                	jmp    *(%eax)

08048e26 <code_GETPIX>:
 8048e26:	55                   	push   %ebp
 8048e27:	89 e5                	mov    %esp,%ebp
 8048e29:	83 ec 10             	sub    $0x10,%esp
 8048e2c:	a1 07 e0 04 08       	mov    0x804e007,%eax
 8048e31:	50                   	push   %eax
 8048e32:	e8 39 fb ff ff       	call   8048970 <SDL_LockSurface@plt>
 8048e37:	83 c4 04             	add    $0x4,%esp
 8048e3a:	a1 07 e0 04 08       	mov    0x804e007,%eax
 8048e3f:	8b 40 04             	mov    0x4(%eax),%eax
 8048e42:	0f b6 40 09          	movzbl 0x9(%eax),%eax
 8048e46:	0f b6 c0             	movzbl %al,%eax
 8048e49:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048e4c:	a1 07 e0 04 08       	mov    0x804e007,%eax
 8048e51:	8b 50 14             	mov    0x14(%eax),%edx
 8048e54:	a1 07 e0 04 08       	mov    0x804e007,%eax
 8048e59:	8b 40 10             	mov    0x10(%eax),%eax
 8048e5c:	0f af 45 10          	imul   0x10(%ebp),%eax
 8048e60:	89 c1                	mov    %eax,%ecx
 8048e62:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048e65:	0f af 45 f0          	imul   -0x10(%ebp),%eax
 8048e69:	01 c8                	add    %ecx,%eax
 8048e6b:	01 d0                	add    %edx,%eax
 8048e6d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048e70:	8b 45 f0             	mov    -0x10(%ebp),%eax

08048e73 <unlock>:
 8048e73:	a1 07 e0 04 08       	mov    0x804e007,%eax
 8048e78:	50                   	push   %eax
 8048e79:	e8 12 fb ff ff       	call   8048990 <SDL_UnlockSurface@plt>
 8048e7e:	83 ec 04             	sub    $0x4,%esp

08048e81 <ret>:
 8048e81:	c9                   	leave  
 8048e82:	ad                   	lods   %ds:(%esi),%eax
 8048e83:	ff 20                	jmp    *(%eax)

08048e85 <code_DRAWPIX>:
 8048e85:	55                   	push   %ebp
 8048e86:	89 e5                	mov    %esp,%ebp
 8048e88:	53                   	push   %ebx
 8048e89:	83 ec 34             	sub    $0x34,%esp
 8048e8c:	8b 4d 14             	mov    0x14(%ebp),%ecx
 8048e8f:	8b 55 18             	mov    0x18(%ebp),%edx
 8048e92:	8b 45 1c             	mov    0x1c(%ebp),%eax
 8048e95:	88 4d d4             	mov    %cl,-0x2c(%ebp)
 8048e98:	88 55 d0             	mov    %dl,-0x30(%ebp)
 8048e9b:	88 45 cc             	mov    %al,-0x34(%ebp)
 8048e9e:	0f b6 5d cc          	movzbl -0x34(%ebp),%ebx
 8048ea2:	0f b6 4d d0          	movzbl -0x30(%ebp),%ecx
 8048ea6:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
 8048eaa:	8b 45 08             	mov    0x8(%ebp),%eax
 8048ead:	8b 40 04             	mov    0x4(%eax),%eax
 8048eb0:	53                   	push   %ebx
 8048eb1:	51                   	push   %ecx
 8048eb2:	52                   	push   %edx
 8048eb3:	50                   	push   %eax
 8048eb4:	e8 e7 f9 ff ff       	call   80488a0 <SDL_MapRGB@plt>
 8048eb9:	83 c4 10             	add    $0x10,%esp
 8048ebc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8048ebf:	8b 45 08             	mov    0x8(%ebp),%eax
 8048ec2:	8b 40 04             	mov    0x4(%eax),%eax
 8048ec5:	0f b6 40 09          	movzbl 0x9(%eax),%eax
 8048ec9:	0f b6 c0             	movzbl %al,%eax
 8048ecc:	83 f8 02             	cmp    $0x2,%eax
 8048ecf:	74 45                	je     8048f16 <case_2>
 8048ed1:	7f 0a                	jg     8048edd <third_or_fotrh>
 8048ed3:	83 f8 01             	cmp    $0x1,%eax
 8048ed6:	74 15                	je     8048eed <case_1>
 8048ed8:	e9 e9 00 00 00       	jmp    8048fc6 <ret_fr_cases>

08048edd <third_or_fotrh>:
 8048edd:	83 f8 03             	cmp    $0x3,%eax
 8048ee0:	74 68                	je     8048f4a <case_3>
 8048ee2:	0f 8f ac 00 00 00    	jg     8048f94 <case_4>
 8048ee8:	e9 d9 00 00 00       	jmp    8048fc6 <ret_fr_cases>

08048eed <case_1>:
 8048eed:	8b 45 08             	mov    0x8(%ebp),%eax
 8048ef0:	8b 50 14             	mov    0x14(%eax),%edx
 8048ef3:	8b 45 08             	mov    0x8(%ebp),%eax
 8048ef6:	8b 40 10             	mov    0x10(%eax),%eax
 8048ef9:	0f af 45 10          	imul   0x10(%ebp),%eax
 8048efd:	89 c1                	mov    %eax,%ecx
 8048eff:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048f02:	01 c8                	add    %ecx,%eax
 8048f04:	01 d0                	add    %edx,%eax
 8048f06:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8048f09:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 8048f0c:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8048f0f:	88 10                	mov    %dl,(%eax)
 8048f11:	e9 b0 00 00 00       	jmp    8048fc6 <ret_fr_cases>

08048f16 <case_2>:
 8048f16:	8b 45 08             	mov    0x8(%ebp),%eax
 8048f19:	8b 50 14             	mov    0x14(%eax),%edx
 8048f1c:	8b 45 08             	mov    0x8(%ebp),%eax
 8048f1f:	8b 40 10             	mov    0x10(%eax),%eax
 8048f22:	0f af 45 10          	imul   0x10(%ebp),%eax
 8048f26:	89 c1                	mov    %eax,%ecx
 8048f28:	c1 e9 1f             	shr    $0x1f,%ecx
 8048f2b:	01 c8                	add    %ecx,%eax
 8048f2d:	d1 f8                	sar    %eax
 8048f2f:	89 c1                	mov    %eax,%ecx
 8048f31:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048f34:	01 c8                	add    %ecx,%eax
 8048f36:	01 c0                	add    %eax,%eax
 8048f38:	01 d0                	add    %edx,%eax
 8048f3a:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8048f3d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048f40:	89 c2                	mov    %eax,%edx
 8048f42:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048f45:	66 89 10             	mov    %dx,(%eax)
 8048f48:	eb 7c                	jmp    8048fc6 <ret_fr_cases>

08048f4a <case_3>:
 8048f4a:	8b 45 08             	mov    0x8(%ebp),%eax
 8048f4d:	8b 48 14             	mov    0x14(%eax),%ecx
 8048f50:	8b 45 08             	mov    0x8(%ebp),%eax
 8048f53:	8b 40 10             	mov    0x10(%eax),%eax
 8048f56:	0f af 45 10          	imul   0x10(%ebp),%eax
 8048f5a:	89 c3                	mov    %eax,%ebx
 8048f5c:	8b 55 0c             	mov    0xc(%ebp),%edx
 8048f5f:	89 d0                	mov    %edx,%eax
 8048f61:	01 c0                	add    %eax,%eax
 8048f63:	01 d0                	add    %edx,%eax
 8048f65:	01 d8                	add    %ebx,%eax
 8048f67:	01 c8                	add    %ecx,%eax
 8048f69:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048f6c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048f6f:	89 c2                	mov    %eax,%edx
 8048f71:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048f74:	88 10                	mov    %dl,(%eax)
 8048f76:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048f79:	83 c0 01             	add    $0x1,%eax
 8048f7c:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 8048f7f:	c1 ea 08             	shr    $0x8,%edx
 8048f82:	88 10                	mov    %dl,(%eax)
 8048f84:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048f87:	83 c0 02             	add    $0x2,%eax
 8048f8a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 8048f8d:	c1 ea 10             	shr    $0x10,%edx
 8048f90:	88 10                	mov    %dl,(%eax)
 8048f92:	eb 32                	jmp    8048fc6 <ret_fr_cases>

08048f94 <case_4>:
 8048f94:	8b 45 08             	mov    0x8(%ebp),%eax
 8048f97:	8b 50 14             	mov    0x14(%eax),%edx
 8048f9a:	8b 45 08             	mov    0x8(%ebp),%eax
 8048f9d:	8b 40 10             	mov    0x10(%eax),%eax
 8048fa0:	0f af 45 10          	imul   0x10(%ebp),%eax
 8048fa4:	8d 48 03             	lea    0x3(%eax),%ecx
 8048fa7:	85 c0                	test   %eax,%eax
 8048fa9:	0f 48 c1             	cmovs  %ecx,%eax
 8048fac:	c1 f8 02             	sar    $0x2,%eax
 8048faf:	89 c1                	mov    %eax,%ecx
 8048fb1:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048fb4:	01 c8                	add    %ecx,%eax
 8048fb6:	c1 e0 02             	shl    $0x2,%eax
 8048fb9:	01 d0                	add    %edx,%eax
 8048fbb:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048fbe:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048fc1:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 8048fc4:	89 10                	mov    %edx,(%eax)

08048fc6 <ret_fr_cases>:
 8048fc6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048fc9:	c9                   	leave  
 8048fca:	ad                   	lods   %ds:(%esi),%eax
 8048fcb:	ff 20                	jmp    *(%eax)
 8048fcd:	8d 76 00             	lea    0x0(%esi),%esi

08048fd0 <DOCOL>:
 8048fd0:	8d 6d fc             	lea    -0x4(%ebp),%ebp
 8048fd3:	89 75 00             	mov    %esi,0x0(%ebp)
 8048fd6:	8d 70 04             	lea    0x4(%eax),%esi
 8048fd9:	ad                   	lods   %ds:(%esi),%eax
 8048fda:	ff 20                	jmp    *(%eax)

08048fdc <code_HELLO>:
 8048fdc:	68 24 99 04 08       	push   $0x8049924
 8048fe1:	e8 ea f9 ff ff       	call   80489d0 <puts@plt>
 8048fe6:	58                   	pop    %eax
 8048fe7:	ad                   	lods   %ds:(%esi),%eax
 8048fe8:	ff 20                	jmp    *(%eax)

08048fea <code_TOR>:
 8048fea:	58                   	pop    %eax
 8048feb:	8d 6d fc             	lea    -0x4(%ebp),%ebp
 8048fee:	89 45 00             	mov    %eax,0x0(%ebp)
 8048ff1:	ad                   	lods   %ds:(%esi),%eax
 8048ff2:	ff 20                	jmp    *(%eax)

08048ff4 <code_FROMR>:
 8048ff4:	8b 45 00             	mov    0x0(%ebp),%eax
 8048ff7:	8d 6d 04             	lea    0x4(%ebp),%ebp
 8048ffa:	50                   	push   %eax
 8048ffb:	ad                   	lods   %ds:(%esi),%eax
 8048ffc:	ff 20                	jmp    *(%eax)

08048ffe <code_RSPFETCH>:
 8048ffe:	55                   	push   %ebp
 8048fff:	ad                   	lods   %ds:(%esi),%eax
 8049000:	ff 20                	jmp    *(%eax)

08049002 <code_RSPSTORE>:
 8049002:	5d                   	pop    %ebp
 8049003:	ad                   	lods   %ds:(%esi),%eax
 8049004:	ff 20                	jmp    *(%eax)

08049006 <code_RDROP>:
 8049006:	83 c5 04             	add    $0x4,%ebp
 8049009:	ad                   	lods   %ds:(%esi),%eax
 804900a:	ff 20                	jmp    *(%eax)

0804900c <code_DROP>:
 804900c:	58                   	pop    %eax
 804900d:	ad                   	lods   %ds:(%esi),%eax
 804900e:	ff 20                	jmp    *(%eax)

08049010 <code_SWAP>:
 8049010:	58                   	pop    %eax
 8049011:	5b                   	pop    %ebx
 8049012:	50                   	push   %eax
 8049013:	53                   	push   %ebx
 8049014:	ad                   	lods   %ds:(%esi),%eax
 8049015:	ff 20                	jmp    *(%eax)

08049017 <code_DUP>:
 8049017:	8b 04 24             	mov    (%esp),%eax
 804901a:	50                   	push   %eax
 804901b:	ad                   	lods   %ds:(%esi),%eax
 804901c:	ff 20                	jmp    *(%eax)

0804901e <code_OVER>:
 804901e:	8b 44 24 04          	mov    0x4(%esp),%eax
 8049022:	50                   	push   %eax
 8049023:	ad                   	lods   %ds:(%esi),%eax
 8049024:	ff 20                	jmp    *(%eax)

08049026 <code_ROT>:
 8049026:	58                   	pop    %eax
 8049027:	5b                   	pop    %ebx
 8049028:	59                   	pop    %ecx
 8049029:	53                   	push   %ebx
 804902a:	50                   	push   %eax
 804902b:	51                   	push   %ecx
 804902c:	ad                   	lods   %ds:(%esi),%eax
 804902d:	ff 20                	jmp    *(%eax)

0804902f <code_NROT>:
 804902f:	58                   	pop    %eax
 8049030:	5b                   	pop    %ebx
 8049031:	59                   	pop    %ecx
 8049032:	50                   	push   %eax
 8049033:	51                   	push   %ecx
 8049034:	53                   	push   %ebx
 8049035:	ad                   	lods   %ds:(%esi),%eax
 8049036:	ff 20                	jmp    *(%eax)

08049038 <code_TWODROP>:
 8049038:	58                   	pop    %eax
 8049039:	58                   	pop    %eax
 804903a:	ad                   	lods   %ds:(%esi),%eax
 804903b:	ff 20                	jmp    *(%eax)

0804903d <code_TWODUP>:
 804903d:	8b 04 24             	mov    (%esp),%eax
 8049040:	8b 5c 24 04          	mov    0x4(%esp),%ebx
 8049044:	53                   	push   %ebx
 8049045:	50                   	push   %eax
 8049046:	ad                   	lods   %ds:(%esi),%eax
 8049047:	ff 20                	jmp    *(%eax)

08049049 <code_TWOSWAP>:
 8049049:	58                   	pop    %eax
 804904a:	5b                   	pop    %ebx
 804904b:	59                   	pop    %ecx
 804904c:	5a                   	pop    %edx
 804904d:	53                   	push   %ebx
 804904e:	50                   	push   %eax
 804904f:	52                   	push   %edx
 8049050:	51                   	push   %ecx
 8049051:	ad                   	lods   %ds:(%esi),%eax
 8049052:	ff 20                	jmp    *(%eax)

08049054 <code_QDUP>:
 8049054:	8b 04 24             	mov    (%esp),%eax
 8049057:	85 c0                	test   %eax,%eax
 8049059:	74 01                	je     804905c <code_QDUP+0x8>
 804905b:	50                   	push   %eax
 804905c:	ad                   	lods   %ds:(%esi),%eax
 804905d:	ff 20                	jmp    *(%eax)

0804905f <code_INCR>:
 804905f:	ff 04 24             	incl   (%esp)
 8049062:	ad                   	lods   %ds:(%esi),%eax
 8049063:	ff 20                	jmp    *(%eax)

08049065 <code_DECR>:
 8049065:	ff 0c 24             	decl   (%esp)
 8049068:	ad                   	lods   %ds:(%esi),%eax
 8049069:	ff 20                	jmp    *(%eax)

0804906b <code_INCR4>:
 804906b:	83 04 24 04          	addl   $0x4,(%esp)
 804906f:	ad                   	lods   %ds:(%esi),%eax
 8049070:	ff 20                	jmp    *(%eax)

08049072 <code_DECR4>:
 8049072:	83 2c 24 04          	subl   $0x4,(%esp)
 8049076:	ad                   	lods   %ds:(%esi),%eax
 8049077:	ff 20                	jmp    *(%eax)

08049079 <code_ADD>:
 8049079:	58                   	pop    %eax
 804907a:	01 04 24             	add    %eax,(%esp)
 804907d:	ad                   	lods   %ds:(%esi),%eax
 804907e:	ff 20                	jmp    *(%eax)

08049080 <code_SUB>:
 8049080:	58                   	pop    %eax
 8049081:	29 04 24             	sub    %eax,(%esp)
 8049084:	ad                   	lods   %ds:(%esi),%eax
 8049085:	ff 20                	jmp    *(%eax)

08049087 <code_MUL>:
 8049087:	58                   	pop    %eax
 8049088:	5b                   	pop    %ebx
 8049089:	0f af c3             	imul   %ebx,%eax
 804908c:	50                   	push   %eax
 804908d:	ad                   	lods   %ds:(%esi),%eax
 804908e:	ff 20                	jmp    *(%eax)

08049090 <code_DIVMOD>:
 8049090:	5b                   	pop    %ebx
 8049091:	58                   	pop    %eax
 8049092:	99                   	cltd   
 8049093:	f7 fb                	idiv   %ebx
 8049095:	52                   	push   %edx
 8049096:	50                   	push   %eax
 8049097:	ad                   	lods   %ds:(%esi),%eax
 8049098:	ff 20                	jmp    *(%eax)

0804909a <code_UDIVMOD>:
 804909a:	31 d2                	xor    %edx,%edx
 804909c:	5b                   	pop    %ebx
 804909d:	58                   	pop    %eax
 804909e:	f7 f3                	div    %ebx
 80490a0:	52                   	push   %edx
 80490a1:	50                   	push   %eax
 80490a2:	ad                   	lods   %ds:(%esi),%eax
 80490a3:	ff 20                	jmp    *(%eax)

080490a5 <code_EQU>:
 80490a5:	58                   	pop    %eax
 80490a6:	5b                   	pop    %ebx
 80490a7:	39 d8                	cmp    %ebx,%eax
 80490a9:	0f 94 c0             	sete   %al
 80490ac:	0f b6 c0             	movzbl %al,%eax
 80490af:	50                   	push   %eax
 80490b0:	ad                   	lods   %ds:(%esi),%eax
 80490b1:	ff 20                	jmp    *(%eax)

080490b3 <code_NEQU>:
 80490b3:	58                   	pop    %eax
 80490b4:	5b                   	pop    %ebx
 80490b5:	39 d8                	cmp    %ebx,%eax
 80490b7:	0f 95 c0             	setne  %al
 80490ba:	0f b6 c0             	movzbl %al,%eax
 80490bd:	50                   	push   %eax
 80490be:	ad                   	lods   %ds:(%esi),%eax
 80490bf:	ff 20                	jmp    *(%eax)

080490c1 <code_LT>:
 80490c1:	58                   	pop    %eax
 80490c2:	5b                   	pop    %ebx
 80490c3:	39 c3                	cmp    %eax,%ebx
 80490c5:	0f 9c c0             	setl   %al
 80490c8:	0f b6 c0             	movzbl %al,%eax
 80490cb:	50                   	push   %eax
 80490cc:	ad                   	lods   %ds:(%esi),%eax
 80490cd:	ff 20                	jmp    *(%eax)

080490cf <code_GT>:
 80490cf:	58                   	pop    %eax
 80490d0:	5b                   	pop    %ebx
 80490d1:	39 c3                	cmp    %eax,%ebx
 80490d3:	0f 9f c0             	setg   %al
 80490d6:	0f b6 c0             	movzbl %al,%eax
 80490d9:	50                   	push   %eax
 80490da:	ad                   	lods   %ds:(%esi),%eax
 80490db:	ff 20                	jmp    *(%eax)

080490dd <code_LE>:
 80490dd:	58                   	pop    %eax
 80490de:	5b                   	pop    %ebx
 80490df:	39 c3                	cmp    %eax,%ebx
 80490e1:	0f 9e c0             	setle  %al
 80490e4:	0f b6 c0             	movzbl %al,%eax
 80490e7:	50                   	push   %eax
 80490e8:	ad                   	lods   %ds:(%esi),%eax
 80490e9:	ff 20                	jmp    *(%eax)

080490eb <code_GE>:
 80490eb:	58                   	pop    %eax
 80490ec:	5b                   	pop    %ebx
 80490ed:	39 c3                	cmp    %eax,%ebx
 80490ef:	0f 9d c0             	setge  %al
 80490f2:	0f b6 c0             	movzbl %al,%eax
 80490f5:	50                   	push   %eax
 80490f6:	ad                   	lods   %ds:(%esi),%eax
 80490f7:	ff 20                	jmp    *(%eax)

080490f9 <code_ZEQU>:
 80490f9:	58                   	pop    %eax
 80490fa:	85 c0                	test   %eax,%eax
 80490fc:	0f 94 c0             	sete   %al
 80490ff:	0f b6 c0             	movzbl %al,%eax
 8049102:	50                   	push   %eax
 8049103:	ad                   	lods   %ds:(%esi),%eax
 8049104:	ff 20                	jmp    *(%eax)

08049106 <code_ZNEQU>:
 8049106:	58                   	pop    %eax
 8049107:	85 c0                	test   %eax,%eax
 8049109:	0f 95 c0             	setne  %al
 804910c:	0f b6 c0             	movzbl %al,%eax
 804910f:	50                   	push   %eax
 8049110:	ad                   	lods   %ds:(%esi),%eax
 8049111:	ff 20                	jmp    *(%eax)

08049113 <code_ZLT>:
 8049113:	58                   	pop    %eax
 8049114:	85 c0                	test   %eax,%eax
 8049116:	0f 9c c0             	setl   %al
 8049119:	0f b6 c0             	movzbl %al,%eax
 804911c:	50                   	push   %eax
 804911d:	ad                   	lods   %ds:(%esi),%eax
 804911e:	ff 20                	jmp    *(%eax)

08049120 <code_ZGT>:
 8049120:	58                   	pop    %eax
 8049121:	85 c0                	test   %eax,%eax
 8049123:	0f 9f c0             	setg   %al
 8049126:	0f b6 c0             	movzbl %al,%eax
 8049129:	50                   	push   %eax
 804912a:	ad                   	lods   %ds:(%esi),%eax
 804912b:	ff 20                	jmp    *(%eax)

0804912d <code_ZLE>:
 804912d:	58                   	pop    %eax
 804912e:	85 c0                	test   %eax,%eax
 8049130:	0f 9e c0             	setle  %al
 8049133:	0f b6 c0             	movzbl %al,%eax
 8049136:	50                   	push   %eax
 8049137:	ad                   	lods   %ds:(%esi),%eax
 8049138:	ff 20                	jmp    *(%eax)

0804913a <code_ZGE>:
 804913a:	58                   	pop    %eax
 804913b:	85 c0                	test   %eax,%eax
 804913d:	0f 9d c0             	setge  %al
 8049140:	0f b6 c0             	movzbl %al,%eax
 8049143:	50                   	push   %eax
 8049144:	ad                   	lods   %ds:(%esi),%eax
 8049145:	ff 20                	jmp    *(%eax)

08049147 <code_AND>:
 8049147:	58                   	pop    %eax
 8049148:	21 04 24             	and    %eax,(%esp)
 804914b:	ad                   	lods   %ds:(%esi),%eax
 804914c:	ff 20                	jmp    *(%eax)

0804914e <code_OR>:
 804914e:	58                   	pop    %eax
 804914f:	09 04 24             	or     %eax,(%esp)
 8049152:	ad                   	lods   %ds:(%esi),%eax
 8049153:	ff 20                	jmp    *(%eax)

08049155 <code_XOR>:
 8049155:	58                   	pop    %eax
 8049156:	31 04 24             	xor    %eax,(%esp)
 8049159:	ad                   	lods   %ds:(%esi),%eax
 804915a:	ff 20                	jmp    *(%eax)

0804915c <code_INVERT>:
 804915c:	f7 14 24             	notl   (%esp)
 804915f:	ad                   	lods   %ds:(%esi),%eax
 8049160:	ff 20                	jmp    *(%eax)

08049162 <code_EXIT>:
 8049162:	8b 75 00             	mov    0x0(%ebp),%esi
 8049165:	8d 6d 04             	lea    0x4(%ebp),%ebp
 8049168:	ad                   	lods   %ds:(%esi),%eax
 8049169:	ff 20                	jmp    *(%eax)

0804916b <code_STORE>:
 804916b:	5b                   	pop    %ebx
 804916c:	58                   	pop    %eax
 804916d:	89 03                	mov    %eax,(%ebx)
 804916f:	ad                   	lods   %ds:(%esi),%eax
 8049170:	ff 20                	jmp    *(%eax)

08049172 <code_FETCH>:
 8049172:	5b                   	pop    %ebx
 8049173:	8b 03                	mov    (%ebx),%eax
 8049175:	50                   	push   %eax
 8049176:	ad                   	lods   %ds:(%esi),%eax
 8049177:	ff 20                	jmp    *(%eax)

08049179 <code_ADDSTORE>:
 8049179:	5b                   	pop    %ebx
 804917a:	58                   	pop    %eax
 804917b:	01 03                	add    %eax,(%ebx)
 804917d:	ad                   	lods   %ds:(%esi),%eax
 804917e:	ff 20                	jmp    *(%eax)

08049180 <code_SUBSTORE>:
 8049180:	5b                   	pop    %ebx
 8049181:	58                   	pop    %eax
 8049182:	29 03                	sub    %eax,(%ebx)
 8049184:	ad                   	lods   %ds:(%esi),%eax
 8049185:	ff 20                	jmp    *(%eax)

08049187 <code_STOREBYTE>:
 8049187:	5b                   	pop    %ebx
 8049188:	58                   	pop    %eax
 8049189:	88 03                	mov    %al,(%ebx)
 804918b:	ad                   	lods   %ds:(%esi),%eax
 804918c:	ff 20                	jmp    *(%eax)

0804918e <code_FETCHBYTE>:
 804918e:	5b                   	pop    %ebx
 804918f:	31 c0                	xor    %eax,%eax
 8049191:	8a 03                	mov    (%ebx),%al
 8049193:	50                   	push   %eax
 8049194:	ad                   	lods   %ds:(%esi),%eax
 8049195:	ff 20                	jmp    *(%eax)

08049197 <code_CCOPY>:
 8049197:	8b 5c 24 04          	mov    0x4(%esp),%ebx
 804919b:	8a 03                	mov    (%ebx),%al
 804919d:	5f                   	pop    %edi
 804919e:	aa                   	stos   %al,%es:(%edi)
 804919f:	57                   	push   %edi
 80491a0:	ff 44 24 04          	incl   0x4(%esp)
 80491a4:	ad                   	lods   %ds:(%esi),%eax
 80491a5:	ff 20                	jmp    *(%eax)

080491a7 <code_CMOVE>:
 80491a7:	89 f2                	mov    %esi,%edx
 80491a9:	59                   	pop    %ecx
 80491aa:	5f                   	pop    %edi
 80491ab:	5e                   	pop    %esi
 80491ac:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 80491ae:	89 d6                	mov    %edx,%esi
 80491b0:	ad                   	lods   %ds:(%esi),%eax
 80491b1:	ff 20                	jmp    *(%eax)

080491b3 <code_DSPFETCH>:
 80491b3:	89 e0                	mov    %esp,%eax
 80491b5:	50                   	push   %eax
 80491b6:	ad                   	lods   %ds:(%esi),%eax
 80491b7:	ff 20                	jmp    *(%eax)

080491b9 <code_DSPSTORE>:
 80491b9:	5c                   	pop    %esp
 80491ba:	ad                   	lods   %ds:(%esi),%eax
 80491bb:	ff 20                	jmp    *(%eax)

080491bd <code_KEY>:
 80491bd:	e8 04 00 00 00       	call   80491c6 <_KEY>
 80491c2:	50                   	push   %eax
 80491c3:	ad                   	lods   %ds:(%esi),%eax
 80491c4:	ff 20                	jmp    *(%eax)

080491c6 <_KEY>:
 80491c6:	8b 1d 90 c0 04 08    	mov    0x804c090,%ebx
 80491cc:	3b 1d 94 c0 04 08    	cmp    0x804c094,%ebx
 80491d2:	7d 0c                	jge    80491e0 <_KEY+0x1a>
 80491d4:	31 c0                	xor    %eax,%eax
 80491d6:	8a 03                	mov    (%ebx),%al
 80491d8:	43                   	inc    %ebx
 80491d9:	89 1d 90 c0 04 08    	mov    %ebx,0x804c090
 80491df:	c3                   	ret    
 80491e0:	b8 03 00 00 00       	mov    $0x3,%eax
 80491e5:	bb 02 00 00 00       	mov    $0x2,%ebx
 80491ea:	b9 00 10 05 08       	mov    $0x8051000,%ecx
 80491ef:	89 0d 90 c0 04 08    	mov    %ecx,0x804c090
 80491f5:	ba 00 10 00 00       	mov    $0x1000,%edx
 80491fa:	cd 80                	int    $0x80
 80491fc:	85 c0                	test   %eax,%eax
 80491fe:	76 0a                	jbe    804920a <_KEY+0x44>
 8049200:	01 c1                	add    %eax,%ecx
 8049202:	89 0d 94 c0 04 08    	mov    %ecx,0x804c094
 8049208:	eb bc                	jmp    80491c6 <_KEY>
 804920a:	b8 01 00 00 00       	mov    $0x1,%eax
 804920f:	31 db                	xor    %ebx,%ebx
 8049211:	cd 80                	int    $0x80

08049213 <code_EMIT>:
 8049213:	58                   	pop    %eax
 8049214:	e8 03 00 00 00       	call   804921c <_EMIT>
 8049219:	ad                   	lods   %ds:(%esi),%eax
 804921a:	ff 20                	jmp    *(%eax)

0804921c <_EMIT>:
 804921c:	bb 01 00 00 00       	mov    $0x1,%ebx
 8049221:	a2 98 c0 04 08       	mov    %al,0x804c098
 8049226:	b9 98 c0 04 08       	mov    $0x804c098,%ecx
 804922b:	ba 01 00 00 00       	mov    $0x1,%edx
 8049230:	b8 04 00 00 00       	mov    $0x4,%eax
 8049235:	cd 80                	int    $0x80
 8049237:	c3                   	ret    

08049238 <code_WORD>:
 8049238:	e8 05 00 00 00       	call   8049242 <_WORD>
 804923d:	57                   	push   %edi
 804923e:	51                   	push   %ecx
 804923f:	ad                   	lods   %ds:(%esi),%eax
 8049240:	ff 20                	jmp    *(%eax)

08049242 <_WORD>:
 8049242:	e8 7f ff ff ff       	call   80491c6 <_KEY>
 8049247:	3c 5c                	cmp    $0x5c,%al
 8049249:	74 21                	je     804926c <_WORD+0x2a>
 804924b:	3c 20                	cmp    $0x20,%al
 804924d:	76 f3                	jbe    8049242 <_WORD>
 804924f:	bf 99 c0 04 08       	mov    $0x804c099,%edi
 8049254:	aa                   	stos   %al,%es:(%edi)
 8049255:	e8 6c ff ff ff       	call   80491c6 <_KEY>
 804925a:	3c 20                	cmp    $0x20,%al
 804925c:	77 f6                	ja     8049254 <_WORD+0x12>
 804925e:	81 ef 99 c0 04 08    	sub    $0x804c099,%edi
 8049264:	89 f9                	mov    %edi,%ecx
 8049266:	bf 99 c0 04 08       	mov    $0x804c099,%edi
 804926b:	c3                   	ret    
 804926c:	e8 55 ff ff ff       	call   80491c6 <_KEY>
 8049271:	3c 0a                	cmp    $0xa,%al
 8049273:	75 f7                	jne    804926c <_WORD+0x2a>
 8049275:	eb cb                	jmp    8049242 <_WORD>

08049277 <code_FIND>:
 8049277:	59                   	pop    %ecx
 8049278:	5f                   	pop    %edi
 8049279:	e8 04 00 00 00       	call   8049282 <_FIND>
 804927e:	50                   	push   %eax
 804927f:	ad                   	lods   %ds:(%esi),%eax
 8049280:	ff 20                	jmp    *(%eax)

08049282 <_FIND>:
 8049282:	56                   	push   %esi
 8049283:	8b 15 84 c0 04 08    	mov    0x804c084,%edx
 8049289:	85 d2                	test   %edx,%edx
 804928b:	74 1e                	je     80492ab <_FIND+0x29>
 804928d:	31 c0                	xor    %eax,%eax
 804928f:	8a 42 04             	mov    0x4(%edx),%al
 8049292:	24 3f                	and    $0x3f,%al
 8049294:	38 c8                	cmp    %cl,%al
 8049296:	75 0f                	jne    80492a7 <_FIND+0x25>
 8049298:	51                   	push   %ecx
 8049299:	57                   	push   %edi
 804929a:	8d 72 05             	lea    0x5(%edx),%esi
 804929d:	f3 a6                	repz cmpsb %es:(%edi),%ds:(%esi)
 804929f:	5f                   	pop    %edi
 80492a0:	59                   	pop    %ecx
 80492a1:	75 04                	jne    80492a7 <_FIND+0x25>
 80492a3:	5e                   	pop    %esi
 80492a4:	89 d0                	mov    %edx,%eax
 80492a6:	c3                   	ret    
 80492a7:	8b 12                	mov    (%edx),%edx
 80492a9:	eb de                	jmp    8049289 <_FIND+0x7>
 80492ab:	5e                   	pop    %esi
 80492ac:	31 c0                	xor    %eax,%eax
 80492ae:	c3                   	ret    

080492af <code_TCFA>:
 80492af:	5f                   	pop    %edi
 80492b0:	e8 04 00 00 00       	call   80492b9 <_TCFA>
 80492b5:	57                   	push   %edi
 80492b6:	ad                   	lods   %ds:(%esi),%eax
 80492b7:	ff 20                	jmp    *(%eax)

080492b9 <_TCFA>:
 80492b9:	31 c0                	xor    %eax,%eax
 80492bb:	83 c7 04             	add    $0x4,%edi
 80492be:	8a 07                	mov    (%edi),%al
 80492c0:	47                   	inc    %edi
 80492c1:	24 1f                	and    $0x1f,%al
 80492c3:	01 c7                	add    %eax,%edi
 80492c5:	83 c7 03             	add    $0x3,%edi
 80492c8:	83 e7 fc             	and    $0xfffffffc,%edi
 80492cb:	c3                   	ret    

080492cc <code_NUMBER>:
 80492cc:	59                   	pop    %ecx
 80492cd:	5f                   	pop    %edi
 80492ce:	e8 05 00 00 00       	call   80492d8 <_NUMBER>
 80492d3:	50                   	push   %eax
 80492d4:	51                   	push   %ecx
 80492d5:	ad                   	lods   %ds:(%esi),%eax
 80492d6:	ff 20                	jmp    *(%eax)

080492d8 <_NUMBER>:
 80492d8:	31 c0                	xor    %eax,%eax
 80492da:	31 db                	xor    %ebx,%ebx
 80492dc:	85 c9                	test   %ecx,%ecx
 80492de:	74 43                	je     8049323 <_NUMBER+0x4b>
 80492e0:	8b 15 8c c0 04 08    	mov    0x804c08c,%edx
 80492e6:	8a 1f                	mov    (%edi),%bl
 80492e8:	47                   	inc    %edi
 80492e9:	50                   	push   %eax
 80492ea:	80 fb 2d             	cmp    $0x2d,%bl
 80492ed:	75 12                	jne    8049301 <_NUMBER+0x29>
 80492ef:	58                   	pop    %eax
 80492f0:	53                   	push   %ebx
 80492f1:	49                   	dec    %ecx
 80492f2:	75 07                	jne    80492fb <_NUMBER+0x23>
 80492f4:	5b                   	pop    %ebx
 80492f5:	b9 01 00 00 00       	mov    $0x1,%ecx
 80492fa:	c3                   	ret    
 80492fb:	0f af c2             	imul   %edx,%eax
 80492fe:	8a 1f                	mov    (%edi),%bl
 8049300:	47                   	inc    %edi
 8049301:	80 eb 30             	sub    $0x30,%bl
 8049304:	72 16                	jb     804931c <_NUMBER+0x44>
 8049306:	80 fb 0a             	cmp    $0xa,%bl
 8049309:	72 08                	jb     8049313 <_NUMBER+0x3b>
 804930b:	80 eb 11             	sub    $0x11,%bl
 804930e:	72 0c                	jb     804931c <_NUMBER+0x44>
 8049310:	80 c3 0a             	add    $0xa,%bl
 8049313:	38 d3                	cmp    %dl,%bl
 8049315:	7d 05                	jge    804931c <_NUMBER+0x44>
 8049317:	01 d8                	add    %ebx,%eax
 8049319:	49                   	dec    %ecx
 804931a:	75 df                	jne    80492fb <_NUMBER+0x23>
 804931c:	5b                   	pop    %ebx
 804931d:	85 db                	test   %ebx,%ebx
 804931f:	74 02                	je     8049323 <_NUMBER+0x4b>
 8049321:	f7 d8                	neg    %eax
 8049323:	c3                   	ret    

08049324 <code_LIT>:
 8049324:	ad                   	lods   %ds:(%esi),%eax
 8049325:	50                   	push   %eax
 8049326:	ad                   	lods   %ds:(%esi),%eax
 8049327:	ff 20                	jmp    *(%eax)

08049329 <code_LITSTRING>:
 8049329:	ad                   	lods   %ds:(%esi),%eax
 804932a:	56                   	push   %esi
 804932b:	50                   	push   %eax
 804932c:	01 c6                	add    %eax,%esi
 804932e:	83 c6 03             	add    $0x3,%esi
 8049331:	83 e6 fc             	and    $0xfffffffc,%esi
 8049334:	ad                   	lods   %ds:(%esi),%eax
 8049335:	ff 20                	jmp    *(%eax)

08049337 <code_TELL>:
 8049337:	5a                   	pop    %edx
 8049338:	59                   	pop    %ecx
 8049339:	bb 01 00 00 00       	mov    $0x1,%ebx
 804933e:	b8 04 00 00 00       	mov    $0x4,%eax
 8049343:	cd 80                	int    $0x80
 8049345:	ad                   	lods   %ds:(%esi),%eax
 8049346:	ff 20                	jmp    *(%eax)

08049348 <code_CREATE>:
 8049348:	59                   	pop    %ecx
 8049349:	5b                   	pop    %ebx
 804934a:	8b 3d 80 c0 04 08    	mov    0x804c080,%edi
 8049350:	a1 84 c0 04 08       	mov    0x804c084,%eax
 8049355:	ab                   	stos   %eax,%es:(%edi)
 8049356:	88 c8                	mov    %cl,%al
 8049358:	aa                   	stos   %al,%es:(%edi)
 8049359:	56                   	push   %esi
 804935a:	89 de                	mov    %ebx,%esi
 804935c:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 804935e:	5e                   	pop    %esi
 804935f:	83 c7 03             	add    $0x3,%edi
 8049362:	83 e7 fc             	and    $0xfffffffc,%edi
 8049365:	a1 80 c0 04 08       	mov    0x804c080,%eax
 804936a:	a3 84 c0 04 08       	mov    %eax,0x804c084
 804936f:	89 3d 80 c0 04 08    	mov    %edi,0x804c080
 8049375:	ad                   	lods   %ds:(%esi),%eax
 8049376:	ff 20                	jmp    *(%eax)

08049378 <code_COMMA>:
 8049378:	58                   	pop    %eax
 8049379:	e8 03 00 00 00       	call   8049381 <_COMMA>
 804937e:	ad                   	lods   %ds:(%esi),%eax
 804937f:	ff 20                	jmp    *(%eax)

08049381 <_COMMA>:
 8049381:	8b 3d 80 c0 04 08    	mov    0x804c080,%edi
 8049387:	ab                   	stos   %eax,%es:(%edi)
 8049388:	89 3d 80 c0 04 08    	mov    %edi,0x804c080
 804938e:	c3                   	ret    

0804938f <code_LBRAC>:
 804938f:	31 c0                	xor    %eax,%eax
 8049391:	a3 7c c0 04 08       	mov    %eax,0x804c07c
 8049396:	ad                   	lods   %ds:(%esi),%eax
 8049397:	ff 20                	jmp    *(%eax)

08049399 <code_RBRAC>:
 8049399:	c7 05 7c c0 04 08 01 	movl   $0x1,0x804c07c
 80493a0:	00 00 00 
 80493a3:	ad                   	lods   %ds:(%esi),%eax
 80493a4:	ff 20                	jmp    *(%eax)

080493a6 <code_IMMEDIATE>:
 80493a6:	8b 3d 84 c0 04 08    	mov    0x804c084,%edi
 80493ac:	83 c7 04             	add    $0x4,%edi
 80493af:	80 37 80             	xorb   $0x80,(%edi)
 80493b2:	ad                   	lods   %ds:(%esi),%eax
 80493b3:	ff 20                	jmp    *(%eax)

080493b5 <code_HIDDEN>:
 80493b5:	5f                   	pop    %edi
 80493b6:	83 c7 04             	add    $0x4,%edi
 80493b9:	80 37 20             	xorb   $0x20,(%edi)
 80493bc:	ad                   	lods   %ds:(%esi),%eax
 80493bd:	ff 20                	jmp    *(%eax)

080493bf <code_TICK>:
 80493bf:	ad                   	lods   %ds:(%esi),%eax
 80493c0:	50                   	push   %eax
 80493c1:	ad                   	lods   %ds:(%esi),%eax
 80493c2:	ff 20                	jmp    *(%eax)

080493c4 <code_INTERPRET>:
 80493c4:	e8 79 fe ff ff       	call   8049242 <_WORD>
 80493c9:	31 c0                	xor    %eax,%eax
 80493cb:	a3 bc c0 04 08       	mov    %eax,0x804c0bc
 80493d0:	e8 ad fe ff ff       	call   8049282 <_FIND>
 80493d5:	85 c0                	test   %eax,%eax
 80493d7:	74 14                	je     80493ed <code_INTERPRET+0x29>
 80493d9:	89 c7                	mov    %eax,%edi
 80493db:	8a 47 04             	mov    0x4(%edi),%al
 80493de:	50                   	push   %eax
 80493df:	e8 d5 fe ff ff       	call   80492b9 <_TCFA>
 80493e4:	58                   	pop    %eax
 80493e5:	24 80                	and    $0x80,%al
 80493e7:	89 f8                	mov    %edi,%eax
 80493e9:	75 3b                	jne    8049426 <code_INTERPRET+0x62>
 80493eb:	eb 16                	jmp    8049403 <code_INTERPRET+0x3f>
 80493ed:	ff 05 bc c0 04 08    	incl   0x804c0bc
 80493f3:	e8 e0 fe ff ff       	call   80492d8 <_NUMBER>
 80493f8:	85 c9                	test   %ecx,%ecx
 80493fa:	75 3a                	jne    8049436 <code_INTERPRET+0x72>
 80493fc:	89 c3                	mov    %eax,%ebx
 80493fe:	b8 64 9c 04 08       	mov    $0x8049c64,%eax
 8049403:	8b 15 7c c0 04 08    	mov    0x804c07c,%edx
 8049409:	85 d2                	test   %edx,%edx
 804940b:	74 19                	je     8049426 <code_INTERPRET+0x62>
 804940d:	e8 6f ff ff ff       	call   8049381 <_COMMA>
 8049412:	8b 0d bc c0 04 08    	mov    0x804c0bc,%ecx
 8049418:	85 c9                	test   %ecx,%ecx
 804941a:	74 07                	je     8049423 <code_INTERPRET+0x5f>
 804941c:	89 d8                	mov    %ebx,%eax
 804941e:	e8 5e ff ff ff       	call   8049381 <_COMMA>
 8049423:	ad                   	lods   %ds:(%esi),%eax
 8049424:	ff 20                	jmp    *(%eax)
 8049426:	8b 0d bc c0 04 08    	mov    0x804c0bc,%ecx
 804942c:	85 c9                	test   %ecx,%ecx
 804942e:	75 02                	jne    8049432 <code_INTERPRET+0x6e>
 8049430:	ff 20                	jmp    *(%eax)
 8049432:	53                   	push   %ebx
 8049433:	ad                   	lods   %ds:(%esi),%eax
 8049434:	ff 20                	jmp    *(%eax)
 8049436:	b8 04 00 00 00       	mov    $0x4,%eax
 804943b:	bb 02 00 00 00       	mov    $0x2,%ebx
 8049440:	b9 84 9d 04 08       	mov    $0x8049d84,%ecx
 8049445:	ba 0d 00 00 00       	mov    $0xd,%edx
 804944a:	cd 80                	int    $0x80
 804944c:	8b 0d 90 c0 04 08    	mov    0x804c090,%ecx
 8049452:	89 ca                	mov    %ecx,%edx
 8049454:	81 ea 00 10 05 08    	sub    $0x8051000,%edx
 804945a:	83 fa 28             	cmp    $0x28,%edx
 804945d:	7e 05                	jle    8049464 <code_INTERPRET+0xa0>
 804945f:	ba 28 00 00 00       	mov    $0x28,%edx
 8049464:	29 d1                	sub    %edx,%ecx
 8049466:	b8 04 00 00 00       	mov    $0x4,%eax
 804946b:	cd 80                	int    $0x80
 804946d:	b8 04 00 00 00       	mov    $0x4,%eax
 8049472:	b9 91 9d 04 08       	mov    $0x8049d91,%ecx
 8049477:	ba 01 00 00 00       	mov    $0x1,%edx
 804947c:	cd 80                	int    $0x80
 804947e:	ad                   	lods   %ds:(%esi),%eax
 804947f:	ff 20                	jmp    *(%eax)

08049481 <code_BRANCH>:
 8049481:	03 36                	add    (%esi),%esi
 8049483:	ad                   	lods   %ds:(%esi),%eax
 8049484:	ff 20                	jmp    *(%eax)

08049486 <code_ZBRANCH>:
 8049486:	58                   	pop    %eax
 8049487:	85 c0                	test   %eax,%eax
 8049489:	74 f6                	je     8049481 <code_BRANCH>
 804948b:	ad                   	lods   %ds:(%esi),%eax
 804948c:	ad                   	lods   %ds:(%esi),%eax
 804948d:	ff 20                	jmp    *(%eax)

0804948f <code_CHAR>:
 804948f:	e8 ae fd ff ff       	call   8049242 <_WORD>
 8049494:	31 c0                	xor    %eax,%eax
 8049496:	8a 07                	mov    (%edi),%al
 8049498:	50                   	push   %eax
 8049499:	ad                   	lods   %ds:(%esi),%eax
 804949a:	ff 20                	jmp    *(%eax)

0804949c <code_EXECUTE>:
 804949c:	58                   	pop    %eax
 804949d:	ff 20                	jmp    *(%eax)

0804949f <DODOES>:
 804949f:	8d 6d fc             	lea    -0x4(%ebp),%ebp
 80494a2:	89 75 00             	mov    %esi,0x0(%ebp)
 80494a5:	5e                   	pop    %esi
 80494a6:	8d 40 04             	lea    0x4(%eax),%eax
 80494a9:	50                   	push   %eax
 80494aa:	ad                   	lods   %ds:(%esi),%eax
 80494ab:	ff 20                	jmp    *(%eax)

080494ad <code_DODOES_ADDR>:
 80494ad:	68 9f 94 04 08       	push   $0x804949f
 80494b2:	ad                   	lods   %ds:(%esi),%eax
 80494b3:	ff 20                	jmp    *(%eax)

080494b5 <code_SYSCALL3>:
 80494b5:	58                   	pop    %eax
 80494b6:	5b                   	pop    %ebx
 80494b7:	59                   	pop    %ecx
 80494b8:	5a                   	pop    %edx
 80494b9:	cd 80                	int    $0x80
 80494bb:	50                   	push   %eax
 80494bc:	ad                   	lods   %ds:(%esi),%eax
 80494bd:	ff 20                	jmp    *(%eax)

080494bf <code_SYSCALL2>:
 80494bf:	58                   	pop    %eax
 80494c0:	5b                   	pop    %ebx
 80494c1:	59                   	pop    %ecx
 80494c2:	cd 80                	int    $0x80
 80494c4:	50                   	push   %eax
 80494c5:	ad                   	lods   %ds:(%esi),%eax
 80494c6:	ff 20                	jmp    *(%eax)

080494c8 <code_SYSCALL1>:
 80494c8:	58                   	pop    %eax
 80494c9:	5b                   	pop    %ebx
 80494ca:	cd 80                	int    $0x80
 80494cc:	50                   	push   %eax
 80494cd:	ad                   	lods   %ds:(%esi),%eax
 80494ce:	ff 20                	jmp    *(%eax)

080494d0 <code_SYSCALL0>:
 80494d0:	58                   	pop    %eax
 80494d1:	cd 80                	int    $0x80
 80494d3:	50                   	push   %eax
 80494d4:	ad                   	lods   %ds:(%esi),%eax
 80494d5:	ff 20                	jmp    *(%eax)

080494d7 <forth_asm_start>:
 80494d7:	fc                   	cld    
 80494d8:	89 25 88 c0 04 08    	mov    %esp,0x804c088
 80494de:	bd 00 10 05 08       	mov    $0x8051000,%ebp
 80494e3:	b8 00 20 05 08       	mov    $0x8052000,%eax
 80494e8:	a3 80 c0 04 08       	mov    %eax,0x804c080
 80494ed:	be 5c 9e 04 08       	mov    $0x8049e5c,%esi
 80494f2:	ad                   	lods   %ds:(%esi),%eax
 80494f3:	ff 20                	jmp    *(%eax)

080494f5 <main>:
 80494f5:	55                   	push   %ebp
 80494f6:	89 e5                	mov    %esp,%ebp
 80494f8:	e8 da ff ff ff       	call   80494d7 <forth_asm_start>
 80494fd:	b8 00 00 00 00       	mov    $0x0,%eax
 8049502:	5d                   	pop    %ebp
 8049503:	c3                   	ret    
 8049504:	66 90                	xchg   %ax,%ax
 8049506:	66 90                	xchg   %ax,%ax
 8049508:	66 90                	xchg   %ax,%ax
 804950a:	66 90                	xchg   %ax,%ax
 804950c:	66 90                	xchg   %ax,%ax
 804950e:	66 90                	xchg   %ax,%ax

08049510 <__libc_csu_init>:
 8049510:	55                   	push   %ebp
 8049511:	57                   	push   %edi
 8049512:	56                   	push   %esi
 8049513:	53                   	push   %ebx
 8049514:	e8 07 f5 ff ff       	call   8048a20 <__x86.get_pc_thunk.bx>
 8049519:	81 c3 e7 2a 00 00    	add    $0x2ae7,%ebx
 804951f:	83 ec 0c             	sub    $0xc,%esp
 8049522:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 8049526:	8d b3 04 ff ff ff    	lea    -0xfc(%ebx),%esi
 804952c:	e8 d3 f2 ff ff       	call   8048804 <_init>
 8049531:	8d 83 00 ff ff ff    	lea    -0x100(%ebx),%eax
 8049537:	29 c6                	sub    %eax,%esi
 8049539:	c1 fe 02             	sar    $0x2,%esi
 804953c:	85 f6                	test   %esi,%esi
 804953e:	74 25                	je     8049565 <__libc_csu_init+0x55>
 8049540:	31 ff                	xor    %edi,%edi
 8049542:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049548:	83 ec 04             	sub    $0x4,%esp
 804954b:	ff 74 24 2c          	pushl  0x2c(%esp)
 804954f:	ff 74 24 2c          	pushl  0x2c(%esp)
 8049553:	55                   	push   %ebp
 8049554:	ff 94 bb 00 ff ff ff 	call   *-0x100(%ebx,%edi,4)
 804955b:	83 c7 01             	add    $0x1,%edi
 804955e:	83 c4 10             	add    $0x10,%esp
 8049561:	39 f7                	cmp    %esi,%edi
 8049563:	75 e3                	jne    8049548 <__libc_csu_init+0x38>
 8049565:	83 c4 0c             	add    $0xc,%esp
 8049568:	5b                   	pop    %ebx
 8049569:	5e                   	pop    %esi
 804956a:	5f                   	pop    %edi
 804956b:	5d                   	pop    %ebp
 804956c:	c3                   	ret    
 804956d:	8d 76 00             	lea    0x0(%esi),%esi

08049570 <__libc_csu_fini>:
 8049570:	f3 c3                	repz ret 
 8049572:	66 90                	xchg   %ax,%ax
 8049574:	66 90                	xchg   %ax,%ax
 8049576:	66 90                	xchg   %ax,%ax
 8049578:	66 90                	xchg   %ax,%ax
 804957a:	66 90                	xchg   %ax,%ax
 804957c:	66 90                	xchg   %ax,%ax
 804957e:	66 90                	xchg   %ax,%ax

08049580 <atexit>:
 8049580:	53                   	push   %ebx
 8049581:	e8 9a f4 ff ff       	call   8048a20 <__x86.get_pc_thunk.bx>
 8049586:	81 c3 7a 2a 00 00    	add    $0x2a7a,%ebx
 804958c:	83 ec 08             	sub    $0x8,%esp
 804958f:	8d 05 78 c0 04 08    	lea    0x804c078,%eax
 8049595:	85 c0                	test   %eax,%eax
 8049597:	74 17                	je     80495b0 <atexit+0x30>
 8049599:	8b 00                	mov    (%eax),%eax
 804959b:	83 ec 04             	sub    $0x4,%esp
 804959e:	50                   	push   %eax
 804959f:	6a 00                	push   $0x0
 80495a1:	ff 74 24 1c          	pushl  0x1c(%esp)
 80495a5:	e8 16 f3 ff ff       	call   80488c0 <__cxa_atexit@plt>
 80495aa:	83 c4 18             	add    $0x18,%esp
 80495ad:	5b                   	pop    %ebx
 80495ae:	c3                   	ret    
 80495af:	90                   	nop
 80495b0:	31 c0                	xor    %eax,%eax
 80495b2:	eb e7                	jmp    804959b <atexit+0x1b>

Disassembly of section .fini:

080495b4 <_fini>:
 80495b4:	53                   	push   %ebx
 80495b5:	83 ec 08             	sub    $0x8,%esp
 80495b8:	e8 63 f4 ff ff       	call   8048a20 <__x86.get_pc_thunk.bx>
 80495bd:	81 c3 43 2a 00 00    	add    $0x2a43,%ebx
 80495c3:	83 c4 08             	add    $0x8,%esp
 80495c6:	5b                   	pop    %ebx
 80495c7:	c3                   	ret    

Disassembly of section .rodata:

080495c8 <_fp_hw>:
 80495c8:	03 00                	add    (%eax),%eax
	...

080495cc <_IO_stdin_used>:
 80495cc:	01 00                	add    %eax,(%eax)
 80495ce:	02 00                	add    (%eax),%al
 80495d0:	72 62                	jb     8049634 <name_LATEST+0x4>
 80495d2:	00 53 44             	add    %dl,0x44(%ebx)
 80495d5:	4c                   	dec    %esp
 80495d6:	5f                   	pop    %edi
 80495d7:	49                   	dec    %ecx
 80495d8:	6e                   	outsb  %ds:(%esi),(%dx)
 80495d9:	69 74 3a 20 25 73 0a 	imul   $0xa7325,0x20(%edx,%edi,1),%esi
 80495e0:	00 
 80495e1:	53                   	push   %ebx
 80495e2:	6e                   	outsb  %ds:(%esi),(%dx)
 80495e3:	61                   	popa   
 80495e4:	6b 65 20 4c          	imul   $0x4c,0x20(%ebp),%esp
 80495e8:	65 6e                	outsb  %gs:(%esi),(%dx)
 80495ea:	67 74 68             	addr16 je 8049655 <name_BASE+0x9>
 80495ed:	3a 20                	cmp    (%eax),%ah
 80495ef:	25 64 0a 00 64       	and    $0x64000a64,%eax
 80495f4:	69 72 3a 20 25 64 2c 	imul   $0x2c642520,0x3a(%edx),%esi
 80495fb:	20 6f 6c             	and    %ch,0x6c(%edi)
 80495fe:	64 3a 20             	cmp    %fs:(%eax),%ah
 8049601:	25 64 0a 00 47       	and    $0x47000a64,%eax
 8049606:	61                   	popa   
 8049607:	6d                   	insl   (%dx),%es:(%edi)
 8049608:	65 20 4f 76          	and    %cl,%gs:0x76(%edi)
 804960c:	65 72 00             	gs jb  804960f <_IO_stdin_used+0x43>
	...

08049610 <name_STATE>:
 8049610:	00 00                	add    %al,(%eax)
 8049612:	00 00                	add    %al,(%eax)
 8049614:	05 53 54 41 54       	add    $0x54415453,%eax
 8049619:	45                   	inc    %ebp
	...

0804961c <STATE>:
 804961c:	74 8c                	je     80495aa <atexit+0x2a>
 804961e:	04 08                	add    $0x8,%al

08049620 <name_HERE>:
 8049620:	10 96 04 08 04 48    	adc    %dl,0x48040804(%esi)
 8049626:	45                   	inc    %ebp
 8049627:	52                   	push   %edx
 8049628:	45                   	inc    %ebp
 8049629:	00 00                	add    %al,(%eax)
	...

0804962c <HERE>:
 804962c:	7c 8c                	jl     80495ba <_fini+0x6>
 804962e:	04 08                	add    $0x8,%al

08049630 <name_LATEST>:
 8049630:	20 96 04 08 06 4c    	and    %dl,0x4c060804(%esi)
 8049636:	41                   	inc    %ecx
 8049637:	54                   	push   %esp
 8049638:	45                   	inc    %ebp
 8049639:	53                   	push   %ebx
 804963a:	54                   	push   %esp
	...

0804963c <LATEST>:
 804963c:	84 8c 04 08 30 96 04 	test   %cl,0x4963008(%esp,%eax,1)

08049640 <name_SZ>:
 8049640:	30 96 04 08 02 53    	xor    %dl,0x53020804(%esi)
 8049646:	30 00                	xor    %al,(%eax)

08049648 <SZ>:
 8049648:	8c 8c 04 08 40 96 04 	mov    %cs,0x4964008(%esp,%eax,1)

0804964c <name_BASE>:
 804964c:	40                   	inc    %eax
 804964d:	96                   	xchg   %eax,%esi
 804964e:	04 08                	add    $0x8,%al
 8049650:	04 42                	add    $0x42,%al
 8049652:	41                   	inc    %ecx
 8049653:	53                   	push   %ebx
 8049654:	45                   	inc    %ebp
 8049655:	00 00                	add    %al,(%eax)
	...

08049658 <BASE>:
 8049658:	94                   	xchg   %eax,%esp
 8049659:	8c 04 08             	mov    %es,(%eax,%ecx,1)

0804965c <name_VERSION>:
 804965c:	4c                   	dec    %esp
 804965d:	96                   	xchg   %eax,%esi
 804965e:	04 08                	add    $0x8,%al
 8049660:	07                   	pop    %es
 8049661:	56                   	push   %esi
 8049662:	45                   	inc    %ebp
 8049663:	52                   	push   %edx
 8049664:	53                   	push   %ebx
 8049665:	49                   	dec    %ecx
 8049666:	4f                   	dec    %edi
 8049667:	4e                   	dec    %esi

08049668 <VERSION>:
 8049668:	9c                   	pushf  
 8049669:	8c 04 08             	mov    %es,(%eax,%ecx,1)

0804966c <name_RZ>:
 804966c:	5c                   	pop    %esp
 804966d:	96                   	xchg   %eax,%esi
 804966e:	04 08                	add    $0x8,%al
 8049670:	02 52 30             	add    0x30(%edx),%dl
	...

08049674 <RZ>:
 8049674:	a1 8c 04 08 6c       	mov    0x6c08048c,%eax

08049678 <name___DOCOL>:
 8049678:	6c                   	insb   (%dx),%es:(%edi)
 8049679:	96                   	xchg   %eax,%esi
 804967a:	04 08                	add    $0x8,%al
 804967c:	05 44 4f 43 4f       	add    $0x4f434f44,%eax
 8049681:	4c                   	dec    %esp
	...

08049684 <__DOCOL>:
 8049684:	a9 8c 04 08 78       	test   $0x7808048c,%eax

08049688 <name___F_IMMED>:
 8049688:	78 96                	js     8049620 <name_HERE>
 804968a:	04 08                	add    $0x8,%al
 804968c:	07                   	pop    %es
 804968d:	46                   	inc    %esi
 804968e:	5f                   	pop    %edi
 804968f:	49                   	dec    %ecx
 8049690:	4d                   	dec    %ebp
 8049691:	4d                   	dec    %ebp
 8049692:	45                   	inc    %ebp
 8049693:	44                   	inc    %esp

08049694 <__F_IMMED>:
 8049694:	b1 8c                	mov    $0x8c,%cl
 8049696:	04 08                	add    $0x8,%al

08049698 <name___F_HIDDEN>:
 8049698:	88 96 04 08 08 46    	mov    %dl,0x46080804(%esi)
 804969e:	5f                   	pop    %edi
 804969f:	48                   	dec    %eax
 80496a0:	49                   	dec    %ecx
 80496a1:	44                   	inc    %esp
 80496a2:	44                   	inc    %esp
 80496a3:	45                   	inc    %ebp
 80496a4:	4e                   	dec    %esi
 80496a5:	00 00                	add    %al,(%eax)
	...

080496a8 <__F_HIDDEN>:
 80496a8:	b9 8c 04 08 98       	mov    $0x9808048c,%ecx

080496ac <name___F_LENMASK>:
 80496ac:	98                   	cwtl   
 80496ad:	96                   	xchg   %eax,%esi
 80496ae:	04 08                	add    $0x8,%al
 80496b0:	09 46 5f             	or     %eax,0x5f(%esi)
 80496b3:	4c                   	dec    %esp
 80496b4:	45                   	inc    %ebp
 80496b5:	4e                   	dec    %esi
 80496b6:	4d                   	dec    %ebp
 80496b7:	41                   	inc    %ecx
 80496b8:	53                   	push   %ebx
 80496b9:	4b                   	dec    %ebx
	...

080496bc <__F_LENMASK>:
 80496bc:	be 8c 04 08 ac       	mov    $0xac08048c,%esi

080496c0 <name_SYS_EXIT>:
 80496c0:	ac                   	lods   %ds:(%esi),%al
 80496c1:	96                   	xchg   %eax,%esi
 80496c2:	04 08                	add    $0x8,%al
 80496c4:	08 53 59             	or     %dl,0x59(%ebx)
 80496c7:	53                   	push   %ebx
 80496c8:	5f                   	pop    %edi
 80496c9:	45                   	inc    %ebp
 80496ca:	58                   	pop    %eax
 80496cb:	49                   	dec    %ecx
 80496cc:	54                   	push   %esp
 80496cd:	00 00                	add    %al,(%eax)
	...

080496d0 <SYS_EXIT>:
 80496d0:	c3                   	ret    
 80496d1:	8c 04 08             	mov    %es,(%eax,%ecx,1)

080496d4 <name_SYS_OPEN>:
 80496d4:	c0 96 04 08 08 53 59 	rclb   $0x59,0x53080804(%esi)
 80496db:	53                   	push   %ebx
 80496dc:	5f                   	pop    %edi
 80496dd:	4f                   	dec    %edi
 80496de:	50                   	push   %eax
 80496df:	45                   	inc    %ebp
 80496e0:	4e                   	dec    %esi
 80496e1:	00 00                	add    %al,(%eax)
	...

080496e4 <SYS_OPEN>:
 80496e4:	c8 8c 04 08          	enter  $0x48c,$0x8

080496e8 <name_SYS_CLOSE>:
 80496e8:	d4 96                	aam    $0x96
 80496ea:	04 08                	add    $0x8,%al
 80496ec:	09 53 59             	or     %edx,0x59(%ebx)
 80496ef:	53                   	push   %ebx
 80496f0:	5f                   	pop    %edi
 80496f1:	43                   	inc    %ebx
 80496f2:	4c                   	dec    %esp
 80496f3:	4f                   	dec    %edi
 80496f4:	53                   	push   %ebx
 80496f5:	45                   	inc    %ebp
	...

080496f8 <SYS_CLOSE>:
 80496f8:	cd 8c                	int    $0x8c
 80496fa:	04 08                	add    $0x8,%al

080496fc <name_SYS_READ>:
 80496fc:	e8 96 04 08 08       	call   100c9b97 <_end+0x80677b3>
 8049701:	53                   	push   %ebx
 8049702:	59                   	pop    %ecx
 8049703:	53                   	push   %ebx
 8049704:	5f                   	pop    %edi
 8049705:	52                   	push   %edx
 8049706:	45                   	inc    %ebp
 8049707:	41                   	inc    %ecx
 8049708:	44                   	inc    %esp
 8049709:	00 00                	add    %al,(%eax)
	...

0804970c <SYS_READ>:
 804970c:	d2 8c 04 08 fc 96 04 	rorb   %cl,0x496fc08(%esp,%eax,1)

08049710 <name_SYS_WRITE>:
 8049710:	fc                   	cld    
 8049711:	96                   	xchg   %eax,%esi
 8049712:	04 08                	add    $0x8,%al
 8049714:	09 53 59             	or     %edx,0x59(%ebx)
 8049717:	53                   	push   %ebx
 8049718:	5f                   	pop    %edi
 8049719:	57                   	push   %edi
 804971a:	52                   	push   %edx
 804971b:	49                   	dec    %ecx
 804971c:	54                   	push   %esp
 804971d:	45                   	inc    %ebp
	...

08049720 <SYS_WRITE>:
 8049720:	d7                   	xlat   %ds:(%ebx)
 8049721:	8c 04 08             	mov    %es,(%eax,%ecx,1)

08049724 <name_SYS_CREAT>:
 8049724:	10 97 04 08 09 53    	adc    %dl,0x53090804(%edi)
 804972a:	59                   	pop    %ecx
 804972b:	53                   	push   %ebx
 804972c:	5f                   	pop    %edi
 804972d:	43                   	inc    %ebx
 804972e:	52                   	push   %edx
 804972f:	45                   	inc    %ebp
 8049730:	41                   	inc    %ecx
 8049731:	54                   	push   %esp
	...

08049734 <SYS_CREAT>:
 8049734:	dc 8c 04 08 24 97 04 	fmull  0x4972408(%esp,%eax,1)

08049738 <name___O_RDONLY>:
 8049738:	24 97                	and    $0x97,%al
 804973a:	04 08                	add    $0x8,%al
 804973c:	08 4f 5f             	or     %cl,0x5f(%edi)
 804973f:	52                   	push   %edx
 8049740:	44                   	inc    %esp
 8049741:	4f                   	dec    %edi
 8049742:	4e                   	dec    %esi
 8049743:	4c                   	dec    %esp
 8049744:	59                   	pop    %ecx
 8049745:	00 00                	add    %al,(%eax)
	...

08049748 <__O_RDONLY>:
 8049748:	e1 8c                	loope  80496d6 <name_SYS_OPEN+0x2>
 804974a:	04 08                	add    $0x8,%al

0804974c <name___O_WRONLY>:
 804974c:	38 97 04 08 08 4f    	cmp    %dl,0x4f080804(%edi)
 8049752:	5f                   	pop    %edi
 8049753:	57                   	push   %edi
 8049754:	52                   	push   %edx
 8049755:	4f                   	dec    %edi
 8049756:	4e                   	dec    %esi
 8049757:	4c                   	dec    %esp
 8049758:	59                   	pop    %ecx
 8049759:	00 00                	add    %al,(%eax)
	...

0804975c <__O_WRONLY>:
 804975c:	e6 8c                	out    %al,$0x8c
 804975e:	04 08                	add    $0x8,%al

08049760 <name___O_RDWR>:
 8049760:	4c                   	dec    %esp
 8049761:	97                   	xchg   %eax,%edi
 8049762:	04 08                	add    $0x8,%al
 8049764:	06                   	push   %es
 8049765:	4f                   	dec    %edi
 8049766:	5f                   	pop    %edi
 8049767:	52                   	push   %edx
 8049768:	44                   	inc    %esp
 8049769:	57                   	push   %edi
 804976a:	52                   	push   %edx
	...

0804976c <__O_RDWR>:
 804976c:	eb 8c                	jmp    80496fa <SYS_CLOSE+0x2>
 804976e:	04 08                	add    $0x8,%al

08049770 <name___O_CREAT>:
 8049770:	60                   	pusha  
 8049771:	97                   	xchg   %eax,%edi
 8049772:	04 08                	add    $0x8,%al
 8049774:	07                   	pop    %es
 8049775:	4f                   	dec    %edi
 8049776:	5f                   	pop    %edi
 8049777:	43                   	inc    %ebx
 8049778:	52                   	push   %edx
 8049779:	45                   	inc    %ebp
 804977a:	41                   	inc    %ecx
 804977b:	54                   	push   %esp

0804977c <__O_CREAT>:
 804977c:	f0 8c 04 08          	lock mov %es,(%eax,%ecx,1)

08049780 <name___O_EXCL>:
 8049780:	70 97                	jo     8049719 <name_SYS_WRITE+0x9>
 8049782:	04 08                	add    $0x8,%al
 8049784:	06                   	push   %es
 8049785:	4f                   	dec    %edi
 8049786:	5f                   	pop    %edi
 8049787:	45                   	inc    %ebp
 8049788:	58                   	pop    %eax
 8049789:	43                   	inc    %ebx
 804978a:	4c                   	dec    %esp
	...

0804978c <__O_EXCL>:
 804978c:	f5                   	cmc    
 804978d:	8c 04 08             	mov    %es,(%eax,%ecx,1)

08049790 <name___O_TRUNC>:
 8049790:	80 97 04 08 07 4f 5f 	adcb   $0x5f,0x4f070804(%edi)
 8049797:	54                   	push   %esp
 8049798:	52                   	push   %edx
 8049799:	55                   	push   %ebp
 804979a:	4e                   	dec    %esi
 804979b:	43                   	inc    %ebx

0804979c <__O_TRUNC>:
 804979c:	fd                   	std    
 804979d:	8c 04 08             	mov    %es,(%eax,%ecx,1)

080497a0 <name___O_APPEND>:
 80497a0:	90                   	nop
 80497a1:	97                   	xchg   %eax,%edi
 80497a2:	04 08                	add    $0x8,%al
 80497a4:	08 4f 5f             	or     %cl,0x5f(%edi)
 80497a7:	41                   	inc    %ecx
 80497a8:	50                   	push   %eax
 80497a9:	50                   	push   %eax
 80497aa:	45                   	inc    %ebp
 80497ab:	4e                   	dec    %esi
 80497ac:	44                   	inc    %esp
 80497ad:	00 00                	add    %al,(%eax)
	...

080497b0 <__O_APPEND>:
 80497b0:	05 8d 04 08 a0       	add    $0xa008048d,%eax

080497b4 <name___O_NONBLOCK>:
 80497b4:	a0 97 04 08 0a       	mov    0xa080497,%al
 80497b9:	4f                   	dec    %edi
 80497ba:	5f                   	pop    %edi
 80497bb:	4e                   	dec    %esi
 80497bc:	4f                   	dec    %edi
 80497bd:	4e                   	dec    %esi
 80497be:	42                   	inc    %edx
 80497bf:	4c                   	dec    %esp
 80497c0:	4f                   	dec    %edi
 80497c1:	43                   	inc    %ebx
 80497c2:	4b                   	dec    %ebx
	...

080497c4 <__O_NONBLOCK>:
 80497c4:	0d 8d 04 08 3a       	or     $0x3a08048d,%eax

080497c8 <sdlinit_ver_msg>:
 80497c8:	3a 3a                	cmp    (%edx),%bh
 80497ca:	20 63 75             	and    %ah,0x75(%ebx)
 80497cd:	72 72                	jb     8049841 <sdlquit_msg+0x1>
 80497cf:	65 6e                	outsb  %gs:(%esi),(%dx)
 80497d1:	74 20                	je     80497f3 <sdlinit_err_msg+0x4>
 80497d3:	76 65                	jbe    804983a <name_SDLINIT+0xa>
 80497d5:	72 73                	jb     804984a <sdlquit_msg+0xa>
 80497d7:	69 6f 6e 20 6f 66 20 	imul   $0x20666f20,0x6e(%edi),%ebp
 80497de:	53                   	push   %ebx
 80497df:	44                   	inc    %esp
 80497e0:	4c                   	dec    %esp
 80497e1:	20 69 73             	and    %ch,0x73(%ecx)
 80497e4:	20 25 64 2e 25 64    	and    %ah,0x64252e64
 80497ea:	2e 25 64 0a 00 3a    	cs and $0x3a000a64,%eax

080497ef <sdlinit_err_msg>:
 80497ef:	3a 3a                	cmp    (%edx),%bh
 80497f1:	20 53 44             	and    %dl,0x44(%ebx)
 80497f4:	4c                   	dec    %esp
 80497f5:	20 63 6f             	and    %ah,0x6f(%ebx)
 80497f8:	75 6c                	jne    8049866 <sdlwnd_header+0x6>
 80497fa:	64 20 6e 6f          	and    %ch,%fs:0x6f(%esi)
 80497fe:	74 20                	je     8049820 <sdlinit_ok_msg+0x5>
 8049800:	69 6e 69 74 69 61 6c 	imul   $0x6c616974,0x69(%esi),%ebp
 8049807:	69 7a 65 21 20 53 44 	imul   $0x44532021,0x65(%edx),%edi
 804980e:	4c                   	dec    %esp
 804980f:	5f                   	pop    %edi
 8049810:	45                   	inc    %ebp
 8049811:	72 72                	jb     8049885 <sdlwnd_err_msg+0x18>
 8049813:	6f                   	outsl  %ds:(%esi),(%dx)
 8049814:	72 3a                	jb     8049850 <name_SDLQUIT>
 8049816:	20 25 73 0a 00 3a    	and    %ah,0x3a000a73

0804981b <sdlinit_ok_msg>:
 804981b:	3a 3a                	cmp    (%edx),%bh
 804981d:	20 53 44             	and    %dl,0x44(%ebx)
 8049820:	4c                   	dec    %esp
 8049821:	5f                   	pop    %edi
 8049822:	49                   	dec    %ecx
 8049823:	6e                   	outsb  %ds:(%esi),(%dx)
 8049824:	69 74 20 69 73 20 4f 	imul   $0x4b4f2073,0x69(%eax,%eiz,1),%esi
 804982b:	4b 
 804982c:	0a 00                	or     (%eax),%al
	...

08049830 <name_SDLINIT>:
 8049830:	b4 97                	mov    $0x97,%ah
 8049832:	04 08                	add    $0x8,%al
 8049834:	07                   	pop    %es
 8049835:	73 64                	jae    804989b <name_SDLWND+0x3>
 8049837:	6c                   	insb   (%dx),%es:(%edi)
 8049838:	69 6e 69 74 15 8d 04 	imul   $0x48d1574,0x69(%esi),%ebp

0804983c <SDLINIT>:
 804983c:	15 8d 04 08 3a       	adc    $0x3a08048d,%eax

08049840 <sdlquit_msg>:
 8049840:	3a 3a                	cmp    (%edx),%bh
 8049842:	20 53 44             	and    %dl,0x44(%ebx)
 8049845:	4c                   	dec    %esp
 8049846:	5f                   	pop    %edi
 8049847:	51                   	push   %ecx
 8049848:	75 69                	jne    80498b3 <surface_err_msg+0xb>
 804984a:	74 0a                	je     8049856 <name_SDLQUIT+0x6>
 804984c:	00 00                	add    %al,(%eax)
	...

08049850 <name_SDLQUIT>:
 8049850:	30 98 04 08 07 73    	xor    %bl,0x73070804(%eax)
 8049856:	64 6c                	fs insb (%dx),%es:(%edi)
 8049858:	71 75                	jno    80498cf <surface_err_msg+0x27>
 804985a:	69 74 83 8d 04 08 53 	imul   $0x44530804,-0x73(%ebx,%eax,4),%esi
 8049861:	44 

0804985c <SDLQUIT>:
 804985c:	83 8d 04 08 53 44 4c 	orl    $0x4c,0x44530804(%ebp)

08049860 <sdlwnd_header>:
 8049860:	53                   	push   %ebx
 8049861:	44                   	inc    %esp
 8049862:	4c                   	dec    %esp
 8049863:	20 54 75 74          	and    %dl,0x74(%ebp,%esi,2)
 8049867:	6f                   	outsl  %ds:(%esi),(%dx)
 8049868:	72 69                	jb     80498d3 <surface_err_msg+0x2b>
 804986a:	61                   	popa   
 804986b:	6c                   	insb   (%dx),%es:(%edi)
	...

0804986d <sdlwnd_err_msg>:
 804986d:	3a 3a                	cmp    (%edx),%bh
 804986f:	20 44 69 64          	and    %al,0x64(%ecx,%ebp,2)
 8049873:	6e                   	outsb  %ds:(%esi),(%dx)
 8049874:	27                   	daa    
 8049875:	74 20                	je     8049897 <sdlwnd_err_msg+0x2a>
 8049877:	63 72 65             	arpl   %si,0x65(%edx)
 804987a:	61                   	popa   
 804987b:	74 65                	je     80498e2 <SURFACE+0x2>
 804987d:	20 77 69             	and    %dh,0x69(%edi)
 8049880:	6e                   	outsb  %ds:(%esi),(%dx)
 8049881:	64 6f                	outsl  %fs:(%esi),(%dx)
 8049883:	77 21                	ja     80498a6 <SDLWND+0x2>
 8049885:	20 53 44             	and    %dl,0x44(%ebx)
 8049888:	4c                   	dec    %esp
 8049889:	5f                   	pop    %edi
 804988a:	45                   	inc    %ebp
 804988b:	72 72                	jb     80498ff <name_GETPIX+0xb>
 804988d:	6f                   	outsl  %ds:(%esi),(%dx)
 804988e:	72 3a                	jb     80498ca <surface_err_msg+0x22>
 8049890:	20 25 73 0a 00 00    	and    %ah,0xa73
	...

08049898 <name_SDLWND>:
 8049898:	50                   	push   %eax
 8049899:	98                   	cwtl   
 804989a:	04 08                	add    $0x8,%al
 804989c:	06                   	push   %es
 804989d:	73 64                	jae    8049903 <GETPIX+0x3>
 804989f:	6c                   	insb   (%dx),%es:(%edi)
 80498a0:	77 6e                	ja     8049910 <DRAWPIX>
 80498a2:	64 00 98 8d 04 08 3a 	add    %bl,%fs:0x3a08048d(%eax)

080498a4 <SDLWND>:
 80498a4:	98                   	cwtl   
 80498a5:	8d 04 08             	lea    (%eax,%ecx,1),%eax

080498a8 <surface_err_msg>:
 80498a8:	3a 3a                	cmp    (%edx),%bh
 80498aa:	20 44 69 64          	and    %al,0x64(%ecx,%ebp,2)
 80498ae:	6e                   	outsb  %ds:(%esi),(%dx)
 80498af:	27                   	daa    
 80498b0:	74 20                	je     80498d2 <surface_err_msg+0x2a>
 80498b2:	63 72 65             	arpl   %si,0x65(%edx)
 80498b5:	61                   	popa   
 80498b6:	74 65                	je     804991d <name_HELLO+0x9>
 80498b8:	20 73 75             	and    %dh,0x75(%ebx)
 80498bb:	72 66                	jb     8049923 <HELLO+0x3>
 80498bd:	61                   	popa   
 80498be:	63 65 21             	arpl   %sp,0x21(%ebp)
 80498c1:	20 53 44             	and    %dl,0x44(%ebx)
 80498c4:	4c                   	dec    %esp
 80498c5:	5f                   	pop    %edi
 80498c6:	45                   	inc    %ebp
 80498c7:	72 72                	jb     804993b <name_TOR+0x7>
 80498c9:	6f                   	outsl  %ds:(%esi),(%dx)
 80498ca:	72 3a                	jb     8049906 <name_DRAWPIX+0x2>
 80498cc:	20 25 73 0a 00 00    	and    %ah,0xa73
	...

080498d4 <name_SURFACE>:
 80498d4:	98                   	cwtl   
 80498d5:	98                   	cwtl   
 80498d6:	04 08                	add    $0x8,%al
 80498d8:	07                   	pop    %es
 80498d9:	73 75                	jae    8049950 <name_RSPFETCH+0x4>
 80498db:	72 66                	jb     8049943 <name_FROMR+0x3>
 80498dd:	61                   	popa   
 80498de:	63 65 e2             	arpl   %sp,-0x1e(%ebp)

080498e0 <SURFACE>:
 80498e0:	e2 8d                	loop   804986f <sdlwnd_err_msg+0x2>
 80498e2:	04 08                	add    $0x8,%al

080498e4 <name_DELAY>:
 80498e4:	d4 98                	aam    $0x98
 80498e6:	04 08                	add    $0x8,%al
 80498e8:	05 64 65 6c 61       	add    $0x616c6564,%eax
 80498ed:	79 00                	jns    80498ef <name_DELAY+0xb>
	...

080498f0 <DELAY>:
 80498f0:	13 8e 04 08 e4 98    	adc    -0x671bf7fc(%esi),%ecx

080498f4 <name_GETPIX>:
 80498f4:	e4 98                	in     $0x98,%al
 80498f6:	04 08                	add    $0x8,%al
 80498f8:	06                   	push   %es
 80498f9:	67 65 74 70          	addr16 gs je 804996d <name_RDROP+0x1>
 80498fd:	69 78 00 26 8e 04 08 	imul   $0x8048e26,0x0(%eax),%edi

08049900 <GETPIX>:
 8049900:	26 8e 04 08          	mov    %es:(%eax,%ecx,1),%es

08049904 <name_DRAWPIX>:
 8049904:	f4                   	hlt    
 8049905:	98                   	cwtl   
 8049906:	04 08                	add    $0x8,%al
 8049908:	07                   	pop    %es
 8049909:	64 72 61             	fs jb  804996d <name_RDROP+0x1>
 804990c:	77 70                	ja     804997e <name_DROP+0x2>
 804990e:	69 78 85 8e 04 08 04 	imul   $0x408048e,-0x7b(%eax),%edi

08049910 <DRAWPIX>:
 8049910:	85 8e 04 08 04 99    	test   %ecx,-0x66fbf7fc(%esi)

08049914 <name_HELLO>:
 8049914:	04 99                	add    $0x99,%al
 8049916:	04 08                	add    $0x8,%al
 8049918:	06                   	push   %es
 8049919:	48                   	dec    %eax
 804991a:	65 6c                	gs insb (%dx),%es:(%edi)
 804991c:	6c                   	insb   (%dx),%es:(%edi)
 804991d:	6f                   	outsl  %ds:(%esi),(%dx)
 804991e:	21 00                	and    %eax,(%eax)

08049920 <HELLO>:
 8049920:	dc 8f 04 08 48 65    	fmull  0x65480804(%edi)

08049924 <param>:
 8049924:	48                   	dec    %eax
 8049925:	65 6c                	gs insb (%dx),%es:(%edi)
 8049927:	6c                   	insb   (%dx),%es:(%edi)
 8049928:	6f                   	outsl  %ds:(%esi),(%dx)
 8049929:	20 4d 69             	and    %cl,0x69(%ebp)
 804992c:	73 68                	jae    8049996 <name_SWAP+0xa>
 804992e:	61                   	popa   
 804992f:	21 00                	and    %eax,(%eax)
 8049931:	00 00                	add    %al,(%eax)
	...

08049934 <name_TOR>:
 8049934:	14 99                	adc    $0x99,%al
 8049936:	04 08                	add    $0x8,%al
 8049938:	02 3e                	add    (%esi),%bh
 804993a:	52                   	push   %edx
	...

0804993c <TOR>:
 804993c:	ea 8f 04 08 34 99 04 	ljmp   $0x499,$0x3408048f

08049940 <name_FROMR>:
 8049940:	34 99                	xor    $0x99,%al
 8049942:	04 08                	add    $0x8,%al
 8049944:	02 52 3e             	add    0x3e(%edx),%dl
	...

08049948 <FROMR>:
 8049948:	f4                   	hlt    
 8049949:	8f 04 08             	popl   (%eax,%ecx,1)

0804994c <name_RSPFETCH>:
 804994c:	40                   	inc    %eax
 804994d:	99                   	cltd   
 804994e:	04 08                	add    $0x8,%al
 8049950:	04 52                	add    $0x52,%al
 8049952:	53                   	push   %ebx
 8049953:	50                   	push   %eax
 8049954:	40                   	inc    %eax
 8049955:	00 00                	add    %al,(%eax)
	...

08049958 <RSPFETCH>:
 8049958:	fe 8f 04 08 4c 99    	decb   -0x66b3f7fc(%edi)

0804995c <name_RSPSTORE>:
 804995c:	4c                   	dec    %esp
 804995d:	99                   	cltd   
 804995e:	04 08                	add    $0x8,%al
 8049960:	04 52                	add    $0x52,%al
 8049962:	53                   	push   %ebx
 8049963:	50                   	push   %eax
 8049964:	21 00                	and    %eax,(%eax)
	...

08049968 <RSPSTORE>:
 8049968:	02 90 04 08 5c 99    	add    -0x66a3f7fc(%eax),%dl

0804996c <name_RDROP>:
 804996c:	5c                   	pop    %esp
 804996d:	99                   	cltd   
 804996e:	04 08                	add    $0x8,%al
 8049970:	05 52 44 52 4f       	add    $0x4f524452,%eax
 8049975:	50                   	push   %eax
	...

08049978 <RDROP>:
 8049978:	06                   	push   %es
 8049979:	90                   	nop
 804997a:	04 08                	add    $0x8,%al

0804997c <name_DROP>:
 804997c:	6c                   	insb   (%dx),%es:(%edi)
 804997d:	99                   	cltd   
 804997e:	04 08                	add    $0x8,%al
 8049980:	04 44                	add    $0x44,%al
 8049982:	52                   	push   %edx
 8049983:	4f                   	dec    %edi
 8049984:	50                   	push   %eax
 8049985:	00 00                	add    %al,(%eax)
	...

08049988 <DROP>:
 8049988:	0c 90                	or     $0x90,%al
 804998a:	04 08                	add    $0x8,%al

0804998c <name_SWAP>:
 804998c:	7c 99                	jl     8049927 <param+0x3>
 804998e:	04 08                	add    $0x8,%al
 8049990:	04 53                	add    $0x53,%al
 8049992:	57                   	push   %edi
 8049993:	41                   	inc    %ecx
 8049994:	50                   	push   %eax
 8049995:	00 00                	add    %al,(%eax)
	...

08049998 <SWAP>:
 8049998:	10 90 04 08 8c 99    	adc    %dl,-0x6673f7fc(%eax)

0804999c <name_DUP>:
 804999c:	8c 99 04 08 03 44    	mov    %ds,0x44030804(%ecx)
 80499a2:	55                   	push   %ebp
 80499a3:	50                   	push   %eax

080499a4 <DUP>:
 80499a4:	17                   	pop    %ss
 80499a5:	90                   	nop
 80499a6:	04 08                	add    $0x8,%al

080499a8 <name_OVER>:
 80499a8:	9c                   	pushf  
 80499a9:	99                   	cltd   
 80499aa:	04 08                	add    $0x8,%al
 80499ac:	04 4f                	add    $0x4f,%al
 80499ae:	56                   	push   %esi
 80499af:	45                   	inc    %ebp
 80499b0:	52                   	push   %edx
 80499b1:	00 00                	add    %al,(%eax)
	...

080499b4 <OVER>:
 80499b4:	1e                   	push   %ds
 80499b5:	90                   	nop
 80499b6:	04 08                	add    $0x8,%al

080499b8 <name_ROT>:
 80499b8:	a8 99                	test   $0x99,%al
 80499ba:	04 08                	add    $0x8,%al
 80499bc:	03 52 4f             	add    0x4f(%edx),%edx
 80499bf:	54                   	push   %esp

080499c0 <ROT>:
 80499c0:	26 90                	es nop
 80499c2:	04 08                	add    $0x8,%al

080499c4 <name_NROT>:
 80499c4:	b8 99 04 08 04       	mov    $0x4080499,%eax
 80499c9:	2d 52 4f 54 00       	sub    $0x544f52,%eax
	...

080499d0 <NROT>:
 80499d0:	2f                   	das    
 80499d1:	90                   	nop
 80499d2:	04 08                	add    $0x8,%al

080499d4 <name_TWODROP>:
 80499d4:	c4 99 04 08 05 32    	les    0x32050804(%ecx),%ebx
 80499da:	44                   	inc    %esp
 80499db:	52                   	push   %edx
 80499dc:	4f                   	dec    %edi
 80499dd:	50                   	push   %eax
	...

080499e0 <TWODROP>:
 80499e0:	38 90 04 08 d4 99    	cmp    %dl,-0x662bf7fc(%eax)

080499e4 <name_TWODUP>:
 80499e4:	d4 99                	aam    $0x99
 80499e6:	04 08                	add    $0x8,%al
 80499e8:	04 32                	add    $0x32,%al
 80499ea:	44                   	inc    %esp
 80499eb:	55                   	push   %ebp
 80499ec:	50                   	push   %eax
 80499ed:	00 00                	add    %al,(%eax)
	...

080499f0 <TWODUP>:
 80499f0:	3d 90 04 08 e4       	cmp    $0xe4080490,%eax

080499f4 <name_TWOSWAP>:
 80499f4:	e4 99                	in     $0x99,%al
 80499f6:	04 08                	add    $0x8,%al
 80499f8:	05 32 53 57 41       	add    $0x41575332,%eax
 80499fd:	50                   	push   %eax
	...

08049a00 <TWOSWAP>:
 8049a00:	49                   	dec    %ecx
 8049a01:	90                   	nop
 8049a02:	04 08                	add    $0x8,%al

08049a04 <name_QDUP>:
 8049a04:	f4                   	hlt    
 8049a05:	99                   	cltd   
 8049a06:	04 08                	add    $0x8,%al
 8049a08:	04 3f                	add    $0x3f,%al
 8049a0a:	44                   	inc    %esp
 8049a0b:	55                   	push   %ebp
 8049a0c:	50                   	push   %eax
 8049a0d:	00 00                	add    %al,(%eax)
	...

08049a10 <QDUP>:
 8049a10:	54                   	push   %esp
 8049a11:	90                   	nop
 8049a12:	04 08                	add    $0x8,%al

08049a14 <name_INCR>:
 8049a14:	04 9a                	add    $0x9a,%al
 8049a16:	04 08                	add    $0x8,%al
 8049a18:	02 31                	add    (%ecx),%dh
 8049a1a:	2b 00                	sub    (%eax),%eax

08049a1c <INCR>:
 8049a1c:	5f                   	pop    %edi
 8049a1d:	90                   	nop
 8049a1e:	04 08                	add    $0x8,%al

08049a20 <name_DECR>:
 8049a20:	14 9a                	adc    $0x9a,%al
 8049a22:	04 08                	add    $0x8,%al
 8049a24:	02 31                	add    (%ecx),%dh
 8049a26:	2d 00 65 90 04       	sub    $0x4906500,%eax

08049a28 <DECR>:
 8049a28:	65 90                	gs nop
 8049a2a:	04 08                	add    $0x8,%al

08049a2c <name_INCR4>:
 8049a2c:	20 9a 04 08 02 34    	and    %bl,0x34020804(%edx)
 8049a32:	2b 00                	sub    (%eax),%eax

08049a34 <INCR4>:
 8049a34:	6b 90 04 08 2c 9a 04 	imul   $0x4,-0x65d3f7fc(%eax),%edx

08049a38 <name_DECR4>:
 8049a38:	2c 9a                	sub    $0x9a,%al
 8049a3a:	04 08                	add    $0x8,%al
 8049a3c:	02 34 2d 00 72 90 04 	add    0x4907200(,%ebp,1),%dh

08049a40 <DECR4>:
 8049a40:	72 90                	jb     80499d2 <NROT+0x2>
 8049a42:	04 08                	add    $0x8,%al

08049a44 <name_ADD>:
 8049a44:	38 9a 04 08 01 2b    	cmp    %bl,0x2b010804(%edx)
	...

08049a4c <ADD>:
 8049a4c:	79 90                	jns    80499de <name_TWODROP+0xa>
 8049a4e:	04 08                	add    $0x8,%al

08049a50 <name_SUB>:
 8049a50:	44                   	inc    %esp
 8049a51:	9a 04 08 01 2d 00 00 	lcall  $0x0,$0x2d010804

08049a58 <SUB>:
 8049a58:	80 90 04 08 50 9a 04 	adcb   $0x4,-0x65aff7fc(%eax)

08049a5c <name_MUL>:
 8049a5c:	50                   	push   %eax
 8049a5d:	9a 04 08 01 2a 00 00 	lcall  $0x0,$0x2a010804

08049a64 <MUL>:
 8049a64:	87 90 04 08 5c 9a    	xchg   %edx,-0x65a3f7fc(%eax)

08049a68 <name_DIVMOD>:
 8049a68:	5c                   	pop    %esp
 8049a69:	9a 04 08 04 2f 4d 4f 	lcall  $0x4f4d,$0x2f040804
 8049a70:	44                   	inc    %esp
 8049a71:	00 00                	add    %al,(%eax)
	...

08049a74 <DIVMOD>:
 8049a74:	90                   	nop
 8049a75:	90                   	nop
 8049a76:	04 08                	add    $0x8,%al

08049a78 <name_UDIVMOD>:
 8049a78:	68 9a 04 08 05       	push   $0x508049a
 8049a7d:	55                   	push   %ebp
 8049a7e:	2f                   	das    
 8049a7f:	4d                   	dec    %ebp
 8049a80:	4f                   	dec    %edi
 8049a81:	44                   	inc    %esp
	...

08049a84 <UDIVMOD>:
 8049a84:	9a 90 04 08 78 9a 04 	lcall  $0x49a,$0x78080490

08049a88 <name_EQU>:
 8049a88:	78 9a                	js     8049a24 <name_DECR+0x4>
 8049a8a:	04 08                	add    $0x8,%al
 8049a8c:	01 3d 00 00 a5 90    	add    %edi,0x90a50000

08049a90 <EQU>:
 8049a90:	a5                   	movsl  %ds:(%esi),%es:(%edi)
 8049a91:	90                   	nop
 8049a92:	04 08                	add    $0x8,%al

08049a94 <name_NEQU>:
 8049a94:	88 9a 04 08 02 3c    	mov    %bl,0x3c020804(%edx)
 8049a9a:	3e 00 b3 90 04 08 94 	add    %dh,%ds:-0x6bf7fb70(%ebx)

08049a9c <NEQU>:
 8049a9c:	b3 90                	mov    $0x90,%bl
 8049a9e:	04 08                	add    $0x8,%al

08049aa0 <name_LT>:
 8049aa0:	94                   	xchg   %eax,%esp
 8049aa1:	9a 04 08 01 3c 00 00 	lcall  $0x0,$0x3c010804

08049aa8 <LT>:
 8049aa8:	c1 90 04 08 a0 9a 04 	rcll   $0x4,-0x655ff7fc(%eax)

08049aac <name_GT>:
 8049aac:	a0 9a 04 08 01       	mov    0x108049a,%al
 8049ab1:	3e 00 00             	add    %al,%ds:(%eax)

08049ab4 <GT>:
 8049ab4:	cf                   	iret   
 8049ab5:	90                   	nop
 8049ab6:	04 08                	add    $0x8,%al

08049ab8 <name_LE>:
 8049ab8:	ac                   	lods   %ds:(%esi),%al
 8049ab9:	9a 04 08 02 3c 3d 00 	lcall  $0x3d,$0x3c020804

08049ac0 <LE>:
 8049ac0:	dd 90 04 08 b8 9a    	fstl   -0x6547f7fc(%eax)

08049ac4 <name_GE>:
 8049ac4:	b8 9a 04 08 02       	mov    $0x208049a,%eax
 8049ac9:	3e 3d 00 eb 90 04    	ds cmp $0x490eb00,%eax

08049acc <GE>:
 8049acc:	eb 90                	jmp    8049a5e <name_MUL+0x2>
 8049ace:	04 08                	add    $0x8,%al

08049ad0 <name_ZEQU>:
 8049ad0:	c4 9a 04 08 02 30    	les    0x30020804(%edx),%ebx
 8049ad6:	3d 00 f9 90 04       	cmp    $0x490f900,%eax

08049ad8 <ZEQU>:
 8049ad8:	f9                   	stc    
 8049ad9:	90                   	nop
 8049ada:	04 08                	add    $0x8,%al

08049adc <name_ZNEQU>:
 8049adc:	d0 9a 04 08 03 30    	rcrb   0x30030804(%edx)
 8049ae2:	3c 3e                	cmp    $0x3e,%al

08049ae4 <ZNEQU>:
 8049ae4:	06                   	push   %es
 8049ae5:	91                   	xchg   %eax,%ecx
 8049ae6:	04 08                	add    $0x8,%al

08049ae8 <name_ZLT>:
 8049ae8:	dc 9a 04 08 02 30    	fcompl 0x30020804(%edx)
 8049aee:	3c 00                	cmp    $0x0,%al

08049af0 <ZLT>:
 8049af0:	13 91 04 08 e8 9a    	adc    -0x6517f7fc(%ecx),%edx

08049af4 <name_ZGT>:
 8049af4:	e8 9a 04 08 02       	call   a0c9f93 <_end+0x2067baf>
 8049af9:	30 3e                	xor    %bh,(%esi)
	...

08049afc <ZGT>:
 8049afc:	20 91 04 08 f4 9a    	and    %dl,-0x650bf7fc(%ecx)

08049b00 <name_ZLE>:
 8049b00:	f4                   	hlt    
 8049b01:	9a 04 08 03 30 3c 3d 	lcall  $0x3d3c,$0x30030804

08049b08 <ZLE>:
 8049b08:	2d 91 04 08 00       	sub    $0x80491,%eax

08049b0c <name_ZGE>:
 8049b0c:	00 9b 04 08 03 30    	add    %bl,0x30030804(%ebx)
 8049b12:	3e 3d 3a 91 04 08    	ds cmp $0x804913a,%eax

08049b14 <ZGE>:
 8049b14:	3a 91 04 08 0c 9b    	cmp    -0x64f3f7fc(%ecx),%dl

08049b18 <name_AND>:
 8049b18:	0c 9b                	or     $0x9b,%al
 8049b1a:	04 08                	add    $0x8,%al
 8049b1c:	03 41 4e             	add    0x4e(%ecx),%eax
 8049b1f:	44                   	inc    %esp

08049b20 <AND>:
 8049b20:	47                   	inc    %edi
 8049b21:	91                   	xchg   %eax,%ecx
 8049b22:	04 08                	add    $0x8,%al

08049b24 <name_OR>:
 8049b24:	18 9b 04 08 02 4f    	sbb    %bl,0x4f020804(%ebx)
 8049b2a:	52                   	push   %edx
	...

08049b2c <OR>:
 8049b2c:	4e                   	dec    %esi
 8049b2d:	91                   	xchg   %eax,%ecx
 8049b2e:	04 08                	add    $0x8,%al

08049b30 <name_XOR>:
 8049b30:	24 9b                	and    $0x9b,%al
 8049b32:	04 08                	add    $0x8,%al
 8049b34:	03 58 4f             	add    0x4f(%eax),%ebx
 8049b37:	52                   	push   %edx

08049b38 <XOR>:
 8049b38:	55                   	push   %ebp
 8049b39:	91                   	xchg   %eax,%ecx
 8049b3a:	04 08                	add    $0x8,%al

08049b3c <name_INVERT>:
 8049b3c:	30 9b 04 08 06 49    	xor    %bl,0x49060804(%ebx)
 8049b42:	4e                   	dec    %esi
 8049b43:	56                   	push   %esi
 8049b44:	45                   	inc    %ebp
 8049b45:	52                   	push   %edx
 8049b46:	54                   	push   %esp
	...

08049b48 <INVERT>:
 8049b48:	5c                   	pop    %esp
 8049b49:	91                   	xchg   %eax,%ecx
 8049b4a:	04 08                	add    $0x8,%al

08049b4c <name_EXIT>:
 8049b4c:	3c 9b                	cmp    $0x9b,%al
 8049b4e:	04 08                	add    $0x8,%al
 8049b50:	04 45                	add    $0x45,%al
 8049b52:	58                   	pop    %eax
 8049b53:	49                   	dec    %ecx
 8049b54:	54                   	push   %esp
 8049b55:	00 00                	add    %al,(%eax)
	...

08049b58 <EXIT>:
 8049b58:	62 91 04 08 4c 9b    	bound  %edx,-0x64b3f7fc(%ecx)

08049b5c <name_STORE>:
 8049b5c:	4c                   	dec    %esp
 8049b5d:	9b                   	fwait
 8049b5e:	04 08                	add    $0x8,%al
 8049b60:	01 21                	add    %esp,(%ecx)
	...

08049b64 <STORE>:
 8049b64:	6b 91 04 08 5c 9b 04 	imul   $0x4,-0x64a3f7fc(%ecx),%edx

08049b68 <name_FETCH>:
 8049b68:	5c                   	pop    %esp
 8049b69:	9b                   	fwait
 8049b6a:	04 08                	add    $0x8,%al
 8049b6c:	01 40 00             	add    %eax,0x0(%eax)
	...

08049b70 <FETCH>:
 8049b70:	72 91                	jb     8049b03 <name_ZLE+0x3>
 8049b72:	04 08                	add    $0x8,%al

08049b74 <name_ADDSTORE>:
 8049b74:	68 9b 04 08 02       	push   $0x208049b
 8049b79:	2b 21                	sub    (%ecx),%esp
	...

08049b7c <ADDSTORE>:
 8049b7c:	79 91                	jns    8049b0f <name_ZGE+0x3>
 8049b7e:	04 08                	add    $0x8,%al

08049b80 <name_SUBSTORE>:
 8049b80:	74 9b                	je     8049b1d <name_AND+0x5>
 8049b82:	04 08                	add    $0x8,%al
 8049b84:	02 2d 21 00 80 91    	add    0x91800021,%ch

08049b88 <SUBSTORE>:
 8049b88:	80 91 04 08 80 9b 04 	adcb   $0x4,-0x647ff7fc(%ecx)

08049b8c <name_STOREBYTE>:
 8049b8c:	80 9b 04 08 02 43 21 	sbbb   $0x21,0x43020804(%ebx)
	...

08049b94 <STOREBYTE>:
 8049b94:	87 91 04 08 8c 9b    	xchg   %edx,-0x6473f7fc(%ecx)

08049b98 <name_FETCHBYTE>:
 8049b98:	8c 9b 04 08 02 43    	mov    %ds,0x43020804(%ebx)
 8049b9e:	40                   	inc    %eax
	...

08049ba0 <FETCHBYTE>:
 8049ba0:	8e 91 04 08 98 9b    	mov    -0x6467f7fc(%ecx),%ss

08049ba4 <name_CCOPY>:
 8049ba4:	98                   	cwtl   
 8049ba5:	9b                   	fwait
 8049ba6:	04 08                	add    $0x8,%al
 8049ba8:	04 43                	add    $0x43,%al
 8049baa:	40                   	inc    %eax
 8049bab:	43                   	inc    %ebx
 8049bac:	21 00                	and    %eax,(%eax)
	...

08049bb0 <CCOPY>:
 8049bb0:	97                   	xchg   %eax,%edi
 8049bb1:	91                   	xchg   %eax,%ecx
 8049bb2:	04 08                	add    $0x8,%al

08049bb4 <name_CMOVE>:
 8049bb4:	a4                   	movsb  %ds:(%esi),%es:(%edi)
 8049bb5:	9b                   	fwait
 8049bb6:	04 08                	add    $0x8,%al
 8049bb8:	05 43 4d 4f 56       	add    $0x564f4d43,%eax
 8049bbd:	45                   	inc    %ebp
	...

08049bc0 <CMOVE>:
 8049bc0:	a7                   	cmpsl  %es:(%edi),%ds:(%esi)
 8049bc1:	91                   	xchg   %eax,%ecx
 8049bc2:	04 08                	add    $0x8,%al

08049bc4 <name_DSPFETCH>:
 8049bc4:	b4 9b                	mov    $0x9b,%ah
 8049bc6:	04 08                	add    $0x8,%al
 8049bc8:	04 44                	add    $0x44,%al
 8049bca:	53                   	push   %ebx
 8049bcb:	50                   	push   %eax
 8049bcc:	40                   	inc    %eax
 8049bcd:	00 00                	add    %al,(%eax)
	...

08049bd0 <DSPFETCH>:
 8049bd0:	b3 91                	mov    $0x91,%bl
 8049bd2:	04 08                	add    $0x8,%al

08049bd4 <name_DSPSTORE>:
 8049bd4:	c4 9b 04 08 04 44    	les    0x44040804(%ebx),%ebx
 8049bda:	53                   	push   %ebx
 8049bdb:	50                   	push   %eax
 8049bdc:	21 00                	and    %eax,(%eax)
	...

08049be0 <DSPSTORE>:
 8049be0:	b9 91 04 08 d4       	mov    $0xd4080491,%ecx

08049be4 <name_KEY>:
 8049be4:	d4 9b                	aam    $0x9b
 8049be6:	04 08                	add    $0x8,%al
 8049be8:	03 4b 45             	add    0x45(%ebx),%ecx
 8049beb:	59                   	pop    %ecx

08049bec <KEY>:
 8049bec:	bd 91 04 08 e4       	mov    $0xe4080491,%ebp

08049bf0 <name_EMIT>:
 8049bf0:	e4 9b                	in     $0x9b,%al
 8049bf2:	04 08                	add    $0x8,%al
 8049bf4:	04 45                	add    $0x45,%al
 8049bf6:	4d                   	dec    %ebp
 8049bf7:	49                   	dec    %ecx
 8049bf8:	54                   	push   %esp
 8049bf9:	00 00                	add    %al,(%eax)
	...

08049bfc <EMIT>:
 8049bfc:	13 92 04 08 f0 9b    	adc    -0x640ff7fc(%edx),%edx

08049c00 <name_WORD>:
 8049c00:	f0 9b                	lock fwait
 8049c02:	04 08                	add    $0x8,%al
 8049c04:	04 57                	add    $0x57,%al
 8049c06:	4f                   	dec    %edi
 8049c07:	52                   	push   %edx
 8049c08:	44                   	inc    %esp
 8049c09:	00 00                	add    %al,(%eax)
	...

08049c0c <WORD>:
 8049c0c:	38 92 04 08 00 9c    	cmp    %dl,-0x63fff7fc(%edx)

08049c10 <name_FIND>:
 8049c10:	00 9c 04 08 04 46 49 	add    %bl,0x49460408(%esp,%eax,1)
 8049c17:	4e                   	dec    %esi
 8049c18:	44                   	inc    %esp
 8049c19:	00 00                	add    %al,(%eax)
	...

08049c1c <FIND>:
 8049c1c:	77 92                	ja     8049bb0 <CCOPY>
 8049c1e:	04 08                	add    $0x8,%al

08049c20 <name_TCFA>:
 8049c20:	10 9c 04 08 04 3e 43 	adc    %bl,0x433e0408(%esp,%eax,1)
 8049c27:	46                   	inc    %esi
 8049c28:	41                   	inc    %ecx
 8049c29:	00 00                	add    %al,(%eax)
	...

08049c2c <TCFA>:
 8049c2c:	af                   	scas   %es:(%edi),%eax
 8049c2d:	92                   	xchg   %eax,%edx
 8049c2e:	04 08                	add    $0x8,%al

08049c30 <name_TDFA>:
 8049c30:	20 9c 04 08 04 3e 44 	and    %bl,0x443e0408(%esp,%eax,1)
 8049c37:	46                   	inc    %esi
 8049c38:	41                   	inc    %ecx
 8049c39:	00 00                	add    %al,(%eax)
	...

08049c3c <TDFA>:
 8049c3c:	d0 8f 04 08 2c 9c    	rorb   -0x63d3f7fc(%edi)
 8049c42:	04 08                	add    $0x8,%al
 8049c44:	34 9a                	xor    $0x9a,%al
 8049c46:	04 08                	add    $0x8,%al
 8049c48:	58                   	pop    %eax
 8049c49:	9b                   	fwait
 8049c4a:	04 08                	add    $0x8,%al

08049c4c <name_NUMBER>:
 8049c4c:	30 9c 04 08 06 4e 55 	xor    %bl,0x554e0608(%esp,%eax,1)
 8049c53:	4d                   	dec    %ebp
 8049c54:	42                   	inc    %edx
 8049c55:	45                   	inc    %ebp
 8049c56:	52                   	push   %edx
	...

08049c58 <NUMBER>:
 8049c58:	cc                   	int3   
 8049c59:	92                   	xchg   %eax,%edx
 8049c5a:	04 08                	add    $0x8,%al

08049c5c <name_LIT>:
 8049c5c:	4c                   	dec    %esp
 8049c5d:	9c                   	pushf  
 8049c5e:	04 08                	add    $0x8,%al
 8049c60:	03 4c 49 54          	add    0x54(%ecx,%ecx,2),%ecx

08049c64 <LIT>:
 8049c64:	24 93                	and    $0x93,%al
 8049c66:	04 08                	add    $0x8,%al

08049c68 <name_LITSTRING>:
 8049c68:	5c                   	pop    %esp
 8049c69:	9c                   	pushf  
 8049c6a:	04 08                	add    $0x8,%al
 8049c6c:	09 4c 49 54          	or     %ecx,0x54(%ecx,%ecx,2)
 8049c70:	53                   	push   %ebx
 8049c71:	54                   	push   %esp
 8049c72:	52                   	push   %edx
 8049c73:	49                   	dec    %ecx
 8049c74:	4e                   	dec    %esi
 8049c75:	47                   	inc    %edi
	...

08049c78 <LITSTRING>:
 8049c78:	29 93 04 08 68 9c    	sub    %edx,-0x6397f7fc(%ebx)

08049c7c <name_TELL>:
 8049c7c:	68 9c 04 08 04       	push   $0x408049c
 8049c81:	54                   	push   %esp
 8049c82:	45                   	inc    %ebp
 8049c83:	4c                   	dec    %esp
 8049c84:	4c                   	dec    %esp
 8049c85:	00 00                	add    %al,(%eax)
	...

08049c88 <TELL>:
 8049c88:	37                   	aaa    
 8049c89:	93                   	xchg   %eax,%ebx
 8049c8a:	04 08                	add    $0x8,%al

08049c8c <name_CREATE>:
 8049c8c:	7c 9c                	jl     8049c2a <name_TCFA+0xa>
 8049c8e:	04 08                	add    $0x8,%al
 8049c90:	06                   	push   %es
 8049c91:	43                   	inc    %ebx
 8049c92:	52                   	push   %edx
 8049c93:	45                   	inc    %ebp
 8049c94:	41                   	inc    %ecx
 8049c95:	54                   	push   %esp
 8049c96:	45                   	inc    %ebp
	...

08049c98 <CREATE>:
 8049c98:	48                   	dec    %eax
 8049c99:	93                   	xchg   %eax,%ebx
 8049c9a:	04 08                	add    $0x8,%al

08049c9c <name_COMMA>:
 8049c9c:	8c 9c 04 08 01 2c 00 	mov    %ds,0x2c0108(%esp,%eax,1)
	...

08049ca4 <COMMA>:
 8049ca4:	78 93                	js     8049c39 <name_TDFA+0x9>
 8049ca6:	04 08                	add    $0x8,%al

08049ca8 <name_LBRAC>:
 8049ca8:	9c                   	pushf  
 8049ca9:	9c                   	pushf  
 8049caa:	04 08                	add    $0x8,%al
 8049cac:	81 5b 00 00 8f 93 04 	sbbl   $0x4938f00,0x0(%ebx)

08049cb0 <LBRAC>:
 8049cb0:	8f                   	(bad)  
 8049cb1:	93                   	xchg   %eax,%ebx
 8049cb2:	04 08                	add    $0x8,%al

08049cb4 <name_RBRAC>:
 8049cb4:	a8 9c                	test   $0x9c,%al
 8049cb6:	04 08                	add    $0x8,%al
 8049cb8:	01 5d 00             	add    %ebx,0x0(%ebp)
	...

08049cbc <RBRAC>:
 8049cbc:	99                   	cltd   
 8049cbd:	93                   	xchg   %eax,%ebx
 8049cbe:	04 08                	add    $0x8,%al

08049cc0 <name_COLON>:
 8049cc0:	b4 9c                	mov    $0x9c,%ah
 8049cc2:	04 08                	add    $0x8,%al
 8049cc4:	01 3a                	add    %edi,(%edx)
	...

08049cc8 <COLON>:
 8049cc8:	d0 8f 04 08 0c 9c    	rorb   -0x63f3f7fc(%edi)
 8049cce:	04 08                	add    $0x8,%al
 8049cd0:	98                   	cwtl   
 8049cd1:	9c                   	pushf  
 8049cd2:	04 08                	add    $0x8,%al
 8049cd4:	64 9c                	fs pushf 
 8049cd6:	04 08                	add    $0x8,%al
 8049cd8:	d0 8f 04 08 a4 9c    	rorb   -0x635bf7fc(%edi)
 8049cde:	04 08                	add    $0x8,%al
 8049ce0:	3c 96                	cmp    $0x96,%al
 8049ce2:	04 08                	add    $0x8,%al
 8049ce4:	70 9b                	jo     8049c81 <name_TELL+0x5>
 8049ce6:	04 08                	add    $0x8,%al
 8049ce8:	40                   	inc    %eax
 8049ce9:	9d                   	popf   
 8049cea:	04 08                	add    $0x8,%al
 8049cec:	bc 9c 04 08 58       	mov    $0x5808049c,%esp
 8049cf1:	9b                   	fwait
 8049cf2:	04 08                	add    $0x8,%al

08049cf4 <name_SEMICOLON>:
 8049cf4:	c0 9c 04 08 81 3b 00 	rcrb   $0x0,0x3b8108(%esp,%eax,1)
 8049cfb:	00 

08049cfc <SEMICOLON>:
 8049cfc:	d0 8f 04 08 64 9c    	rorb   -0x639bf7fc(%edi)
 8049d02:	04 08                	add    $0x8,%al
 8049d04:	58                   	pop    %eax
 8049d05:	9b                   	fwait
 8049d06:	04 08                	add    $0x8,%al
 8049d08:	a4                   	movsb  %ds:(%esi),%es:(%edi)
 8049d09:	9c                   	pushf  
 8049d0a:	04 08                	add    $0x8,%al
 8049d0c:	3c 96                	cmp    $0x96,%al
 8049d0e:	04 08                	add    $0x8,%al
 8049d10:	70 9b                	jo     8049cad <name_LBRAC+0x5>
 8049d12:	04 08                	add    $0x8,%al
 8049d14:	40                   	inc    %eax
 8049d15:	9d                   	popf   
 8049d16:	04 08                	add    $0x8,%al
 8049d18:	b0 9c                	mov    $0x9c,%al
 8049d1a:	04 08                	add    $0x8,%al
 8049d1c:	58                   	pop    %eax
 8049d1d:	9b                   	fwait
 8049d1e:	04 08                	add    $0x8,%al

08049d20 <name_IMMEDIATE>:
 8049d20:	f4                   	hlt    
 8049d21:	9c                   	pushf  
 8049d22:	04 08                	add    $0x8,%al
 8049d24:	89 49 4d             	mov    %ecx,0x4d(%ecx)
 8049d27:	4d                   	dec    %ebp
 8049d28:	45                   	inc    %ebp
 8049d29:	44                   	inc    %esp
 8049d2a:	49                   	dec    %ecx
 8049d2b:	41                   	inc    %ecx
 8049d2c:	54                   	push   %esp
 8049d2d:	45                   	inc    %ebp
	...

08049d30 <IMMEDIATE>:
 8049d30:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
 8049d31:	93                   	xchg   %eax,%ebx
 8049d32:	04 08                	add    $0x8,%al

08049d34 <name_HIDDEN>:
 8049d34:	20 9d 04 08 06 48    	and    %bl,0x48060804(%ebp)
 8049d3a:	49                   	dec    %ecx
 8049d3b:	44                   	inc    %esp
 8049d3c:	44                   	inc    %esp
 8049d3d:	45                   	inc    %ebp
 8049d3e:	4e                   	dec    %esi
	...

08049d40 <HIDDEN>:
 8049d40:	b5 93                	mov    $0x93,%ch
 8049d42:	04 08                	add    $0x8,%al

08049d44 <name_HIDE>:
 8049d44:	34 9d                	xor    $0x9d,%al
 8049d46:	04 08                	add    $0x8,%al
 8049d48:	04 48                	add    $0x48,%al
 8049d4a:	49                   	dec    %ecx
 8049d4b:	44                   	inc    %esp
 8049d4c:	45                   	inc    %ebp
 8049d4d:	00 00                	add    %al,(%eax)
	...

08049d50 <HIDE>:
 8049d50:	d0 8f 04 08 0c 9c    	rorb   -0x63f3f7fc(%edi)
 8049d56:	04 08                	add    $0x8,%al
 8049d58:	1c 9c                	sbb    $0x9c,%al
 8049d5a:	04 08                	add    $0x8,%al
 8049d5c:	40                   	inc    %eax
 8049d5d:	9d                   	popf   
 8049d5e:	04 08                	add    $0x8,%al
 8049d60:	58                   	pop    %eax
 8049d61:	9b                   	fwait
 8049d62:	04 08                	add    $0x8,%al

08049d64 <name_TICK>:
 8049d64:	44                   	inc    %esp
 8049d65:	9d                   	popf   
 8049d66:	04 08                	add    $0x8,%al
 8049d68:	01 27                	add    %esp,(%edi)
	...

08049d6c <TICK>:
 8049d6c:	bf 93 04 08 64       	mov    $0x64080493,%edi

08049d70 <name_INTERPRET>:
 8049d70:	64 9d                	fs popf 
 8049d72:	04 08                	add    $0x8,%al
 8049d74:	09 49 4e             	or     %ecx,0x4e(%ecx)
 8049d77:	54                   	push   %esp
 8049d78:	45                   	inc    %ebp
 8049d79:	52                   	push   %edx
 8049d7a:	50                   	push   %eax
 8049d7b:	52                   	push   %edx
 8049d7c:	45                   	inc    %ebp
 8049d7d:	54                   	push   %esp
	...

08049d80 <INTERPRET>:
 8049d80:	c4 93 04 08 50 41    	les    0x41500804(%ebx),%edx

08049d84 <errmsg>:
 8049d84:	50                   	push   %eax
 8049d85:	41                   	inc    %ecx
 8049d86:	52                   	push   %edx
 8049d87:	53                   	push   %ebx
 8049d88:	45                   	inc    %ebp
 8049d89:	20 45 52             	and    %al,0x52(%ebp)
 8049d8c:	52                   	push   %edx
 8049d8d:	4f                   	dec    %edi
 8049d8e:	52                   	push   %edx
 8049d8f:	3a 20                	cmp    (%eax),%ah

08049d91 <errmsgend>:
 8049d91:	0a 00                	or     (%eax),%al
	...

08049d94 <name_BRANCH>:
 8049d94:	70 9d                	jo     8049d33 <IMMEDIATE+0x3>
 8049d96:	04 08                	add    $0x8,%al
 8049d98:	06                   	push   %es
 8049d99:	42                   	inc    %edx
 8049d9a:	52                   	push   %edx
 8049d9b:	41                   	inc    %ecx
 8049d9c:	4e                   	dec    %esi
 8049d9d:	43                   	inc    %ebx
 8049d9e:	48                   	dec    %eax
	...

08049da0 <BRANCH>:
 8049da0:	81 94 04 08 94 9d 04 	adcl   $0x42300708,0x49d9408(%esp,%eax,1)
 8049da7:	08 07 30 42 

08049da4 <name_ZBRANCH>:
 8049da4:	94                   	xchg   %eax,%esp
 8049da5:	9d                   	popf   
 8049da6:	04 08                	add    $0x8,%al
 8049da8:	07                   	pop    %es
 8049da9:	30 42 52             	xor    %al,0x52(%edx)
 8049dac:	41                   	inc    %ecx
 8049dad:	4e                   	dec    %esi
 8049dae:	43                   	inc    %ebx
 8049daf:	48                   	dec    %eax

08049db0 <ZBRANCH>:
 8049db0:	86 94 04 08 a4 9d 04 	xchg   %dl,0x49da408(%esp,%eax,1)

08049db4 <name_QUIT>:
 8049db4:	a4                   	movsb  %ds:(%esi),%es:(%edi)
 8049db5:	9d                   	popf   
 8049db6:	04 08                	add    $0x8,%al
 8049db8:	04 51                	add    $0x51,%al
 8049dba:	55                   	push   %ebp
 8049dbb:	49                   	dec    %ecx
 8049dbc:	54                   	push   %esp
 8049dbd:	00 00                	add    %al,(%eax)
	...

08049dc0 <QUIT>:
 8049dc0:	d0 8f 04 08 74 96    	rorb   -0x698bf7fc(%edi)
 8049dc6:	04 08                	add    $0x8,%al
 8049dc8:	68 99 04 08 80       	push   $0x80080499
 8049dcd:	9d                   	popf   
 8049dce:	04 08                	add    $0x8,%al
 8049dd0:	a0 9d 04 08 f8       	mov    0xf808049d,%al
 8049dd5:	ff                   	(bad)  
 8049dd6:	ff                   	(bad)  
 8049dd7:	ff b4 9d 04 08 04 43 	pushl  0x43040804(%ebp,%ebx,4)

08049dd8 <name_CHAR>:
 8049dd8:	b4 9d                	mov    $0x9d,%ah
 8049dda:	04 08                	add    $0x8,%al
 8049ddc:	04 43                	add    $0x43,%al
 8049dde:	48                   	dec    %eax
 8049ddf:	41                   	inc    %ecx
 8049de0:	52                   	push   %edx
 8049de1:	00 00                	add    %al,(%eax)
	...

08049de4 <CHAR>:
 8049de4:	8f                   	(bad)  
 8049de5:	94                   	xchg   %eax,%esp
 8049de6:	04 08                	add    $0x8,%al

08049de8 <name_EXECUTE>:
 8049de8:	d8 9d 04 08 07 45    	fcomps 0x45070804(%ebp)
 8049dee:	58                   	pop    %eax
 8049def:	45                   	inc    %ebp
 8049df0:	43                   	inc    %ebx
 8049df1:	55                   	push   %ebp
 8049df2:	54                   	push   %esp
 8049df3:	45                   	inc    %ebp

08049df4 <EXECUTE>:
 8049df4:	9c                   	pushf  
 8049df5:	94                   	xchg   %eax,%esp
 8049df6:	04 08                	add    $0x8,%al

08049df8 <name_DODOES_ADDR>:
 8049df8:	e8 9d 04 08 0b       	call   130ca29a <_end+0xb067eb6>
 8049dfd:	44                   	inc    %esp
 8049dfe:	4f                   	dec    %edi
 8049dff:	44                   	inc    %esp
 8049e00:	4f                   	dec    %edi
 8049e01:	45                   	inc    %ebp
 8049e02:	53                   	push   %ebx
 8049e03:	5f                   	pop    %edi
 8049e04:	41                   	inc    %ecx
 8049e05:	44                   	inc    %esp
 8049e06:	44                   	inc    %esp
 8049e07:	52                   	push   %edx

08049e08 <DODOES_ADDR>:
 8049e08:	ad                   	lods   %ds:(%esi),%eax
 8049e09:	94                   	xchg   %eax,%esp
 8049e0a:	04 08                	add    $0x8,%al

08049e0c <name_SYSCALL3>:
 8049e0c:	f8                   	clc    
 8049e0d:	9d                   	popf   
 8049e0e:	04 08                	add    $0x8,%al
 8049e10:	08 53 59             	or     %dl,0x59(%ebx)
 8049e13:	53                   	push   %ebx
 8049e14:	43                   	inc    %ebx
 8049e15:	41                   	inc    %ecx
 8049e16:	4c                   	dec    %esp
 8049e17:	4c                   	dec    %esp
 8049e18:	33 00                	xor    (%eax),%eax
	...

08049e1c <SYSCALL3>:
 8049e1c:	b5 94                	mov    $0x94,%ch
 8049e1e:	04 08                	add    $0x8,%al

08049e20 <name_SYSCALL2>:
 8049e20:	0c 9e                	or     $0x9e,%al
 8049e22:	04 08                	add    $0x8,%al
 8049e24:	08 53 59             	or     %dl,0x59(%ebx)
 8049e27:	53                   	push   %ebx
 8049e28:	43                   	inc    %ebx
 8049e29:	41                   	inc    %ecx
 8049e2a:	4c                   	dec    %esp
 8049e2b:	4c                   	dec    %esp
 8049e2c:	32 00                	xor    (%eax),%al
	...

08049e30 <SYSCALL2>:
 8049e30:	bf 94 04 08 20       	mov    $0x20080494,%edi

08049e34 <name_SYSCALL1>:
 8049e34:	20 9e 04 08 08 53    	and    %bl,0x53080804(%esi)
 8049e3a:	59                   	pop    %ecx
 8049e3b:	53                   	push   %ebx
 8049e3c:	43                   	inc    %ebx
 8049e3d:	41                   	inc    %ecx
 8049e3e:	4c                   	dec    %esp
 8049e3f:	4c                   	dec    %esp
 8049e40:	31 00                	xor    %eax,(%eax)
	...

08049e44 <SYSCALL1>:
 8049e44:	c8 94 04 08          	enter  $0x494,$0x8

08049e48 <name_SYSCALL0>:
 8049e48:	34 9e                	xor    $0x9e,%al
 8049e4a:	04 08                	add    $0x8,%al
 8049e4c:	08 53 59             	or     %dl,0x59(%ebx)
 8049e4f:	53                   	push   %ebx
 8049e50:	43                   	inc    %ebx
 8049e51:	41                   	inc    %ecx
 8049e52:	4c                   	dec    %esp
 8049e53:	4c                   	dec    %esp
 8049e54:	30 00                	xor    %al,(%eax)
	...

08049e58 <SYSCALL0>:
 8049e58:	d0 94 04 08 c0 9d 04 	rclb   0x49dc008(%esp,%eax,1)

08049e5c <cold_start>:
 8049e5c:	c0                   	.byte 0xc0
 8049e5d:	9d                   	popf   
 8049e5e:	04 08                	add    $0x8,%al

Disassembly of section .eh_frame_hdr:

08049e60 <__GNU_EH_FRAME_HDR>:
 8049e60:	01 1b                	add    %ebx,(%ebx)
 8049e62:	03 3b                	add    (%ebx),%edi
 8049e64:	48                   	dec    %eax
 8049e65:	00 00                	add    %al,(%eax)
 8049e67:	00 08                	add    %cl,(%eax)
 8049e69:	00 00                	add    %al,(%eax)
 8049e6b:	00 d0                	add    %dl,%al
 8049e6d:	e9 ff ff 64 00       	jmp    8699e71 <_end+0x637a8d>
 8049e72:	00 00                	add    %al,(%eax)
 8049e74:	8b ec                	mov    %esp,%ebp
 8049e76:	ff                   	(bad)  
 8049e77:	ff 88 00 00 00 c8    	decl   -0x38000000(%eax)
 8049e7d:	ec                   	in     (%dx),%al
 8049e7e:	ff                   	(bad)  
 8049e7f:	ff a8 00 00 00 b3    	ljmp   *-0x4d000000(%eax)
 8049e85:	ed                   	in     (%dx),%eax
 8049e86:	ff                   	(bad)  
 8049e87:	ff c8                	dec    %eax
 8049e89:	00 00                	add    %al,(%eax)
 8049e8b:	00 95 f6 ff ff e4    	add    %dl,-0x1b00000a(%ebp)
 8049e91:	00 00                	add    %al,(%eax)
 8049e93:	00 b0 f6 ff ff 04    	add    %dh,0x4fffff6(%eax)
 8049e99:	01 00                	add    %eax,(%eax)
 8049e9b:	00 10                	add    %dl,(%eax)
 8049e9d:	f7 ff                	idiv   %edi
 8049e9f:	ff 50 01             	call   *0x1(%eax)
 8049ea2:	00 00                	add    %al,(%eax)
 8049ea4:	20 f7                	and    %dh,%bh
 8049ea6:	ff                   	(bad)  
 8049ea7:	ff 64 01 00          	jmp    *0x0(%ecx,%eax,1)
	...

Disassembly of section .eh_frame:

08049eac <__FRAME_END__-0x14c>:
 8049eac:	14 00                	adc    $0x0,%al
 8049eae:	00 00                	add    %al,(%eax)
 8049eb0:	00 00                	add    %al,(%eax)
 8049eb2:	00 00                	add    %al,(%eax)
 8049eb4:	01 7a 52             	add    %edi,0x52(%edx)
 8049eb7:	00 01                	add    %al,(%ecx)
 8049eb9:	7c 08                	jl     8049ec3 <__GNU_EH_FRAME_HDR+0x63>
 8049ebb:	01 1b                	add    %ebx,(%ebx)
 8049ebd:	0c 04                	or     $0x4,%al
 8049ebf:	04 88                	add    $0x88,%al
 8049ec1:	01 00                	add    %eax,(%eax)
 8049ec3:	00 20                	add    %ah,(%eax)
 8049ec5:	00 00                	add    %al,(%eax)
 8049ec7:	00 1c 00             	add    %bl,(%eax,%eax,1)
 8049eca:	00 00                	add    %al,(%eax)
 8049ecc:	64 e9 ff ff b0 01    	fs jmp 9b59ed1 <_end+0x1af7aed>
 8049ed2:	00 00                	add    %al,(%eax)
 8049ed4:	00 0e                	add    %cl,(%esi)
 8049ed6:	08 46 0e             	or     %al,0xe(%esi)
 8049ed9:	0c 4a                	or     $0x4a,%al
 8049edb:	0f 0b                	ud2    
 8049edd:	74 04                	je     8049ee3 <__GNU_EH_FRAME_HDR+0x83>
 8049edf:	78 00                	js     8049ee1 <__GNU_EH_FRAME_HDR+0x81>
 8049ee1:	3f                   	aas    
 8049ee2:	1a 3b                	sbb    (%ebx),%bh
 8049ee4:	2a 32                	sub    (%edx),%dh
 8049ee6:	24 22                	and    $0x22,%al
 8049ee8:	1c 00                	sbb    $0x0,%al
 8049eea:	00 00                	add    %al,(%eax)
 8049eec:	40                   	inc    %eax
 8049eed:	00 00                	add    %al,(%eax)
 8049eef:	00 fb                	add    %bh,%bl
 8049ef1:	eb ff                	jmp    8049ef2 <__GNU_EH_FRAME_HDR+0x92>
 8049ef3:	ff                   	(bad)  
 8049ef4:	3d 00 00 00 00       	cmp    $0x0,%eax
 8049ef9:	41                   	inc    %ecx
 8049efa:	0e                   	push   %cs
 8049efb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 8049f01:	79 c5                	jns    8049ec8 <__GNU_EH_FRAME_HDR+0x68>
 8049f03:	0c 04                	or     $0x4,%al
 8049f05:	04 00                	add    $0x0,%al
 8049f07:	00 1c 00             	add    %bl,(%eax,%eax,1)
 8049f0a:	00 00                	add    %al,(%eax)
 8049f0c:	60                   	pusha  
 8049f0d:	00 00                	add    %al,(%eax)
 8049f0f:	00 18                	add    %bl,(%eax)
 8049f11:	ec                   	in     (%dx),%al
 8049f12:	ff                   	(bad)  
 8049f13:	ff                   	(bad)  
 8049f14:	eb 00                	jmp    8049f16 <__GNU_EH_FRAME_HDR+0xb6>
 8049f16:	00 00                	add    %al,(%eax)
 8049f18:	00 41 0e             	add    %al,0xe(%ecx)
 8049f1b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 8049f21:	02 e7                	add    %bh,%ah
 8049f23:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 8049f26:	04 00                	add    $0x0,%al
 8049f28:	18 00                	sbb    %al,(%eax)
 8049f2a:	00 00                	add    %al,(%eax)
 8049f2c:	80 00 00             	addb   $0x0,(%eax)
 8049f2f:	00 e3                	add    %ah,%bl
 8049f31:	ec                   	in     (%dx),%al
 8049f32:	ff                   	(bad)  
 8049f33:	ff 61 00             	jmp    *0x0(%ecx)
 8049f36:	00 00                	add    %al,(%eax)
 8049f38:	00 41 0e             	add    %al,0xe(%ecx)
 8049f3b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 8049f41:	00 00                	add    %al,(%eax)
 8049f43:	00 1c 00             	add    %bl,(%eax,%eax,1)
 8049f46:	00 00                	add    %al,(%eax)
 8049f48:	9c                   	pushf  
 8049f49:	00 00                	add    %al,(%eax)
 8049f4b:	00 a9 f5 ff ff 0f    	add    %ch,0xffffff5(%ecx)
 8049f51:	00 00                	add    %al,(%eax)
 8049f53:	00 00                	add    %al,(%eax)
 8049f55:	41                   	inc    %ecx
 8049f56:	0e                   	push   %cs
 8049f57:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 8049f5d:	4b                   	dec    %ebx
 8049f5e:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 8049f61:	04 00                	add    $0x0,%al
 8049f63:	00 48 00             	add    %cl,0x0(%eax)
 8049f66:	00 00                	add    %al,(%eax)
 8049f68:	bc 00 00 00 a4       	mov    $0xa4000000,%esp
 8049f6d:	f5                   	cmc    
 8049f6e:	ff                   	(bad)  
 8049f6f:	ff 5d 00             	lcall  *0x0(%ebp)
 8049f72:	00 00                	add    %al,(%eax)
 8049f74:	00 41 0e             	add    %al,0xe(%ecx)
 8049f77:	08 85 02 41 0e 0c    	or     %al,0xc0e4102(%ebp)
 8049f7d:	87 03                	xchg   %eax,(%ebx)
 8049f7f:	41                   	inc    %ecx
 8049f80:	0e                   	push   %cs
 8049f81:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
 8049f87:	83 05 4e 0e 20 69 0e 	addl   $0xe,0x69200e4e
 8049f8e:	24 44                	and    $0x44,%al
 8049f90:	0e                   	push   %cs
 8049f91:	28 44 0e 2c          	sub    %al,0x2c(%esi,%ecx,1)
 8049f95:	41                   	inc    %ecx
 8049f96:	0e                   	push   %cs
 8049f97:	30 4d 0e             	xor    %cl,0xe(%ebp)
 8049f9a:	20 47 0e             	and    %al,0xe(%edi)
 8049f9d:	14 41                	adc    $0x41,%al
 8049f9f:	c3                   	ret    
 8049fa0:	0e                   	push   %cs
 8049fa1:	10 41 c6             	adc    %al,-0x3a(%ecx)
 8049fa4:	0e                   	push   %cs
 8049fa5:	0c 41                	or     $0x41,%al
 8049fa7:	c7                   	(bad)  
 8049fa8:	0e                   	push   %cs
 8049fa9:	08 41 c5             	or     %al,-0x3b(%ecx)
 8049fac:	0e                   	push   %cs
 8049fad:	04 00                	add    $0x0,%al
 8049faf:	00 10                	add    %dl,(%eax)
 8049fb1:	00 00                	add    %al,(%eax)
 8049fb3:	00 08                	add    %cl,(%eax)
 8049fb5:	01 00                	add    %eax,(%eax)
 8049fb7:	00 b8 f5 ff ff 02    	add    %bh,0x2fffff5(%eax)
 8049fbd:	00 00                	add    %al,(%eax)
 8049fbf:	00 00                	add    %al,(%eax)
 8049fc1:	00 00                	add    %al,(%eax)
 8049fc3:	00 30                	add    %dh,(%eax)
 8049fc5:	00 00                	add    %al,(%eax)
 8049fc7:	00 1c 01             	add    %bl,(%ecx,%eax,1)
 8049fca:	00 00                	add    %al,(%eax)
 8049fcc:	b4 f5                	mov    $0xf5,%ah
 8049fce:	ff                   	(bad)  
 8049fcf:	ff 34 00             	pushl  (%eax,%eax,1)
 8049fd2:	00 00                	add    %al,(%eax)
 8049fd4:	00 41 0e             	add    %al,0xe(%ecx)
 8049fd7:	08 83 02 4e 0e 10    	or     %al,0x100e4e02(%ebx)
 8049fdd:	4f                   	dec    %edi
 8049fde:	0e                   	push   %cs
 8049fdf:	14 41                	adc    $0x41,%al
 8049fe1:	0e                   	push   %cs
 8049fe2:	18 42 0e             	sbb    %al,0xe(%edx)
 8049fe5:	1c 44                	sbb    $0x44,%al
 8049fe7:	0e                   	push   %cs
 8049fe8:	20 48 0e             	and    %cl,0xe(%eax)
 8049feb:	08 41 c3             	or     %al,-0x3d(%ecx)
 8049fee:	0e                   	push   %cs
 8049fef:	04 42                	add    $0x42,%al
 8049ff1:	0e                   	push   %cs
 8049ff2:	10 83 02 00 00 00    	adc    %al,0x2(%ebx)

08049ff8 <__FRAME_END__>:
 8049ff8:	00 00                	add    %al,(%eax)
	...

Disassembly of section .init_array:

0804bf00 <__frame_dummy_init_array_entry>:
 804bf00:	c0                   	.byte 0xc0
 804bf01:	8a 04 08             	mov    (%eax,%ecx,1),%al

Disassembly of section .fini_array:

0804bf04 <__do_global_dtors_aux_fini_array_entry>:
 804bf04:	a0                   	.byte 0xa0
 804bf05:	8a 04 08             	mov    (%eax,%ecx,1),%al

Disassembly of section .jcr:

0804bf08 <__JCR_END__>:
 804bf08:	00 00                	add    %al,(%eax)
	...

Disassembly of section .dynamic:

0804bf0c <_DYNAMIC>:
 804bf0c:	01 00                	add    %eax,(%eax)
 804bf0e:	00 00                	add    %al,(%eax)
 804bf10:	01 00                	add    %eax,(%eax)
 804bf12:	00 00                	add    %al,(%eax)
 804bf14:	01 00                	add    %eax,(%eax)
 804bf16:	00 00                	add    %al,(%eax)
 804bf18:	92                   	xchg   %eax,%edx
 804bf19:	01 00                	add    %eax,(%eax)
 804bf1b:	00 0c 00             	add    %cl,(%eax,%eax,1)
 804bf1e:	00 00                	add    %al,(%eax)
 804bf20:	04 88                	add    $0x88,%al
 804bf22:	04 08                	add    $0x8,%al
 804bf24:	0d 00 00 00 b4       	or     $0xb4000000,%eax
 804bf29:	95                   	xchg   %eax,%ebp
 804bf2a:	04 08                	add    $0x8,%al
 804bf2c:	19 00                	sbb    %eax,(%eax)
 804bf2e:	00 00                	add    %al,(%eax)
 804bf30:	00 bf 04 08 1b 00    	add    %bh,0x1b0804(%edi)
 804bf36:	00 00                	add    %al,(%eax)
 804bf38:	04 00                	add    $0x0,%al
 804bf3a:	00 00                	add    %al,(%eax)
 804bf3c:	1a 00                	sbb    (%eax),%al
 804bf3e:	00 00                	add    %al,(%eax)
 804bf40:	04 bf                	add    $0xbf,%al
 804bf42:	04 08                	add    $0x8,%al
 804bf44:	1c 00                	sbb    $0x0,%al
 804bf46:	00 00                	add    %al,(%eax)
 804bf48:	04 00                	add    $0x0,%al
 804bf4a:	00 00                	add    %al,(%eax)
 804bf4c:	f5                   	cmc    
 804bf4d:	fe                   	(bad)  
 804bf4e:	ff 6f ac             	ljmp   *-0x54(%edi)
 804bf51:	81 04 08 05 00 00 00 	addl   $0x5,(%eax,%ecx,1)
 804bf58:	64 84 04 08          	test   %al,%fs:(%eax,%ecx,1)
 804bf5c:	06                   	push   %es
 804bf5d:	00 00                	add    %al,(%eax)
 804bf5f:	00 f4                	add    %dh,%ah
 804bf61:	81 04 08 0a 00 00 00 	addl   $0xa,(%eax,%ecx,1)
 804bf68:	32 02                	xor    (%edx),%al
 804bf6a:	00 00                	add    %al,(%eax)
 804bf6c:	0b 00                	or     (%eax),%eax
 804bf6e:	00 00                	add    %al,(%eax)
 804bf70:	10 00                	adc    %al,(%eax)
 804bf72:	00 00                	add    %al,(%eax)
 804bf74:	15 00 00 00 00       	adc    $0x0,%eax
 804bf79:	00 00                	add    %al,(%eax)
 804bf7b:	00 03                	add    %al,(%ebx)
 804bf7d:	00 00                	add    %al,(%eax)
 804bf7f:	00 00                	add    %al,(%eax)
 804bf81:	c0 04 08 02          	rolb   $0x2,(%eax,%ecx,1)
 804bf85:	00 00                	add    %al,(%eax)
 804bf87:	00 d0                	add    %dl,%al
 804bf89:	00 00                	add    %al,(%eax)
 804bf8b:	00 14 00             	add    %dl,(%eax,%eax,1)
 804bf8e:	00 00                	add    %al,(%eax)
 804bf90:	11 00                	adc    %eax,(%eax)
 804bf92:	00 00                	add    %al,(%eax)
 804bf94:	17                   	pop    %ss
 804bf95:	00 00                	add    %al,(%eax)
 804bf97:	00 34 87             	add    %dh,(%edi,%eax,4)
 804bf9a:	04 08                	add    $0x8,%al
 804bf9c:	11 00                	adc    %eax,(%eax)
 804bf9e:	00 00                	add    %al,(%eax)
 804bfa0:	24 87                	and    $0x87,%al
 804bfa2:	04 08                	add    $0x8,%al
 804bfa4:	12 00                	adc    (%eax),%al
 804bfa6:	00 00                	add    %al,(%eax)
 804bfa8:	10 00                	adc    %al,(%eax)
 804bfaa:	00 00                	add    %al,(%eax)
 804bfac:	13 00                	adc    (%eax),%eax
 804bfae:	00 00                	add    %al,(%eax)
 804bfb0:	08 00                	or     %al,(%eax)
 804bfb2:	00 00                	add    %al,(%eax)
 804bfb4:	fe                   	(bad)  
 804bfb5:	ff                   	(bad)  
 804bfb6:	ff 6f e4             	ljmp   *-0x1c(%edi)
 804bfb9:	86 04 08             	xchg   %al,(%eax,%ecx,1)
 804bfbc:	ff                   	(bad)  
 804bfbd:	ff                   	(bad)  
 804bfbe:	ff 6f 01             	ljmp   *0x1(%edi)
 804bfc1:	00 00                	add    %al,(%eax)
 804bfc3:	00 f0                	add    %dh,%al
 804bfc5:	ff                   	(bad)  
 804bfc6:	ff 6f 96             	ljmp   *-0x6a(%edi)
 804bfc9:	86 04 08             	xchg   %al,(%eax,%ecx,1)
	...

Disassembly of section .got:

0804bffc <.got>:
 804bffc:	00 00                	add    %al,(%eax)
	...

Disassembly of section .got.plt:

0804c000 <_GLOBAL_OFFSET_TABLE_>:
 804c000:	0c bf                	or     $0xbf,%al
 804c002:	04 08                	add    $0x8,%al
	...
 804c00c:	46                   	inc    %esi
 804c00d:	88 04 08             	mov    %al,(%eax,%ecx,1)
 804c010:	56                   	push   %esi
 804c011:	88 04 08             	mov    %al,(%eax,%ecx,1)
 804c014:	66 88 04 08          	data16 mov %al,(%eax,%ecx,1)
 804c018:	76 88                	jbe    804bfa2 <_DYNAMIC+0x96>
 804c01a:	04 08                	add    $0x8,%al
 804c01c:	86 88 04 08 96 88    	xchg   %cl,-0x7769f7fc(%eax)
 804c022:	04 08                	add    $0x8,%al
 804c024:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
 804c025:	88 04 08             	mov    %al,(%eax,%ecx,1)
 804c028:	b6 88                	mov    $0x88,%dh
 804c02a:	04 08                	add    $0x8,%al
 804c02c:	c6                   	(bad)  
 804c02d:	88 04 08             	mov    %al,(%eax,%ecx,1)
 804c030:	d6                   	(bad)  
 804c031:	88 04 08             	mov    %al,(%eax,%ecx,1)
 804c034:	e6 88                	out    %al,$0x88
 804c036:	04 08                	add    $0x8,%al
 804c038:	f6                   	(bad)  
 804c039:	88 04 08             	mov    %al,(%eax,%ecx,1)
 804c03c:	06                   	push   %es
 804c03d:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 804c040:	16                   	push   %ss
 804c041:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 804c044:	26 89 04 08          	mov    %eax,%es:(%eax,%ecx,1)
 804c048:	36 89 04 08          	mov    %eax,%ss:(%eax,%ecx,1)
 804c04c:	46                   	inc    %esi
 804c04d:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 804c050:	56                   	push   %esi
 804c051:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 804c054:	66 89 04 08          	mov    %ax,(%eax,%ecx,1)
 804c058:	76 89                	jbe    804bfe3 <_DYNAMIC+0xd7>
 804c05a:	04 08                	add    $0x8,%al
 804c05c:	86 89 04 08 96 89    	xchg   %cl,-0x7669f7fc(%ecx)
 804c062:	04 08                	add    $0x8,%al
 804c064:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
 804c065:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 804c068:	b6 89                	mov    $0x89,%dh
 804c06a:	04 08                	add    $0x8,%al
 804c06c:	c6                   	(bad)  
 804c06d:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 804c070:	d6                   	(bad)  
 804c071:	89 04 08             	mov    %eax,(%eax,%ecx,1)

Disassembly of section .data:

0804c074 <__data_start>:
 804c074:	00 00                	add    %al,(%eax)
	...

0804c078 <__dso_handle>:
 804c078:	00 00                	add    %al,(%eax)
	...

0804c07c <var_STATE>:
 804c07c:	00 00                	add    %al,(%eax)
	...

0804c080 <var_HERE>:
 804c080:	00 00                	add    %al,(%eax)
	...

0804c084 <var_LATEST>:
 804c084:	48                   	dec    %eax
 804c085:	9e                   	sahf   
 804c086:	04 08                	add    $0x8,%al

0804c088 <var_S0>:
 804c088:	00 00                	add    %al,(%eax)
	...

0804c08c <var_BASE>:
 804c08c:	0a 00                	or     (%eax),%al
	...

0804c090 <currkey>:
 804c090:	00 10                	add    %dl,(%eax)
 804c092:	05 08 00 10 05       	add    $0x5100008,%eax

0804c094 <bufftop>:
 804c094:	00 10                	add    %dl,(%eax)
 804c096:	05 08 00 00 00       	add    $0x8,%eax

0804c098 <emit_scratch>:
	...

0804c099 <word_buffer>:
	...

0804c0bc <interpret_is_lit>:
 804c0bc:	00 00                	add    %al,(%eax)
	...

Disassembly of section .bss:

0804d000 <stderr@@GLIBC_2.0>:
 804d000:	00 00                	add    %al,(%eax)
	...

0804d004 <completed.7209>:
 804d004:	00 00                	add    %al,(%eax)
	...

0804d008 <renderer>:
	...

0804e000 <version_of_SDL>:
 804e000:	00 00                	add    %al,(%eax)
	...

0804e003 <gWindow>:
 804e003:	00 00                	add    %al,(%eax)
	...

0804e007 <gSurface>:
	...

0804f000 <return_stack>:
	...

08051000 <input_buffer>:
	...

08052000 <data_buffer>:
	...

08062000 <fruit_texture>:
 8062000:	00 00                	add    %al,(%eax)
	...

08062004 <shead_texture>:
 8062004:	00 00                	add    %al,(%eax)
	...

08062008 <snake_texture>:
 8062008:	00 00                	add    %al,(%eax)
	...

0806200c <field_texture>:
	...

08062020 <old_dir>:
 8062020:	00 00                	add    %al,(%eax)
	...

08062024 <delay>:
 8062024:	00 00                	add    %al,(%eax)
	...

08062028 <body>:
	...

08062040 <mat>:
	...

080621c0 <snake>:
	...

080623c4 <rect>:
	...

080623d4 <tail>:
	...

080623d6 <head>:
	...

080623d8 <eaten>:
 80623d8:	00 00                	add    %al,(%eax)
	...

080623dc <gameover_flag>:
 80623dc:	00 00                	add    %al,(%eax)
	...

080623e0 <dir>:
	...

080623e1 <fruit>:
 80623e1:	00 00                	add    %al,(%eax)
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    %edi
   1:	43                   	inc    %ebx
   2:	43                   	inc    %ebx
   3:	3a 20                	cmp    (%eax),%ah
   5:	28 55 62             	sub    %dl,0x62(%ebp)
   8:	75 6e                	jne    78 <sys_truncate+0x1c>
   a:	74 75                	je     81 <F_IMMED+0x1>
   c:	20 35 2e 34 2e 30    	and    %dh,0x302e342e
  12:	2d 36 75 62 75       	sub    $0x75627536,%eax
  17:	6e                   	outsb  %ds:(%esi),(%dx)
  18:	74 75                	je     8f <F_IMMED+0xf>
  1a:	31 7e 31             	xor    %edi,0x31(%esi)
  1d:	36 2e 30 34 2e       	ss xor %dh,%cs:(%esi,%ebp,1)
  22:	39 29                	cmp    %ebp,(%ecx)
  24:	20 35 2e 34 2e 30    	and    %dh,0x302e342e
  2a:	20 32                	and    %dh,(%edx)
  2c:	30 31                	xor    %dh,(%ecx)
  2e:	36 30 36             	xor    %dh,%ss:(%esi)
  31:	30 39                	xor    %bh,(%ecx)
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	1c 00                	sbb    $0x0,%al
   2:	00 00                	add    %al,(%eax)
   4:	02 00                	add    (%eax),%al
   6:	00 00                	add    %al,(%eax)
   8:	00 00                	add    %al,(%eax)
   a:	04 00                	add    $0x0,%al
   c:	00 00                	add    %al,(%eax)
   e:	00 00                	add    %al,(%eax)
  10:	eb 8a                	jmp    ffffff9c <_end+0xf7f9dbb8>
  12:	04 08                	add    $0x8,%al
  14:	89 01                	mov    %eax,(%ecx)
	...
  1e:	00 00                	add    %al,(%eax)
  20:	1c 00                	sbb    $0x0,%al
  22:	00 00                	add    %al,(%eax)
  24:	02 00                	add    (%eax),%al
  26:	82                   	(bad)  
  27:	0c 00                	or     $0x0,%al
  29:	00 04 00             	add    %al,(%eax,%eax,1)
  2c:	00 00                	add    %al,(%eax)
  2e:	00 00                	add    %al,(%eax)
  30:	74 8c                	je     ffffffbe <_end+0xf7f9dbda>
  32:	04 08                	add    $0x8,%al
  34:	81 08 00 00 00 00    	orl    $0x0,(%eax)
  3a:	00 00                	add    %al,(%eax)
  3c:	00 00                	add    %al,(%eax)
  3e:	00 00                	add    %al,(%eax)
  40:	1c 00                	sbb    $0x0,%al
  42:	00 00                	add    %al,(%eax)
  44:	02 00                	add    (%eax),%al
  46:	dc 0c 00             	fmull  (%eax,%eax,1)
  49:	00 04 00             	add    %al,(%eax,%eax,1)
  4c:	00 00                	add    %al,(%eax)
  4e:	00 00                	add    %al,(%eax)
  50:	f5                   	cmc    
  51:	94                   	xchg   %eax,%esp
  52:	04 08                	add    $0x8,%al
  54:	0f 00 00             	sldt   (%eax)
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
       0:	7e 0c                	jle    e <sys_unlink+0x4>
       2:	00 00                	add    %al,(%eax)
       4:	04 00                	add    $0x0,%al
       6:	00 00                	add    %al,(%eax)
       8:	00 00                	add    %al,(%eax)
       a:	04 01                	add    $0x1,%al
       c:	d5 09                	aad    $0x9
       e:	00 00                	add    %al,(%eax)
      10:	0c 6b                	or     $0x6b,%al
      12:	07                   	pop    %es
      13:	00 00                	add    %al,(%eax)
      15:	26 1a 00             	sbb    %es:(%eax),%al
      18:	00 eb                	add    %ch,%bl
      1a:	8a 04 08             	mov    (%eax,%ecx,1),%al
      1d:	89 01                	mov    %eax,(%ecx)
      1f:	00 00                	add    %al,(%eax)
      21:	00 00                	add    %al,(%eax)
      23:	00 00                	add    %al,(%eax)
      25:	02 c1                	add    %cl,%al
      27:	0f 00 00             	sldt   (%eax)
      2a:	02 d8                	add    %al,%bl
      2c:	30 00                	xor    %al,(%eax)
      2e:	00 00                	add    %al,(%eax)
      30:	03 04 07             	add    (%edi,%eax,1),%eax
      33:	cf                   	iret   
      34:	04 00                	add    $0x0,%al
      36:	00 03                	add    %al,(%ebx)
      38:	01 08                	add    %ecx,(%eax)
      3a:	4d                   	dec    %ebp
      3b:	10 00                	adc    %al,(%eax)
      3d:	00 03                	add    %al,(%ebx)
      3f:	02 07                	add    (%edi),%al
      41:	43                   	inc    %ebx
      42:	0f 00 00             	sldt   (%eax)
      45:	03 04 07             	add    (%edi,%eax,1),%eax
      48:	ca 04 00             	lret   $0x4
      4b:	00 03                	add    %al,(%ebx)
      4d:	01 06                	add    %eax,(%esi)
      4f:	4f                   	dec    %edi
      50:	10 00                	adc    %al,(%eax)
      52:	00 03                	add    %al,(%ebx)
      54:	02 05 3c 02 00 00    	add    0x23c,%al
      5a:	04 04                	add    $0x4,%al
      5c:	05 69 6e 74 00       	add    $0x746e69,%eax
      61:	03 08                	add    (%eax),%ecx
      63:	05 b5 0c 00 00       	add    $0xcb5,%eax
      68:	03 08                	add    (%eax),%ecx
      6a:	07                   	pop    %es
      6b:	c5 04 00             	lds    (%eax,%eax,1),%eax
      6e:	00 02                	add    %al,(%edx)
      70:	1c 0e                	sbb    $0xe,%al
      72:	00 00                	add    %al,(%eax)
      74:	03 37                	add    (%edi),%esi
      76:	61                   	popa   
      77:	00 00                	add    %al,(%eax)
      79:	00 02                	add    %al,(%edx)
      7b:	ee                   	out    %al,(%dx)
      7c:	16                   	push   %ss
      7d:	00 00                	add    %al,(%eax)
      7f:	03 83 85 00 00 00    	add    0x85(%ebx),%eax
      85:	03 04 05 ba 0c 00 00 	add    0xcba(,%eax,1),%eax
      8c:	02 5f 1a             	add    0x1a(%edi),%bl
      8f:	00 00                	add    %al,(%eax)
      91:	03 84 6f 00 00 00 03 	add    0x3000000(%edi,%ebp,2),%eax
      98:	04 07                	add    $0x7,%al
      9a:	ef                   	out    %eax,(%dx)
      9b:	13 00                	adc    (%eax),%eax
      9d:	00 05 04 06 04 a6    	add    %al,0xa6040604
      a3:	00 00                	add    %al,(%eax)
      a5:	00 03                	add    %al,(%ebx)
      a7:	01 06                	add    %eax,(%esi)
      a9:	56                   	push   %esi
      aa:	10 00                	adc    %al,(%eax)
      ac:	00 07                	add    %al,(%edi)
      ae:	32 14 00             	xor    (%eax,%eax,1),%dl
      b1:	00 94 04 f1 2a 02 00 	add    %dl,0x22af1(%esp,%eax,1)
      b8:	00 08                	add    %cl,(%eax)
      ba:	99                   	cltd   
      bb:	01 00                	add    %eax,(%eax)
      bd:	00 04 f2             	add    %al,(%edx,%esi,8)
      c0:	5a                   	pop    %edx
      c1:	00 00                	add    %al,(%eax)
      c3:	00 00                	add    %al,(%eax)
      c5:	08 7e 0a             	or     %bh,0xa(%esi)
      c8:	00 00                	add    %al,(%eax)
      ca:	04 f7                	add    $0xf7,%al
      cc:	a0 00 00 00 04       	mov    0x4000000,%al
      d1:	08 ae 10 00 00 04    	or     %ch,0x4000010(%esi)
      d7:	f8                   	clc    
      d8:	a0 00 00 00 08       	mov    0x8000000,%al
      dd:	08 a7 07 00 00 04    	or     %ah,0x4000007(%edi)
      e3:	f9                   	stc    
      e4:	a0 00 00 00 0c       	mov    0xc000000,%al
      e9:	08 97 0c 00 00 04    	or     %dl,0x400000c(%edi)
      ef:	fa                   	cli    
      f0:	a0 00 00 00 10       	mov    0x10000000,%al
      f5:	08 8e 15 00 00 04    	or     %cl,0x4000015(%esi)
      fb:	fb                   	sti    
      fc:	a0 00 00 00 14       	mov    0x14000000,%al
     101:	08 59 01             	or     %bl,0x1(%ecx)
     104:	00 00                	add    %al,(%eax)
     106:	04 fc                	add    $0xfc,%al
     108:	a0 00 00 00 18       	mov    0x18000000,%al
     10d:	08 86 13 00 00 04    	or     %al,0x4000013(%esi)
     113:	fd                   	std    
     114:	a0 00 00 00 1c       	mov    0x1c000000,%al
     119:	08 21                	or     %ah,(%ecx)
     11b:	01 00                	add    %eax,(%eax)
     11d:	00 04 fe             	add    %al,(%esi,%edi,8)
     120:	a0 00 00 00 20       	mov    0x20000000,%al
     125:	09 ca                	or     %ecx,%edx
     127:	0c 00                	or     $0x0,%al
     129:	00 04 00             	add    %al,(%eax,%eax,1)
     12c:	01 a0 00 00 00 24    	add    %esp,0x24000000(%eax)
     132:	09 73 05             	or     %esi,0x5(%ebx)
     135:	00 00                	add    %al,(%eax)
     137:	04 01                	add    $0x1,%al
     139:	01 a0 00 00 00 28    	add    %esp,0x28000000(%eax)
     13f:	09 f4                	or     %esi,%esp
     141:	03 00                	add    (%eax),%eax
     143:	00 04 02             	add    %al,(%edx,%eax,1)
     146:	01 a0 00 00 00 2c    	add    %esp,0x2c000000(%eax)
     14c:	09 75 07             	or     %esi,0x7(%ebp)
     14f:	00 00                	add    %al,(%eax)
     151:	04 04                	add    $0x4,%al
     153:	01 62 02             	add    %esp,0x2(%edx)
     156:	00 00                	add    %al,(%eax)
     158:	30 09                	xor    %cl,(%ecx)
     15a:	f8                   	clc    
     15b:	18 00                	sbb    %al,(%eax)
     15d:	00 04 06             	add    %al,(%esi,%eax,1)
     160:	01 68 02             	add    %ebp,0x2(%eax)
     163:	00 00                	add    %al,(%eax)
     165:	34 09                	xor    $0x9,%al
     167:	2c 06                	sub    $0x6,%al
     169:	00 00                	add    %al,(%eax)
     16b:	04 08                	add    $0x8,%al
     16d:	01 5a 00             	add    %ebx,0x0(%edx)
     170:	00 00                	add    %al,(%eax)
     172:	38 09                	cmp    %cl,(%ecx)
     174:	d6                   	(bad)  
     175:	01 00                	add    %eax,(%eax)
     177:	00 04 0c             	add    %al,(%esp,%ecx,1)
     17a:	01 5a 00             	add    %ebx,0x0(%edx)
     17d:	00 00                	add    %al,(%eax)
     17f:	3c 09                	cmp    $0x9,%al
     181:	01 02                	add    %eax,(%edx)
     183:	00 00                	add    %al,(%eax)
     185:	04 0e                	add    $0xe,%al
     187:	01 7a 00             	add    %edi,0x0(%edx)
     18a:	00 00                	add    %al,(%eax)
     18c:	40                   	inc    %eax
     18d:	09 1a                	or     %ebx,(%edx)
     18f:	1a 00                	sbb    (%eax),%al
     191:	00 04 12             	add    %al,(%edx,%edx,1)
     194:	01 3e                	add    %edi,(%esi)
     196:	00 00                	add    %al,(%eax)
     198:	00 44 09 d5          	add    %al,-0x2b(%ecx,%ecx,1)
     19c:	0e                   	push   %cs
     19d:	00 00                	add    %al,(%eax)
     19f:	04 13                	add    $0x13,%al
     1a1:	01 4c 00 00          	add    %ecx,0x0(%eax,%eax,1)
     1a5:	00 46 09             	add    %al,0x9(%esi)
     1a8:	7e 00                	jle    1aa <F_IMMED+0x12a>
     1aa:	00 00                	add    %al,(%eax)
     1ac:	04 14                	add    $0x14,%al
     1ae:	01 6e 02             	add    %ebp,0x2(%esi)
     1b1:	00 00                	add    %al,(%eax)
     1b3:	47                   	inc    %edi
     1b4:	09 d3                	or     %edx,%ebx
     1b6:	13 00                	adc    (%eax),%eax
     1b8:	00 04 18             	add    %al,(%eax,%ebx,1)
     1bb:	01 7e 02             	add    %edi,0x2(%esi)
     1be:	00 00                	add    %al,(%eax)
     1c0:	48                   	dec    %eax
     1c1:	09 05 02 00 00 04    	or     %eax,0x4000002
     1c7:	21 01                	and    %eax,(%ecx)
     1c9:	8c 00                	mov    %es,(%eax)
     1cb:	00 00                	add    %al,(%eax)
     1cd:	4c                   	dec    %esp
     1ce:	09 34 06             	or     %esi,(%esi,%eax,1)
     1d1:	00 00                	add    %al,(%eax)
     1d3:	04 29                	add    $0x29,%al
     1d5:	01 9e 00 00 00 54    	add    %ebx,0x54000000(%esi)
     1db:	09 85 0e 00 00 04    	or     %eax,0x400000e(%ebp)
     1e1:	2a 01                	sub    (%ecx),%al
     1e3:	9e                   	sahf   
     1e4:	00 00                	add    %al,(%eax)
     1e6:	00 58 09             	add    %bl,0x9(%eax)
     1e9:	8c 0e                	mov    %cs,(%esi)
     1eb:	00 00                	add    %al,(%eax)
     1ed:	04 2b                	add    $0x2b,%al
     1ef:	01 9e 00 00 00 5c    	add    %ebx,0x5c000000(%esi)
     1f5:	09 93 0e 00 00 04    	or     %edx,0x400000e(%ebx)
     1fb:	2c 01                	sub    $0x1,%al
     1fd:	9e                   	sahf   
     1fe:	00 00                	add    %al,(%eax)
     200:	00 60 09             	add    %ah,0x9(%eax)
     203:	9a 0e 00 00 04 2e 01 	lcall  $0x12e,$0x400000e
     20a:	25 00 00 00 64       	and    $0x64000000,%eax
     20f:	09 cf                	or     %ecx,%edi
     211:	09 00                	or     %eax,(%eax)
     213:	00 04 2f             	add    %al,(%edi,%ebp,1)
     216:	01 5a 00             	add    %ebx,0x0(%edx)
     219:	00 00                	add    %al,(%eax)
     21b:	68 09 69 1a 00       	push   $0x1a6909
     220:	00 04 31             	add    %al,(%ecx,%esi,1)
     223:	01 84 02 00 00 6c 00 	add    %eax,0x6c0000(%edx,%eax,1)
     22a:	0a 94 00 00 00 04 96 	or     -0x69fc0000(%eax,%eax,1),%dl
     231:	07                   	pop    %es
     232:	4f                   	dec    %edi
     233:	0a 00                	or     (%eax),%al
     235:	00 0c 04             	add    %cl,(%esp,%eax,1)
     238:	9c                   	pushf  
     239:	62 02                	bound  %eax,(%edx)
     23b:	00 00                	add    %al,(%eax)
     23d:	08 38                	or     %bh,(%eax)
     23f:	08 00                	or     %al,(%eax)
     241:	00 04 9d 62 02 00 00 	add    %al,0x262(,%ebx,4)
     248:	00 08                	add    %cl,(%eax)
     24a:	b1 14                	mov    $0x14,%cl
     24c:	00 00                	add    %al,(%eax)
     24e:	04 9e                	add    $0x9e,%al
     250:	68 02 00 00 04       	push   $0x4000002
     255:	08 61 08             	or     %ah,0x8(%ecx)
     258:	00 00                	add    %al,(%eax)
     25a:	04 a2                	add    $0xa2,%al
     25c:	5a                   	pop    %edx
     25d:	00 00                	add    %al,(%eax)
     25f:	00 08                	add    %cl,(%eax)
     261:	00 06                	add    %al,(%esi)
     263:	04 31                	add    $0x31,%al
     265:	02 00                	add    (%eax),%al
     267:	00 06                	add    %al,(%esi)
     269:	04 ad                	add    $0xad,%al
     26b:	00 00                	add    %al,(%eax)
     26d:	00 0b                	add    %cl,(%ebx)
     26f:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
     270:	00 00                	add    %al,(%eax)
     272:	00 7e 02             	add    %bh,0x2(%esi)
     275:	00 00                	add    %al,(%eax)
     277:	0c 97                	or     $0x97,%al
     279:	00 00                	add    %al,(%eax)
     27b:	00 00                	add    %al,(%eax)
     27d:	00 06                	add    %al,(%esi)
     27f:	04 2a                	add    $0x2a,%al
     281:	02 00                	add    (%eax),%al
     283:	00 0b                	add    %cl,(%ebx)
     285:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
     286:	00 00                	add    %al,(%eax)
     288:	00 94 02 00 00 0c 97 	add    %dl,-0x68f40000(%edx,%eax,1)
     28f:	00 00                	add    %al,(%eax)
     291:	00 27                	add    %ah,(%edi)
     293:	00 03                	add    %al,(%ebx)
     295:	0c 04                	or     $0x4,%al
     297:	25 0e 00 00 02       	and    $0x200000e,%eax
     29c:	6d                   	insl   (%dx),%es:(%edi)
     29d:	0b 00                	or     (%eax),%eax
     29f:	00 05 30 37 00 00    	add    %al,0x3730
     2a5:	00 02                	add    %al,(%edx)
     2a7:	b9 03 00 00 05       	mov    $0x5000003,%ecx
     2ac:	33 30                	xor    (%eax),%esi
     2ae:	00 00                	add    %al,(%eax)
     2b0:	00 03                	add    %al,(%ebx)
     2b2:	08 04 2a             	or     %al,(%edx,%ebp,1)
     2b5:	0e                   	push   %cs
     2b6:	00 00                	add    %al,(%eax)
     2b8:	02 ee                	add    %dh,%ch
     2ba:	03 00                	add    (%eax),%eax
     2bc:	00 06                	add    %al,(%esi)
     2be:	8b 9b 02 00 00 02    	mov    0x2000002(%ebx),%ebx
     2c4:	9f                   	lahf   
     2c5:	03 00                	add    (%eax),%eax
     2c7:	00 06                	add    %al,(%esi)
     2c9:	9b                   	fwait
     2ca:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
     2cb:	02 00                	add    (%eax),%al
     2cd:	00 0d 04 30 00 00    	add    %cl,0x3004
     2d3:	00 07                	add    %al,(%edi)
     2d5:	33 23                	xor    (%ebx),%esp
     2d7:	03 00                	add    (%eax),%eax
     2d9:	00 0e                	add    %cl,(%esi)
     2db:	31 0e                	xor    %ecx,(%esi)
     2dd:	00 00                	add    %al,(%eax)
     2df:	00 0e                	add    %cl,(%esi)
     2e1:	12 0b                	adc    (%ebx),%cl
     2e3:	00 00                	add    %al,(%eax)
     2e5:	01 0e                	add    %ecx,(%esi)
     2e7:	27                   	daa    
     2e8:	0b 00                	or     (%eax),%eax
     2ea:	00 02                	add    %al,(%edx)
     2ec:	0e                   	push   %cs
     2ed:	58                   	pop    %eax
     2ee:	0b 00                	or     (%eax),%eax
     2f0:	00 03                	add    %al,(%ebx)
     2f2:	0e                   	push   %cs
     2f3:	58                   	pop    %eax
     2f4:	12 00                	adc    (%eax),%al
     2f6:	00 04 0e             	add    %al,(%esi,%ecx,1)
     2f9:	e5 12                	in     $0x12,%eax
     2fb:	00 00                	add    %al,(%eax)
     2fd:	05 0e 77 15 00       	add    $0x15770e,%eax
     302:	00 06                	add    %al,(%esi)
     304:	0e                   	push   %cs
     305:	cf                   	iret   
     306:	12 00                	adc    (%eax),%al
     308:	00 07                	add    %al,(%edi)
     30a:	0e                   	push   %cs
     30b:	8e 0d 00 00 08 0e    	mov    0xe080000,%cs
     311:	3b 14 00             	cmp    (%eax,%eax,1),%edx
     314:	00 09                	add    %cl,(%ecx)
     316:	0e                   	push   %cs
     317:	5a                   	pop    %edx
     318:	13 00                	adc    (%eax),%eax
     31a:	00 0a                	add    %cl,(%edx)
     31c:	0e                   	push   %cs
     31d:	5d                   	pop    %ebp
     31e:	16                   	push   %ss
     31f:	00 00                	add    %al,(%eax)
     321:	0b 00                	or     (%eax),%eax
     323:	0d 04 30 00 00       	or     $0x3004,%eax
     328:	00 07                	add    %al,(%edi)
     32a:	44                   	inc    %esp
     32b:	42                   	inc    %edx
     32c:	03 00                	add    (%eax),%eax
     32e:	00 0e                	add    %cl,(%esi)
     330:	48                   	dec    %eax
     331:	16                   	push   %ss
     332:	00 00                	add    %al,(%eax)
     334:	00 0e                	add    %cl,(%esi)
     336:	95                   	xchg   %eax,%ebp
     337:	17                   	pop    %ss
     338:	00 00                	add    %al,(%eax)
     33a:	01 0e                	add    %ecx,(%esi)
     33c:	c1 15 00 00 02 00 0d 	rcll   $0xd,0x20000
     343:	04 30                	add    $0x30,%al
     345:	00 00                	add    %al,(%eax)
     347:	00 07                	add    %al,(%edi)
     349:	4c                   	dec    %esp
     34a:	85 03                	test   %eax,(%ebx)
     34c:	00 00                	add    %al,(%eax)
     34e:	0e                   	push   %cs
     34f:	70 0d                	jo     35e <F_IMMED+0x2de>
     351:	00 00                	add    %al,(%eax)
     353:	00 0e                	add    %cl,(%esi)
     355:	9f                   	lahf   
     356:	00 00                	add    %al,(%eax)
     358:	00 01                	add    %al,(%ecx)
     35a:	0e                   	push   %cs
     35b:	d9 16                	fsts   (%esi)
     35d:	00 00                	add    %al,(%eax)
     35f:	02 0e                	add    (%esi),%cl
     361:	71 13                	jno    376 <F_IMMED+0x2f6>
     363:	00 00                	add    %al,(%eax)
     365:	03 0e                	add    (%esi),%ecx
     367:	1c 16                	sbb    $0x16,%al
     369:	00 00                	add    %al,(%eax)
     36b:	04 0e                	add    $0xe,%al
     36d:	83 12 00             	adcl   $0x0,(%edx)
     370:	00 05 0e a8 0a 00    	add    %al,0xaa80e
     376:	00 06                	add    %al,(%esi)
     378:	0e                   	push   %cs
     379:	5a                   	pop    %edx
     37a:	0a 00                	or     (%eax),%al
     37c:	00 07                	add    %al,(%edi)
     37e:	0e                   	push   %cs
     37f:	6e                   	outsb  %ds:(%esi),(%dx)
     380:	12 00                	adc    (%eax),%al
     382:	00 08                	add    %cl,(%eax)
     384:	00 0d 04 30 00 00    	add    %cl,0x3004
     38a:	00 07                	add    %al,(%edi)
     38c:	5c                   	pop    %esp
     38d:	bc 03 00 00 0e       	mov    $0xe000003,%esp
     392:	bc 0d 00 00 00       	mov    $0xd,%esp
     397:	0e                   	push   %cs
     398:	2b 10                	sub    (%eax),%edx
     39a:	00 00                	add    %al,(%eax)
     39c:	01 0e                	add    %ecx,(%esi)
     39e:	89 16                	mov    %edx,(%esi)
     3a0:	00 00                	add    %al,(%eax)
     3a2:	02 0e                	add    (%esi),%cl
     3a4:	a7                   	cmpsl  %es:(%edi),%ds:(%esi)
     3a5:	13 00                	adc    (%eax),%eax
     3a7:	00 03                	add    %al,(%ebx)
     3a9:	0e                   	push   %cs
     3aa:	58                   	pop    %eax
     3ab:	07                   	pop    %es
     3ac:	00 00                	add    %al,(%eax)
     3ae:	04 0e                	add    $0xe,%al
     3b0:	aa                   	stos   %al,%es:(%edi)
     3b1:	12 00                	adc    (%eax),%al
     3b3:	00 05 0e e6 0a 00    	add    %al,0xae60e
     3b9:	00 06                	add    %al,(%esi)
     3bb:	00 0d 04 30 00 00    	add    %cl,0x3004
     3c1:	00 07                	add    %al,(%edi)
     3c3:	68 ff 03 00 00       	push   $0x3ff
     3c8:	0e                   	push   %cs
     3c9:	10 07                	adc    %al,(%edi)
     3cb:	00 00                	add    %al,(%eax)
     3cd:	00 0e                	add    %cl,(%esi)
     3cf:	f0 0c 00             	lock or $0x0,%al
     3d2:	00 01                	add    %al,(%ecx)
     3d4:	0e                   	push   %cs
     3d5:	d9 13                	fsts   (%ebx)
     3d7:	00 00                	add    %al,(%eax)
     3d9:	02 0e                	add    (%esi),%cl
     3db:	2d 0f 00 00 03       	sub    $0x300000f,%eax
     3e0:	0e                   	push   %cs
     3e1:	e0 17                	loopne 3fa <F_IMMED+0x37a>
     3e3:	00 00                	add    %al,(%eax)
     3e5:	04 0e                	add    $0xe,%al
     3e7:	fc                   	cld    
     3e8:	12 00                	adc    (%eax),%al
     3ea:	00 05 0e 2d 01 00    	add    %al,0x12d0e
     3f0:	00 06                	add    %al,(%esi)
     3f2:	0e                   	push   %cs
     3f3:	ed                   	in     (%dx),%eax
     3f4:	02 00                	add    (%eax),%al
     3f6:	00 07                	add    %al,(%edi)
     3f8:	0e                   	push   %cs
     3f9:	79 08                	jns    403 <F_IMMED+0x383>
     3fb:	00 00                	add    %al,(%eax)
     3fd:	08 00                	or     %al,(%eax)
     3ff:	07                   	pop    %es
     400:	75 0b                	jne    40d <F_IMMED+0x38d>
     402:	00 00                	add    %al,(%eax)
     404:	10 08                	adc    %cl,(%eax)
     406:	40                   	inc    %eax
     407:	34 04                	xor    $0x4,%al
     409:	00 00                	add    %al,(%eax)
     40b:	0f 78 00             	vmread %eax,(%eax)
     40e:	08 42 5a             	or     %al,0x5a(%edx)
     411:	00 00                	add    %al,(%eax)
     413:	00 00                	add    %al,(%eax)
     415:	0f 79 00             	vmwrite (%eax),%eax
     418:	08 42 5a             	or     %al,0x5a(%edx)
     41b:	00 00                	add    %al,(%eax)
     41d:	00 04 0f             	add    %al,(%edi,%ecx,1)
     420:	77 00                	ja     422 <F_IMMED+0x3a2>
     422:	08 43 5a             	or     %al,0x5a(%ebx)
     425:	00 00                	add    %al,(%eax)
     427:	00 08                	add    %cl,(%eax)
     429:	0f 68 00             	punpckhbw (%eax),%mm0
     42c:	08 43 5a             	or     %al,0x5a(%ebx)
     42f:	00 00                	add    %al,(%eax)
     431:	00 0c 00             	add    %cl,(%eax,%eax,1)
     434:	02 75 0b             	add    0xb(%ebp),%dh
     437:	00 00                	add    %al,(%eax)
     439:	08 44 ff 03          	or     %al,0x3(%edi,%edi,8)
     43d:	00 00                	add    %al,(%eax)
     43f:	02 67 01             	add    0x1(%edi),%ah
     442:	00 00                	add    %al,(%eax)
     444:	09 59 4a             	or     %ebx,0x4a(%ecx)
     447:	04 00                	add    $0x0,%al
     449:	00 10                	add    %dl,(%eax)
     44b:	67 01 00             	add    %eax,(%bx,%si)
     44e:	00 06                	add    %al,(%esi)
     450:	04 3f                	add    $0x3f,%al
     452:	04 00                	add    $0x0,%al
     454:	00 0d 04 30 00 00    	add    %cl,0x3004
     45a:	00 0a                	add    %cl,(%edx)
     45c:	2c 2b                	sub    $0x2b,%al
     45e:	0a 00                	or     (%eax),%al
     460:	00 0e                	add    %cl,(%esi)
     462:	18 0f                	sbb    %cl,(%edi)
     464:	00 00                	add    %al,(%eax)
     466:	00 0e                	add    %cl,(%esi)
     468:	bb 10 00 00 04       	mov    $0x4000010,%ebx
     46d:	0e                   	push   %cs
     46e:	84 0b                	test   %cl,(%ebx)
     470:	00 00                	add    %al,(%eax)
     472:	05 0e e2 10 00       	add    $0x10e20e,%eax
     477:	00 06                	add    %al,(%esi)
     479:	0e                   	push   %cs
     47a:	f1                   	icebp  
     47b:	10 00                	adc    %al,(%eax)
     47d:	00 07                	add    %al,(%edi)
     47f:	0e                   	push   %cs
     480:	00 11                	add    %dl,(%ecx)
     482:	00 00                	add    %al,(%eax)
     484:	08 0e                	or     %cl,(%esi)
     486:	0f 11 00             	movups %xmm0,(%eax)
     489:	00 09                	add    %cl,(%ecx)
     48b:	0e                   	push   %cs
     48c:	1e                   	push   %ds
     48d:	11 00                	adc    %eax,(%eax)
     48f:	00 0a                	add    %cl,(%edx)
     491:	0e                   	push   %cs
     492:	2d 11 00 00 0b       	sub    $0xb000011,%eax
     497:	0e                   	push   %cs
     498:	3c 11                	cmp    $0x11,%al
     49a:	00 00                	add    %al,(%eax)
     49c:	0c 0e                	or     $0xe,%al
     49e:	4b                   	dec    %ebx
     49f:	11 00                	adc    %eax,(%eax)
     4a1:	00 0d 0e 5a 11 00    	add    %cl,0x115a0e
     4a7:	00 0e                	add    %cl,(%esi)
     4a9:	0e                   	push   %cs
     4aa:	69 11 00 00 0f 0e    	imul   $0xe0f0000,(%ecx),%edx
     4b0:	78 11                	js     4c3 <F_IMMED+0x443>
     4b2:	00 00                	add    %al,(%eax)
     4b4:	10 0e                	adc    %cl,(%esi)
     4b6:	87 11                	xchg   %edx,(%ecx)
     4b8:	00 00                	add    %al,(%eax)
     4ba:	11 0e                	adc    %ecx,(%esi)
     4bc:	96                   	xchg   %eax,%esi
     4bd:	11 00                	adc    %eax,(%eax)
     4bf:	00 12                	add    %dl,(%edx)
     4c1:	0e                   	push   %cs
     4c2:	a5                   	movsl  %ds:(%esi),%es:(%edi)
     4c3:	11 00                	adc    %eax,(%eax)
     4c5:	00 13                	add    %dl,(%ebx)
     4c7:	0e                   	push   %cs
     4c8:	b4 11                	mov    $0x11,%ah
     4ca:	00 00                	add    %al,(%eax)
     4cc:	14 0e                	adc    $0xe,%al
     4ce:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
     4cf:	0c 00                	or     $0x0,%al
     4d1:	00 15 0e e0 11 00    	add    %dl,0x11e00e
     4d7:	00 16                	add    %dl,(%esi)
     4d9:	0e                   	push   %cs
     4da:	ef                   	out    %eax,(%dx)
     4db:	11 00                	adc    %eax,(%eax)
     4dd:	00 17                	add    %dl,(%edi)
     4df:	0e                   	push   %cs
     4e0:	fe                   	(bad)  
     4e1:	11 00                	adc    %eax,(%eax)
     4e3:	00 18                	add    %bl,(%eax)
     4e5:	0e                   	push   %cs
     4e6:	0d 12 00 00 19       	or     $0x19000012,%eax
     4eb:	0e                   	push   %cs
     4ec:	1c 12                	sbb    $0x12,%al
     4ee:	00 00                	add    %al,(%eax)
     4f0:	1a 0e                	sbb    (%esi),%cl
     4f2:	2b 12                	sub    (%edx),%edx
     4f4:	00 00                	add    %al,(%eax)
     4f6:	1b 0e                	sbb    (%esi),%ecx
     4f8:	3a 12                	cmp    (%edx),%dl
     4fa:	00 00                	add    %al,(%eax)
     4fc:	1c 0e                	sbb    $0xe,%al
     4fe:	49                   	dec    %ecx
     4ff:	12 00                	adc    (%eax),%al
     501:	00 1d 0e 0d 10 00    	add    %bl,0x100d0e
     507:	00 1e                	add    %bl,(%esi)
     509:	0e                   	push   %cs
     50a:	1c 10                	sbb    $0x10,%al
     50c:	00 00                	add    %al,(%eax)
     50e:	1f                   	pop    %ds
     50f:	0e                   	push   %cs
     510:	6f                   	outsl  %ds:(%esi),(%dx)
     511:	0a 00                	or     (%eax),%al
     513:	00 20                	add    %ah,(%eax)
     515:	0e                   	push   %cs
     516:	3e 10 00             	adc    %al,%ds:(%eax)
     519:	00 21                	add    %ah,(%ecx)
     51b:	0e                   	push   %cs
     51c:	8b 0a                	mov    (%edx),%ecx
     51e:	00 00                	add    %al,(%eax)
     520:	22 0e                	and    (%esi),%cl
     522:	5b                   	pop    %ebx
     523:	10 00                	adc    %al,(%eax)
     525:	00 23                	add    %ah,(%ebx)
     527:	0e                   	push   %cs
     528:	bd 0a 00 00 24       	mov    $0x2400000a,%ebp
     52d:	0e                   	push   %cs
     52e:	7e 10                	jle    540 <F_IMMED+0x4c0>
     530:	00 00                	add    %al,(%eax)
     532:	25 0e 8d 10 00       	and    $0x108d0e,%eax
     537:	00 26                	add    %ah,(%esi)
     539:	0e                   	push   %cs
     53a:	fe 0f                	decb   (%edi)
     53c:	00 00                	add    %al,(%eax)
     53e:	27                   	daa    
     53f:	0e                   	push   %cs
     540:	93                   	xchg   %eax,%ebx
     541:	13 00                	adc    (%eax),%eax
     543:	00 28                	add    %ch,(%eax)
     545:	0e                   	push   %cs
     546:	46                   	inc    %esi
     547:	02 00                	add    (%eax),%al
     549:	00 29                	add    %ch,(%ecx)
     54b:	0e                   	push   %cs
     54c:	1a 13                	sbb    (%ebx),%dl
     54e:	00 00                	add    %al,(%eax)
     550:	2a 0e                	sub    (%esi),%cl
     552:	47                   	inc    %edi
     553:	0e                   	push   %cs
     554:	00 00                	add    %al,(%eax)
     556:	2b 0e                	sub    (%esi),%ecx
     558:	bb 13 00 00 2c       	mov    $0x2c000013,%ebx
     55d:	0e                   	push   %cs
     55e:	4c                   	dec    %esp
     55f:	03 00                	add    (%eax),%eax
     561:	00 2d 0e 33 19 00    	add    %ch,0x19330e
     567:	00 2e                	add    %ch,(%esi)
     569:	0e                   	push   %cs
     56a:	db 05 00 00 2f 0e    	fildl  0xe2f0000
     570:	7d 0c                	jge    57e <F_IMMED+0x4fe>
     572:	00 00                	add    %al,(%eax)
     574:	30 0e                	xor    %cl,(%esi)
     576:	44                   	inc    %esp
     577:	09 00                	or     %eax,(%eax)
     579:	00 31                	add    %dh,(%ecx)
     57b:	0e                   	push   %cs
     57c:	90                   	nop
     57d:	07                   	pop    %es
     57e:	00 00                	add    %al,(%eax)
     580:	32 0e                	xor    (%esi),%cl
     582:	33 0c 00             	xor    (%eax,%eax,1),%ecx
     585:	00 33                	add    %dh,(%ebx)
     587:	0e                   	push   %cs
     588:	fa                   	cli    
     589:	0a 00                	or     (%eax),%al
     58b:	00 34 0e             	add    %dh,(%esi,%ecx,1)
     58e:	66 08 00             	data16 or %al,(%eax)
     591:	00 35 0e a6 03 00    	add    %dh,0x3a60e
     597:	00 36                	add    %dh,(%esi)
     599:	0e                   	push   %cs
     59a:	1f                   	pop    %ds
     59b:	0c 00                	or     $0x0,%al
     59d:	00 37                	add    %dh,(%edi)
     59f:	0e                   	push   %cs
     5a0:	2b 0d 00 00 38 0e    	sub    0xe380000,%ecx
     5a6:	05 00 00 00 39       	add    $0x39000000,%eax
     5ab:	0e                   	push   %cs
     5ac:	e7 14                	out    %eax,$0x14
     5ae:	00 00                	add    %al,(%eax)
     5b0:	3a 0e                	cmp    (%esi),%cl
     5b2:	f7 14 00             	notl   (%eax,%eax,1)
     5b5:	00 3b                	add    %bh,(%ebx)
     5b7:	0e                   	push   %cs
     5b8:	07                   	pop    %es
     5b9:	15 00 00 3c 0e       	adc    $0xe3c0000,%eax
     5be:	17                   	pop    %ss
     5bf:	15 00 00 3d 0e       	adc    $0xe3d0000,%eax
     5c4:	27                   	daa    
     5c5:	15 00 00 3e 0e       	adc    $0xe3e0000,%eax
     5ca:	37                   	aaa    
     5cb:	15 00 00 3f 0e       	adc    $0xe3f0000,%eax
     5d0:	47                   	inc    %edi
     5d1:	15 00 00 40 0e       	adc    $0xe400000,%eax
     5d6:	57                   	push   %edi
     5d7:	15 00 00 41 0e       	adc    $0xe410000,%eax
     5dc:	67 15 00 00 42 0e    	addr16 adc $0xe420000,%eax
     5e2:	9d                   	popf   
     5e3:	16                   	push   %ss
     5e4:	00 00                	add    %al,(%eax)
     5e6:	43                   	inc    %ebx
     5e7:	0e                   	push   %cs
     5e8:	a1 18 00 00 44       	mov    0x44000018,%eax
     5ed:	0e                   	push   %cs
     5ee:	c8 16 00 00          	enter  $0x16,$0x0
     5f2:	45                   	inc    %ebp
     5f3:	0e                   	push   %cs
     5f4:	d0 0d 00 00 46 0e    	rorb   0xe460000
     5fa:	7a 0f                	jp     60b <F_IMMED+0x58b>
     5fc:	00 00                	add    %al,(%eax)
     5fe:	47                   	inc    %edi
     5ff:	0e                   	push   %cs
     600:	b5 02                	mov    $0x2,%ch
     602:	00 00                	add    %al,(%eax)
     604:	48                   	dec    %eax
     605:	0e                   	push   %cs
     606:	a4                   	movsb  %ds:(%esi),%es:(%edi)
     607:	05 00 00 49 0e       	add    $0xe490000,%eax
     60c:	68 0f 00 00 4a       	push   $0x4a00000f
     611:	0e                   	push   %cs
     612:	d3 07                	roll   %cl,(%edi)
     614:	00 00                	add    %al,(%eax)
     616:	4b                   	dec    %ebx
     617:	0e                   	push   %cs
     618:	05 0d 00 00 4c       	add    $0x4c00000d,%eax
     61d:	0e                   	push   %cs
     61e:	0e                   	push   %cs
     61f:	0c 00                	or     $0x0,%al
     621:	00 4d 0e             	add    %cl,0xe(%ebp)
     624:	d1 14 00             	rcll   (%eax,%eax,1)
     627:	00 4e 0e             	add    %cl,0xe(%esi)
     62a:	99                   	cltd   
     62b:	14 00                	adc    $0x0,%al
     62d:	00 4f 0e             	add    %cl,0xe(%edi)
     630:	19 0d 00 00 50 0e    	sbb    %ecx,0xe500000
     636:	4d                   	dec    %ebp
     637:	1a 00                	sbb    (%eax),%al
     639:	00 51 0e             	add    %dl,0xe(%ecx)
     63c:	bf 09 00 00 52       	mov    $0x52000009,%edi
     641:	0e                   	push   %cs
     642:	87 18                	xchg   %ebx,(%eax)
     644:	00 00                	add    %al,(%eax)
     646:	53                   	push   %ebx
     647:	0e                   	push   %cs
     648:	e7 07                	out    %eax,$0x7
     64a:	00 00                	add    %al,(%eax)
     64c:	54                   	push   %esp
     64d:	0e                   	push   %cs
     64e:	01 1a                	add    %ebx,(%edx)
     650:	00 00                	add    %al,(%eax)
     652:	55                   	push   %ebp
     653:	0e                   	push   %cs
     654:	ae                   	scas   %es:(%edi),%al
     655:	0b 00                	or     (%eax),%eax
     657:	00 56 0e             	add    %dl,0xe(%esi)
     65a:	a0 02 00 00 57       	mov    0x57000002,%al
     65f:	0e                   	push   %cs
     660:	d8 0b                	fmuls  (%ebx)
     662:	00 00                	add    %al,(%eax)
     664:	58                   	pop    %eax
     665:	0e                   	push   %cs
     666:	47                   	inc    %edi
     667:	17                   	pop    %ss
     668:	00 00                	add    %al,(%eax)
     66a:	59                   	pop    %ecx
     66b:	0e                   	push   %cs
     66c:	c8 0f 00 00          	enter  $0xf,$0x0
     670:	5a                   	pop    %edx
     671:	0e                   	push   %cs
     672:	da 0f                	fimull (%edi)
     674:	00 00                	add    %al,(%eax)
     676:	5b                   	pop    %ebx
     677:	0e                   	push   %cs
     678:	83 17 00             	adcl   $0x0,(%edi)
     67b:	00 5c 0e ec          	add    %bl,-0x14(%esi,%ecx,1)
     67f:	0f 00 00             	sldt   (%eax)
     682:	5d                   	pop    %ebp
     683:	0e                   	push   %cs
     684:	eb 08                	jmp    68e <F_IMMED+0x60e>
     686:	00 00                	add    %al,(%eax)
     688:	5e                   	pop    %esi
     689:	0e                   	push   %cs
     68a:	bc 17 00 00 5f       	mov    $0x5f000017,%esp
     68f:	0e                   	push   %cs
     690:	ce                   	into   
     691:	17                   	pop    %ss
     692:	00 00                	add    %al,(%eax)
     694:	60                   	pusha  
     695:	0e                   	push   %cs
     696:	32 09                	xor    (%ecx),%cl
     698:	00 00                	add    %al,(%eax)
     69a:	61                   	popa   
     69b:	0e                   	push   %cs
     69c:	35 17 00 00 62       	xor    $0x62000017,%eax
     6a1:	0e                   	push   %cs
     6a2:	5b                   	pop    %ebx
     6a3:	09 00                	or     %eax,(%eax)
     6a5:	00 63 0e             	add    %ah,0xe(%ebx)
     6a8:	88 05 00 00 64 0e    	mov    %al,0xe640000
     6ae:	c7 06 00 00 65 0e    	movl   $0xe650000,(%esi)
     6b4:	0d 02 00 00 66       	or     $0x66000002,%eax
     6b9:	0e                   	push   %cs
     6ba:	31 16                	xor    %edx,(%esi)
     6bc:	00 00                	add    %al,(%eax)
     6be:	67 0e                	addr16 push %cs
     6c0:	c5 18                	lds    (%eax),%ebx
     6c2:	00 00                	add    %al,(%eax)
     6c4:	68 0e d6 18 00       	push   $0x18d60e
     6c9:	00 69 0e             	add    %ch,0xe(%ecx)
     6cc:	e7 18                	out    %eax,$0x18
     6ce:	00 00                	add    %al,(%eax)
     6d0:	6a 0e                	push   $0xe
     6d2:	f6 16                	notb   (%esi)
     6d4:	00 00                	add    %al,(%eax)
     6d6:	6b 0e ff             	imul   $0xffffffff,(%esi),%ecx
     6d9:	18 00                	sbb    %al,(%eax)
     6db:	00 6c 0e 10          	add    %ch,0x10(%esi,%ecx,1)
     6df:	19 00                	sbb    %eax,(%eax)
     6e1:	00 6d 0e             	add    %ch,0xe(%ebp)
     6e4:	eb 15                	jmp    6fb <F_IMMED+0x67b>
     6e6:	00 00                	add    %al,(%eax)
     6e8:	6e                   	outsb  %ds:(%esi),(%dx)
     6e9:	0e                   	push   %cs
     6ea:	1b 00                	sbb    (%eax),%eax
     6ec:	00 00                	add    %al,(%eax)
     6ee:	6f                   	outsl  %ds:(%esi),(%dx)
     6ef:	0e                   	push   %cs
     6f0:	2c 00                	sub    $0x0,%al
     6f2:	00 00                	add    %al,(%eax)
     6f4:	70 0e                	jo     704 <F_IMMED+0x684>
     6f6:	b4 00                	mov    $0x0,%ah
     6f8:	00 00                	add    %al,(%eax)
     6fa:	71 0e                	jno    70a <F_IMMED+0x68a>
     6fc:	5c                   	pop    %esp
     6fd:	00 00                	add    %al,(%eax)
     6ff:	00 72 0e             	add    %dh,0xe(%edx)
     702:	6d                   	insl   (%dx),%es:(%edi)
     703:	00 00                	add    %al,(%eax)
     705:	00 73 0e             	add    %dh,0xe(%ebx)
     708:	58                   	pop    %eax
     709:	0e                   	push   %cs
     70a:	00 00                	add    %al,(%eax)
     70c:	74 0e                	je     71c <F_IMMED+0x69c>
     70e:	79 03                	jns    713 <F_IMMED+0x693>
     710:	00 00                	add    %al,(%eax)
     712:	75 0e                	jne    722 <F_IMMED+0x6a2>
     714:	56                   	push   %esi
     715:	0f 00 00             	sldt   (%eax)
     718:	76 0e                	jbe    728 <F_IMMED+0x6a8>
     71a:	c4 0b                	les    (%ebx),%ecx
     71c:	00 00                	add    %al,(%eax)
     71e:	77 0e                	ja     72e <F_IMMED+0x6ae>
     720:	9c                   	pushf  
     721:	10 00                	adc    %al,(%eax)
     723:	00 78 0e             	add    %bh,0xe(%eax)
     726:	54                   	push   %esp
     727:	05 00 00 79 0e       	add    $0xe790000,%eax
     72c:	8e 02                	mov    (%edx),%es
     72e:	00 00                	add    %al,(%eax)
     730:	7a 0e                	jp     740 <F_IMMED+0x6c0>
     732:	b8 05 00 00 7b       	mov    $0x7b000005,%eax
     737:	0e                   	push   %cs
     738:	21 19                	and    %ebx,(%ecx)
     73a:	00 00                	add    %al,(%eax)
     73c:	7c 0e                	jl     74c <F_IMMED+0x6cc>
     73e:	3c 0a                	cmp    $0xa,%al
     740:	00 00                	add    %al,(%eax)
     742:	7d 0e                	jge    752 <F_IMMED+0x6d2>
     744:	db 02                	fildl  (%edx)
     746:	00 00                	add    %al,(%eax)
     748:	7e 0e                	jle    758 <F_IMMED+0x6d8>
     74a:	fe 07                	incb   (%edi)
     74c:	00 00                	add    %al,(%eax)
     74e:	7f 0e                	jg     75e <F_IMMED+0x6de>
     750:	a8 08                	test   $0x8,%al
     752:	00 00                	add    %al,(%eax)
     754:	80 0e ca             	orb    $0xca,(%esi)
     757:	10 00                	adc    %al,(%eax)
     759:	00 81 0e f8 0b 00    	add    %al,0xbf80e(%ecx)
     75f:	00 85 0e 3a 04 00    	add    %al,0x43a0e(%ebp)
     765:	00 86 0e f4 05 00    	add    %al,0x5f40e(%esi)
     76b:	00 87 0e 10 06 00    	add    %al,0x6100e(%edi)
     771:	00 88 0e e2 00 00    	add    %cl,0xe20e(%eax)
     777:	00 89 0e fe 00 00    	add    %cl,0xfe0e(%ecx)
     77d:	00 8a 0e 3b 06 00    	add    %cl,0x63b0e(%edx)
     783:	00 8b 0e 57 06 00    	add    %cl,0x6570e(%ebx)
     789:	00 8c 0e 73 06 00 00 	add    %cl,0x673(%esi,%ecx,1)
     790:	8d 0e                	lea    (%esi),%ecx
     792:	8f 06                	popl   (%esi)
     794:	00 00                	add    %al,(%eax)
     796:	8e 0e                	mov    (%esi),%cs
     798:	ab                   	stos   %eax,%es:(%edi)
     799:	06                   	push   %es
     79a:	00 00                	add    %al,(%eax)
     79c:	8f                   	(bad)  
     79d:	0e                   	push   %cs
     79e:	5c                   	pop    %esp
     79f:	19 00                	sbb    %eax,(%eax)
     7a1:	00 90 0e 6f 19 00    	add    %dl,0x196f0e(%eax)
     7a7:	00 91 0e 82 19 00    	add    %dl,0x19820e(%ecx)
     7ad:	00 92 0e 95 19 00    	add    %dl,0x19950e(%edx)
     7b3:	00 93 0e a8 19 00    	add    %dl,0x19a80e(%ebx)
     7b9:	00 94 0e bb 19 00 00 	add    %dl,0x19bb(%esi,%ecx,1)
     7c0:	95                   	xchg   %eax,%ebp
     7c1:	0e                   	push   %cs
     7c2:	fd                   	std    
     7c3:	08 00                	or     %al,(%eax)
     7c5:	00 96 0e db 19 00    	add    %dl,0x19db0e(%esi)
     7cb:	00 97 0e ee 19 00    	add    %dl,0x19ee0e(%edi)
     7d1:	00 98 0e d5 08 00    	add    %bl,0x8d50e(%eax)
     7d7:	00 99 0e b7 14 00    	add    %bl,0x14b70e(%ecx)
     7dd:	00 9a 0e 6a 10 00    	add    %bl,0x106a0e(%edx)
     7e3:	00 9b 0e 29 02 00    	add    %bl,0x2290e(%ebx)
     7e9:	00 9c 0e b2 18 00 00 	add    %bl,0x18b2(%esi,%ecx,1)
     7f0:	9d                   	popf   
     7f1:	0e                   	push   %cs
     7f2:	d6                   	(bad)  
     7f3:	15 00 00 9e 0e       	adc    $0xe9e0000,%eax
     7f8:	07                   	pop    %es
     7f9:	17                   	pop    %ss
     7fa:	00 00                	add    %al,(%eax)
     7fc:	9f                   	lahf   
     7fd:	0e                   	push   %cs
     7fe:	72 17                	jb     817 <F_IMMED+0x797>
     800:	00 00                	add    %al,(%eax)
     802:	a0 0e 28 04 00       	mov    0x4280e,%al
     807:	00 a1 0e 40 07 00    	add    %ah,0x7400e(%ecx)
     80d:	00 a2 0e f8 13 00    	add    %ah,0x13f80e(%edx)
     813:	00 a3 0e e9 0d 00    	add    %ah,0xde90e(%ebx)
     819:	00 a4 0e db 03 00 00 	add    %ah,0x3db(%esi,%ecx,1)
     820:	b0 0e                	mov    $0xe,%al
     822:	8b 03                	mov    (%ebx),%eax
     824:	00 00                	add    %al,(%eax)
     826:	b1 0e                	mov    $0xe,%cl
     828:	fc                   	cld    
     829:	0d 00 00 b2 0e       	or     $0xeb20000,%eax
     82e:	b5 07                	mov    $0x7,%ch
     830:	00 00                	add    %al,(%eax)
     832:	b3 0e                	mov    $0xe,%bl
     834:	08 05 00 00 b4 0e    	or     %al,0xeb40000
     83a:	c3                   	ret    
     83b:	11 00                	adc    %eax,(%eax)
     83d:	00 b5 0e 3a 05 00    	add    %dh,0x53a0e(%ebp)
     843:	00 b6 0e 8a 1a 00    	add    %dh,0x1a8a0e(%esi)
     849:	00 b7 0e ae 16 00    	add    %dh,0x16ae0e(%edi)
     84f:	00 b8 0e 3e 08 00    	add    %bh,0x83e0e(%eax)
     855:	00 b9 0e c1 0e 00    	add    %bh,0xec10e(%ecx)
     85b:	00 ba 0e 26 07 00    	add    %bh,0x7260e(%edx)
     861:	00 bb 0e 1b 18 00    	add    %bh,0x181b0e(%ebx)
     867:	00 bc 0e 2d 18 00 00 	add    %bh,0x182d(%esi,%ecx,1)
     86e:	bd 0e 3f 18 00       	mov    $0x183f0e,%ebp
     873:	00 be 0e 51 18 00    	add    %bh,0x18510e(%esi)
     879:	00 bf 0e 63 18 00    	add    %bh,0x18630e(%edi)
     87f:	00 c0                	add    %al,%al
     881:	0e                   	push   %cs
     882:	75 18                	jne    89c <F_IMMED+0x81c>
     884:	00 00                	add    %al,(%eax)
     886:	c1 0e 01             	rorl   $0x1,(%esi)
     889:	04 00                	add    $0x0,%al
     88b:	00 c2                	add    %al,%dl
     88d:	0e                   	push   %cs
     88e:	a0 09 00 00 c3       	mov    0xc3000009,%al
     893:	0e                   	push   %cs
     894:	72 1a                	jb     8b0 <F_IMMED+0x830>
     896:	00 00                	add    %al,(%eax)
     898:	c4 0e                	les    (%esi),%ecx
     89a:	1d 14 00 00 c5       	sbb    $0xc5000014,%eax
     89f:	0e                   	push   %cs
     8a0:	58                   	pop    %eax
     8a1:	0d 00 00 c6 0e       	or     $0xec60000,%eax
     8a6:	3e 0d 00 00 c7 0e    	ds or  $0xec70000,%eax
     8ac:	c5 00                	lds    (%eax),%eax
     8ae:	00 00                	add    %al,(%eax)
     8b0:	c8 0e 61 0c          	enter  $0x610e,$0xc
     8b4:	00 00                	add    %al,(%eax)
     8b6:	c9                   	leave  
     8b7:	0e                   	push   %cs
     8b8:	3d 00 00 00 ca       	cmp    $0xca000000,%eax
     8bd:	0e                   	push   %cs
     8be:	6d                   	insl   (%dx),%es:(%edi)
     8bf:	04 00                	add    $0x0,%al
     8c1:	00 cb                	add    %cl,%bl
     8c3:	0e                   	push   %cs
     8c4:	74 16                	je     8dc <F_IMMED+0x85c>
     8c6:	00 00                	add    %al,(%eax)
     8c8:	cc                   	int3   
     8c9:	0e                   	push   %cs
     8ca:	43                   	inc    %ebx
     8cb:	01 00                	add    %eax,(%eax)
     8cd:	00 cd                	add    %cl,%ch
     8cf:	0e                   	push   %cs
     8d0:	83 04 00 00          	addl   $0x0,(%eax,%eax,1)
     8d4:	ce                   	into   
     8d5:	0e                   	push   %cs
     8d6:	1e                   	push   %ds
     8d7:	17                   	pop    %ss
     8d8:	00 00                	add    %al,(%eax)
     8da:	cf                   	iret   
     8db:	0e                   	push   %cs
     8dc:	ef                   	out    %eax,(%dx)
     8dd:	04 00                	add    $0x0,%al
     8df:	00 d0                	add    %dl,%al
     8e1:	0e                   	push   %cs
     8e2:	a7                   	cmpsl  %es:(%edi),%ds:(%esi)
     8e3:	0f 00 00             	sldt   (%eax)
     8e6:	d1 0e                	rorl   (%esi)
     8e8:	75 02                	jne    8ec <F_IMMED+0x86c>
     8ea:	00 00                	add    %al,(%eax)
     8ec:	d2 0e                	rorb   %cl,(%esi)
     8ee:	82                   	(bad)  
     8ef:	14 00                	adc    $0x0,%al
     8f1:	00 d3                	add    %dl,%bl
     8f3:	0e                   	push   %cs
     8f4:	30 03                	xor    %al,(%ebx)
     8f6:	00 00                	add    %al,(%eax)
     8f8:	d4 0e                	aam    $0xe
     8fa:	3c 0b                	cmp    $0xb,%al
     8fc:	00 00                	add    %al,(%eax)
     8fe:	d5 0e                	aad    $0xe
     900:	cc                   	int3   
     901:	0a 00                	or     (%eax),%al
     903:	00 d6                	add    %dl,%dh
     905:	0e                   	push   %cs
     906:	e4 0e                	in     $0xe,%al
     908:	00 00                	add    %al,(%eax)
     90a:	d7                   	xlat   %ds:(%ebx)
     90b:	0e                   	push   %cs
     90c:	58                   	pop    %eax
     90d:	14 00                	adc    $0x0,%al
     90f:	00 d8                	add    %bl,%al
     911:	0e                   	push   %cs
     912:	93                   	xchg   %eax,%ebx
     913:	0b 00                	or     (%eax),%eax
     915:	00 d9                	add    %bl,%cl
     917:	0e                   	push   %cs
     918:	56                   	push   %esi
     919:	04 00                	add    $0x0,%al
     91b:	00 da                	add    %bl,%dl
     91d:	0e                   	push   %cs
     91e:	92                   	xchg   %eax,%edx
     91f:	08 00                	or     %al,(%eax)
     921:	00 db                	add    %bl,%bl
     923:	0e                   	push   %cs
     924:	96                   	xchg   %eax,%esi
     925:	04 00                	add    $0x0,%al
     927:	00 dc                	add    %bl,%ah
     929:	0e                   	push   %cs
     92a:	16                   	push   %ss
     92b:	09 00                	or     %eax,(%eax)
     92d:	00 dd                	add    %bl,%ch
     92f:	0e                   	push   %cs
     930:	dc 04 00             	faddl  (%eax,%eax,1)
     933:	00 e0                	add    %ah,%al
     935:	0e                   	push   %cs
     936:	6e                   	outsb  %ds:(%esi),(%dx)
     937:	14 00                	adc    $0x0,%al
     939:	00 e1                	add    %ah,%cl
     93b:	0e                   	push   %cs
     93c:	7e 07                	jle    945 <F_IMMED+0x8c5>
     93e:	00 00                	add    %al,(%eax)
     940:	e2 0e                	loop   950 <F_IMMED+0x8d0>
     942:	c9                   	leave  
     943:	05 00 00 e3 0e       	add    $0xee30000,%eax
     948:	c8 02 00 00          	enter  $0x2,$0x0
     94c:	e4 0e                	in     $0xe,%al
     94e:	28 0a                	sub    %cl,(%edx)
     950:	00 00                	add    %al,(%eax)
     952:	e5 0e                	in     $0xe,%eax
     954:	0b 14 00             	or     (%eax,%eax,1),%edx
     957:	00 e6                	add    %ah,%dh
     959:	0e                   	push   %cs
     95a:	48                   	dec    %eax
     95b:	13 00                	adc    (%eax),%eax
     95d:	00 e7                	add    %ah,%bh
     95f:	11 aa 17 00 00 01    	adc    %ebp,0x1000017(%edx)
     965:	01 11                	add    %edx,(%ecx)
     967:	ae                   	scas   %es:(%edi),%al
     968:	04 00                	add    $0x0,%al
     96a:	00 02                	add    %al,(%edx)
     96c:	01 11                	add    %edx,(%ecx)
     96e:	e0 06                	loopne 976 <F_IMMED+0x8f6>
     970:	00 00                	add    %al,(%eax)
     972:	03 01                	add    (%ecx),%eax
     974:	11 4a 0c             	adc    %ecx,0xc(%edx)
     977:	00 00                	add    %al,(%eax)
     979:	04 01                	add    $0x1,%al
     97b:	11 be 08 00 00 05    	adc    %edi,0x5000008(%esi)
     981:	01 11                	add    %edx,(%ecx)
     983:	31 13                	xor    %edx,(%ebx)
     985:	00 00                	add    %al,(%eax)
     987:	06                   	push   %es
     988:	01 11                	add    %edx,(%ecx)
     98a:	59                   	pop    %ecx
     98b:	17                   	pop    %ss
     98c:	00 00                	add    %al,(%eax)
     98e:	07                   	pop    %es
     98f:	01 11                	add    %edx,(%ecx)
     991:	be 12 00 00 08       	mov    $0x8000012,%esi
     996:	01 11                	add    %edx,(%ecx)
     998:	98                   	cwtl   
     999:	12 00                	adc    (%eax),%al
     99b:	00 09                	add    %cl,(%ecx)
     99d:	01 11                	add    %edx,(%ecx)
     99f:	22 05 00 00 0a 01    	and    0x10a0000,%al
     9a5:	11 22                	adc    %esp,(%edx)
     9a7:	08 00                	or     %al,(%eax)
     9a9:	00 0b                	add    %cl,(%ebx)
     9ab:	01 11                	add    %edx,(%ecx)
     9ad:	a5                   	movsl  %ds:(%esi),%es:(%edi)
     9ae:	0d 00 00 0c 01       	or     $0x10c0000,%eax
     9b3:	11 92 0f 00 00 0d    	adc    %edx,0xd00000f(%edx)
     9b9:	01 11                	add    %edx,(%ecx)
     9bb:	47                   	inc    %edi
     9bc:	19 00                	sbb    %eax,(%eax)
     9be:	00 0e                	add    %cl,(%esi)
     9c0:	01 11                	add    %edx,(%ecx)
     9c2:	d8 0c 00             	fmuls  (%eax,%eax,1)
     9c5:	00 0f                	add    %cl,(%edi)
     9c7:	01 11                	add    %edx,(%ecx)
     9c9:	a5                   	movsl  %ds:(%esi),%es:(%edi)
     9ca:	01 00                	add    %eax,(%eax)
     9cc:	00 10                	add    %dl,(%eax)
     9ce:	01 11                	add    %edx,(%ecx)
     9d0:	18 03                	sbb    %al,(%ebx)
     9d2:	00 00                	add    %al,(%eax)
     9d4:	11 01                	adc    %eax,(%ecx)
     9d6:	11 fe                	adc    %edi,%esi
     9d8:	0e                   	push   %cs
     9d9:	00 00                	add    %al,(%eax)
     9db:	12 01                	adc    (%ecx),%al
     9dd:	11 ba 01 00 00 13    	adc    %edi,0x13000001(%edx)
     9e3:	01 11                	add    %edx,(%ecx)
     9e5:	9c                   	pushf  
     9e6:	15 00 00 14 01       	adc    $0x1140000,%eax
     9eb:	11 5a 02             	adc    %ebx,0x2(%edx)
     9ee:	00 00                	add    %al,(%eax)
     9f0:	15 01 11 84 09       	adc    $0x9841101,%eax
     9f5:	00 00                	add    %al,(%eax)
     9f7:	16                   	push   %ss
     9f8:	01 11                	add    %edx,(%ecx)
     9fa:	5f                   	pop    %edi
     9fb:	03 00                	add    (%eax),%eax
     9fd:	00 17                	add    %dl,(%edi)
     9ff:	01 11                	add    %edx,(%ecx)
     a01:	6d                   	insl   (%dx),%es:(%edi)
     a02:	0e                   	push   %cs
     a03:	00 00                	add    %al,(%eax)
     a05:	18 01                	sbb    %al,(%ecx)
     a07:	11 15 04 00 00 19    	adc    %edx,0x19000004
     a0d:	01 11                	add    %edx,(%ecx)
     a0f:	c8 03 00 00          	enter  $0x3,$0x0
     a13:	1a 01                	sbb    (%ecx),%al
     a15:	11 10                	adc    %edx,(%eax)
     a17:	08 00                	or     %al,(%eax)
     a19:	00 1b                	add    %bl,(%ebx)
     a1b:	01 11                	add    %edx,(%ecx)
     a1d:	06                   	push   %es
     a1e:	03 00                	add    (%eax),%eax
     a20:	00 1c 01             	add    %bl,(%ecx,%eax,1)
     a23:	11 72 09             	adc    %esi,0x9(%edx)
     a26:	00 00                	add    %al,(%eax)
     a28:	00 02                	add    %al,(%edx)
     a2a:	00 03                	add    %al,(%ebx)
     a2c:	04 04                	add    $0x4,%al
     a2e:	52                   	push   %edx
     a2f:	14 00                	adc    $0x0,%al
     a31:	00 0d 04 30 00 00    	add    %cl,0x3004
     a37:	00 0b                	add    %cl,(%ebx)
     a39:	48                   	dec    %eax
     a3a:	63 0a                	arpl   %cx,(%edx)
     a3c:	00 00                	add    %al,(%eax)
     a3e:	0e                   	push   %cs
     a3f:	fc                   	cld    
     a40:	15 00 00 00 0e       	adc    $0xe000000,%eax
     a45:	a7                   	cmpsl  %es:(%edi),%ds:(%esi)
     a46:	0e                   	push   %cs
     a47:	00 00                	add    %al,(%eax)
     a49:	01 0e                	add    %ecx,(%esi)
     a4b:	de 01                	fiadd  (%ecx)
     a4d:	00 00                	add    %al,(%eax)
     a4f:	02 0e                	add    (%esi),%cl
     a51:	72 01                	jb     a54 <F_IMMED+0x9d4>
     a53:	00 00                	add    %al,(%eax)
     a55:	03 0e                	add    (%esi),%ecx
     a57:	f6 17                	notb   (%edi)
     a59:	00 00                	add    %al,(%eax)
     a5b:	04 0e                	add    $0xe,%al
     a5d:	f7 06 00 00 05 00    	testl  $0x50000,(%esi)
     a63:	02 ce                	add    %dh,%cl
     a65:	19 00                	sbb    %eax,(%eax)
     a67:	00 0c 7a             	add    %cl,(%edx,%edi,2)
     a6a:	6e                   	outsb  %ds:(%esi),(%dx)
     a6b:	0a 00                	or     (%eax),%al
     a6d:	00 10                	add    %dl,(%eax)
     a6f:	ce                   	into   
     a70:	19 00                	sbb    %eax,(%eax)
     a72:	00 02                	add    %al,(%edx)
     a74:	88 00                	mov    %al,(%eax)
     a76:	00 00                	add    %al,(%eax)
     a78:	0c 80                	or     $0x80,%al
     a7a:	7e 0a                	jle    a86 <F_IMMED+0xa06>
     a7c:	00 00                	add    %al,(%eax)
     a7e:	10 88 00 00 00 07    	adc    %cl,0x7000000(%eax)
     a84:	85 0d 00 00 02 01    	test   %ecx,0x1020000
     a8a:	1a a4 0a 00 00 0f 78 	sbb    0x780f0000(%edx,%ecx,1),%ah
     a91:	00 01                	add    %al,(%ecx)
     a93:	1b a6 00 00 00 00    	sbb    0x0(%esi),%esp
     a99:	0f 79 00             	vmwrite (%eax),%eax
     a9c:	01 1c a6             	add    %ebx,(%esi,%eiz,4)
     a9f:	00 00                	add    %al,(%eax)
     aa1:	00 01                	add    %al,(%ecx)
     aa3:	00 02                	add    %al,(%edx)
     aa5:	89 0d 00 00 01 1d    	mov    %ecx,0x1d010000
     aab:	83 0a 00             	orl    $0x0,(%edx)
     aae:	00 12                	add    %dl,(%edx)
     ab0:	ee                   	out    %al,(%dx)
     ab1:	0b 00                	or     (%eax),%eax
     ab3:	00 03                	add    %al,(%ebx)
     ab5:	02 01                	add    (%ecx),%al
     ab7:	24 ed                	and    $0xed,%al
     ab9:	0a 00                	or     (%eax),%al
     abb:	00 08                	add    %cl,(%eax)
     abd:	bb 15 00 00 01       	mov    $0x1000015,%ebx
     ac2:	25 37 00 00 00       	and    $0x37,%eax
     ac7:	00 08                	add    %cl,(%eax)
     ac9:	00 00                	add    %al,(%eax)
     acb:	00 00                	add    %al,(%eax)
     acd:	01 26                	add    %esp,(%esi)
     acf:	37                   	aaa    
     ad0:	00 00                	add    %al,(%eax)
     ad2:	00 01                	add    %al,(%ecx)
     ad4:	0f 6c                	(bad)  
     ad6:	65 6e                	outsb  %gs:(%esi),(%dx)
     ad8:	00 01                	add    %al,(%ecx)
     ada:	27                   	daa    
     adb:	37                   	aaa    
     adc:	00 00                	add    %al,(%eax)
     ade:	00 02                	add    %al,(%edx)
     ae0:	08 10                	or     %dl,(%eax)
     ae2:	09 00                	or     %eax,(%eax)
     ae4:	00 01                	add    %al,(%ecx)
     ae6:	28 ed                	sub    %ch,%ch
     ae8:	0a 00                	or     (%eax),%al
     aea:	00 03                	add    %al,(%ebx)
     aec:	00 0b                	add    %cl,(%ebx)
     aee:	a4                   	movsb  %ds:(%esi),%es:(%edi)
     aef:	0a 00                	or     (%eax),%al
     af1:	00 fd                	add    %bh,%ch
     af3:	0a 00                	or     (%eax),%al
     af5:	00 0c 97             	add    %cl,(%edi,%edx,4)
     af8:	00 00                	add    %al,(%eax)
     afa:	00 ff                	add    %bh,%bh
     afc:	00 02                	add    %al,(%edx)
     afe:	f2 0b 00             	repnz or (%eax),%eax
     b01:	00 01                	add    %al,(%ecx)
     b03:	29 af 0a 00 00 13    	sub    %ebp,0x1300000a(%edi)
     b09:	67 05 00 00 01 35    	addr16 add $0x35010000,%eax
     b0f:	30 0b                	xor    %cl,(%ebx)
     b11:	00 00                	add    %al,(%eax)
     b13:	eb 8a                	jmp    a9f <F_IMMED+0xa1f>
     b15:	04 08                	add    $0x8,%al
     b17:	3d 00 00 00 01       	cmp    $0x1000000,%eax
     b1c:	9c                   	pushf  
     b1d:	30 0b                	xor    %cl,(%ebx)
     b1f:	00 00                	add    %al,(%eax)
     b21:	14 b6                	adc    $0xb6,%al
     b23:	09 00                	or     %eax,(%eax)
     b25:	00 01                	add    %al,(%ecx)
     b27:	35 a0 00 00 00       	xor    $0xa0,%eax
     b2c:	02 91 00 00 06 04    	add    0x4060000(%ecx),%dl
     b32:	73 0a                	jae    b3e <F_IMMED+0xabe>
     b34:	00 00                	add    %al,(%eax)
     b36:	15 ce 13 00 00       	adc    $0x13ce,%eax
     b3b:	01 3a                	add    %edi,(%edx)
     b3d:	28 8b 04 08 eb 00    	sub    %cl,0xeb0804(%ebx)
     b43:	00 00                	add    %al,(%eax)
     b45:	01 9c 6c 0b 00 00 16 	add    %ebx,0x1600000b(%esp,%ebp,2)
     b4c:	69 00 01 3c 5a 00    	imul   $0x5a3c01,(%eax),%eax
     b52:	00 00                	add    %al,(%eax)
     b54:	16                   	push   %ss
     b55:	6a 00                	push   $0x0
     b57:	01 3c 5a             	add    %edi,(%edx,%ebx,2)
     b5a:	00 00                	add    %al,(%eax)
     b5c:	00 17                	add    %dl,(%edi)
     b5e:	c3                   	ret    
     b5f:	0c 00                	or     $0x0,%al
     b61:	00 01                	add    %al,(%ecx)
     b63:	3d 4f 04 00 00       	cmp    $0x44f,%eax
     b68:	02 91 68 00 18 11    	add    0x11180068(%ecx),%dl
     b6e:	13 00                	adc    (%eax),%eax
     b70:	00 01                	add    %al,(%ecx)
     b72:	4a                   	dec    %edx
     b73:	13 8c 04 08 61 00 00 	adc    0x6108(%esp,%eax,1),%ecx
     b7a:	00 01                	add    %al,(%ecx)
     b7c:	9c                   	pushf  
     b7d:	19 1a                	sbb    %ebx,(%edx)
     b7f:	01 00                	add    %eax,(%eax)
     b81:	00 0d aa 68 02 00    	add    %cl,0x268aa
     b87:	00 1a                	add    %bl,(%edx)
     b89:	c2 03 00             	ret    $0x3
     b8c:	00 0e                	add    %cl,(%esi)
     b8e:	0b 5a 00             	or     0x0(%edx),%ebx
     b91:	00 00                	add    %al,(%eax)
     b93:	05 03 24 20 06       	add    $0x6202403,%eax
     b98:	08 1a                	or     %bl,(%edx)
     b9a:	9a 0a 00 00 0e 0c 5a 	lcall  $0x5a0c,$0xe00000a
     ba1:	00 00                	add    %al,(%eax)
     ba3:	00 05 03 dc 23 06    	add    %al,0x623dc03
     ba9:	08 1b                	or     %bl,(%ebx)
     bab:	64 69 72 00 01 15 a6 	imul   $0xa61501,%fs:0x0(%edx),%esi
     bb2:	00 
     bb3:	00 00                	add    %al,(%eax)
     bb5:	05 03 e0 23 06       	add    $0x623e003,%eax
     bba:	08 1a                	or     %bl,(%edx)
     bbc:	59                   	pop    %ecx
     bbd:	08 00                	or     %al,(%eax)
     bbf:	00 01                	add    %al,(%ecx)
     bc1:	16                   	push   %ss
     bc2:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
     bc3:	00 00                	add    %al,(%eax)
     bc5:	00 05 03 20 20 06    	add    %al,0x6202003
     bcb:	08 1a                	or     %bl,(%edx)
     bcd:	7e 0b                	jle    bda <F_IMMED+0xb5a>
     bcf:	00 00                	add    %al,(%eax)
     bd1:	01 17                	add    %edx,(%edi)
     bd3:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
     bd4:	00 00                	add    %al,(%eax)
     bd6:	00 05 03 d8 23 06    	add    %al,0x623d803
     bdc:	08 0b                	or     %cl,(%ebx)
     bde:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
     bdf:	00 00                	add    %al,(%eax)
     be1:	00 f3                	add    %dh,%bl
     be3:	0b 00                	or     (%eax),%eax
     be5:	00 0c 97             	add    %cl,(%edi,%edx,4)
     be8:	00 00                	add    %al,(%eax)
     bea:	00 18                	add    %bl,(%eax)
     bec:	0c 97                	or     $0x97,%al
     bee:	00 00                	add    %al,(%eax)
     bf0:	00 0e                	add    %cl,(%esi)
     bf2:	00 1b                	add    %bl,(%ebx)
     bf4:	6d                   	insl   (%dx),%es:(%edi)
     bf5:	61                   	popa   
     bf6:	74 00                	je     bf8 <F_IMMED+0xb78>
     bf8:	01 18                	add    %ebx,(%eax)
     bfa:	dd 0b                	fisttpll (%ebx)
     bfc:	00 00                	add    %al,(%eax)
     bfe:	05 03 40 20 06       	add    $0x6204003,%eax
     c03:	08 1a                	or     %bl,(%edx)
     c05:	ac                   	lods   %ds:(%esi),%al
     c06:	14 00                	adc    $0x0,%al
     c08:	00 01                	add    %al,(%ecx)
     c0a:	1f                   	pop    %ds
     c0b:	a4                   	movsb  %ds:(%esi),%es:(%edi)
     c0c:	0a 00                	or     (%eax),%al
     c0e:	00 05 03 28 20 06    	add    %al,0x6202803
     c14:	08 1a                	or     %bl,(%edx)
     c16:	a0 01 00 00 01       	mov    0x1000001,%al
     c1b:	20 a4 0a 00 00 05 03 	and    %ah,0x3050000(%edx,%ecx,1)
     c22:	d6                   	(bad)  
     c23:	23 06                	and    (%esi),%eax
     c25:	08 1a                	or     %bl,(%edx)
     c27:	b6 15                	mov    $0x15,%dh
     c29:	00 00                	add    %al,(%eax)
     c2b:	01 21                	add    %esp,(%ecx)
     c2d:	a4                   	movsb  %ds:(%esi),%es:(%edi)
     c2e:	0a 00                	or     (%eax),%al
     c30:	00 05 03 d4 23 06    	add    %al,0x623d403
     c36:	08 1a                	or     %bl,(%edx)
     c38:	a1 0e 00 00 01       	mov    0x100000e,%eax
     c3d:	22 a4 0a 00 00 05 03 	and    0x3050000(%edx,%ecx,1),%ah
     c44:	e1 23                	loope  c69 <F_IMMED+0xbe9>
     c46:	06                   	push   %es
     c47:	08 1a                	or     %bl,(%edx)
     c49:	cb                   	lret   
     c4a:	14 00                	adc    $0x0,%al
     c4c:	00 01                	add    %al,(%ecx)
     c4e:	2b fd                	sub    %ebp,%edi
     c50:	0a 00                	or     (%eax),%al
     c52:	00 05 03 c0 21 06    	add    %al,0x621c003
     c58:	08 1a                	or     %bl,(%edx)
     c5a:	20 02                	and    %al,(%edx)
     c5c:	00 00                	add    %al,(%eax)
     c5e:	01 2d 6a 0c 00 00    	add    %ebp,0xc6a
     c64:	05 03 08 d0 04       	add    $0x4d00803,%eax
     c69:	08 06                	or     %al,(%esi)
     c6b:	04 63                	add    $0x63,%al
     c6d:	0a 00                	or     (%eax),%al
     c6f:	00 1a                	add    %bl,(%edx)
     c71:	83 05 00 00 01 33 34 	addl   $0x34,0x33010000
     c78:	04 00                	add    $0x0,%al
     c7a:	00 05 03 c4 23 06    	add    %al,0x623c403
     c80:	08 00                	or     %al,(%eax)
     c82:	56                   	push   %esi
     c83:	00 00                	add    %al,(%eax)
     c85:	00 02                	add    %al,(%edx)
     c87:	00 85 01 00 00 04    	add    %al,0x4000001(%ebp)
     c8d:	01 7d 01             	add    %edi,0x1(%ebp)
     c90:	00 00                	add    %al,(%eax)
     c92:	74 8c                	je     c20 <F_IMMED+0xba0>
     c94:	04 08                	add    $0x8,%al
     c96:	f5                   	cmc    
     c97:	94                   	xchg   %eax,%esp
     c98:	04 08                	add    $0x8,%al
     c9a:	73 72                	jae    d0e <F_IMMED+0xc8e>
     c9c:	63 2f                	arpl   %bp,(%edi)
     c9e:	6a 6f                	push   $0x6f
     ca0:	6e                   	outsb  %ds:(%esi),(%dx)
     ca1:	65 73 66             	gs jae d0a <F_IMMED+0xc8a>
     ca4:	6f                   	outsl  %ds:(%esi),(%dx)
     ca5:	72 74                	jb     d1b <F_IMMED+0xc9b>
     ca7:	68 2e 73 00 2f       	push   $0x2f00732e
     cac:	68 6f 6d 65 2f       	push   $0x2f656d6f
     cb1:	73 6f                	jae    d22 <F_IMMED+0xca2>
     cb3:	6e                   	outsb  %ds:(%esi),(%dx)
     cb4:	6a 61                	push   $0x61
     cb6:	2f                   	das    
     cb7:	72 65                	jb     d1e <F_IMMED+0xc9e>
     cb9:	70 6f                	jo     d2a <F_IMMED+0xcaa>
     cbb:	2f                   	das    
     cbc:	66 72 6f             	data16 jb d2e <F_IMMED+0xcae>
     cbf:	6d                   	insl   (%dx),%es:(%edi)
     cc0:	2d 43 2d 74 6f       	sub    $0x6f742d43,%eax
     cc5:	2d 46 6f 72 74       	sub    $0x74726f46,%eax
     cca:	68 00 47 4e 55       	push   $0x554e4700
     ccf:	20 41 53             	and    %al,0x53(%ecx)
     cd2:	20 32                	and    %dh,(%edx)
     cd4:	2e 32 36             	xor    %cs:(%esi),%dh
     cd7:	2e 31 00             	xor    %eax,%cs:(%eax)
     cda:	01 80 80 08 00 00    	add    %eax,0x880(%eax)
     ce0:	04 00                	add    $0x0,%al
     ce2:	99                   	cltd   
     ce3:	01 00                	add    %eax,(%eax)
     ce5:	00 04 01             	add    %al,(%ecx,%eax,1)
     ce8:	d5 09                	aad    $0x9
     cea:	00 00                	add    %al,(%eax)
     cec:	0c aa                	or     $0xaa,%al
     cee:	1a 00                	sbb    (%eax),%al
     cf0:	00 26                	add    %ah,(%esi)
     cf2:	1a 00                	sbb    (%eax),%al
     cf4:	00 f5                	add    %dh,%ch
     cf6:	94                   	xchg   %eax,%esp
     cf7:	04 08                	add    $0x8,%al
     cf9:	0f 00 00             	sldt   (%eax)
     cfc:	00 f2                	add    %dh,%dl
     cfe:	04 00                	add    $0x0,%al
     d00:	00 02                	add    %al,(%edx)
     d02:	04 07                	add    $0x7,%al
     d04:	cf                   	iret   
     d05:	04 00                	add    $0x0,%al
     d07:	00 02                	add    %al,(%edx)
     d09:	01 08                	add    %ecx,(%eax)
     d0b:	4d                   	dec    %ebp
     d0c:	10 00                	adc    %al,(%eax)
     d0e:	00 02                	add    %al,(%edx)
     d10:	02 07                	add    (%edi),%al
     d12:	43                   	inc    %ebx
     d13:	0f 00 00             	sldt   (%eax)
     d16:	02 04 07             	add    (%edi,%eax,1),%al
     d19:	ca 04 00             	lret   $0x4
     d1c:	00 02                	add    %al,(%edx)
     d1e:	01 06                	add    %eax,(%esi)
     d20:	4f                   	dec    %edi
     d21:	10 00                	adc    %al,(%eax)
     d23:	00 02                	add    %al,(%edx)
     d25:	02 05 3c 02 00 00    	add    0x23c,%al
     d2b:	03 04 05 69 6e 74 00 	add    0x746e69(,%eax,1),%eax
     d32:	02 08                	add    (%eax),%cl
     d34:	05 b5 0c 00 00       	add    $0xcb5,%eax
     d39:	02 08                	add    (%eax),%cl
     d3b:	07                   	pop    %es
     d3c:	c5 04 00             	lds    (%eax,%eax,1),%eax
     d3f:	00 02                	add    %al,(%edx)
     d41:	04 05                	add    $0x5,%al
     d43:	ba 0c 00 00 02       	mov    $0x200000c,%edx
     d48:	04 07                	add    $0x7,%al
     d4a:	ef                   	out    %eax,(%dx)
     d4b:	13 00                	adc    (%eax),%eax
     d4d:	00 02                	add    %al,(%edx)
     d4f:	01 06                	add    %eax,(%esi)
     d51:	56                   	push   %esi
     d52:	10 00                	adc    %al,(%eax)
     d54:	00 02                	add    %al,(%edx)
     d56:	0c 04                	or     $0x4,%al
     d58:	25 0e 00 00 04       	and    $0x400000e,%eax
     d5d:	6d                   	insl   (%dx),%es:(%edi)
     d5e:	0b 00                	or     (%eax),%eax
     d60:	00 02                	add    %al,(%edx)
     d62:	30 2c 00             	xor    %ch,(%eax,%eax,1)
     d65:	00 00                	add    %al,(%eax)
     d67:	04 b9                	add    $0xb9,%al
     d69:	03 00                	add    (%eax),%eax
     d6b:	00 02                	add    %al,(%edx)
     d6d:	33 25 00 00 00 02    	xor    0x2000000,%esp
     d73:	08 04 2a             	or     %al,(%edx,%ebp,1)
     d76:	0e                   	push   %cs
     d77:	00 00                	add    %al,(%eax)
     d79:	04 ee                	add    $0xee,%al
     d7b:	03 00                	add    (%eax),%eax
     d7d:	00 03                	add    %al,(%ebx)
     d7f:	8b 80 00 00 00 04    	mov    0x4000000(%eax),%eax
     d85:	9f                   	lahf   
     d86:	03 00                	add    (%eax),%eax
     d88:	00 03                	add    %al,(%ebx)
     d8a:	9b                   	fwait
     d8b:	8b 00                	mov    (%eax),%eax
     d8d:	00 00                	add    %al,(%eax)
     d8f:	05 04 25 00 00       	add    $0x2504,%eax
     d94:	00 04 33             	add    %al,(%ebx,%esi,1)
     d97:	08 01                	or     %al,(%ecx)
     d99:	00 00                	add    %al,(%eax)
     d9b:	06                   	push   %es
     d9c:	31 0e                	xor    %ecx,(%esi)
     d9e:	00 00                	add    %al,(%eax)
     da0:	00 06                	add    %al,(%esi)
     da2:	12 0b                	adc    (%ebx),%cl
     da4:	00 00                	add    %al,(%eax)
     da6:	01 06                	add    %eax,(%esi)
     da8:	27                   	daa    
     da9:	0b 00                	or     (%eax),%eax
     dab:	00 02                	add    %al,(%edx)
     dad:	06                   	push   %es
     dae:	58                   	pop    %eax
     daf:	0b 00                	or     (%eax),%eax
     db1:	00 03                	add    %al,(%ebx)
     db3:	06                   	push   %es
     db4:	58                   	pop    %eax
     db5:	12 00                	adc    (%eax),%al
     db7:	00 04 06             	add    %al,(%esi,%eax,1)
     dba:	e5 12                	in     $0x12,%eax
     dbc:	00 00                	add    %al,(%eax)
     dbe:	05 06 77 15 00       	add    $0x157706,%eax
     dc3:	00 06                	add    %al,(%esi)
     dc5:	06                   	push   %es
     dc6:	cf                   	iret   
     dc7:	12 00                	adc    (%eax),%al
     dc9:	00 07                	add    %al,(%edi)
     dcb:	06                   	push   %es
     dcc:	8e 0d 00 00 08 06    	mov    0x6080000,%cs
     dd2:	3b 14 00             	cmp    (%eax,%eax,1),%edx
     dd5:	00 09                	add    %cl,(%ecx)
     dd7:	06                   	push   %es
     dd8:	5a                   	pop    %edx
     dd9:	13 00                	adc    (%eax),%eax
     ddb:	00 0a                	add    %cl,(%edx)
     ddd:	06                   	push   %es
     dde:	5d                   	pop    %ebp
     ddf:	16                   	push   %ss
     de0:	00 00                	add    %al,(%eax)
     de2:	0b 00                	or     (%eax),%eax
     de4:	05 04 25 00 00       	add    $0x2504,%eax
     de9:	00 04 44             	add    %al,(%esp,%eax,2)
     dec:	27                   	daa    
     ded:	01 00                	add    %eax,(%eax)
     def:	00 06                	add    %al,(%esi)
     df1:	48                   	dec    %eax
     df2:	16                   	push   %ss
     df3:	00 00                	add    %al,(%eax)
     df5:	00 06                	add    %al,(%esi)
     df7:	95                   	xchg   %eax,%ebp
     df8:	17                   	pop    %ss
     df9:	00 00                	add    %al,(%eax)
     dfb:	01 06                	add    %eax,(%esi)
     dfd:	c1 15 00 00 02 00 05 	rcll   $0x5,0x20000
     e04:	04 25                	add    $0x25,%al
     e06:	00 00                	add    %al,(%eax)
     e08:	00 04 4c             	add    %al,(%esp,%ecx,2)
     e0b:	6a 01                	push   $0x1
     e0d:	00 00                	add    %al,(%eax)
     e0f:	06                   	push   %es
     e10:	70 0d                	jo     e1f <F_IMMED+0xd9f>
     e12:	00 00                	add    %al,(%eax)
     e14:	00 06                	add    %al,(%esi)
     e16:	9f                   	lahf   
     e17:	00 00                	add    %al,(%eax)
     e19:	00 01                	add    %al,(%ecx)
     e1b:	06                   	push   %es
     e1c:	d9 16                	fsts   (%esi)
     e1e:	00 00                	add    %al,(%eax)
     e20:	02 06                	add    (%esi),%al
     e22:	71 13                	jno    e37 <F_IMMED+0xdb7>
     e24:	00 00                	add    %al,(%eax)
     e26:	03 06                	add    (%esi),%eax
     e28:	1c 16                	sbb    $0x16,%al
     e2a:	00 00                	add    %al,(%eax)
     e2c:	04 06                	add    $0x6,%al
     e2e:	83 12 00             	adcl   $0x0,(%edx)
     e31:	00 05 06 a8 0a 00    	add    %al,0xaa806
     e37:	00 06                	add    %al,(%esi)
     e39:	06                   	push   %es
     e3a:	5a                   	pop    %edx
     e3b:	0a 00                	or     (%eax),%al
     e3d:	00 07                	add    %al,(%edi)
     e3f:	06                   	push   %es
     e40:	6e                   	outsb  %ds:(%esi),(%dx)
     e41:	12 00                	adc    (%eax),%al
     e43:	00 08                	add    %cl,(%eax)
     e45:	00 05 04 25 00 00    	add    %al,0x2504
     e4b:	00 04 5c             	add    %al,(%esp,%ebx,2)
     e4e:	a1 01 00 00 06       	mov    0x6000001,%eax
     e53:	bc 0d 00 00 00       	mov    $0xd,%esp
     e58:	06                   	push   %es
     e59:	2b 10                	sub    (%eax),%edx
     e5b:	00 00                	add    %al,(%eax)
     e5d:	01 06                	add    %eax,(%esi)
     e5f:	89 16                	mov    %edx,(%esi)
     e61:	00 00                	add    %al,(%eax)
     e63:	02 06                	add    (%esi),%al
     e65:	a7                   	cmpsl  %es:(%edi),%ds:(%esi)
     e66:	13 00                	adc    (%eax),%eax
     e68:	00 03                	add    %al,(%ebx)
     e6a:	06                   	push   %es
     e6b:	58                   	pop    %eax
     e6c:	07                   	pop    %es
     e6d:	00 00                	add    %al,(%eax)
     e6f:	04 06                	add    $0x6,%al
     e71:	aa                   	stos   %al,%es:(%edi)
     e72:	12 00                	adc    (%eax),%al
     e74:	00 05 06 e6 0a 00    	add    %al,0xae606
     e7a:	00 06                	add    %al,(%esi)
     e7c:	00 05 04 25 00 00    	add    %al,0x2504
     e82:	00 04 68             	add    %al,(%eax,%ebp,2)
     e85:	e4 01                	in     $0x1,%al
     e87:	00 00                	add    %al,(%eax)
     e89:	06                   	push   %es
     e8a:	10 07                	adc    %al,(%edi)
     e8c:	00 00                	add    %al,(%eax)
     e8e:	00 06                	add    %al,(%esi)
     e90:	f0 0c 00             	lock or $0x0,%al
     e93:	00 01                	add    %al,(%ecx)
     e95:	06                   	push   %es
     e96:	d9 13                	fsts   (%ebx)
     e98:	00 00                	add    %al,(%eax)
     e9a:	02 06                	add    (%esi),%al
     e9c:	2d 0f 00 00 03       	sub    $0x300000f,%eax
     ea1:	06                   	push   %es
     ea2:	e0 17                	loopne ebb <F_IMMED+0xe3b>
     ea4:	00 00                	add    %al,(%eax)
     ea6:	04 06                	add    $0x6,%al
     ea8:	fc                   	cld    
     ea9:	12 00                	adc    (%eax),%al
     eab:	00 05 06 2d 01 00    	add    %al,0x12d06
     eb1:	00 06                	add    %al,(%esi)
     eb3:	06                   	push   %es
     eb4:	ed                   	in     (%dx),%eax
     eb5:	02 00                	add    (%eax),%al
     eb7:	00 07                	add    %al,(%edi)
     eb9:	06                   	push   %es
     eba:	79 08                	jns    ec4 <F_IMMED+0xe44>
     ebc:	00 00                	add    %al,(%eax)
     ebe:	08 00                	or     %al,(%eax)
     ec0:	05 04 25 00 00       	add    $0x2504,%eax
     ec5:	00 05 2c ba 07 00    	add    %al,0x7ba2c
     ecb:	00 06                	add    %al,(%esi)
     ecd:	18 0f                	sbb    %cl,(%edi)
     ecf:	00 00                	add    %al,(%eax)
     ed1:	00 06                	add    %al,(%esi)
     ed3:	bb 10 00 00 04       	mov    $0x4000010,%ebx
     ed8:	06                   	push   %es
     ed9:	84 0b                	test   %cl,(%ebx)
     edb:	00 00                	add    %al,(%eax)
     edd:	05 06 e2 10 00       	add    $0x10e206,%eax
     ee2:	00 06                	add    %al,(%esi)
     ee4:	06                   	push   %es
     ee5:	f1                   	icebp  
     ee6:	10 00                	adc    %al,(%eax)
     ee8:	00 07                	add    %al,(%edi)
     eea:	06                   	push   %es
     eeb:	00 11                	add    %dl,(%ecx)
     eed:	00 00                	add    %al,(%eax)
     eef:	08 06                	or     %al,(%esi)
     ef1:	0f 11 00             	movups %xmm0,(%eax)
     ef4:	00 09                	add    %cl,(%ecx)
     ef6:	06                   	push   %es
     ef7:	1e                   	push   %ds
     ef8:	11 00                	adc    %eax,(%eax)
     efa:	00 0a                	add    %cl,(%edx)
     efc:	06                   	push   %es
     efd:	2d 11 00 00 0b       	sub    $0xb000011,%eax
     f02:	06                   	push   %es
     f03:	3c 11                	cmp    $0x11,%al
     f05:	00 00                	add    %al,(%eax)
     f07:	0c 06                	or     $0x6,%al
     f09:	4b                   	dec    %ebx
     f0a:	11 00                	adc    %eax,(%eax)
     f0c:	00 0d 06 5a 11 00    	add    %cl,0x115a06
     f12:	00 0e                	add    %cl,(%esi)
     f14:	06                   	push   %es
     f15:	69 11 00 00 0f 06    	imul   $0x60f0000,(%ecx),%edx
     f1b:	78 11                	js     f2e <F_IMMED+0xeae>
     f1d:	00 00                	add    %al,(%eax)
     f1f:	10 06                	adc    %al,(%esi)
     f21:	87 11                	xchg   %edx,(%ecx)
     f23:	00 00                	add    %al,(%eax)
     f25:	11 06                	adc    %eax,(%esi)
     f27:	96                   	xchg   %eax,%esi
     f28:	11 00                	adc    %eax,(%eax)
     f2a:	00 12                	add    %dl,(%edx)
     f2c:	06                   	push   %es
     f2d:	a5                   	movsl  %ds:(%esi),%es:(%edi)
     f2e:	11 00                	adc    %eax,(%eax)
     f30:	00 13                	add    %dl,(%ebx)
     f32:	06                   	push   %es
     f33:	b4 11                	mov    $0x11,%ah
     f35:	00 00                	add    %al,(%eax)
     f37:	14 06                	adc    $0x6,%al
     f39:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
     f3a:	0c 00                	or     $0x0,%al
     f3c:	00 15 06 e0 11 00    	add    %dl,0x11e006
     f42:	00 16                	add    %dl,(%esi)
     f44:	06                   	push   %es
     f45:	ef                   	out    %eax,(%dx)
     f46:	11 00                	adc    %eax,(%eax)
     f48:	00 17                	add    %dl,(%edi)
     f4a:	06                   	push   %es
     f4b:	fe                   	(bad)  
     f4c:	11 00                	adc    %eax,(%eax)
     f4e:	00 18                	add    %bl,(%eax)
     f50:	06                   	push   %es
     f51:	0d 12 00 00 19       	or     $0x19000012,%eax
     f56:	06                   	push   %es
     f57:	1c 12                	sbb    $0x12,%al
     f59:	00 00                	add    %al,(%eax)
     f5b:	1a 06                	sbb    (%esi),%al
     f5d:	2b 12                	sub    (%edx),%edx
     f5f:	00 00                	add    %al,(%eax)
     f61:	1b 06                	sbb    (%esi),%eax
     f63:	3a 12                	cmp    (%edx),%dl
     f65:	00 00                	add    %al,(%eax)
     f67:	1c 06                	sbb    $0x6,%al
     f69:	49                   	dec    %ecx
     f6a:	12 00                	adc    (%eax),%al
     f6c:	00 1d 06 0d 10 00    	add    %bl,0x100d06
     f72:	00 1e                	add    %bl,(%esi)
     f74:	06                   	push   %es
     f75:	1c 10                	sbb    $0x10,%al
     f77:	00 00                	add    %al,(%eax)
     f79:	1f                   	pop    %ds
     f7a:	06                   	push   %es
     f7b:	6f                   	outsl  %ds:(%esi),(%dx)
     f7c:	0a 00                	or     (%eax),%al
     f7e:	00 20                	add    %ah,(%eax)
     f80:	06                   	push   %es
     f81:	3e 10 00             	adc    %al,%ds:(%eax)
     f84:	00 21                	add    %ah,(%ecx)
     f86:	06                   	push   %es
     f87:	8b 0a                	mov    (%edx),%ecx
     f89:	00 00                	add    %al,(%eax)
     f8b:	22 06                	and    (%esi),%al
     f8d:	5b                   	pop    %ebx
     f8e:	10 00                	adc    %al,(%eax)
     f90:	00 23                	add    %ah,(%ebx)
     f92:	06                   	push   %es
     f93:	bd 0a 00 00 24       	mov    $0x2400000a,%ebp
     f98:	06                   	push   %es
     f99:	7e 10                	jle    fab <F_IMMED+0xf2b>
     f9b:	00 00                	add    %al,(%eax)
     f9d:	25 06 8d 10 00       	and    $0x108d06,%eax
     fa2:	00 26                	add    %ah,(%esi)
     fa4:	06                   	push   %es
     fa5:	fe 0f                	decb   (%edi)
     fa7:	00 00                	add    %al,(%eax)
     fa9:	27                   	daa    
     faa:	06                   	push   %es
     fab:	93                   	xchg   %eax,%ebx
     fac:	13 00                	adc    (%eax),%eax
     fae:	00 28                	add    %ch,(%eax)
     fb0:	06                   	push   %es
     fb1:	46                   	inc    %esi
     fb2:	02 00                	add    (%eax),%al
     fb4:	00 29                	add    %ch,(%ecx)
     fb6:	06                   	push   %es
     fb7:	1a 13                	sbb    (%ebx),%dl
     fb9:	00 00                	add    %al,(%eax)
     fbb:	2a 06                	sub    (%esi),%al
     fbd:	47                   	inc    %edi
     fbe:	0e                   	push   %cs
     fbf:	00 00                	add    %al,(%eax)
     fc1:	2b 06                	sub    (%esi),%eax
     fc3:	bb 13 00 00 2c       	mov    $0x2c000013,%ebx
     fc8:	06                   	push   %es
     fc9:	4c                   	dec    %esp
     fca:	03 00                	add    (%eax),%eax
     fcc:	00 2d 06 33 19 00    	add    %ch,0x193306
     fd2:	00 2e                	add    %ch,(%esi)
     fd4:	06                   	push   %es
     fd5:	db 05 00 00 2f 06    	fildl  0x62f0000
     fdb:	7d 0c                	jge    fe9 <F_IMMED+0xf69>
     fdd:	00 00                	add    %al,(%eax)
     fdf:	30 06                	xor    %al,(%esi)
     fe1:	44                   	inc    %esp
     fe2:	09 00                	or     %eax,(%eax)
     fe4:	00 31                	add    %dh,(%ecx)
     fe6:	06                   	push   %es
     fe7:	90                   	nop
     fe8:	07                   	pop    %es
     fe9:	00 00                	add    %al,(%eax)
     feb:	32 06                	xor    (%esi),%al
     fed:	33 0c 00             	xor    (%eax,%eax,1),%ecx
     ff0:	00 33                	add    %dh,(%ebx)
     ff2:	06                   	push   %es
     ff3:	fa                   	cli    
     ff4:	0a 00                	or     (%eax),%al
     ff6:	00 34 06             	add    %dh,(%esi,%eax,1)
     ff9:	66 08 00             	data16 or %al,(%eax)
     ffc:	00 35 06 a6 03 00    	add    %dh,0x3a606
    1002:	00 36                	add    %dh,(%esi)
    1004:	06                   	push   %es
    1005:	1f                   	pop    %ds
    1006:	0c 00                	or     $0x0,%al
    1008:	00 37                	add    %dh,(%edi)
    100a:	06                   	push   %es
    100b:	2b 0d 00 00 38 06    	sub    0x6380000,%ecx
    1011:	05 00 00 00 39       	add    $0x39000000,%eax
    1016:	06                   	push   %es
    1017:	e7 14                	out    %eax,$0x14
    1019:	00 00                	add    %al,(%eax)
    101b:	3a 06                	cmp    (%esi),%al
    101d:	f7 14 00             	notl   (%eax,%eax,1)
    1020:	00 3b                	add    %bh,(%ebx)
    1022:	06                   	push   %es
    1023:	07                   	pop    %es
    1024:	15 00 00 3c 06       	adc    $0x63c0000,%eax
    1029:	17                   	pop    %ss
    102a:	15 00 00 3d 06       	adc    $0x63d0000,%eax
    102f:	27                   	daa    
    1030:	15 00 00 3e 06       	adc    $0x63e0000,%eax
    1035:	37                   	aaa    
    1036:	15 00 00 3f 06       	adc    $0x63f0000,%eax
    103b:	47                   	inc    %edi
    103c:	15 00 00 40 06       	adc    $0x6400000,%eax
    1041:	57                   	push   %edi
    1042:	15 00 00 41 06       	adc    $0x6410000,%eax
    1047:	67 15 00 00 42 06    	addr16 adc $0x6420000,%eax
    104d:	9d                   	popf   
    104e:	16                   	push   %ss
    104f:	00 00                	add    %al,(%eax)
    1051:	43                   	inc    %ebx
    1052:	06                   	push   %es
    1053:	a1 18 00 00 44       	mov    0x44000018,%eax
    1058:	06                   	push   %es
    1059:	c8 16 00 00          	enter  $0x16,$0x0
    105d:	45                   	inc    %ebp
    105e:	06                   	push   %es
    105f:	d0 0d 00 00 46 06    	rorb   0x6460000
    1065:	7a 0f                	jp     1076 <INPUT_BUFFER_SIZE+0x76>
    1067:	00 00                	add    %al,(%eax)
    1069:	47                   	inc    %edi
    106a:	06                   	push   %es
    106b:	b5 02                	mov    $0x2,%ch
    106d:	00 00                	add    %al,(%eax)
    106f:	48                   	dec    %eax
    1070:	06                   	push   %es
    1071:	a4                   	movsb  %ds:(%esi),%es:(%edi)
    1072:	05 00 00 49 06       	add    $0x6490000,%eax
    1077:	68 0f 00 00 4a       	push   $0x4a00000f
    107c:	06                   	push   %es
    107d:	d3 07                	roll   %cl,(%edi)
    107f:	00 00                	add    %al,(%eax)
    1081:	4b                   	dec    %ebx
    1082:	06                   	push   %es
    1083:	05 0d 00 00 4c       	add    $0x4c00000d,%eax
    1088:	06                   	push   %es
    1089:	0e                   	push   %cs
    108a:	0c 00                	or     $0x0,%al
    108c:	00 4d 06             	add    %cl,0x6(%ebp)
    108f:	d1 14 00             	rcll   (%eax,%eax,1)
    1092:	00 4e 06             	add    %cl,0x6(%esi)
    1095:	99                   	cltd   
    1096:	14 00                	adc    $0x0,%al
    1098:	00 4f 06             	add    %cl,0x6(%edi)
    109b:	19 0d 00 00 50 06    	sbb    %ecx,0x6500000
    10a1:	4d                   	dec    %ebp
    10a2:	1a 00                	sbb    (%eax),%al
    10a4:	00 51 06             	add    %dl,0x6(%ecx)
    10a7:	bf 09 00 00 52       	mov    $0x52000009,%edi
    10ac:	06                   	push   %es
    10ad:	87 18                	xchg   %ebx,(%eax)
    10af:	00 00                	add    %al,(%eax)
    10b1:	53                   	push   %ebx
    10b2:	06                   	push   %es
    10b3:	e7 07                	out    %eax,$0x7
    10b5:	00 00                	add    %al,(%eax)
    10b7:	54                   	push   %esp
    10b8:	06                   	push   %es
    10b9:	01 1a                	add    %ebx,(%edx)
    10bb:	00 00                	add    %al,(%eax)
    10bd:	55                   	push   %ebp
    10be:	06                   	push   %es
    10bf:	ae                   	scas   %es:(%edi),%al
    10c0:	0b 00                	or     (%eax),%eax
    10c2:	00 56 06             	add    %dl,0x6(%esi)
    10c5:	a0 02 00 00 57       	mov    0x57000002,%al
    10ca:	06                   	push   %es
    10cb:	d8 0b                	fmuls  (%ebx)
    10cd:	00 00                	add    %al,(%eax)
    10cf:	58                   	pop    %eax
    10d0:	06                   	push   %es
    10d1:	47                   	inc    %edi
    10d2:	17                   	pop    %ss
    10d3:	00 00                	add    %al,(%eax)
    10d5:	59                   	pop    %ecx
    10d6:	06                   	push   %es
    10d7:	c8 0f 00 00          	enter  $0xf,$0x0
    10db:	5a                   	pop    %edx
    10dc:	06                   	push   %es
    10dd:	da 0f                	fimull (%edi)
    10df:	00 00                	add    %al,(%eax)
    10e1:	5b                   	pop    %ebx
    10e2:	06                   	push   %es
    10e3:	83 17 00             	adcl   $0x0,(%edi)
    10e6:	00 5c 06 ec          	add    %bl,-0x14(%esi,%eax,1)
    10ea:	0f 00 00             	sldt   (%eax)
    10ed:	5d                   	pop    %ebp
    10ee:	06                   	push   %es
    10ef:	eb 08                	jmp    10f9 <INPUT_BUFFER_SIZE+0xf9>
    10f1:	00 00                	add    %al,(%eax)
    10f3:	5e                   	pop    %esi
    10f4:	06                   	push   %es
    10f5:	bc 17 00 00 5f       	mov    $0x5f000017,%esp
    10fa:	06                   	push   %es
    10fb:	ce                   	into   
    10fc:	17                   	pop    %ss
    10fd:	00 00                	add    %al,(%eax)
    10ff:	60                   	pusha  
    1100:	06                   	push   %es
    1101:	32 09                	xor    (%ecx),%cl
    1103:	00 00                	add    %al,(%eax)
    1105:	61                   	popa   
    1106:	06                   	push   %es
    1107:	35 17 00 00 62       	xor    $0x62000017,%eax
    110c:	06                   	push   %es
    110d:	5b                   	pop    %ebx
    110e:	09 00                	or     %eax,(%eax)
    1110:	00 63 06             	add    %ah,0x6(%ebx)
    1113:	88 05 00 00 64 06    	mov    %al,0x6640000
    1119:	c7 06 00 00 65 06    	movl   $0x6650000,(%esi)
    111f:	0d 02 00 00 66       	or     $0x66000002,%eax
    1124:	06                   	push   %es
    1125:	31 16                	xor    %edx,(%esi)
    1127:	00 00                	add    %al,(%eax)
    1129:	67 06                	addr16 push %es
    112b:	c5 18                	lds    (%eax),%ebx
    112d:	00 00                	add    %al,(%eax)
    112f:	68 06 d6 18 00       	push   $0x18d606
    1134:	00 69 06             	add    %ch,0x6(%ecx)
    1137:	e7 18                	out    %eax,$0x18
    1139:	00 00                	add    %al,(%eax)
    113b:	6a 06                	push   $0x6
    113d:	f6 16                	notb   (%esi)
    113f:	00 00                	add    %al,(%eax)
    1141:	6b 06 ff             	imul   $0xffffffff,(%esi),%eax
    1144:	18 00                	sbb    %al,(%eax)
    1146:	00 6c 06 10          	add    %ch,0x10(%esi,%eax,1)
    114a:	19 00                	sbb    %eax,(%eax)
    114c:	00 6d 06             	add    %ch,0x6(%ebp)
    114f:	eb 15                	jmp    1166 <INPUT_BUFFER_SIZE+0x166>
    1151:	00 00                	add    %al,(%eax)
    1153:	6e                   	outsb  %ds:(%esi),(%dx)
    1154:	06                   	push   %es
    1155:	1b 00                	sbb    (%eax),%eax
    1157:	00 00                	add    %al,(%eax)
    1159:	6f                   	outsl  %ds:(%esi),(%dx)
    115a:	06                   	push   %es
    115b:	2c 00                	sub    $0x0,%al
    115d:	00 00                	add    %al,(%eax)
    115f:	70 06                	jo     1167 <INPUT_BUFFER_SIZE+0x167>
    1161:	b4 00                	mov    $0x0,%ah
    1163:	00 00                	add    %al,(%eax)
    1165:	71 06                	jno    116d <INPUT_BUFFER_SIZE+0x16d>
    1167:	5c                   	pop    %esp
    1168:	00 00                	add    %al,(%eax)
    116a:	00 72 06             	add    %dh,0x6(%edx)
    116d:	6d                   	insl   (%dx),%es:(%edi)
    116e:	00 00                	add    %al,(%eax)
    1170:	00 73 06             	add    %dh,0x6(%ebx)
    1173:	58                   	pop    %eax
    1174:	0e                   	push   %cs
    1175:	00 00                	add    %al,(%eax)
    1177:	74 06                	je     117f <INPUT_BUFFER_SIZE+0x17f>
    1179:	79 03                	jns    117e <INPUT_BUFFER_SIZE+0x17e>
    117b:	00 00                	add    %al,(%eax)
    117d:	75 06                	jne    1185 <INPUT_BUFFER_SIZE+0x185>
    117f:	56                   	push   %esi
    1180:	0f 00 00             	sldt   (%eax)
    1183:	76 06                	jbe    118b <INPUT_BUFFER_SIZE+0x18b>
    1185:	c4 0b                	les    (%ebx),%ecx
    1187:	00 00                	add    %al,(%eax)
    1189:	77 06                	ja     1191 <INPUT_BUFFER_SIZE+0x191>
    118b:	9c                   	pushf  
    118c:	10 00                	adc    %al,(%eax)
    118e:	00 78 06             	add    %bh,0x6(%eax)
    1191:	54                   	push   %esp
    1192:	05 00 00 79 06       	add    $0x6790000,%eax
    1197:	8e 02                	mov    (%edx),%es
    1199:	00 00                	add    %al,(%eax)
    119b:	7a 06                	jp     11a3 <INPUT_BUFFER_SIZE+0x1a3>
    119d:	b8 05 00 00 7b       	mov    $0x7b000005,%eax
    11a2:	06                   	push   %es
    11a3:	21 19                	and    %ebx,(%ecx)
    11a5:	00 00                	add    %al,(%eax)
    11a7:	7c 06                	jl     11af <INPUT_BUFFER_SIZE+0x1af>
    11a9:	3c 0a                	cmp    $0xa,%al
    11ab:	00 00                	add    %al,(%eax)
    11ad:	7d 06                	jge    11b5 <INPUT_BUFFER_SIZE+0x1b5>
    11af:	db 02                	fildl  (%edx)
    11b1:	00 00                	add    %al,(%eax)
    11b3:	7e 06                	jle    11bb <INPUT_BUFFER_SIZE+0x1bb>
    11b5:	fe 07                	incb   (%edi)
    11b7:	00 00                	add    %al,(%eax)
    11b9:	7f 06                	jg     11c1 <INPUT_BUFFER_SIZE+0x1c1>
    11bb:	a8 08                	test   $0x8,%al
    11bd:	00 00                	add    %al,(%eax)
    11bf:	80 06 ca             	addb   $0xca,(%esi)
    11c2:	10 00                	adc    %al,(%eax)
    11c4:	00 81 06 f8 0b 00    	add    %al,0xbf806(%ecx)
    11ca:	00 85 06 3a 04 00    	add    %al,0x43a06(%ebp)
    11d0:	00 86 06 f4 05 00    	add    %al,0x5f406(%esi)
    11d6:	00 87 06 10 06 00    	add    %al,0x61006(%edi)
    11dc:	00 88 06 e2 00 00    	add    %cl,0xe206(%eax)
    11e2:	00 89 06 fe 00 00    	add    %cl,0xfe06(%ecx)
    11e8:	00 8a 06 3b 06 00    	add    %cl,0x63b06(%edx)
    11ee:	00 8b 06 57 06 00    	add    %cl,0x65706(%ebx)
    11f4:	00 8c 06 73 06 00 00 	add    %cl,0x673(%esi,%eax,1)
    11fb:	8d 06                	lea    (%esi),%eax
    11fd:	8f 06                	popl   (%esi)
    11ff:	00 00                	add    %al,(%eax)
    1201:	8e 06                	mov    (%esi),%es
    1203:	ab                   	stos   %eax,%es:(%edi)
    1204:	06                   	push   %es
    1205:	00 00                	add    %al,(%eax)
    1207:	8f 06                	popl   (%esi)
    1209:	5c                   	pop    %esp
    120a:	19 00                	sbb    %eax,(%eax)
    120c:	00 90 06 6f 19 00    	add    %dl,0x196f06(%eax)
    1212:	00 91 06 82 19 00    	add    %dl,0x198206(%ecx)
    1218:	00 92 06 95 19 00    	add    %dl,0x199506(%edx)
    121e:	00 93 06 a8 19 00    	add    %dl,0x19a806(%ebx)
    1224:	00 94 06 bb 19 00 00 	add    %dl,0x19bb(%esi,%eax,1)
    122b:	95                   	xchg   %eax,%ebp
    122c:	06                   	push   %es
    122d:	fd                   	std    
    122e:	08 00                	or     %al,(%eax)
    1230:	00 96 06 db 19 00    	add    %dl,0x19db06(%esi)
    1236:	00 97 06 ee 19 00    	add    %dl,0x19ee06(%edi)
    123c:	00 98 06 d5 08 00    	add    %bl,0x8d506(%eax)
    1242:	00 99 06 b7 14 00    	add    %bl,0x14b706(%ecx)
    1248:	00 9a 06 6a 10 00    	add    %bl,0x106a06(%edx)
    124e:	00 9b 06 29 02 00    	add    %bl,0x22906(%ebx)
    1254:	00 9c 06 b2 18 00 00 	add    %bl,0x18b2(%esi,%eax,1)
    125b:	9d                   	popf   
    125c:	06                   	push   %es
    125d:	d6                   	(bad)  
    125e:	15 00 00 9e 06       	adc    $0x69e0000,%eax
    1263:	07                   	pop    %es
    1264:	17                   	pop    %ss
    1265:	00 00                	add    %al,(%eax)
    1267:	9f                   	lahf   
    1268:	06                   	push   %es
    1269:	72 17                	jb     1282 <INPUT_BUFFER_SIZE+0x282>
    126b:	00 00                	add    %al,(%eax)
    126d:	a0 06 28 04 00       	mov    0x42806,%al
    1272:	00 a1 06 40 07 00    	add    %ah,0x74006(%ecx)
    1278:	00 a2 06 f8 13 00    	add    %ah,0x13f806(%edx)
    127e:	00 a3 06 e9 0d 00    	add    %ah,0xde906(%ebx)
    1284:	00 a4 06 db 03 00 00 	add    %ah,0x3db(%esi,%eax,1)
    128b:	b0 06                	mov    $0x6,%al
    128d:	8b 03                	mov    (%ebx),%eax
    128f:	00 00                	add    %al,(%eax)
    1291:	b1 06                	mov    $0x6,%cl
    1293:	fc                   	cld    
    1294:	0d 00 00 b2 06       	or     $0x6b20000,%eax
    1299:	b5 07                	mov    $0x7,%ch
    129b:	00 00                	add    %al,(%eax)
    129d:	b3 06                	mov    $0x6,%bl
    129f:	08 05 00 00 b4 06    	or     %al,0x6b40000
    12a5:	c3                   	ret    
    12a6:	11 00                	adc    %eax,(%eax)
    12a8:	00 b5 06 3a 05 00    	add    %dh,0x53a06(%ebp)
    12ae:	00 b6 06 8a 1a 00    	add    %dh,0x1a8a06(%esi)
    12b4:	00 b7 06 ae 16 00    	add    %dh,0x16ae06(%edi)
    12ba:	00 b8 06 3e 08 00    	add    %bh,0x83e06(%eax)
    12c0:	00 b9 06 c1 0e 00    	add    %bh,0xec106(%ecx)
    12c6:	00 ba 06 26 07 00    	add    %bh,0x72606(%edx)
    12cc:	00 bb 06 1b 18 00    	add    %bh,0x181b06(%ebx)
    12d2:	00 bc 06 2d 18 00 00 	add    %bh,0x182d(%esi,%eax,1)
    12d9:	bd 06 3f 18 00       	mov    $0x183f06,%ebp
    12de:	00 be 06 51 18 00    	add    %bh,0x185106(%esi)
    12e4:	00 bf 06 63 18 00    	add    %bh,0x186306(%edi)
    12ea:	00 c0                	add    %al,%al
    12ec:	06                   	push   %es
    12ed:	75 18                	jne    1307 <INPUT_BUFFER_SIZE+0x307>
    12ef:	00 00                	add    %al,(%eax)
    12f1:	c1 06 01             	roll   $0x1,(%esi)
    12f4:	04 00                	add    $0x0,%al
    12f6:	00 c2                	add    %al,%dl
    12f8:	06                   	push   %es
    12f9:	a0 09 00 00 c3       	mov    0xc3000009,%al
    12fe:	06                   	push   %es
    12ff:	72 1a                	jb     131b <INPUT_BUFFER_SIZE+0x31b>
    1301:	00 00                	add    %al,(%eax)
    1303:	c4 06                	les    (%esi),%eax
    1305:	1d 14 00 00 c5       	sbb    $0xc5000014,%eax
    130a:	06                   	push   %es
    130b:	58                   	pop    %eax
    130c:	0d 00 00 c6 06       	or     $0x6c60000,%eax
    1311:	3e 0d 00 00 c7 06    	ds or  $0x6c70000,%eax
    1317:	c5 00                	lds    (%eax),%eax
    1319:	00 00                	add    %al,(%eax)
    131b:	c8 06 61 0c          	enter  $0x6106,$0xc
    131f:	00 00                	add    %al,(%eax)
    1321:	c9                   	leave  
    1322:	06                   	push   %es
    1323:	3d 00 00 00 ca       	cmp    $0xca000000,%eax
    1328:	06                   	push   %es
    1329:	6d                   	insl   (%dx),%es:(%edi)
    132a:	04 00                	add    $0x0,%al
    132c:	00 cb                	add    %cl,%bl
    132e:	06                   	push   %es
    132f:	74 16                	je     1347 <INPUT_BUFFER_SIZE+0x347>
    1331:	00 00                	add    %al,(%eax)
    1333:	cc                   	int3   
    1334:	06                   	push   %es
    1335:	43                   	inc    %ebx
    1336:	01 00                	add    %eax,(%eax)
    1338:	00 cd                	add    %cl,%ch
    133a:	06                   	push   %es
    133b:	83 04 00 00          	addl   $0x0,(%eax,%eax,1)
    133f:	ce                   	into   
    1340:	06                   	push   %es
    1341:	1e                   	push   %ds
    1342:	17                   	pop    %ss
    1343:	00 00                	add    %al,(%eax)
    1345:	cf                   	iret   
    1346:	06                   	push   %es
    1347:	ef                   	out    %eax,(%dx)
    1348:	04 00                	add    $0x0,%al
    134a:	00 d0                	add    %dl,%al
    134c:	06                   	push   %es
    134d:	a7                   	cmpsl  %es:(%edi),%ds:(%esi)
    134e:	0f 00 00             	sldt   (%eax)
    1351:	d1 06                	roll   (%esi)
    1353:	75 02                	jne    1357 <INPUT_BUFFER_SIZE+0x357>
    1355:	00 00                	add    %al,(%eax)
    1357:	d2 06                	rolb   %cl,(%esi)
    1359:	82                   	(bad)  
    135a:	14 00                	adc    $0x0,%al
    135c:	00 d3                	add    %dl,%bl
    135e:	06                   	push   %es
    135f:	30 03                	xor    %al,(%ebx)
    1361:	00 00                	add    %al,(%eax)
    1363:	d4 06                	aam    $0x6
    1365:	3c 0b                	cmp    $0xb,%al
    1367:	00 00                	add    %al,(%eax)
    1369:	d5 06                	aad    $0x6
    136b:	cc                   	int3   
    136c:	0a 00                	or     (%eax),%al
    136e:	00 d6                	add    %dl,%dh
    1370:	06                   	push   %es
    1371:	e4 0e                	in     $0xe,%al
    1373:	00 00                	add    %al,(%eax)
    1375:	d7                   	xlat   %ds:(%ebx)
    1376:	06                   	push   %es
    1377:	58                   	pop    %eax
    1378:	14 00                	adc    $0x0,%al
    137a:	00 d8                	add    %bl,%al
    137c:	06                   	push   %es
    137d:	93                   	xchg   %eax,%ebx
    137e:	0b 00                	or     (%eax),%eax
    1380:	00 d9                	add    %bl,%cl
    1382:	06                   	push   %es
    1383:	56                   	push   %esi
    1384:	04 00                	add    $0x0,%al
    1386:	00 da                	add    %bl,%dl
    1388:	06                   	push   %es
    1389:	92                   	xchg   %eax,%edx
    138a:	08 00                	or     %al,(%eax)
    138c:	00 db                	add    %bl,%bl
    138e:	06                   	push   %es
    138f:	96                   	xchg   %eax,%esi
    1390:	04 00                	add    $0x0,%al
    1392:	00 dc                	add    %bl,%ah
    1394:	06                   	push   %es
    1395:	16                   	push   %ss
    1396:	09 00                	or     %eax,(%eax)
    1398:	00 dd                	add    %bl,%ch
    139a:	06                   	push   %es
    139b:	dc 04 00             	faddl  (%eax,%eax,1)
    139e:	00 e0                	add    %ah,%al
    13a0:	06                   	push   %es
    13a1:	6e                   	outsb  %ds:(%esi),(%dx)
    13a2:	14 00                	adc    $0x0,%al
    13a4:	00 e1                	add    %ah,%cl
    13a6:	06                   	push   %es
    13a7:	7e 07                	jle    13b0 <INPUT_BUFFER_SIZE+0x3b0>
    13a9:	00 00                	add    %al,(%eax)
    13ab:	e2 06                	loop   13b3 <INPUT_BUFFER_SIZE+0x3b3>
    13ad:	c9                   	leave  
    13ae:	05 00 00 e3 06       	add    $0x6e30000,%eax
    13b3:	c8 02 00 00          	enter  $0x2,$0x0
    13b7:	e4 06                	in     $0x6,%al
    13b9:	28 0a                	sub    %cl,(%edx)
    13bb:	00 00                	add    %al,(%eax)
    13bd:	e5 06                	in     $0x6,%eax
    13bf:	0b 14 00             	or     (%eax,%eax,1),%edx
    13c2:	00 e6                	add    %ah,%dh
    13c4:	06                   	push   %es
    13c5:	48                   	dec    %eax
    13c6:	13 00                	adc    (%eax),%eax
    13c8:	00 e7                	add    %ah,%bh
    13ca:	07                   	pop    %es
    13cb:	aa                   	stos   %al,%es:(%edi)
    13cc:	17                   	pop    %ss
    13cd:	00 00                	add    %al,(%eax)
    13cf:	01 01                	add    %eax,(%ecx)
    13d1:	07                   	pop    %es
    13d2:	ae                   	scas   %es:(%edi),%al
    13d3:	04 00                	add    $0x0,%al
    13d5:	00 02                	add    %al,(%edx)
    13d7:	01 07                	add    %eax,(%edi)
    13d9:	e0 06                	loopne 13e1 <INPUT_BUFFER_SIZE+0x3e1>
    13db:	00 00                	add    %al,(%eax)
    13dd:	03 01                	add    (%ecx),%eax
    13df:	07                   	pop    %es
    13e0:	4a                   	dec    %edx
    13e1:	0c 00                	or     $0x0,%al
    13e3:	00 04 01             	add    %al,(%ecx,%eax,1)
    13e6:	07                   	pop    %es
    13e7:	be 08 00 00 05       	mov    $0x5000008,%esi
    13ec:	01 07                	add    %eax,(%edi)
    13ee:	31 13                	xor    %edx,(%ebx)
    13f0:	00 00                	add    %al,(%eax)
    13f2:	06                   	push   %es
    13f3:	01 07                	add    %eax,(%edi)
    13f5:	59                   	pop    %ecx
    13f6:	17                   	pop    %ss
    13f7:	00 00                	add    %al,(%eax)
    13f9:	07                   	pop    %es
    13fa:	01 07                	add    %eax,(%edi)
    13fc:	be 12 00 00 08       	mov    $0x8000012,%esi
    1401:	01 07                	add    %eax,(%edi)
    1403:	98                   	cwtl   
    1404:	12 00                	adc    (%eax),%al
    1406:	00 09                	add    %cl,(%ecx)
    1408:	01 07                	add    %eax,(%edi)
    140a:	22 05 00 00 0a 01    	and    0x10a0000,%al
    1410:	07                   	pop    %es
    1411:	22 08                	and    (%eax),%cl
    1413:	00 00                	add    %al,(%eax)
    1415:	0b 01                	or     (%ecx),%eax
    1417:	07                   	pop    %es
    1418:	a5                   	movsl  %ds:(%esi),%es:(%edi)
    1419:	0d 00 00 0c 01       	or     $0x10c0000,%eax
    141e:	07                   	pop    %es
    141f:	92                   	xchg   %eax,%edx
    1420:	0f 00 00             	sldt   (%eax)
    1423:	0d 01 07 47 19       	or     $0x19470701,%eax
    1428:	00 00                	add    %al,(%eax)
    142a:	0e                   	push   %cs
    142b:	01 07                	add    %eax,(%edi)
    142d:	d8 0c 00             	fmuls  (%eax,%eax,1)
    1430:	00 0f                	add    %cl,(%edi)
    1432:	01 07                	add    %eax,(%edi)
    1434:	a5                   	movsl  %ds:(%esi),%es:(%edi)
    1435:	01 00                	add    %eax,(%eax)
    1437:	00 10                	add    %dl,(%eax)
    1439:	01 07                	add    %eax,(%edi)
    143b:	18 03                	sbb    %al,(%ebx)
    143d:	00 00                	add    %al,(%eax)
    143f:	11 01                	adc    %eax,(%ecx)
    1441:	07                   	pop    %es
    1442:	fe 0e                	decb   (%esi)
    1444:	00 00                	add    %al,(%eax)
    1446:	12 01                	adc    (%ecx),%al
    1448:	07                   	pop    %es
    1449:	ba 01 00 00 13       	mov    $0x13000001,%edx
    144e:	01 07                	add    %eax,(%edi)
    1450:	9c                   	pushf  
    1451:	15 00 00 14 01       	adc    $0x1140000,%eax
    1456:	07                   	pop    %es
    1457:	5a                   	pop    %edx
    1458:	02 00                	add    (%eax),%al
    145a:	00 15 01 07 84 09    	add    %dl,0x9840701
    1460:	00 00                	add    %al,(%eax)
    1462:	16                   	push   %ss
    1463:	01 07                	add    %eax,(%edi)
    1465:	5f                   	pop    %edi
    1466:	03 00                	add    (%eax),%eax
    1468:	00 17                	add    %dl,(%edi)
    146a:	01 07                	add    %eax,(%edi)
    146c:	6d                   	insl   (%dx),%es:(%edi)
    146d:	0e                   	push   %cs
    146e:	00 00                	add    %al,(%eax)
    1470:	18 01                	sbb    %al,(%ecx)
    1472:	07                   	pop    %es
    1473:	15 04 00 00 19       	adc    $0x19000004,%eax
    1478:	01 07                	add    %eax,(%edi)
    147a:	c8 03 00 00          	enter  $0x3,$0x0
    147e:	1a 01                	sbb    (%ecx),%al
    1480:	07                   	pop    %es
    1481:	10 08                	adc    %cl,(%eax)
    1483:	00 00                	add    %al,(%eax)
    1485:	1b 01                	sbb    (%ecx),%eax
    1487:	07                   	pop    %es
    1488:	06                   	push   %es
    1489:	03 00                	add    (%eax),%eax
    148b:	00 1c 01             	add    %bl,(%ecx,%eax,1)
    148e:	07                   	pop    %es
    148f:	72 09                	jb     149a <INPUT_BUFFER_SIZE+0x49a>
    1491:	00 00                	add    %al,(%eax)
    1493:	00 02                	add    %al,(%edx)
    1495:	00 02                	add    %al,(%edx)
    1497:	04 04                	add    $0x4,%al
    1499:	52                   	push   %edx
    149a:	14 00                	adc    $0x0,%al
    149c:	00 05 04 25 00 00    	add    %al,0x2504
    14a2:	00 06                	add    %al,(%esi)
    14a4:	48                   	dec    %eax
    14a5:	f2 07                	repnz pop %es
    14a7:	00 00                	add    %al,(%eax)
    14a9:	06                   	push   %es
    14aa:	fc                   	cld    
    14ab:	15 00 00 00 06       	adc    $0x6000000,%eax
    14b0:	a7                   	cmpsl  %es:(%edi),%ds:(%esi)
    14b1:	0e                   	push   %cs
    14b2:	00 00                	add    %al,(%eax)
    14b4:	01 06                	add    %eax,(%esi)
    14b6:	de 01                	fiadd  (%ecx)
    14b8:	00 00                	add    %al,(%eax)
    14ba:	02 06                	add    (%esi),%al
    14bc:	72 01                	jb     14bf <INPUT_BUFFER_SIZE+0x4bf>
    14be:	00 00                	add    %al,(%eax)
    14c0:	03 06                	add    (%esi),%eax
    14c2:	f6 17                	notb   (%edi)
    14c4:	00 00                	add    %al,(%eax)
    14c6:	04 06                	add    $0x6,%al
    14c8:	f7 06 00 00 05 00    	testl  $0x50000,(%esi)
    14ce:	04 88                	add    $0x88,%al
    14d0:	00 00                	add    %al,(%eax)
    14d2:	00 07                	add    %al,(%edi)
    14d4:	80 fd 07             	cmp    $0x7,%ch
    14d7:	00 00                	add    %al,(%eax)
    14d9:	08 88 00 00 00 09    	or     %cl,0x9000000(%eax)
    14df:	a5                   	movsl  %ds:(%esi),%es:(%edi)
    14e0:	1a 00                	sbb    (%eax),%al
    14e2:	00 01                	add    %al,(%ecx)
    14e4:	11 4f 00             	adc    %ecx,0x0(%edi)
    14e7:	00 00                	add    %al,(%eax)
    14e9:	f5                   	cmc    
    14ea:	94                   	xchg   %eax,%esp
    14eb:	04 08                	add    $0x8,%al
    14ed:	0f 00 00             	sldt   (%eax)
    14f0:	00 01                	add    %al,(%ecx)
    14f2:	9c                   	pushf  
    14f3:	0a c2                	or     %dl,%al
    14f5:	03 00                	add    (%eax),%eax
    14f7:	00 08                	add    %cl,(%eax)
    14f9:	0b 4f 00             	or     0x0(%edi),%ecx
    14fc:	00 00                	add    %al,(%eax)
    14fe:	05 03 24 20 06       	add    $0x6202403,%eax
    1503:	08 0a                	or     %cl,(%edx)
    1505:	9a 0a 00 00 08 0c 4f 	lcall  $0x4f0c,$0x800000a
    150c:	00 00                	add    %al,(%eax)
    150e:	00 05 03 dc 23 06    	add    %al,0x623dc03
    1514:	08 0a                	or     %cl,(%edx)
    1516:	d1 1a                	rcrl   (%edx)
    1518:	00 00                	add    %al,(%eax)
    151a:	01 0f                	add    %ecx,(%edi)
    151c:	4a                   	dec    %edx
    151d:	08 00                	or     %al,(%eax)
    151f:	00 05 03 0c 20 06    	add    %al,0x6200c03
    1525:	08 0b                	or     %cl,(%ebx)
    1527:	04 f2                	add    $0xf2,%al
    1529:	07                   	pop    %es
    152a:	00 00                	add    %al,(%eax)
    152c:	0a c3                	or     %bl,%al
    152e:	1a 00                	sbb    (%eax),%al
    1530:	00 01                	add    %al,(%ecx)
    1532:	0c 4a                	or     $0x4a,%al
    1534:	08 00                	or     %al,(%eax)
    1536:	00 05 03 00 20 06    	add    %al,0x6200003
    153c:	08 0a                	or     %cl,(%edx)
    153e:	b5 1a                	mov    $0x1a,%ch
    1540:	00 00                	add    %al,(%eax)
    1542:	01 0d 4a 08 00 00    	add    %ecx,0x84a
    1548:	05 03 04 20 06       	add    $0x6200403,%eax
    154d:	08 0a                	or     %cl,(%edx)
    154f:	df 1a                	fistp  (%edx)
    1551:	00 00                	add    %al,(%eax)
    1553:	01 0e                	add    %ecx,(%esi)
    1555:	4a                   	dec    %edx
    1556:	08 00                	or     %al,(%eax)
    1558:	00 05 03 08 20 06    	add    %al,0x6200803
    155e:	08 00                	or     %al,(%eax)

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%ecx)
   2:	01 25 0e 13 0b 03    	add    %esp,0x30b130e
   8:	0e                   	push   %cs
   9:	1b 0e                	sbb    (%esi),%ecx
   b:	11 01                	adc    %eax,(%ecx)
   d:	12 06                	adc    (%esi),%al
   f:	10 17                	adc    %dl,(%edi)
  11:	00 00                	add    %al,(%eax)
  13:	02 16                	add    (%esi),%dl
  15:	00 03                	add    %al,(%ebx)
  17:	0e                   	push   %cs
  18:	3a 0b                	cmp    (%ebx),%cl
  1a:	3b 0b                	cmp    (%ebx),%ecx
  1c:	49                   	dec    %ecx
  1d:	13 00                	adc    (%eax),%eax
  1f:	00 03                	add    %al,(%ebx)
  21:	24 00                	and    $0x0,%al
  23:	0b 0b                	or     (%ebx),%ecx
  25:	3e 0b 03             	or     %ds:(%ebx),%eax
  28:	0e                   	push   %cs
  29:	00 00                	add    %al,(%eax)
  2b:	04 24                	add    $0x24,%al
  2d:	00 0b                	add    %cl,(%ebx)
  2f:	0b 3e                	or     (%esi),%edi
  31:	0b 03                	or     (%ebx),%eax
  33:	08 00                	or     %al,(%eax)
  35:	00 05 0f 00 0b 0b    	add    %al,0xb0b000f
  3b:	00 00                	add    %al,(%eax)
  3d:	06                   	push   %es
  3e:	0f 00 0b             	str    (%ebx)
  41:	0b 49 13             	or     0x13(%ecx),%ecx
  44:	00 00                	add    %al,(%eax)
  46:	07                   	pop    %es
  47:	13 01                	adc    (%ecx),%eax
  49:	03 0e                	add    (%esi),%ecx
  4b:	0b 0b                	or     (%ebx),%ecx
  4d:	3a 0b                	cmp    (%ebx),%cl
  4f:	3b 0b                	cmp    (%ebx),%ecx
  51:	01 13                	add    %edx,(%ebx)
  53:	00 00                	add    %al,(%eax)
  55:	08 0d 00 03 0e 3a    	or     %cl,0x3a0e0300
  5b:	0b 3b                	or     (%ebx),%edi
  5d:	0b 49 13             	or     0x13(%ecx),%ecx
  60:	38 0b                	cmp    %cl,(%ebx)
  62:	00 00                	add    %al,(%eax)
  64:	09 0d 00 03 0e 3a    	or     %ecx,0x3a0e0300
  6a:	0b 3b                	or     (%ebx),%edi
  6c:	05 49 13 38 0b       	add    $0xb381349,%eax
  71:	00 00                	add    %al,(%eax)
  73:	0a 16                	or     (%esi),%dl
  75:	00 03                	add    %al,(%ebx)
  77:	0e                   	push   %cs
  78:	3a 0b                	cmp    (%ebx),%cl
  7a:	3b 0b                	cmp    (%ebx),%ecx
  7c:	00 00                	add    %al,(%eax)
  7e:	0b 01                	or     (%ecx),%eax
  80:	01 49 13             	add    %ecx,0x13(%ecx)
  83:	01 13                	add    %edx,(%ebx)
  85:	00 00                	add    %al,(%eax)
  87:	0c 21                	or     $0x21,%al
  89:	00 49 13             	add    %cl,0x13(%ecx)
  8c:	2f                   	das    
  8d:	0b 00                	or     (%eax),%eax
  8f:	00 0d 04 01 0b 0b    	add    %cl,0xb0b0104
  95:	49                   	dec    %ecx
  96:	13 3a                	adc    (%edx),%edi
  98:	0b 3b                	or     (%ebx),%edi
  9a:	0b 01                	or     (%ecx),%eax
  9c:	13 00                	adc    (%eax),%eax
  9e:	00 0e                	add    %cl,(%esi)
  a0:	28 00                	sub    %al,(%eax)
  a2:	03 0e                	add    (%esi),%ecx
  a4:	1c 0b                	sbb    $0xb,%al
  a6:	00 00                	add    %al,(%eax)
  a8:	0f 0d 00             	prefetch (%eax)
  ab:	03 08                	add    (%eax),%ecx
  ad:	3a 0b                	cmp    (%ebx),%cl
  af:	3b 0b                	cmp    (%ebx),%ecx
  b1:	49                   	dec    %ecx
  b2:	13 38                	adc    (%eax),%edi
  b4:	0b 00                	or     (%eax),%eax
  b6:	00 10                	add    %dl,(%eax)
  b8:	13 00                	adc    (%eax),%eax
  ba:	03 0e                	add    (%esi),%ecx
  bc:	3c 19                	cmp    $0x19,%al
  be:	00 00                	add    %al,(%eax)
  c0:	11 28                	adc    %ebp,(%eax)
  c2:	00 03                	add    %al,(%ebx)
  c4:	0e                   	push   %cs
  c5:	1c 05                	sbb    $0x5,%al
  c7:	00 00                	add    %al,(%eax)
  c9:	12 13                	adc    (%ebx),%dl
  cb:	01 03                	add    %eax,(%ebx)
  cd:	0e                   	push   %cs
  ce:	0b 05 3a 0b 3b 0b    	or     0xb3b0b3a,%eax
  d4:	01 13                	add    %edx,(%ebx)
  d6:	00 00                	add    %al,(%eax)
  d8:	13 2e                	adc    (%esi),%ebp
  da:	01 3f                	add    %edi,(%edi)
  dc:	19 03                	sbb    %eax,(%ebx)
  de:	0e                   	push   %cs
  df:	3a 0b                	cmp    (%ebx),%cl
  e1:	3b 0b                	cmp    (%ebx),%ecx
  e3:	27                   	daa    
  e4:	19 49 13             	sbb    %ecx,0x13(%ecx)
  e7:	11 01                	adc    %eax,(%ecx)
  e9:	12 06                	adc    (%esi),%al
  eb:	40                   	inc    %eax
  ec:	18 96 42 19 01 13    	sbb    %dl,0x13011942(%esi)
  f2:	00 00                	add    %al,(%eax)
  f4:	14 05                	adc    $0x5,%al
  f6:	00 03                	add    %al,(%ebx)
  f8:	0e                   	push   %cs
  f9:	3a 0b                	cmp    (%ebx),%cl
  fb:	3b 0b                	cmp    (%ebx),%ecx
  fd:	49                   	dec    %ecx
  fe:	13 02                	adc    (%edx),%eax
 100:	18 00                	sbb    %al,(%eax)
 102:	00 15 2e 01 3f 19    	add    %dl,0x193f012e
 108:	03 0e                	add    (%esi),%ecx
 10a:	3a 0b                	cmp    (%ebx),%cl
 10c:	3b 0b                	cmp    (%ebx),%ecx
 10e:	27                   	daa    
 10f:	19 11                	sbb    %edx,(%ecx)
 111:	01 12                	add    %edx,(%edx)
 113:	06                   	push   %es
 114:	40                   	inc    %eax
 115:	18 96 42 19 01 13    	sbb    %dl,0x13011942(%esi)
 11b:	00 00                	add    %al,(%eax)
 11d:	16                   	push   %ss
 11e:	34 00                	xor    $0x0,%al
 120:	03 08                	add    (%eax),%ecx
 122:	3a 0b                	cmp    (%ebx),%cl
 124:	3b 0b                	cmp    (%ebx),%ecx
 126:	49                   	dec    %ecx
 127:	13 00                	adc    (%eax),%eax
 129:	00 17                	add    %dl,(%edi)
 12b:	34 00                	xor    $0x0,%al
 12d:	03 0e                	add    (%esi),%ecx
 12f:	3a 0b                	cmp    (%ebx),%cl
 131:	3b 0b                	cmp    (%ebx),%ecx
 133:	49                   	dec    %ecx
 134:	13 02                	adc    (%edx),%eax
 136:	18 00                	sbb    %al,(%eax)
 138:	00 18                	add    %bl,(%eax)
 13a:	2e 00 3f             	add    %bh,%cs:(%edi)
 13d:	19 03                	sbb    %eax,(%ebx)
 13f:	0e                   	push   %cs
 140:	3a 0b                	cmp    (%ebx),%cl
 142:	3b 0b                	cmp    (%ebx),%ecx
 144:	27                   	daa    
 145:	19 11                	sbb    %edx,(%ecx)
 147:	01 12                	add    %edx,(%edx)
 149:	06                   	push   %es
 14a:	40                   	inc    %eax
 14b:	18 96 42 19 00 00    	sbb    %dl,0x1942(%esi)
 151:	19 34 00             	sbb    %esi,(%eax,%eax,1)
 154:	03 0e                	add    (%esi),%ecx
 156:	3a 0b                	cmp    (%ebx),%cl
 158:	3b 0b                	cmp    (%ebx),%ecx
 15a:	49                   	dec    %ecx
 15b:	13 3f                	adc    (%edi),%edi
 15d:	19 3c 19             	sbb    %edi,(%ecx,%ebx,1)
 160:	00 00                	add    %al,(%eax)
 162:	1a 34 00             	sbb    (%eax,%eax,1),%dh
 165:	03 0e                	add    (%esi),%ecx
 167:	3a 0b                	cmp    (%ebx),%cl
 169:	3b 0b                	cmp    (%ebx),%ecx
 16b:	49                   	dec    %ecx
 16c:	13 3f                	adc    (%edi),%edi
 16e:	19 02                	sbb    %eax,(%edx)
 170:	18 00                	sbb    %al,(%eax)
 172:	00 1b                	add    %bl,(%ebx)
 174:	34 00                	xor    $0x0,%al
 176:	03 08                	add    (%eax),%ecx
 178:	3a 0b                	cmp    (%ebx),%cl
 17a:	3b 0b                	cmp    (%ebx),%ecx
 17c:	49                   	dec    %ecx
 17d:	13 3f                	adc    (%edi),%edi
 17f:	19 02                	sbb    %eax,(%edx)
 181:	18 00                	sbb    %al,(%eax)
 183:	00 00                	add    %al,(%eax)
 185:	01 11                	add    %edx,(%ecx)
 187:	00 10                	add    %dl,(%eax)
 189:	06                   	push   %es
 18a:	11 01                	adc    %eax,(%ecx)
 18c:	12 01                	adc    (%ecx),%al
 18e:	03 08                	add    (%eax),%ecx
 190:	1b 08                	sbb    (%eax),%ecx
 192:	25 08 13 05 00       	and    $0x51308,%eax
 197:	00 00                	add    %al,(%eax)
 199:	01 11                	add    %edx,(%ecx)
 19b:	01 25 0e 13 0b 03    	add    %esp,0x30b130e
 1a1:	0e                   	push   %cs
 1a2:	1b 0e                	sbb    (%esi),%ecx
 1a4:	11 01                	adc    %eax,(%ecx)
 1a6:	12 06                	adc    (%esi),%al
 1a8:	10 17                	adc    %dl,(%edi)
 1aa:	00 00                	add    %al,(%eax)
 1ac:	02 24 00             	add    (%eax,%eax,1),%ah
 1af:	0b 0b                	or     (%ebx),%ecx
 1b1:	3e 0b 03             	or     %ds:(%ebx),%eax
 1b4:	0e                   	push   %cs
 1b5:	00 00                	add    %al,(%eax)
 1b7:	03 24 00             	add    (%eax,%eax,1),%esp
 1ba:	0b 0b                	or     (%ebx),%ecx
 1bc:	3e 0b 03             	or     %ds:(%ebx),%eax
 1bf:	08 00                	or     %al,(%eax)
 1c1:	00 04 16             	add    %al,(%esi,%edx,1)
 1c4:	00 03                	add    %al,(%ebx)
 1c6:	0e                   	push   %cs
 1c7:	3a 0b                	cmp    (%ebx),%cl
 1c9:	3b 0b                	cmp    (%ebx),%ecx
 1cb:	49                   	dec    %ecx
 1cc:	13 00                	adc    (%eax),%eax
 1ce:	00 05 04 01 0b 0b    	add    %al,0xb0b0104
 1d4:	49                   	dec    %ecx
 1d5:	13 3a                	adc    (%edx),%edi
 1d7:	0b 3b                	or     (%ebx),%edi
 1d9:	0b 01                	or     (%ecx),%eax
 1db:	13 00                	adc    (%eax),%eax
 1dd:	00 06                	add    %al,(%esi)
 1df:	28 00                	sub    %al,(%eax)
 1e1:	03 0e                	add    (%esi),%ecx
 1e3:	1c 0b                	sbb    $0xb,%al
 1e5:	00 00                	add    %al,(%eax)
 1e7:	07                   	pop    %es
 1e8:	28 00                	sub    %al,(%eax)
 1ea:	03 0e                	add    (%esi),%ecx
 1ec:	1c 05                	sbb    $0x5,%al
 1ee:	00 00                	add    %al,(%eax)
 1f0:	08 13                	or     %dl,(%ebx)
 1f2:	00 03                	add    %al,(%ebx)
 1f4:	0e                   	push   %cs
 1f5:	3c 19                	cmp    $0x19,%al
 1f7:	00 00                	add    %al,(%eax)
 1f9:	09 2e                	or     %ebp,(%esi)
 1fb:	00 3f                	add    %bh,(%edi)
 1fd:	19 03                	sbb    %eax,(%ebx)
 1ff:	0e                   	push   %cs
 200:	3a 0b                	cmp    (%ebx),%cl
 202:	3b 0b                	cmp    (%ebx),%ecx
 204:	27                   	daa    
 205:	19 49 13             	sbb    %ecx,0x13(%ecx)
 208:	11 01                	adc    %eax,(%ecx)
 20a:	12 06                	adc    (%esi),%al
 20c:	40                   	inc    %eax
 20d:	18 97 42 19 00 00    	sbb    %dl,0x1942(%edi)
 213:	0a 34 00             	or     (%eax,%eax,1),%dh
 216:	03 0e                	add    (%esi),%ecx
 218:	3a 0b                	cmp    (%ebx),%cl
 21a:	3b 0b                	cmp    (%ebx),%ecx
 21c:	49                   	dec    %ecx
 21d:	13 3f                	adc    (%edi),%edi
 21f:	19 02                	sbb    %eax,(%edx)
 221:	18 00                	sbb    %al,(%eax)
 223:	00 0b                	add    %cl,(%ebx)
 225:	0f 00 0b             	str    (%ebx)
 228:	0b 49 13             	or     0x13(%ecx),%ecx
 22b:	00 00                	add    %al,(%eax)
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	79 01                	jns    3 <sys_read>
   2:	00 00                	add    %al,(%eax)
   4:	02 00                	add    (%eax),%al
   6:	43                   	inc    %ebx
   7:	01 00                	add    %eax,(%eax)
   9:	00 01                	add    %al,(%ecx)
   b:	01 fb                	add    %edi,%ebx
   d:	0e                   	push   %cs
   e:	0d 00 01 01 01       	or     $0x1010100,%eax
  13:	01 00                	add    %eax,(%eax)
  15:	00 00                	add    %al,(%eax)
  17:	01 00                	add    %eax,(%eax)
  19:	00 01                	add    %al,(%ecx)
  1b:	2f                   	das    
  1c:	75 73                	jne    91 <F_IMMED+0x11>
  1e:	72 2f                	jb     4f <JONES_VERSION+0x20>
  20:	6c                   	insb   (%dx),%es:(%edi)
  21:	69 62 2f 67 63 63 2f 	imul   $0x2f636367,0x2f(%edx),%esp
  28:	69 36 38 36 2d 6c    	imul   $0x6c2d3638,(%esi),%esi
  2e:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%esi),%ebp
  35:	75 2f                	jne    66 <sys_truncate+0xa>
  37:	35 2f 69 6e 63       	xor    $0x636e692f,%eax
  3c:	6c                   	insb   (%dx),%es:(%edi)
  3d:	75 64                	jne    a3 <F_IMMED+0x23>
  3f:	65 00 2f             	add    %ch,%gs:(%edi)
  42:	75 73                	jne    b7 <F_IMMED+0x37>
  44:	72 2f                	jb     75 <sys_truncate+0x19>
  46:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
  4d:	2f                   	das    
  4e:	69 33 38 36 2d 6c    	imul   $0x6c2d3638,(%ebx),%esi
  54:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%esi),%ebp
  5b:	75 2f                	jne    8c <F_IMMED+0xc>
  5d:	62 69 74             	bound  %ebp,0x74(%ecx)
  60:	73 00                	jae    62 <sys_truncate+0x6>
  62:	2f                   	das    
  63:	75 73                	jne    d8 <F_IMMED+0x58>
  65:	72 2f                	jb     96 <F_IMMED+0x16>
  67:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
  6e:	00 2f                	add    %ch,(%edi)
  70:	75 73                	jne    e5 <F_IMMED+0x65>
  72:	72 2f                	jb     a3 <F_IMMED+0x23>
  74:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
  7b:	2f                   	das    
  7c:	53                   	push   %ebx
  7d:	44                   	inc    %esp
  7e:	4c                   	dec    %esp
  7f:	32 00                	xor    (%eax),%al
  81:	69 6e 63 00 00 73 64 	imul   $0x64730000,0x63(%esi),%ebp
  88:	6c                   	insb   (%dx),%es:(%edi)
  89:	77 72                	ja     fd <F_IMMED+0x7d>
  8b:	61                   	popa   
  8c:	70 2e                	jo     bc <F_IMMED+0x3c>
  8e:	63 00                	arpl   %ax,(%eax)
  90:	00 00                	add    %al,(%eax)
  92:	00 73 74             	add    %dh,0x74(%ebx)
  95:	64 64 65 66 2e 68 00 	fs fs gs cs pushw $0x100
  9c:	01 
  9d:	00 00                	add    %al,(%eax)
  9f:	74 79                	je     11a <F_IMMED+0x9a>
  a1:	70 65                	jo     108 <F_IMMED+0x88>
  a3:	73 2e                	jae    d3 <F_IMMED+0x53>
  a5:	68 00 02 00 00       	push   $0x200
  aa:	6c                   	insb   (%dx),%es:(%edi)
  ab:	69 62 69 6f 2e 68 00 	imul   $0x682e6f,0x69(%edx),%esp
  b2:	03 00                	add    (%eax),%eax
  b4:	00 73 74             	add    %dh,0x74(%ebx)
  b7:	64 69 6e 74 2e 68 00 	imul   $0x300682e,%fs:0x74(%esi),%ebp
  be:	03 
  bf:	00 00                	add    %al,(%eax)
  c1:	53                   	push   %ebx
  c2:	44                   	inc    %esp
  c3:	4c                   	dec    %esp
  c4:	5f                   	pop    %edi
  c5:	73 74                	jae    13b <F_IMMED+0xbb>
  c7:	64 69 6e 63 2e 68 00 	imul   $0x400682e,%fs:0x63(%esi),%ebp
  ce:	04 
  cf:	00 00                	add    %al,(%eax)
  d1:	53                   	push   %ebx
  d2:	44                   	inc    %esp
  d3:	4c                   	dec    %esp
  d4:	5f                   	pop    %edi
  d5:	70 69                	jo     140 <F_IMMED+0xc0>
  d7:	78 65                	js     13e <F_IMMED+0xbe>
  d9:	6c                   	insb   (%dx),%es:(%edi)
  da:	73 2e                	jae    10a <F_IMMED+0x8a>
  dc:	68 00 04 00 00       	push   $0x400
  e1:	53                   	push   %ebx
  e2:	44                   	inc    %esp
  e3:	4c                   	dec    %esp
  e4:	5f                   	pop    %edi
  e5:	72 65                	jb     14c <F_IMMED+0xcc>
  e7:	63 74 2e 68          	arpl   %si,0x68(%esi,%ebp,1)
  eb:	00 04 00             	add    %al,(%eax,%eax,1)
  ee:	00 53 44             	add    %dl,0x44(%ebx)
  f1:	4c                   	dec    %esp
  f2:	5f                   	pop    %edi
  f3:	76 69                	jbe    15e <F_IMMED+0xde>
  f5:	64 65 6f             	fs outsl %gs:(%esi),(%dx)
  f8:	2e 68 00 04 00 00    	cs push $0x400
  fe:	53                   	push   %ebx
  ff:	44                   	inc    %esp
 100:	4c                   	dec    %esp
 101:	5f                   	pop    %edi
 102:	73 63                	jae    167 <F_IMMED+0xe7>
 104:	61                   	popa   
 105:	6e                   	outsb  %ds:(%esi),(%dx)
 106:	63 6f 64             	arpl   %bp,0x64(%edi)
 109:	65 2e 68 00 04 00 00 	gs cs push $0x400
 110:	53                   	push   %ebx
 111:	44                   	inc    %esp
 112:	4c                   	dec    %esp
 113:	5f                   	pop    %edi
 114:	6d                   	insl   (%dx),%es:(%edi)
 115:	65 73 73             	gs jae 18b <F_IMMED+0x10b>
 118:	61                   	popa   
 119:	67 65 62 6f 78       	bound  %ebp,%gs:0x78(%bx)
 11e:	2e 68 00 04 00 00    	cs push $0x400
 124:	53                   	push   %ebx
 125:	44                   	inc    %esp
 126:	4c                   	dec    %esp
 127:	5f                   	pop    %edi
 128:	72 65                	jb     18f <F_IMMED+0x10f>
 12a:	6e                   	outsb  %ds:(%esi),(%dx)
 12b:	64 65 72 2e          	fs gs jb 15d <F_IMMED+0xdd>
 12f:	68 00 04 00 00       	push   $0x400
 134:	73 74                	jae    1aa <F_IMMED+0x12a>
 136:	64 69 6f 2e 68 00 03 	imul   $0x30068,%fs:0x2e(%edi),%ebp
 13d:	00 
 13e:	00 73 64             	add    %dh,0x64(%ebx)
 141:	6c                   	insb   (%dx),%es:(%edi)
 142:	77 72                	ja     1b6 <F_IMMED+0x136>
 144:	61                   	popa   
 145:	70 2e                	jo     175 <F_IMMED+0xf5>
 147:	68 00 05 00 00       	push   $0x500
 14c:	00 00                	add    %al,(%eax)
 14e:	05 02 eb 8a 04       	add    $0x48aeb02,%eax
 153:	08 03                	or     %al,(%ebx)
 155:	34 01                	xor    $0x1,%al
 157:	67 02 35             	add    (%di),%dh
 15a:	13 32                	adc    (%edx),%esi
 15c:	66 ae                	data16 scas %es:(%edi),%al
 15e:	75 08                	jne    168 <F_IMMED+0xe8>
 160:	13 08                	adc    (%eax),%ecx
 162:	ca f3 08             	lret   $0x8f3
 165:	e5 02                	in     $0x2,%eax
 167:	25 13 08 13 08       	and    $0x8130813,%eax
 16c:	13 08                	adc    (%eax),%ecx
 16e:	84 08                	test   %cl,(%eax)
 170:	3f                   	aas    
 171:	67 08 9f 02 26       	or     %bl,0x2602(%bx)
 176:	13 f3                	adc    %ebx,%esi
 178:	02 0a                	add    (%edx),%cl
 17a:	00 01                	add    %al,(%ecx)
 17c:	01 71 03             	add    %esi,0x3(%ecx)
 17f:	00 00                	add    %al,(%eax)
 181:	02 00                	add    (%eax),%al
 183:	27                   	daa    
 184:	00 00                	add    %al,(%eax)
 186:	00 01                	add    %al,(%ecx)
 188:	01 fb                	add    %edi,%ebx
 18a:	0e                   	push   %cs
 18b:	0d 00 01 01 01       	or     $0x1010100,%eax
 190:	01 00                	add    %eax,(%eax)
 192:	00 00                	add    %al,(%eax)
 194:	01 00                	add    %eax,(%eax)
 196:	00 01                	add    %al,(%ecx)
 198:	73 72                	jae    20c <F_IMMED+0x18c>
 19a:	63 00                	arpl   %ax,(%eax)
 19c:	00 6a 6f             	add    %ch,0x6f(%edx)
 19f:	6e                   	outsb  %ds:(%esi),(%dx)
 1a0:	65 73 66             	gs jae 209 <F_IMMED+0x189>
 1a3:	6f                   	outsl  %ds:(%esi),(%dx)
 1a4:	72 74                	jb     21a <F_IMMED+0x19a>
 1a6:	68 2e 73 00 01       	push   $0x100732e
 1ab:	00 00                	add    %al,(%eax)
 1ad:	00 00                	add    %al,(%eax)
 1af:	05 02 74 8c 04       	add    $0x48c7402,%eax
 1b4:	08 03                	or     %al,(%ebx)
 1b6:	c8 00 01 83          	enter  $0x100,$0x83
 1ba:	83 83 83 86 59 83 83 	addl   $0xffffff83,-0x7ca6797d(%ebx)
 1c1:	83 59 03 0f          	sbbl   $0xf,0x3(%ecx)
 1c5:	58                   	pop    %eax
 1c6:	59                   	pop    %ecx
 1c7:	59                   	pop    %ecx
 1c8:	59                   	pop    %ecx
 1c9:	59                   	pop    %ecx
 1ca:	59                   	pop    %ecx
 1cb:	5a                   	pop    %edx
 1cc:	59                   	pop    %ecx
 1cd:	59                   	pop    %ecx
 1ce:	59                   	pop    %ecx
 1cf:	59                   	pop    %ecx
 1d0:	83 83 83 03 1b 82 59 	addl   $0x59,-0x7de4fc7d(%ebx)
 1d7:	59                   	pop    %ecx
 1d8:	3e 2f                	ds das 
 1da:	59                   	pop    %ecx
 1db:	21 59 21             	and    %ebx,0x21(%ecx)
 1de:	59                   	pop    %ecx
 1df:	21 59 59             	and    %ebx,0x59(%ecx)
 1e2:	3e 2f                	ds das 
 1e4:	59                   	pop    %ecx
 1e5:	3e 3d 2f 30 59 21    	ds cmp $0x2159302f,%eax
 1eb:	59                   	pop    %ecx
 1ec:	59                   	pop    %ecx
 1ed:	3d 59 31 59 59       	cmp    $0x59593159,%eax
 1f2:	3d 5a 03 0f 3c       	cmp    $0x3c0f035a,%eax
 1f7:	59                   	pop    %ecx
 1f8:	59                   	pop    %ecx
 1f9:	59                   	pop    %ecx
 1fa:	3d 03 17 3c 2f       	cmp    $0x2f3c1703,%eax
 1ff:	59                   	pop    %ecx
 200:	59                   	pop    %ecx
 201:	59                   	pop    %ecx
 202:	59                   	pop    %ecx
 203:	59                   	pop    %ecx
 204:	59                   	pop    %ecx
 205:	3d 59 2f 31 59       	cmp    $0x59312f59,%eax
 20a:	21 67 59             	and    %esp,0x59(%edi)
 20d:	3d 31 5a 03 14       	cmp    $0x14035a31,%eax
 212:	3c 59                	cmp    $0x59,%al
 214:	21 5a 59             	and    %ebx,0x59(%edx)
 217:	2f                   	das    
 218:	30 59 21             	xor    %bl,0x21(%ecx)
 21b:	59                   	pop    %ecx
 21c:	59                   	pop    %ecx
 21d:	3d 31 5a 03 09       	cmp    $0x9035a31,%eax
 222:	3c 67                	cmp    $0x67,%al
 224:	59                   	pop    %ecx
 225:	59                   	pop    %ecx
 226:	03 0c 3c             	add    (%esp,%edi,1),%ecx
 229:	21 30                	and    %esi,(%eax)
 22b:	3e 59                	ds pop %ecx
 22d:	21 5a 3e             	and    %ebx,0x3e(%edx)
 230:	59                   	pop    %ecx
 231:	3d 4b 3d 3e 59       	cmp    $0x593e3d4b,%eax
 236:	3e 59                	ds pop %ecx
 238:	3d 4b 2f 3d 4b       	cmp    $0x4b3d2f4b,%eax
 23d:	2f                   	das    
 23e:	2f                   	das    
 23f:	3d 03 ca 00 3c       	cmp    $0x3c00ca03,%eax
 244:	59                   	pop    %ecx
 245:	21 59 3e             	and    %ebx,0x3e(%ecx)
 248:	21 03                	and    %eax,(%ebx)
 24a:	0e                   	push   %cs
 24b:	3c 21                	cmp    $0x21,%al
 24d:	30 21                	xor    %ah,(%ecx)
 24f:	3e 3d 3d 3e 3d 3d    	ds cmp $0x3d3d3e3d,%eax
 255:	3e 4b                	ds dec %ebx
 257:	4b                   	dec    %ebx
 258:	4c                   	dec    %esp
 259:	3d 3d 21 21 21       	cmp    $0x2121213d,%eax
 25e:	22 59 3d             	and    0x3d(%ecx),%bl
 261:	3f                   	aas    
 262:	3d 3d 4b 3e 3d       	cmp    $0x3d3e4b3d,%eax
 267:	2f                   	das    
 268:	30 3d 30 5c 3d 2f    	xor    %bh,0x2f3d5c30
 26e:	68 5b 3d 3e 3d       	push   $0x3d3e3d5b
 273:	3d 4b 2f 3d 2f       	cmp    $0x2f3d2f4b,%eax
 278:	30 3e                	xor    %bh,(%esi)
 27a:	3d 3d 30 5a 3d       	cmp    $0x3d5a303d,%eax
 27f:	3e 3d 3d 4b 2f 3d    	ds cmp $0x3d2f4b3d,%eax
 285:	2f                   	das    
 286:	2f                   	das    
 287:	2f                   	das    
 288:	3d 2f 2f 2f 3e       	cmp    $0x3e2f2f2f,%eax
 28d:	3d 2f 3d 3e 30       	cmp    $0x303e3d2f,%eax
 292:	3d 3d 3d 3d 4b       	cmp    $0x4b3d3d3d,%eax
 297:	2f                   	das    
 298:	3d 2f 2f 2f 2f       	cmp    $0x2f2f2f2f,%eax
 29d:	2f                   	das    
 29e:	40                   	inc    %eax
 29f:	3d 2f 3d 30 3d       	cmp    $0x3d303d2f,%eax
 2a4:	3d 3d 3d 30 3d       	cmp    $0x3d303d3d,%eax
 2a9:	3d 3d 3d 30 31       	cmp    $0x31303d3d,%eax
 2ae:	3d 3e 3d 3d 4b       	cmp    $0x4b3d3d3e,%eax
 2b3:	3d 2f 3d 3d 2f       	cmp    $0x2f3d3d2f,%eax
 2b8:	3d 2f 3d 2f 3e       	cmp    $0x3e2f3d2f,%eax
 2bd:	3d 3d 31 3d 21       	cmp    $0x213d313d,%eax
 2c2:	03 09                	add    (%ecx),%ecx
 2c4:	66 67 3d 40 59       	addr16 cmp $0x5940,%ax
 2c9:	59                   	pop    %ecx
 2ca:	21 43 21             	and    %eax,0x21(%ebx)
 2cd:	67 3f                	addr16 aas 
 2cf:	67 21 3f             	and    %edi,(%bx)
 2d2:	21 3f                	and    %edi,(%edi)
 2d4:	21 3f                	and    %edi,(%edi)
 2d6:	3d 3f 21 3f 21       	cmp    $0x213f213f,%eax
 2db:	21 21                	and    %esp,(%ecx)
 2dd:	21 3f                	and    %edi,(%edi)
 2df:	3d 21 3f 4b 21       	cmp    $0x214b3f21,%eax
 2e4:	3f                   	aas    
 2e5:	21 21                	and    %esp,(%ecx)
 2e7:	21 21                	and    %esp,(%ecx)
 2e9:	21 21                	and    %esp,(%ecx)
 2eb:	3f                   	aas    
 2ec:	21 21                	and    %esp,(%ecx)
 2ee:	21 21                	and    %esp,(%ecx)
 2f0:	21 21                	and    %esp,(%ecx)
 2f2:	3f                   	aas    
 2f3:	21 21                	and    %esp,(%ecx)
 2f5:	3f                   	aas    
 2f6:	3d 4b 21 21 3f       	cmp    $0x3f21214b,%eax
 2fb:	21 21                	and    %esp,(%ecx)
 2fd:	21 21                	and    %esp,(%ecx)
 2ff:	21 21                	and    %esp,(%ecx)
 301:	21 21                	and    %esp,(%ecx)
 303:	3f                   	aas    
 304:	3d 2f 2f 22 3f       	cmp    $0x3f222f2f,%eax
 309:	3d 3f 3d 3f 4b       	cmp    $0x4b3f3d3f,%eax
 30e:	3f                   	aas    
 30f:	4b                   	dec    %ebx
 310:	3f                   	aas    
 311:	21 3d 3f 21 3d 3f    	and    %edi,0x3f3d213f
 317:	21 21                	and    %esp,(%ecx)
 319:	3d 21 3f 21 21       	cmp    $0x21213f21,%eax
 31e:	21 2f                	and    %ebp,(%edi)
 320:	21 21                	and    %esp,(%ecx)
 322:	3f                   	aas    
 323:	2f                   	das    
 324:	21 21                	and    %esp,(%ecx)
 326:	2f                   	das    
 327:	21 21                	and    %esp,(%ecx)
 329:	3f                   	aas    
 32a:	21 21                	and    %esp,(%ecx)
 32c:	2f                   	das    
 32d:	3d 3d 21 3f 21       	cmp    $0x213f213d,%eax
 332:	21 2f                	and    %ebp,(%edi)
 334:	3d 3d 21 3f 21       	cmp    $0x213f213d,%eax
 339:	21 2f                	and    %ebp,(%edi)
 33b:	3d 3d 21 3f 21       	cmp    $0x213f213d,%eax
 340:	21 2f                	and    %ebp,(%edi)
 342:	3d 3d 21 3f 21       	cmp    $0x213f213d,%eax
 347:	21 2f                	and    %ebp,(%edi)
 349:	3d 3d 21 3f 21       	cmp    $0x213f213d,%eax
 34e:	21 2f                	and    %ebp,(%edi)
 350:	3d 3d 21 3f 21       	cmp    $0x213f213d,%eax
 355:	2f                   	das    
 356:	3d 3d 21 3f 21       	cmp    $0x213f213d,%eax
 35b:	2f                   	das    
 35c:	3d 3d 21 3f 21       	cmp    $0x213f213d,%eax
 361:	2f                   	das    
 362:	3d 3d 21 3f 21       	cmp    $0x213f213d,%eax
 367:	2f                   	das    
 368:	3d 3d 21 3f 21       	cmp    $0x213f213d,%eax
 36d:	2f                   	das    
 36e:	3d 3d 21 3f 21       	cmp    $0x213f213d,%eax
 373:	2f                   	das    
 374:	3d 3d 21 3f 21       	cmp    $0x213f213d,%eax
 379:	3d 3f 21 3d 3f       	cmp    $0x3f3d213f,%eax
 37e:	21 3d 3f 3d 3f 67    	and    %edi,0x673f3d3f
 384:	3f                   	aas    
 385:	21 21                	and    %esp,(%ecx)
 387:	2f                   	das    
 388:	3f                   	aas    
 389:	21 2f                	and    %ebp,(%edi)
 38b:	21 3f                	and    %edi,(%edi)
 38d:	21 21                	and    %esp,(%ecx)
 38f:	2f                   	das    
 390:	3f                   	aas    
 391:	21 21                	and    %esp,(%ecx)
 393:	2f                   	das    
 394:	3f                   	aas    
 395:	21 21                	and    %esp,(%ecx)
 397:	2f                   	das    
 398:	3f                   	aas    
 399:	21 2f                	and    %ebp,(%edi)
 39b:	2f                   	das    
 39c:	21 40 4b             	and    %eax,0x4b(%eax)
 39f:	2f                   	das    
 3a0:	21 21                	and    %esp,(%ecx)
 3a2:	21 4b 40             	and    %ecx,0x40(%ebx)
 3a5:	2f                   	das    
 3a6:	21 21                	and    %esp,(%ecx)
 3a8:	21 2f                	and    %ebp,(%edi)
 3aa:	2f                   	das    
 3ab:	3f                   	aas    
 3ac:	2f                   	das    
 3ad:	21 3f                	and    %edi,(%edi)
 3af:	21 3f                	and    %edi,(%edi)
 3b1:	59                   	pop    %ecx
 3b2:	21 3e                	and    %edi,(%esi)
 3b4:	67 67 2f             	addr16 addr16 das 
 3b7:	2f                   	das    
 3b8:	2f                   	das    
 3b9:	21 67 23             	and    %esp,0x23(%edi)
 3bc:	59                   	pop    %ecx
 3bd:	59                   	pop    %ecx
 3be:	59                   	pop    %ecx
 3bf:	67 59                	addr16 pop %ecx
 3c1:	30 2f                	xor    %ch,(%edi)
 3c3:	2f                   	das    
 3c4:	2f                   	das    
 3c5:	67 31 59 2f          	xor    %ebx,0x2f(%bx,%di)
 3c9:	03 0c 2e             	add    (%esi,%ebp,1),%ecx
 3cc:	21 59 3e             	and    %ebx,0x3e(%ecx)
 3cf:	59                   	pop    %ecx
 3d0:	59                   	pop    %ecx
 3d1:	59                   	pop    %ecx
 3d2:	59                   	pop    %ecx
 3d3:	59                   	pop    %ecx
 3d4:	2f                   	das    
 3d5:	27                   	daa    
 3d6:	59                   	pop    %ecx
 3d7:	21 21                	and    %esp,(%ecx)
 3d9:	40                   	inc    %eax
 3da:	59                   	pop    %ecx
 3db:	2f                   	das    
 3dc:	2f                   	das    
 3dd:	2f                   	das    
 3de:	31 5a 21             	xor    %ebx,0x21(%edx)
 3e1:	59                   	pop    %ecx
 3e2:	2f                   	das    
 3e3:	31 67 2f             	xor    %esp,0x2f(%edi)
 3e6:	59                   	pop    %ecx
 3e7:	25 59 2f 2f 03       	and    $0x32f2f59,%eax
 3ec:	0b 2e                	or     (%esi),%ebp
 3ee:	21 21                	and    %esp,(%ecx)
 3f0:	59                   	pop    %ecx
 3f1:	21 3e                	and    %edi,(%esi)
 3f3:	23 69 2f             	and    0x2f(%ecx),%ebp
 3f6:	32 2f                	xor    (%edi),%ch
 3f8:	3d 2f 2f 31 21       	cmp    $0x21312f2f,%eax
 3fd:	21 3d 2f 21 21 31    	and    %edi,0x3121212f
 403:	21 2f                	and    %ebp,(%edi)
 405:	23 2f                	and    (%edi),%ebp
 407:	32 21                	xor    (%ecx),%ah
 409:	2f                   	das    
 40a:	23 21                	and    (%ecx),%esp
 40c:	59                   	pop    %ecx
 40d:	21 3e                	and    %edi,(%esi)
 40f:	2f                   	das    
 410:	3d 2f 21 2f 2f       	cmp    $0x2f2f212f,%eax
 415:	3d 3d 28 21 21       	cmp    $0x2121283d,%eax
 41a:	59                   	pop    %ecx
 41b:	21 21                	and    %esp,(%ecx)
 41d:	3f                   	aas    
 41e:	2f                   	das    
 41f:	30 2f                	xor    %ch,(%edi)
 421:	30 68 2f             	xor    %ch,0x2f(%eax)
 424:	21 21                	and    %esp,(%ecx)
 426:	3d 2f 21 21 21       	cmp    $0x2121212f,%eax
 42b:	2f                   	das    
 42c:	21 59 24             	and    %ebx,0x24(%ecx)
 42f:	3d 2f 23 3d 2f       	cmp    $0x2f3d232f,%eax
 434:	3d 2f 3d 2f 3e       	cmp    $0x3e2f3d2f,%eax
 439:	2f                   	das    
 43a:	2f                   	das    
 43b:	2f                   	das    
 43c:	21 33                	and    %esi,(%ebx)
 43e:	21 2f                	and    %ebp,(%edi)
 440:	2f                   	das    
 441:	30 26                	xor    %ah,(%esi)
 443:	22 21                	and    (%ecx),%ah
 445:	3e 21 21             	and    %esp,%ds:(%ecx)
 448:	21 2f                	and    %ebp,(%edi)
 44a:	3d 3d 3f 21 21       	cmp    $0x21213f3d,%eax
 44f:	59                   	pop    %ecx
 450:	59                   	pop    %ecx
 451:	2f                   	das    
 452:	41                   	inc    %ecx
 453:	21 23                	and    %esp,(%ebx)
 455:	67 59                	addr16 pop %ecx
 457:	23 2f                	and    (%edi),%ebp
 459:	21 21                	and    %esp,(%ecx)
 45b:	2f                   	das    
 45c:	2f                   	das    
 45d:	21 3d 3f 59 59 67    	and    %edi,0x6759593f
 463:	3f                   	aas    
 464:	21 59 3e             	and    %ebx,0x3e(%ecx)
 467:	67 21 67 23          	and    %esp,0x23(%bx)
 46b:	2f                   	das    
 46c:	59                   	pop    %ecx
 46d:	3f                   	aas    
 46e:	9f                   	lahf   
 46f:	03 11                	add    (%ecx),%edx
 471:	3c 67                	cmp    $0x67,%al
 473:	3d 3d 3f 21 3d       	cmp    $0x3d213f3d,%eax
 478:	3d 03 09 3c 21       	cmp    $0x213c0903,%eax
 47d:	21 3f                	and    %edi,(%edi)
 47f:	5a                   	pop    %edx
 480:	2f                   	das    
 481:	59                   	pop    %ecx
 482:	59                   	pop    %ecx
 483:	2f                   	das    
 484:	31 2f                	xor    %ebp,(%edi)
 486:	3d 21 59 21 2f       	cmp    $0x2f215921,%eax
 48b:	2f                   	das    
 48c:	2f                   	das    
 48d:	32 67 59             	xor    0x59(%edi),%ah
 490:	2f                   	das    
 491:	2f                   	das    
 492:	2f                   	das    
 493:	5b                   	pop    %ebx
 494:	67 2f                	addr16 das 
 496:	2f                   	das    
 497:	59                   	pop    %ecx
 498:	67 2f                	addr16 das 
 49a:	2f                   	das    
 49b:	2f                   	das    
 49c:	5a                   	pop    %edx
 49d:	40                   	inc    %eax
 49e:	67 2f                	addr16 das 
 4a0:	31 32                	xor    %esi,(%edx)
 4a2:	21 40 59             	and    %eax,0x59(%eax)
 4a5:	59                   	pop    %ecx
 4a6:	59                   	pop    %ecx
 4a7:	59                   	pop    %ecx
 4a8:	30 67 2f             	xor    %ah,0x2f(%edi)
 4ab:	67 3d 2f 5a 2f 59    	addr16 cmp $0x592f5a2f,%eax
 4b1:	30 59 59             	xor    %bl,0x59(%ecx)
 4b4:	59                   	pop    %ecx
 4b5:	2f                   	das    
 4b6:	03 0f                	add    (%edi),%ecx
 4b8:	3c 2f                	cmp    $0x2f,%al
 4ba:	3f                   	aas    
 4bb:	21 2f                	and    %ebp,(%edi)
 4bd:	2f                   	das    
 4be:	21 03                	and    %eax,(%ebx)
 4c0:	0e                   	push   %cs
 4c1:	3c 59                	cmp    $0x59,%al
 4c3:	2f                   	das    
 4c4:	2f                   	das    
 4c5:	21 3f                	and    %edi,(%edi)
 4c7:	21 31                	and    %esi,(%ecx)
 4c9:	68 22 3d 22 3e       	push   $0x3e223d22
 4ce:	85 21                	test   %esp,(%ecx)
 4d0:	21 21                	and    %esp,(%ecx)
 4d2:	21 2f                	and    %ebp,(%edi)
 4d4:	21 3f                	and    %edi,(%edi)
 4d6:	21 21                	and    %esp,(%ecx)
 4d8:	21 2f                	and    %ebp,(%edi)
 4da:	21 3f                	and    %edi,(%edi)
 4dc:	21 21                	and    %esp,(%ecx)
 4de:	2f                   	das    
 4df:	21 3f                	and    %edi,(%edi)
 4e1:	21 2f                	and    %ebp,(%edi)
 4e3:	21 03                	and    %eax,(%ebx)
 4e5:	09 3c 22             	or     %edi,(%edx,%eiz,1)
 4e8:	68 5a 59 5a 5a       	push   $0x5a5a595a
 4ed:	02 03                	add    (%ebx),%al
 4ef:	00 01                	add    %al,(%ecx)
 4f1:	01 cd                	add    %ecx,%ebp
 4f3:	00 00                	add    %al,(%eax)
 4f5:	00 02                	add    %al,(%edx)
 4f7:	00 b3 00 00 00 01    	add    %dh,0x1000000(%ebx)
 4fd:	01 fb                	add    %edi,%ebx
 4ff:	0e                   	push   %cs
 500:	0d 00 01 01 01       	or     $0x1010100,%eax
 505:	01 00                	add    %eax,(%eax)
 507:	00 00                	add    %al,(%eax)
 509:	01 00                	add    %eax,(%eax)
 50b:	00 01                	add    %al,(%ecx)
 50d:	73 72                	jae    581 <F_IMMED+0x501>
 50f:	63 00                	arpl   %ax,(%eax)
 511:	2f                   	das    
 512:	75 73                	jne    587 <F_IMMED+0x507>
 514:	72 2f                	jb     545 <F_IMMED+0x4c5>
 516:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
 51d:	00 2f                	add    %ch,(%edi)
 51f:	75 73                	jne    594 <F_IMMED+0x514>
 521:	72 2f                	jb     552 <F_IMMED+0x4d2>
 523:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
 52a:	2f                   	das    
 52b:	53                   	push   %ebx
 52c:	44                   	inc    %esp
 52d:	4c                   	dec    %esp
 52e:	32 00                	xor    (%eax),%al
 530:	69 6e 63 00 00 6d 61 	imul   $0x616d0000,0x63(%esi),%ebp
 537:	69 6e 2e 63 00 01 00 	imul   $0x10063,0x2e(%esi),%ebp
 53e:	00 73 74             	add    %dh,0x74(%ebx)
 541:	64 69 6e 74 2e 68 00 	imul   $0x200682e,%fs:0x74(%esi),%ebp
 548:	02 
 549:	00 00                	add    %al,(%eax)
 54b:	53                   	push   %ebx
 54c:	44                   	inc    %esp
 54d:	4c                   	dec    %esp
 54e:	5f                   	pop    %edi
 54f:	73 74                	jae    5c5 <F_IMMED+0x545>
 551:	64 69 6e 63 2e 68 00 	imul   $0x300682e,%fs:0x63(%esi),%ebp
 558:	03 
 559:	00 00                	add    %al,(%eax)
 55b:	53                   	push   %ebx
 55c:	44                   	inc    %esp
 55d:	4c                   	dec    %esp
 55e:	5f                   	pop    %edi
 55f:	70 69                	jo     5ca <F_IMMED+0x54a>
 561:	78 65                	js     5c8 <F_IMMED+0x548>
 563:	6c                   	insb   (%dx),%es:(%edi)
 564:	73 2e                	jae    594 <F_IMMED+0x514>
 566:	68 00 03 00 00       	push   $0x300
 56b:	53                   	push   %ebx
 56c:	44                   	inc    %esp
 56d:	4c                   	dec    %esp
 56e:	5f                   	pop    %edi
 56f:	73 63                	jae    5d4 <F_IMMED+0x554>
 571:	61                   	popa   
 572:	6e                   	outsb  %ds:(%esi),(%dx)
 573:	63 6f 64             	arpl   %bp,0x64(%edi)
 576:	65 2e 68 00 03 00 00 	gs cs push $0x300
 57d:	53                   	push   %ebx
 57e:	44                   	inc    %esp
 57f:	4c                   	dec    %esp
 580:	5f                   	pop    %edi
 581:	6d                   	insl   (%dx),%es:(%edi)
 582:	65 73 73             	gs jae 5f8 <F_IMMED+0x578>
 585:	61                   	popa   
 586:	67 65 62 6f 78       	bound  %ebp,%gs:0x78(%bx)
 58b:	2e 68 00 03 00 00    	cs push $0x300
 591:	53                   	push   %ebx
 592:	44                   	inc    %esp
 593:	4c                   	dec    %esp
 594:	5f                   	pop    %edi
 595:	72 65                	jb     5fc <F_IMMED+0x57c>
 597:	6e                   	outsb  %ds:(%esi),(%dx)
 598:	64 65 72 2e          	fs gs jb 5ca <F_IMMED+0x54a>
 59c:	68 00 03 00 00       	push   $0x300
 5a1:	73 64                	jae    607 <F_IMMED+0x587>
 5a3:	6c                   	insb   (%dx),%es:(%edi)
 5a4:	77 72                	ja     618 <F_IMMED+0x598>
 5a6:	61                   	popa   
 5a7:	70 2e                	jo     5d7 <F_IMMED+0x557>
 5a9:	68 00 04 00 00       	push   $0x400
 5ae:	00 00                	add    %al,(%eax)
 5b0:	05 02 f5 94 04       	add    $0x494f502,%eax
 5b5:	08 03                	or     %al,(%ebx)
 5b7:	11 01                	adc    %eax,(%ecx)
 5b9:	3d 03 12 58 59       	cmp    $0x59581203,%eax
 5be:	02 02                	add    (%edx),%al
 5c0:	00 01                	add    %al,(%ecx)
 5c2:	01                   	.byte 0x1

Disassembly of section .debug_str:

00000000 <.debug_str>:
       0:	6c                   	insb   (%dx),%es:(%edi)
       1:	61                   	popa   
       2:	73 74                	jae    78 <sys_truncate+0x1c>
       4:	00 53 44             	add    %dl,0x44(%ebx)
       7:	4c                   	dec    %esp
       8:	5f                   	pop    %edi
       9:	53                   	push   %ebx
       a:	43                   	inc    %ebx
       b:	41                   	inc    %ecx
       c:	4e                   	dec    %esi
       d:	43                   	inc    %ebx
       e:	4f                   	dec    %edi
       f:	44                   	inc    %esp
      10:	45                   	inc    %ebp
      11:	5f                   	pop    %edi
      12:	43                   	inc    %ebx
      13:	41                   	inc    %ecx
      14:	50                   	push   %eax
      15:	53                   	push   %ebx
      16:	4c                   	dec    %esp
      17:	4f                   	dec    %edi
      18:	43                   	inc    %ebx
      19:	4b                   	dec    %ebx
      1a:	00 53 44             	add    %dl,0x44(%ebx)
      1d:	4c                   	dec    %esp
      1e:	5f                   	pop    %edi
      1f:	53                   	push   %ebx
      20:	43                   	inc    %ebx
      21:	41                   	inc    %ecx
      22:	4e                   	dec    %esi
      23:	43                   	inc    %ebx
      24:	4f                   	dec    %edi
      25:	44                   	inc    %esp
      26:	45                   	inc    %ebp
      27:	5f                   	pop    %edi
      28:	46                   	inc    %esi
      29:	32 30                	xor    (%eax),%dh
      2b:	00 53 44             	add    %dl,0x44(%ebx)
      2e:	4c                   	dec    %esp
      2f:	5f                   	pop    %edi
      30:	53                   	push   %ebx
      31:	43                   	inc    %ebx
      32:	41                   	inc    %ecx
      33:	4e                   	dec    %esi
      34:	43                   	inc    %ebx
      35:	4f                   	dec    %edi
      36:	44                   	inc    %esp
      37:	45                   	inc    %ebp
      38:	5f                   	pop    %edi
      39:	46                   	inc    %esi
      3a:	32 31                	xor    (%ecx),%dh
      3c:	00 53 44             	add    %dl,0x44(%ebx)
      3f:	4c                   	dec    %esp
      40:	5f                   	pop    %edi
      41:	53                   	push   %ebx
      42:	43                   	inc    %ebx
      43:	41                   	inc    %ecx
      44:	4e                   	dec    %esi
      45:	43                   	inc    %ebx
      46:	4f                   	dec    %edi
      47:	44                   	inc    %esp
      48:	45                   	inc    %ebp
      49:	5f                   	pop    %edi
      4a:	4b                   	dec    %ebx
      4b:	50                   	push   %eax
      4c:	5f                   	pop    %edi
      4d:	44                   	inc    %esp
      4e:	42                   	inc    %edx
      4f:	4c                   	dec    %esp
      50:	56                   	push   %esi
      51:	45                   	inc    %ebp
      52:	52                   	push   %edx
      53:	54                   	push   %esp
      54:	49                   	dec    %ecx
      55:	43                   	inc    %ebx
      56:	41                   	inc    %ecx
      57:	4c                   	dec    %esp
      58:	42                   	inc    %edx
      59:	41                   	inc    %ecx
      5a:	52                   	push   %edx
      5b:	00 53 44             	add    %dl,0x44(%ebx)
      5e:	4c                   	dec    %esp
      5f:	5f                   	pop    %edi
      60:	53                   	push   %ebx
      61:	43                   	inc    %ebx
      62:	41                   	inc    %ecx
      63:	4e                   	dec    %esi
      64:	43                   	inc    %ebx
      65:	4f                   	dec    %edi
      66:	44                   	inc    %esp
      67:	45                   	inc    %ebp
      68:	5f                   	pop    %edi
      69:	46                   	inc    %esi
      6a:	32 33                	xor    (%ebx),%dh
      6c:	00 53 44             	add    %dl,0x44(%ebx)
      6f:	4c                   	dec    %esp
      70:	5f                   	pop    %edi
      71:	53                   	push   %ebx
      72:	43                   	inc    %ebx
      73:	41                   	inc    %ecx
      74:	4e                   	dec    %esi
      75:	43                   	inc    %ebx
      76:	4f                   	dec    %edi
      77:	44                   	inc    %esp
      78:	45                   	inc    %ebp
      79:	5f                   	pop    %edi
      7a:	46                   	inc    %esi
      7b:	32 34 00             	xor    (%eax,%eax,1),%dh
      7e:	5f                   	pop    %edi
      7f:	73 68                	jae    e9 <F_IMMED+0x69>
      81:	6f                   	outsl  %ds:(%esi),(%dx)
      82:	72 74                	jb     f8 <F_IMMED+0x78>
      84:	62 75 66             	bound  %esi,0x66(%ebp)
      87:	00 53 44             	add    %dl,0x44(%ebx)
      8a:	4c                   	dec    %esp
      8b:	5f                   	pop    %edi
      8c:	54                   	push   %esp
      8d:	65 78 74             	gs js  104 <F_IMMED+0x84>
      90:	75 72                	jne    104 <F_IMMED+0x84>
      92:	65 00 5f 49          	add    %bl,%gs:0x49(%edi)
      96:	4f                   	dec    %edi
      97:	5f                   	pop    %edi
      98:	6c                   	insb   (%dx),%es:(%edi)
      99:	6f                   	outsl  %ds:(%esi),(%dx)
      9a:	63 6b 5f             	arpl   %bp,0x5f(%ebx)
      9d:	74 00                	je     9f <F_IMMED+0x1f>
      9f:	53                   	push   %ebx
      a0:	44                   	inc    %esp
      a1:	4c                   	dec    %esp
      a2:	5f                   	pop    %edi
      a3:	50                   	push   %eax
      a4:	41                   	inc    %ecx
      a5:	43                   	inc    %ebx
      a6:	4b                   	dec    %ebx
      a7:	45                   	inc    %ebp
      a8:	44                   	inc    %esp
      a9:	4f                   	dec    %edi
      aa:	52                   	push   %edx
      ab:	44                   	inc    %esp
      ac:	45                   	inc    %ebp
      ad:	52                   	push   %edx
      ae:	5f                   	pop    %edi
      af:	58                   	pop    %eax
      b0:	52                   	push   %edx
      b1:	47                   	inc    %edi
      b2:	42                   	inc    %edx
      b3:	00 53 44             	add    %dl,0x44(%ebx)
      b6:	4c                   	dec    %esp
      b7:	5f                   	pop    %edi
      b8:	53                   	push   %ebx
      b9:	43                   	inc    %ebx
      ba:	41                   	inc    %ecx
      bb:	4e                   	dec    %esi
      bc:	43                   	inc    %ebx
      bd:	4f                   	dec    %edi
      be:	44                   	inc    %esp
      bf:	45                   	inc    %ebp
      c0:	5f                   	pop    %edi
      c1:	46                   	inc    %esi
      c2:	32 32                	xor    (%edx),%dh
      c4:	00 53 44             	add    %dl,0x44(%ebx)
      c7:	4c                   	dec    %esp
      c8:	5f                   	pop    %edi
      c9:	53                   	push   %ebx
      ca:	43                   	inc    %ebx
      cb:	41                   	inc    %ecx
      cc:	4e                   	dec    %esi
      cd:	43                   	inc    %ebx
      ce:	4f                   	dec    %edi
      cf:	44                   	inc    %esp
      d0:	45                   	inc    %ebp
      d1:	5f                   	pop    %edi
      d2:	4b                   	dec    %ebx
      d3:	50                   	push   %eax
      d4:	5f                   	pop    %edi
      d5:	44                   	inc    %esp
      d6:	42                   	inc    %edx
      d7:	4c                   	dec    %esp
      d8:	41                   	inc    %ecx
      d9:	4d                   	dec    %ebp
      da:	50                   	push   %eax
      db:	45                   	inc    %ebp
      dc:	52                   	push   %edx
      dd:	53                   	push   %ebx
      de:	41                   	inc    %ecx
      df:	4e                   	dec    %esi
      e0:	44                   	inc    %esp
      e1:	00 53 44             	add    %dl,0x44(%ebx)
      e4:	4c                   	dec    %esp
      e5:	5f                   	pop    %edi
      e6:	53                   	push   %ebx
      e7:	43                   	inc    %ebx
      e8:	41                   	inc    %ecx
      e9:	4e                   	dec    %esi
      ea:	43                   	inc    %ebx
      eb:	4f                   	dec    %edi
      ec:	44                   	inc    %esp
      ed:	45                   	inc    %ebp
      ee:	5f                   	pop    %edi
      ef:	49                   	dec    %ecx
      f0:	4e                   	dec    %esi
      f1:	54                   	push   %esp
      f2:	45                   	inc    %ebp
      f3:	52                   	push   %edx
      f4:	4e                   	dec    %esi
      f5:	41                   	inc    %ecx
      f6:	54                   	push   %esp
      f7:	49                   	dec    %ecx
      f8:	4f                   	dec    %edi
      f9:	4e                   	dec    %esi
      fa:	41                   	inc    %ecx
      fb:	4c                   	dec    %esp
      fc:	33 00                	xor    (%eax),%eax
      fe:	53                   	push   %ebx
      ff:	44                   	inc    %esp
     100:	4c                   	dec    %esp
     101:	5f                   	pop    %edi
     102:	53                   	push   %ebx
     103:	43                   	inc    %ebx
     104:	41                   	inc    %ecx
     105:	4e                   	dec    %esi
     106:	43                   	inc    %ebx
     107:	4f                   	dec    %edi
     108:	44                   	inc    %esp
     109:	45                   	inc    %ebp
     10a:	5f                   	pop    %edi
     10b:	49                   	dec    %ecx
     10c:	4e                   	dec    %esi
     10d:	54                   	push   %esp
     10e:	45                   	inc    %ebp
     10f:	52                   	push   %edx
     110:	4e                   	dec    %esi
     111:	41                   	inc    %ecx
     112:	54                   	push   %esp
     113:	49                   	dec    %ecx
     114:	4f                   	dec    %edi
     115:	4e                   	dec    %esi
     116:	41                   	inc    %ecx
     117:	4c                   	dec    %esp
     118:	34 00                	xor    $0x0,%al
     11a:	73 74                	jae    190 <F_IMMED+0x110>
     11c:	64 65 72 72          	fs gs jb 192 <F_IMMED+0x112>
     120:	00 5f 49             	add    %bl,0x49(%edi)
     123:	4f                   	dec    %edi
     124:	5f                   	pop    %edi
     125:	62 75 66             	bound  %esi,0x66(%ebp)
     128:	5f                   	pop    %edi
     129:	65 6e                	outsb  %gs:(%esi),(%dx)
     12b:	64 00 53 44          	add    %dl,%fs:0x44(%ebx)
     12f:	4c                   	dec    %esp
     130:	5f                   	pop    %edi
     131:	50                   	push   %eax
     132:	41                   	inc    %ecx
     133:	43                   	inc    %ebx
     134:	4b                   	dec    %ebx
     135:	45                   	inc    %ebp
     136:	44                   	inc    %esp
     137:	4c                   	dec    %esp
     138:	41                   	inc    %ecx
     139:	59                   	pop    %ecx
     13a:	4f                   	dec    %edi
     13b:	55                   	push   %ebp
     13c:	54                   	push   %esp
     13d:	5f                   	pop    %edi
     13e:	38 38                	cmp    %bh,(%eax)
     140:	38 38                	cmp    %bh,(%eax)
     142:	00 53 44             	add    %dl,0x44(%ebx)
     145:	4c                   	dec    %esp
     146:	5f                   	pop    %edi
     147:	53                   	push   %ebx
     148:	43                   	inc    %ebx
     149:	41                   	inc    %ecx
     14a:	4e                   	dec    %esi
     14b:	43                   	inc    %ebx
     14c:	4f                   	dec    %edi
     14d:	44                   	inc    %esp
     14e:	45                   	inc    %ebp
     14f:	5f                   	pop    %edi
     150:	4b                   	dec    %ebx
     151:	50                   	push   %eax
     152:	5f                   	pop    %edi
     153:	53                   	push   %ebx
     154:	50                   	push   %eax
     155:	41                   	inc    %ecx
     156:	43                   	inc    %ebx
     157:	45                   	inc    %ebp
     158:	00 5f 49             	add    %bl,0x49(%edi)
     15b:	4f                   	dec    %edi
     15c:	5f                   	pop    %edi
     15d:	77 72                	ja     1d1 <F_IMMED+0x151>
     15f:	69 74 65 5f 65 6e 64 	imul   $0x646e65,0x5f(%ebp,%eiz,2),%esi
     166:	00 
     167:	53                   	push   %ebx
     168:	44                   	inc    %esp
     169:	4c                   	dec    %esp
     16a:	5f                   	pop    %edi
     16b:	57                   	push   %edi
     16c:	69 6e 64 6f 77 00 53 	imul   $0x5300776f,0x64(%esi),%ebp
     173:	44                   	inc    %esp
     174:	4c                   	dec    %esp
     175:	5f                   	pop    %edi
     176:	4d                   	dec    %ebp
     177:	45                   	inc    %ebp
     178:	53                   	push   %ebx
     179:	53                   	push   %ebx
     17a:	41                   	inc    %ecx
     17b:	47                   	inc    %edi
     17c:	45                   	inc    %ebp
     17d:	42                   	inc    %edx
     17e:	4f                   	dec    %edi
     17f:	58                   	pop    %eax
     180:	5f                   	pop    %edi
     181:	43                   	inc    %ebx
     182:	4f                   	dec    %edi
     183:	4c                   	dec    %esp
     184:	4f                   	dec    %edi
     185:	52                   	push   %edx
     186:	5f                   	pop    %edi
     187:	42                   	inc    %edx
     188:	55                   	push   %ebp
     189:	54                   	push   %esp
     18a:	54                   	push   %esp
     18b:	4f                   	dec    %edi
     18c:	4e                   	dec    %esi
     18d:	5f                   	pop    %edi
     18e:	42                   	inc    %edx
     18f:	41                   	inc    %ecx
     190:	43                   	inc    %ebx
     191:	4b                   	dec    %ebx
     192:	47                   	inc    %edi
     193:	52                   	push   %edx
     194:	4f                   	dec    %edi
     195:	55                   	push   %ebp
     196:	4e                   	dec    %esi
     197:	44                   	inc    %esp
     198:	00 5f 66             	add    %bl,0x66(%edi)
     19b:	6c                   	insb   (%dx),%es:(%edi)
     19c:	61                   	popa   
     19d:	67 73 00             	addr16 jae 1a0 <F_IMMED+0x120>
     1a0:	68 65 61 64 00       	push   $0x646165
     1a5:	53                   	push   %ebx
     1a6:	44                   	inc    %esp
     1a7:	4c                   	dec    %esp
     1a8:	5f                   	pop    %edi
     1a9:	53                   	push   %ebx
     1aa:	43                   	inc    %ebx
     1ab:	41                   	inc    %ecx
     1ac:	4e                   	dec    %esi
     1ad:	43                   	inc    %ebx
     1ae:	4f                   	dec    %edi
     1af:	44                   	inc    %esp
     1b0:	45                   	inc    %ebp
     1b1:	5f                   	pop    %edi
     1b2:	41                   	inc    %ecx
     1b3:	43                   	inc    %ebx
     1b4:	5f                   	pop    %edi
     1b5:	53                   	push   %ebx
     1b6:	54                   	push   %esp
     1b7:	4f                   	dec    %edi
     1b8:	50                   	push   %eax
     1b9:	00 53 44             	add    %dl,0x44(%ebx)
     1bc:	4c                   	dec    %esp
     1bd:	5f                   	pop    %edi
     1be:	53                   	push   %ebx
     1bf:	43                   	inc    %ebx
     1c0:	41                   	inc    %ecx
     1c1:	4e                   	dec    %esi
     1c2:	43                   	inc    %ebx
     1c3:	4f                   	dec    %edi
     1c4:	44                   	inc    %esp
     1c5:	45                   	inc    %ebp
     1c6:	5f                   	pop    %edi
     1c7:	42                   	inc    %edx
     1c8:	52                   	push   %edx
     1c9:	49                   	dec    %ecx
     1ca:	47                   	inc    %edi
     1cb:	48                   	dec    %eax
     1cc:	54                   	push   %esp
     1cd:	4e                   	dec    %esi
     1ce:	45                   	inc    %ebp
     1cf:	53                   	push   %ebx
     1d0:	53                   	push   %ebx
     1d1:	44                   	inc    %esp
     1d2:	4f                   	dec    %edi
     1d3:	57                   	push   %edi
     1d4:	4e                   	dec    %esi
     1d5:	00 5f 66             	add    %bl,0x66(%edi)
     1d8:	6c                   	insb   (%dx),%es:(%edi)
     1d9:	61                   	popa   
     1da:	67 73 32             	addr16 jae 20f <F_IMMED+0x18f>
     1dd:	00 53 44             	add    %dl,0x44(%ebx)
     1e0:	4c                   	dec    %esp
     1e1:	5f                   	pop    %edi
     1e2:	4d                   	dec    %ebp
     1e3:	45                   	inc    %ebp
     1e4:	53                   	push   %ebx
     1e5:	53                   	push   %ebx
     1e6:	41                   	inc    %ecx
     1e7:	47                   	inc    %edi
     1e8:	45                   	inc    %ebp
     1e9:	42                   	inc    %edx
     1ea:	4f                   	dec    %edi
     1eb:	58                   	pop    %eax
     1ec:	5f                   	pop    %edi
     1ed:	43                   	inc    %ebx
     1ee:	4f                   	dec    %edi
     1ef:	4c                   	dec    %esp
     1f0:	4f                   	dec    %edi
     1f1:	52                   	push   %edx
     1f2:	5f                   	pop    %edi
     1f3:	42                   	inc    %edx
     1f4:	55                   	push   %ebp
     1f5:	54                   	push   %esp
     1f6:	54                   	push   %esp
     1f7:	4f                   	dec    %edi
     1f8:	4e                   	dec    %esi
     1f9:	5f                   	pop    %edi
     1fa:	42                   	inc    %edx
     1fb:	4f                   	dec    %edi
     1fc:	52                   	push   %edx
     1fd:	44                   	inc    %esp
     1fe:	45                   	inc    %ebp
     1ff:	52                   	push   %edx
     200:	00 5f 6f             	add    %bl,0x6f(%edi)
     203:	6c                   	insb   (%dx),%es:(%edi)
     204:	64 5f                	fs pop %edi
     206:	6f                   	outsl  %ds:(%esi),(%dx)
     207:	66 66 73 65          	data16 data16 jae 270 <F_IMMED+0x1f0>
     20b:	74 00                	je     20d <F_IMMED+0x18d>
     20d:	53                   	push   %ebx
     20e:	44                   	inc    %esp
     20f:	4c                   	dec    %esp
     210:	5f                   	pop    %edi
     211:	53                   	push   %ebx
     212:	43                   	inc    %ebx
     213:	41                   	inc    %ecx
     214:	4e                   	dec    %esi
     215:	43                   	inc    %ebx
     216:	4f                   	dec    %edi
     217:	44                   	inc    %esp
     218:	45                   	inc    %ebp
     219:	5f                   	pop    %edi
     21a:	50                   	push   %eax
     21b:	4f                   	dec    %edi
     21c:	57                   	push   %edi
     21d:	45                   	inc    %ebp
     21e:	52                   	push   %edx
     21f:	00 72 65             	add    %dh,0x65(%edx)
     222:	6e                   	outsb  %ds:(%esi),(%dx)
     223:	64 65 72 65          	fs gs jb 28c <F_IMMED+0x20c>
     227:	72 00                	jb     229 <F_IMMED+0x1a9>
     229:	53                   	push   %ebx
     22a:	44                   	inc    %esp
     22b:	4c                   	dec    %esp
     22c:	5f                   	pop    %edi
     22d:	53                   	push   %ebx
     22e:	43                   	inc    %ebx
     22f:	41                   	inc    %ecx
     230:	4e                   	dec    %esi
     231:	43                   	inc    %ebx
     232:	4f                   	dec    %edi
     233:	44                   	inc    %esp
     234:	45                   	inc    %ebp
     235:	5f                   	pop    %edi
     236:	43                   	inc    %ebx
     237:	4c                   	dec    %esp
     238:	45                   	inc    %ebp
     239:	41                   	inc    %ecx
     23a:	52                   	push   %edx
     23b:	00 73 68             	add    %dh,0x68(%ebx)
     23e:	6f                   	outsl  %ds:(%esi),(%dx)
     23f:	72 74                	jb     2b5 <F_IMMED+0x235>
     241:	20 69 6e             	and    %ch,0x6e(%ecx)
     244:	74 00                	je     246 <F_IMMED+0x1c6>
     246:	53                   	push   %ebx
     247:	44                   	inc    %esp
     248:	4c                   	dec    %esp
     249:	5f                   	pop    %edi
     24a:	53                   	push   %ebx
     24b:	43                   	inc    %ebx
     24c:	41                   	inc    %ecx
     24d:	4e                   	dec    %esi
     24e:	43                   	inc    %ebx
     24f:	4f                   	dec    %edi
     250:	44                   	inc    %esp
     251:	45                   	inc    %ebp
     252:	5f                   	pop    %edi
     253:	45                   	inc    %ebp
     254:	53                   	push   %ebx
     255:	43                   	inc    %ebx
     256:	41                   	inc    %ecx
     257:	50                   	push   %eax
     258:	45                   	inc    %ebp
     259:	00 53 44             	add    %dl,0x44(%ebx)
     25c:	4c                   	dec    %esp
     25d:	5f                   	pop    %edi
     25e:	53                   	push   %ebx
     25f:	43                   	inc    %ebx
     260:	41                   	inc    %ecx
     261:	4e                   	dec    %esi
     262:	43                   	inc    %ebx
     263:	4f                   	dec    %edi
     264:	44                   	inc    %esp
     265:	45                   	inc    %ebp
     266:	5f                   	pop    %edi
     267:	44                   	inc    %esp
     268:	49                   	dec    %ecx
     269:	53                   	push   %ebx
     26a:	50                   	push   %eax
     26b:	4c                   	dec    %esp
     26c:	41                   	inc    %ecx
     26d:	59                   	pop    %ecx
     26e:	53                   	push   %ebx
     26f:	57                   	push   %edi
     270:	49                   	dec    %ecx
     271:	54                   	push   %esp
     272:	43                   	inc    %ebx
     273:	48                   	dec    %eax
     274:	00 53 44             	add    %dl,0x44(%ebx)
     277:	4c                   	dec    %esp
     278:	5f                   	pop    %edi
     279:	53                   	push   %ebx
     27a:	43                   	inc    %ebx
     27b:	41                   	inc    %ecx
     27c:	4e                   	dec    %esi
     27d:	43                   	inc    %ebx
     27e:	4f                   	dec    %edi
     27f:	44                   	inc    %esp
     280:	45                   	inc    %ebp
     281:	5f                   	pop    %edi
     282:	4b                   	dec    %ebx
     283:	50                   	push   %eax
     284:	5f                   	pop    %edi
     285:	4d                   	dec    %ebp
     286:	45                   	inc    %ebp
     287:	4d                   	dec    %ebp
     288:	43                   	inc    %ebx
     289:	4c                   	dec    %esp
     28a:	45                   	inc    %ebp
     28b:	41                   	inc    %ecx
     28c:	52                   	push   %edx
     28d:	00 53 44             	add    %dl,0x44(%ebx)
     290:	4c                   	dec    %esp
     291:	5f                   	pop    %edi
     292:	53                   	push   %ebx
     293:	43                   	inc    %ebx
     294:	41                   	inc    %ecx
     295:	4e                   	dec    %esi
     296:	43                   	inc    %ebx
     297:	4f                   	dec    %edi
     298:	44                   	inc    %esp
     299:	45                   	inc    %ebp
     29a:	5f                   	pop    %edi
     29b:	55                   	push   %ebp
     29c:	4e                   	dec    %esi
     29d:	44                   	inc    %esp
     29e:	4f                   	dec    %edi
     29f:	00 53 44             	add    %dl,0x44(%ebx)
     2a2:	4c                   	dec    %esp
     2a3:	5f                   	pop    %edi
     2a4:	53                   	push   %ebx
     2a5:	43                   	inc    %ebx
     2a6:	41                   	inc    %ecx
     2a7:	4e                   	dec    %esi
     2a8:	43                   	inc    %ebx
     2a9:	4f                   	dec    %edi
     2aa:	44                   	inc    %esp
     2ab:	45                   	inc    %ebp
     2ac:	5f                   	pop    %edi
     2ad:	4b                   	dec    %ebx
     2ae:	50                   	push   %eax
     2af:	5f                   	pop    %edi
     2b0:	50                   	push   %eax
     2b1:	4c                   	dec    %esp
     2b2:	55                   	push   %ebp
     2b3:	53                   	push   %ebx
     2b4:	00 53 44             	add    %dl,0x44(%ebx)
     2b7:	4c                   	dec    %esp
     2b8:	5f                   	pop    %edi
     2b9:	53                   	push   %ebx
     2ba:	43                   	inc    %ebx
     2bb:	41                   	inc    %ecx
     2bc:	4e                   	dec    %esi
     2bd:	43                   	inc    %ebx
     2be:	4f                   	dec    %edi
     2bf:	44                   	inc    %esp
     2c0:	45                   	inc    %ebp
     2c1:	5f                   	pop    %edi
     2c2:	50                   	push   %eax
     2c3:	41                   	inc    %ecx
     2c4:	55                   	push   %ebp
     2c5:	53                   	push   %ebx
     2c6:	45                   	inc    %ebp
     2c7:	00 53 44             	add    %dl,0x44(%ebx)
     2ca:	4c                   	dec    %esp
     2cb:	5f                   	pop    %edi
     2cc:	53                   	push   %ebx
     2cd:	43                   	inc    %ebx
     2ce:	41                   	inc    %ecx
     2cf:	4e                   	dec    %esi
     2d0:	43                   	inc    %ebx
     2d1:	4f                   	dec    %edi
     2d2:	44                   	inc    %esp
     2d3:	45                   	inc    %ebp
     2d4:	5f                   	pop    %edi
     2d5:	52                   	push   %edx
     2d6:	43                   	inc    %ebx
     2d7:	54                   	push   %esp
     2d8:	52                   	push   %edx
     2d9:	4c                   	dec    %esp
     2da:	00 53 44             	add    %dl,0x44(%ebx)
     2dd:	4c                   	dec    %esp
     2de:	5f                   	pop    %edi
     2df:	53                   	push   %ebx
     2e0:	43                   	inc    %ebx
     2e1:	41                   	inc    %ecx
     2e2:	4e                   	dec    %esi
     2e3:	43                   	inc    %ebx
     2e4:	4f                   	dec    %edi
     2e5:	44                   	inc    %esp
     2e6:	45                   	inc    %ebp
     2e7:	5f                   	pop    %edi
     2e8:	46                   	inc    %esi
     2e9:	49                   	dec    %ecx
     2ea:	4e                   	dec    %esi
     2eb:	44                   	inc    %esp
     2ec:	00 53 44             	add    %dl,0x44(%ebx)
     2ef:	4c                   	dec    %esp
     2f0:	5f                   	pop    %edi
     2f1:	50                   	push   %eax
     2f2:	41                   	inc    %ecx
     2f3:	43                   	inc    %ebx
     2f4:	4b                   	dec    %ebx
     2f5:	45                   	inc    %ebp
     2f6:	44                   	inc    %esp
     2f7:	4c                   	dec    %esp
     2f8:	41                   	inc    %ecx
     2f9:	59                   	pop    %ecx
     2fa:	4f                   	dec    %edi
     2fb:	55                   	push   %ebp
     2fc:	54                   	push   %esp
     2fd:	5f                   	pop    %edi
     2fe:	32 31                	xor    (%ecx),%dh
     300:	30 31                	xor    %dh,(%ecx)
     302:	30 31                	xor    %dh,(%ecx)
     304:	30 00                	xor    %al,(%eax)
     306:	53                   	push   %ebx
     307:	44                   	inc    %esp
     308:	4c                   	dec    %esp
     309:	5f                   	pop    %edi
     30a:	53                   	push   %ebx
     30b:	43                   	inc    %ebx
     30c:	41                   	inc    %ecx
     30d:	4e                   	dec    %esi
     30e:	43                   	inc    %ebx
     30f:	4f                   	dec    %edi
     310:	44                   	inc    %esp
     311:	45                   	inc    %ebp
     312:	5f                   	pop    %edi
     313:	41                   	inc    %ecx
     314:	50                   	push   %eax
     315:	50                   	push   %eax
     316:	32 00                	xor    (%eax),%al
     318:	53                   	push   %ebx
     319:	44                   	inc    %esp
     31a:	4c                   	dec    %esp
     31b:	5f                   	pop    %edi
     31c:	53                   	push   %ebx
     31d:	43                   	inc    %ebx
     31e:	41                   	inc    %ecx
     31f:	4e                   	dec    %esi
     320:	43                   	inc    %ebx
     321:	4f                   	dec    %edi
     322:	44                   	inc    %esp
     323:	45                   	inc    %ebp
     324:	5f                   	pop    %edi
     325:	41                   	inc    %ecx
     326:	43                   	inc    %ebx
     327:	5f                   	pop    %edi
     328:	52                   	push   %edx
     329:	45                   	inc    %ebp
     32a:	46                   	inc    %esi
     32b:	52                   	push   %edx
     32c:	45                   	inc    %ebp
     32d:	53                   	push   %ebx
     32e:	48                   	dec    %eax
     32f:	00 53 44             	add    %dl,0x44(%ebx)
     332:	4c                   	dec    %esp
     333:	5f                   	pop    %edi
     334:	53                   	push   %ebx
     335:	43                   	inc    %ebx
     336:	41                   	inc    %ecx
     337:	4e                   	dec    %esi
     338:	43                   	inc    %ebx
     339:	4f                   	dec    %edi
     33a:	44                   	inc    %esp
     33b:	45                   	inc    %ebp
     33c:	5f                   	pop    %edi
     33d:	4b                   	dec    %ebx
     33e:	50                   	push   %eax
     33f:	5f                   	pop    %edi
     340:	4d                   	dec    %ebp
     341:	45                   	inc    %ebp
     342:	4d                   	dec    %ebp
     343:	53                   	push   %ebx
     344:	55                   	push   %ebp
     345:	42                   	inc    %edx
     346:	54                   	push   %esp
     347:	52                   	push   %edx
     348:	41                   	inc    %ecx
     349:	43                   	inc    %ebx
     34a:	54                   	push   %esp
     34b:	00 53 44             	add    %dl,0x44(%ebx)
     34e:	4c                   	dec    %esp
     34f:	5f                   	pop    %edi
     350:	53                   	push   %ebx
     351:	43                   	inc    %ebx
     352:	41                   	inc    %ecx
     353:	4e                   	dec    %esi
     354:	43                   	inc    %ebx
     355:	4f                   	dec    %edi
     356:	44                   	inc    %esp
     357:	45                   	inc    %ebp
     358:	5f                   	pop    %edi
     359:	4d                   	dec    %ebp
     35a:	49                   	dec    %ecx
     35b:	4e                   	dec    %esi
     35c:	55                   	push   %ebp
     35d:	53                   	push   %ebx
     35e:	00 53 44             	add    %dl,0x44(%ebx)
     361:	4c                   	dec    %esp
     362:	5f                   	pop    %edi
     363:	53                   	push   %ebx
     364:	43                   	inc    %ebx
     365:	41                   	inc    %ecx
     366:	4e                   	dec    %esi
     367:	43                   	inc    %ebx
     368:	4f                   	dec    %edi
     369:	44                   	inc    %esp
     36a:	45                   	inc    %ebp
     36b:	5f                   	pop    %edi
     36c:	4b                   	dec    %ebx
     36d:	42                   	inc    %edx
     36e:	44                   	inc    %esp
     36f:	49                   	dec    %ecx
     370:	4c                   	dec    %esp
     371:	4c                   	dec    %esp
     372:	55                   	push   %ebp
     373:	4d                   	dec    %ebp
     374:	44                   	inc    %esp
     375:	4f                   	dec    %edi
     376:	57                   	push   %edi
     377:	4e                   	dec    %esi
     378:	00 53 44             	add    %dl,0x44(%ebx)
     37b:	4c                   	dec    %esp
     37c:	5f                   	pop    %edi
     37d:	53                   	push   %ebx
     37e:	43                   	inc    %ebx
     37f:	41                   	inc    %ecx
     380:	4e                   	dec    %esi
     381:	43                   	inc    %ebx
     382:	4f                   	dec    %edi
     383:	44                   	inc    %esp
     384:	45                   	inc    %ebp
     385:	5f                   	pop    %edi
     386:	48                   	dec    %eax
     387:	45                   	inc    %ebp
     388:	4c                   	dec    %esp
     389:	50                   	push   %eax
     38a:	00 53 44             	add    %dl,0x44(%ebx)
     38d:	4c                   	dec    %esp
     38e:	5f                   	pop    %edi
     38f:	53                   	push   %ebx
     390:	43                   	inc    %ebx
     391:	41                   	inc    %ecx
     392:	4e                   	dec    %esi
     393:	43                   	inc    %ebx
     394:	4f                   	dec    %edi
     395:	44                   	inc    %esp
     396:	45                   	inc    %ebp
     397:	5f                   	pop    %edi
     398:	4b                   	dec    %ebx
     399:	50                   	push   %eax
     39a:	5f                   	pop    %edi
     39b:	30 30                	xor    %dh,(%eax)
     39d:	30 00                	xor    %al,(%eax)
     39f:	55                   	push   %ebp
     3a0:	69 6e 74 33 32 00 53 	imul   $0x53003233,0x74(%esi),%ebp
     3a7:	44                   	inc    %esp
     3a8:	4c                   	dec    %esp
     3a9:	5f                   	pop    %edi
     3aa:	53                   	push   %ebx
     3ab:	43                   	inc    %ebx
     3ac:	41                   	inc    %ecx
     3ad:	4e                   	dec    %esi
     3ae:	43                   	inc    %ebx
     3af:	4f                   	dec    %edi
     3b0:	44                   	inc    %esp
     3b1:	45                   	inc    %ebp
     3b2:	5f                   	pop    %edi
     3b3:	43                   	inc    %ebx
     3b4:	4f                   	dec    %edi
     3b5:	4d                   	dec    %ebp
     3b6:	4d                   	dec    %ebp
     3b7:	41                   	inc    %ecx
     3b8:	00 75 69             	add    %dh,0x69(%ebp)
     3bb:	6e                   	outsb  %ds:(%esi),(%dx)
     3bc:	74 33                	je     3f1 <F_IMMED+0x371>
     3be:	32 5f 74             	xor    0x74(%edi),%bl
     3c1:	00 64 65 6c          	add    %ah,0x6c(%ebp,%eiz,2)
     3c5:	61                   	popa   
     3c6:	79 00                	jns    3c8 <F_IMMED+0x348>
     3c8:	53                   	push   %ebx
     3c9:	44                   	inc    %esp
     3ca:	4c                   	dec    %esp
     3cb:	5f                   	pop    %edi
     3cc:	53                   	push   %ebx
     3cd:	43                   	inc    %ebx
     3ce:	41                   	inc    %ecx
     3cf:	4e                   	dec    %esi
     3d0:	43                   	inc    %ebx
     3d1:	4f                   	dec    %edi
     3d2:	44                   	inc    %esp
     3d3:	45                   	inc    %ebp
     3d4:	5f                   	pop    %edi
     3d5:	53                   	push   %ebx
     3d6:	4c                   	dec    %esp
     3d7:	45                   	inc    %ebp
     3d8:	45                   	inc    %ebp
     3d9:	50                   	push   %eax
     3da:	00 53 44             	add    %dl,0x44(%ebx)
     3dd:	4c                   	dec    %esp
     3de:	5f                   	pop    %edi
     3df:	53                   	push   %ebx
     3e0:	43                   	inc    %ebx
     3e1:	41                   	inc    %ecx
     3e2:	4e                   	dec    %esi
     3e3:	43                   	inc    %ebx
     3e4:	4f                   	dec    %edi
     3e5:	44                   	inc    %esp
     3e6:	45                   	inc    %ebp
     3e7:	5f                   	pop    %edi
     3e8:	4b                   	dec    %ebx
     3e9:	50                   	push   %eax
     3ea:	5f                   	pop    %edi
     3eb:	30 30                	xor    %dh,(%eax)
     3ed:	00 55 69             	add    %dl,0x69(%ebp)
     3f0:	6e                   	outsb  %ds:(%esi),(%dx)
     3f1:	74 38                	je     42b <F_IMMED+0x3ab>
     3f3:	00 5f 49             	add    %bl,0x49(%edi)
     3f6:	4f                   	dec    %edi
     3f7:	5f                   	pop    %edi
     3f8:	73 61                	jae    45b <F_IMMED+0x3db>
     3fa:	76 65                	jbe    461 <F_IMMED+0x3e1>
     3fc:	5f                   	pop    %edi
     3fd:	65 6e                	outsb  %gs:(%esi),(%dx)
     3ff:	64 00 53 44          	add    %dl,%fs:0x44(%ebx)
     403:	4c                   	dec    %esp
     404:	5f                   	pop    %edi
     405:	53                   	push   %ebx
     406:	43                   	inc    %ebx
     407:	41                   	inc    %ecx
     408:	4e                   	dec    %esi
     409:	43                   	inc    %ebx
     40a:	4f                   	dec    %edi
     40b:	44                   	inc    %esp
     40c:	45                   	inc    %ebp
     40d:	5f                   	pop    %edi
     40e:	4b                   	dec    %ebx
     40f:	50                   	push   %eax
     410:	5f                   	pop    %edi
     411:	58                   	pop    %eax
     412:	4f                   	dec    %edi
     413:	52                   	push   %edx
     414:	00 53 44             	add    %dl,0x44(%ebx)
     417:	4c                   	dec    %esp
     418:	5f                   	pop    %edi
     419:	53                   	push   %ebx
     41a:	43                   	inc    %ebx
     41b:	41                   	inc    %ecx
     41c:	4e                   	dec    %esi
     41d:	43                   	inc    %ebx
     41e:	4f                   	dec    %edi
     41f:	44                   	inc    %esp
     420:	45                   	inc    %ebp
     421:	5f                   	pop    %edi
     422:	45                   	inc    %ebp
     423:	4a                   	dec    %edx
     424:	45                   	inc    %ebp
     425:	43                   	inc    %ebx
     426:	54                   	push   %esp
     427:	00 53 44             	add    %dl,0x44(%ebx)
     42a:	4c                   	dec    %esp
     42b:	5f                   	pop    %edi
     42c:	53                   	push   %ebx
     42d:	43                   	inc    %ebx
     42e:	41                   	inc    %ecx
     42f:	4e                   	dec    %esi
     430:	43                   	inc    %ebx
     431:	4f                   	dec    %edi
     432:	44                   	inc    %esp
     433:	45                   	inc    %ebp
     434:	5f                   	pop    %edi
     435:	4f                   	dec    %edi
     436:	50                   	push   %eax
     437:	45                   	inc    %ebp
     438:	52                   	push   %edx
     439:	00 53 44             	add    %dl,0x44(%ebx)
     43c:	4c                   	dec    %esp
     43d:	5f                   	pop    %edi
     43e:	53                   	push   %ebx
     43f:	43                   	inc    %ebx
     440:	41                   	inc    %ecx
     441:	4e                   	dec    %esi
     442:	43                   	inc    %ebx
     443:	4f                   	dec    %edi
     444:	44                   	inc    %esp
     445:	45                   	inc    %ebp
     446:	5f                   	pop    %edi
     447:	4b                   	dec    %ebx
     448:	50                   	push   %eax
     449:	5f                   	pop    %edi
     44a:	45                   	inc    %ebp
     44b:	51                   	push   %ecx
     44c:	55                   	push   %ebp
     44d:	41                   	inc    %ecx
     44e:	4c                   	dec    %esp
     44f:	53                   	push   %ebx
     450:	41                   	inc    %ecx
     451:	53                   	push   %ebx
     452:	34 30                	xor    $0x30,%al
     454:	30 00                	xor    %al,(%eax)
     456:	53                   	push   %ebx
     457:	44                   	inc    %esp
     458:	4c                   	dec    %esp
     459:	5f                   	pop    %edi
     45a:	53                   	push   %ebx
     45b:	43                   	inc    %ebx
     45c:	41                   	inc    %ecx
     45d:	4e                   	dec    %esi
     45e:	43                   	inc    %ebx
     45f:	4f                   	dec    %edi
     460:	44                   	inc    %esp
     461:	45                   	inc    %ebp
     462:	5f                   	pop    %edi
     463:	4b                   	dec    %ebx
     464:	50                   	push   %eax
     465:	5f                   	pop    %edi
     466:	42                   	inc    %edx
     467:	49                   	dec    %ecx
     468:	4e                   	dec    %esi
     469:	41                   	inc    %ecx
     46a:	52                   	push   %edx
     46b:	59                   	pop    %ecx
     46c:	00 53 44             	add    %dl,0x44(%ebx)
     46f:	4c                   	dec    %esp
     470:	5f                   	pop    %edi
     471:	53                   	push   %ebx
     472:	43                   	inc    %ebx
     473:	41                   	inc    %ecx
     474:	4e                   	dec    %esi
     475:	43                   	inc    %ebx
     476:	4f                   	dec    %edi
     477:	44                   	inc    %esp
     478:	45                   	inc    %ebp
     479:	5f                   	pop    %edi
     47a:	4b                   	dec    %ebx
     47b:	50                   	push   %eax
     47c:	5f                   	pop    %edi
     47d:	43                   	inc    %ebx
     47e:	4f                   	dec    %edi
     47f:	4c                   	dec    %esp
     480:	4f                   	dec    %edi
     481:	4e                   	dec    %esi
     482:	00 53 44             	add    %dl,0x44(%ebx)
     485:	4c                   	dec    %esp
     486:	5f                   	pop    %edi
     487:	53                   	push   %ebx
     488:	43                   	inc    %ebx
     489:	41                   	inc    %ecx
     48a:	4e                   	dec    %esi
     48b:	43                   	inc    %ebx
     48c:	4f                   	dec    %edi
     48d:	44                   	inc    %esp
     48e:	45                   	inc    %ebp
     48f:	5f                   	pop    %edi
     490:	4b                   	dec    %ebx
     491:	50                   	push   %eax
     492:	5f                   	pop    %edi
     493:	41                   	inc    %ecx
     494:	54                   	push   %esp
     495:	00 53 44             	add    %dl,0x44(%ebx)
     498:	4c                   	dec    %esp
     499:	5f                   	pop    %edi
     49a:	53                   	push   %ebx
     49b:	43                   	inc    %ebx
     49c:	41                   	inc    %ecx
     49d:	4e                   	dec    %esi
     49e:	43                   	inc    %ebx
     49f:	4f                   	dec    %edi
     4a0:	44                   	inc    %esp
     4a1:	45                   	inc    %ebp
     4a2:	5f                   	pop    %edi
     4a3:	4b                   	dec    %ebx
     4a4:	50                   	push   %eax
     4a5:	5f                   	pop    %edi
     4a6:	44                   	inc    %esp
     4a7:	45                   	inc    %ebp
     4a8:	43                   	inc    %ebx
     4a9:	49                   	dec    %ecx
     4aa:	4d                   	dec    %ebp
     4ab:	41                   	inc    %ecx
     4ac:	4c                   	dec    %esp
     4ad:	00 53 44             	add    %dl,0x44(%ebx)
     4b0:	4c                   	dec    %esp
     4b1:	5f                   	pop    %edi
     4b2:	53                   	push   %ebx
     4b3:	43                   	inc    %ebx
     4b4:	41                   	inc    %ecx
     4b5:	4e                   	dec    %esi
     4b6:	43                   	inc    %ebx
     4b7:	4f                   	dec    %edi
     4b8:	44                   	inc    %esp
     4b9:	45                   	inc    %ebp
     4ba:	5f                   	pop    %edi
     4bb:	41                   	inc    %ecx
     4bc:	55                   	push   %ebp
     4bd:	44                   	inc    %esp
     4be:	49                   	dec    %ecx
     4bf:	4f                   	dec    %edi
     4c0:	4e                   	dec    %esi
     4c1:	45                   	inc    %ebp
     4c2:	58                   	pop    %eax
     4c3:	54                   	push   %esp
     4c4:	00 6c 6f 6e          	add    %ch,0x6e(%edi,%ebp,2)
     4c8:	67 20 6c 6f          	and    %ch,0x6f(%si)
     4cc:	6e                   	outsb  %ds:(%esi),(%dx)
     4cd:	67 20 75 6e          	and    %dh,0x6e(%di)
     4d1:	73 69                	jae    53c <F_IMMED+0x4bc>
     4d3:	67 6e                	outsb  %ds:(%si),(%dx)
     4d5:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%ecx)
     4da:	74 00                	je     4dc <F_IMMED+0x45c>
     4dc:	53                   	push   %ebx
     4dd:	44                   	inc    %esp
     4de:	4c                   	dec    %esp
     4df:	5f                   	pop    %edi
     4e0:	53                   	push   %ebx
     4e1:	43                   	inc    %ebx
     4e2:	41                   	inc    %ecx
     4e3:	4e                   	dec    %esi
     4e4:	43                   	inc    %ebx
     4e5:	4f                   	dec    %edi
     4e6:	44                   	inc    %esp
     4e7:	45                   	inc    %ebp
     4e8:	5f                   	pop    %edi
     4e9:	4c                   	dec    %esp
     4ea:	43                   	inc    %ebx
     4eb:	54                   	push   %esp
     4ec:	52                   	push   %edx
     4ed:	4c                   	dec    %esp
     4ee:	00 53 44             	add    %dl,0x44(%ebx)
     4f1:	4c                   	dec    %esp
     4f2:	5f                   	pop    %edi
     4f3:	53                   	push   %ebx
     4f4:	43                   	inc    %ebx
     4f5:	41                   	inc    %ecx
     4f6:	4e                   	dec    %esi
     4f7:	43                   	inc    %ebx
     4f8:	4f                   	dec    %edi
     4f9:	44                   	inc    %esp
     4fa:	45                   	inc    %ebp
     4fb:	5f                   	pop    %edi
     4fc:	4b                   	dec    %ebx
     4fd:	50                   	push   %eax
     4fe:	5f                   	pop    %edi
     4ff:	4d                   	dec    %ebp
     500:	45                   	inc    %ebp
     501:	4d                   	dec    %ebp
     502:	53                   	push   %ebx
     503:	54                   	push   %esp
     504:	4f                   	dec    %edi
     505:	52                   	push   %edx
     506:	45                   	inc    %ebp
     507:	00 53 44             	add    %dl,0x44(%ebx)
     50a:	4c                   	dec    %esp
     50b:	5f                   	pop    %edi
     50c:	53                   	push   %ebx
     50d:	43                   	inc    %ebx
     50e:	41                   	inc    %ecx
     50f:	4e                   	dec    %esi
     510:	43                   	inc    %ebx
     511:	4f                   	dec    %edi
     512:	44                   	inc    %esp
     513:	45                   	inc    %ebp
     514:	5f                   	pop    %edi
     515:	43                   	inc    %ebx
     516:	55                   	push   %ebp
     517:	52                   	push   %edx
     518:	52                   	push   %edx
     519:	45                   	inc    %ebp
     51a:	4e                   	dec    %esi
     51b:	43                   	inc    %ebx
     51c:	59                   	pop    %ecx
     51d:	55                   	push   %ebp
     51e:	4e                   	dec    %esi
     51f:	49                   	dec    %ecx
     520:	54                   	push   %esp
     521:	00 53 44             	add    %dl,0x44(%ebx)
     524:	4c                   	dec    %esp
     525:	5f                   	pop    %edi
     526:	53                   	push   %ebx
     527:	43                   	inc    %ebx
     528:	41                   	inc    %ecx
     529:	4e                   	dec    %esi
     52a:	43                   	inc    %ebx
     52b:	4f                   	dec    %edi
     52c:	44                   	inc    %esp
     52d:	45                   	inc    %ebp
     52e:	5f                   	pop    %edi
     52f:	43                   	inc    %ebx
     530:	41                   	inc    %ecx
     531:	4c                   	dec    %esp
     532:	43                   	inc    %ebx
     533:	55                   	push   %ebp
     534:	4c                   	dec    %esp
     535:	41                   	inc    %ecx
     536:	54                   	push   %esp
     537:	4f                   	dec    %edi
     538:	52                   	push   %edx
     539:	00 53 44             	add    %dl,0x44(%ebx)
     53c:	4c                   	dec    %esp
     53d:	5f                   	pop    %edi
     53e:	53                   	push   %ebx
     53f:	43                   	inc    %ebx
     540:	41                   	inc    %ecx
     541:	4e                   	dec    %esi
     542:	43                   	inc    %ebx
     543:	4f                   	dec    %edi
     544:	44                   	inc    %esp
     545:	45                   	inc    %ebp
     546:	5f                   	pop    %edi
     547:	4b                   	dec    %ebx
     548:	50                   	push   %eax
     549:	5f                   	pop    %edi
     54a:	4c                   	dec    %esp
     54b:	45                   	inc    %ebp
     54c:	46                   	inc    %esi
     54d:	54                   	push   %esp
     54e:	50                   	push   %eax
     54f:	41                   	inc    %ecx
     550:	52                   	push   %edx
     551:	45                   	inc    %ebp
     552:	4e                   	dec    %esi
     553:	00 53 44             	add    %dl,0x44(%ebx)
     556:	4c                   	dec    %esp
     557:	5f                   	pop    %edi
     558:	53                   	push   %ebx
     559:	43                   	inc    %ebx
     55a:	41                   	inc    %ecx
     55b:	4e                   	dec    %esi
     55c:	43                   	inc    %ebx
     55d:	4f                   	dec    %edi
     55e:	44                   	inc    %esp
     55f:	45                   	inc    %ebp
     560:	5f                   	pop    %edi
     561:	41                   	inc    %ecx
     562:	47                   	inc    %edi
     563:	41                   	inc    %ecx
     564:	49                   	dec    %ecx
     565:	4e                   	dec    %esi
     566:	00 6c 6f 61          	add    %ch,0x61(%edi,%ebp,2)
     56a:	64 5f                	fs pop %edi
     56c:	73 70                	jae    5de <F_IMMED+0x55e>
     56e:	72 69                	jb     5d9 <F_IMMED+0x559>
     570:	74 65                	je     5d7 <F_IMMED+0x557>
     572:	00 5f 49             	add    %bl,0x49(%edi)
     575:	4f                   	dec    %edi
     576:	5f                   	pop    %edi
     577:	62 61 63             	bound  %esp,0x63(%ecx)
     57a:	6b 75 70 5f          	imul   $0x5f,0x70(%ebp),%esi
     57e:	62 61 73             	bound  %esp,0x73(%ecx)
     581:	65 00 72 65          	add    %dh,%gs:0x65(%edx)
     585:	63 74 00 53          	arpl   %si,0x53(%eax,%eax,1)
     589:	44                   	inc    %esp
     58a:	4c                   	dec    %esp
     58b:	5f                   	pop    %edi
     58c:	53                   	push   %ebx
     58d:	43                   	inc    %ebx
     58e:	41                   	inc    %ecx
     58f:	4e                   	dec    %esi
     590:	43                   	inc    %ebx
     591:	4f                   	dec    %edi
     592:	44                   	inc    %esp
     593:	45                   	inc    %ebp
     594:	5f                   	pop    %edi
     595:	4e                   	dec    %esi
     596:	4f                   	dec    %edi
     597:	4e                   	dec    %esi
     598:	55                   	push   %ebp
     599:	53                   	push   %ebx
     59a:	42                   	inc    %edx
     59b:	41                   	inc    %ecx
     59c:	43                   	inc    %ebx
     59d:	4b                   	dec    %ebx
     59e:	53                   	push   %ebx
     59f:	4c                   	dec    %esp
     5a0:	41                   	inc    %ecx
     5a1:	53                   	push   %ebx
     5a2:	48                   	dec    %eax
     5a3:	00 53 44             	add    %dl,0x44(%ebx)
     5a6:	4c                   	dec    %esp
     5a7:	5f                   	pop    %edi
     5a8:	53                   	push   %ebx
     5a9:	43                   	inc    %ebx
     5aa:	41                   	inc    %ecx
     5ab:	4e                   	dec    %esi
     5ac:	43                   	inc    %ebx
     5ad:	4f                   	dec    %edi
     5ae:	44                   	inc    %esp
     5af:	45                   	inc    %ebp
     5b0:	5f                   	pop    %edi
     5b1:	49                   	dec    %ecx
     5b2:	4e                   	dec    %esi
     5b3:	53                   	push   %ebx
     5b4:	45                   	inc    %ebp
     5b5:	52                   	push   %edx
     5b6:	54                   	push   %esp
     5b7:	00 53 44             	add    %dl,0x44(%ebx)
     5ba:	4c                   	dec    %esp
     5bb:	5f                   	pop    %edi
     5bc:	53                   	push   %ebx
     5bd:	43                   	inc    %ebx
     5be:	41                   	inc    %ecx
     5bf:	4e                   	dec    %esi
     5c0:	43                   	inc    %ebx
     5c1:	4f                   	dec    %edi
     5c2:	44                   	inc    %esp
     5c3:	45                   	inc    %ebp
     5c4:	5f                   	pop    %edi
     5c5:	43                   	inc    %ebx
     5c6:	55                   	push   %ebp
     5c7:	54                   	push   %esp
     5c8:	00 53 44             	add    %dl,0x44(%ebx)
     5cb:	4c                   	dec    %esp
     5cc:	5f                   	pop    %edi
     5cd:	53                   	push   %ebx
     5ce:	43                   	inc    %ebx
     5cf:	41                   	inc    %ecx
     5d0:	4e                   	dec    %esi
     5d1:	43                   	inc    %ebx
     5d2:	4f                   	dec    %edi
     5d3:	44                   	inc    %esp
     5d4:	45                   	inc    %ebp
     5d5:	5f                   	pop    %edi
     5d6:	4c                   	dec    %esp
     5d7:	47                   	inc    %edi
     5d8:	55                   	push   %ebp
     5d9:	49                   	dec    %ecx
     5da:	00 53 44             	add    %dl,0x44(%ebx)
     5dd:	4c                   	dec    %esp
     5de:	5f                   	pop    %edi
     5df:	53                   	push   %ebx
     5e0:	43                   	inc    %ebx
     5e1:	41                   	inc    %ecx
     5e2:	4e                   	dec    %esi
     5e3:	43                   	inc    %ebx
     5e4:	4f                   	dec    %edi
     5e5:	44                   	inc    %esp
     5e6:	45                   	inc    %ebp
     5e7:	5f                   	pop    %edi
     5e8:	4c                   	dec    %esp
     5e9:	45                   	inc    %ebp
     5ea:	46                   	inc    %esi
     5eb:	54                   	push   %esp
     5ec:	42                   	inc    %edx
     5ed:	52                   	push   %edx
     5ee:	41                   	inc    %ecx
     5ef:	43                   	inc    %ebx
     5f0:	4b                   	dec    %ebx
     5f1:	45                   	inc    %ebp
     5f2:	54                   	push   %esp
     5f3:	00 53 44             	add    %dl,0x44(%ebx)
     5f6:	4c                   	dec    %esp
     5f7:	5f                   	pop    %edi
     5f8:	53                   	push   %ebx
     5f9:	43                   	inc    %ebx
     5fa:	41                   	inc    %ecx
     5fb:	4e                   	dec    %esi
     5fc:	43                   	inc    %ebx
     5fd:	4f                   	dec    %edi
     5fe:	44                   	inc    %esp
     5ff:	45                   	inc    %ebp
     600:	5f                   	pop    %edi
     601:	49                   	dec    %ecx
     602:	4e                   	dec    %esi
     603:	54                   	push   %esp
     604:	45                   	inc    %ebp
     605:	52                   	push   %edx
     606:	4e                   	dec    %esi
     607:	41                   	inc    %ecx
     608:	54                   	push   %esp
     609:	49                   	dec    %ecx
     60a:	4f                   	dec    %edi
     60b:	4e                   	dec    %esi
     60c:	41                   	inc    %ecx
     60d:	4c                   	dec    %esp
     60e:	31 00                	xor    %eax,(%eax)
     610:	53                   	push   %ebx
     611:	44                   	inc    %esp
     612:	4c                   	dec    %esp
     613:	5f                   	pop    %edi
     614:	53                   	push   %ebx
     615:	43                   	inc    %ebx
     616:	41                   	inc    %ecx
     617:	4e                   	dec    %esi
     618:	43                   	inc    %ebx
     619:	4f                   	dec    %edi
     61a:	44                   	inc    %esp
     61b:	45                   	inc    %ebp
     61c:	5f                   	pop    %edi
     61d:	49                   	dec    %ecx
     61e:	4e                   	dec    %esi
     61f:	54                   	push   %esp
     620:	45                   	inc    %ebp
     621:	52                   	push   %edx
     622:	4e                   	dec    %esi
     623:	41                   	inc    %ecx
     624:	54                   	push   %esp
     625:	49                   	dec    %ecx
     626:	4f                   	dec    %edi
     627:	4e                   	dec    %esi
     628:	41                   	inc    %ecx
     629:	4c                   	dec    %esp
     62a:	32 00                	xor    (%eax),%al
     62c:	5f                   	pop    %edi
     62d:	66 69 6c 65 6e 6f 00 	imul   $0x6f,0x6e(%ebp,%eiz,2),%bp
     634:	5f                   	pop    %edi
     635:	5f                   	pop    %edi
     636:	70 61                	jo     699 <F_IMMED+0x619>
     638:	64 31 00             	xor    %eax,%fs:(%eax)
     63b:	53                   	push   %ebx
     63c:	44                   	inc    %esp
     63d:	4c                   	dec    %esp
     63e:	5f                   	pop    %edi
     63f:	53                   	push   %ebx
     640:	43                   	inc    %ebx
     641:	41                   	inc    %ecx
     642:	4e                   	dec    %esi
     643:	43                   	inc    %ebx
     644:	4f                   	dec    %edi
     645:	44                   	inc    %esp
     646:	45                   	inc    %ebp
     647:	5f                   	pop    %edi
     648:	49                   	dec    %ecx
     649:	4e                   	dec    %esi
     64a:	54                   	push   %esp
     64b:	45                   	inc    %ebp
     64c:	52                   	push   %edx
     64d:	4e                   	dec    %esi
     64e:	41                   	inc    %ecx
     64f:	54                   	push   %esp
     650:	49                   	dec    %ecx
     651:	4f                   	dec    %edi
     652:	4e                   	dec    %esi
     653:	41                   	inc    %ecx
     654:	4c                   	dec    %esp
     655:	35 00 53 44 4c       	xor    $0x4c445300,%eax
     65a:	5f                   	pop    %edi
     65b:	53                   	push   %ebx
     65c:	43                   	inc    %ebx
     65d:	41                   	inc    %ecx
     65e:	4e                   	dec    %esi
     65f:	43                   	inc    %ebx
     660:	4f                   	dec    %edi
     661:	44                   	inc    %esp
     662:	45                   	inc    %ebp
     663:	5f                   	pop    %edi
     664:	49                   	dec    %ecx
     665:	4e                   	dec    %esi
     666:	54                   	push   %esp
     667:	45                   	inc    %ebp
     668:	52                   	push   %edx
     669:	4e                   	dec    %esi
     66a:	41                   	inc    %ecx
     66b:	54                   	push   %esp
     66c:	49                   	dec    %ecx
     66d:	4f                   	dec    %edi
     66e:	4e                   	dec    %esi
     66f:	41                   	inc    %ecx
     670:	4c                   	dec    %esp
     671:	36 00 53 44          	add    %dl,%ss:0x44(%ebx)
     675:	4c                   	dec    %esp
     676:	5f                   	pop    %edi
     677:	53                   	push   %ebx
     678:	43                   	inc    %ebx
     679:	41                   	inc    %ecx
     67a:	4e                   	dec    %esi
     67b:	43                   	inc    %ebx
     67c:	4f                   	dec    %edi
     67d:	44                   	inc    %esp
     67e:	45                   	inc    %ebp
     67f:	5f                   	pop    %edi
     680:	49                   	dec    %ecx
     681:	4e                   	dec    %esi
     682:	54                   	push   %esp
     683:	45                   	inc    %ebp
     684:	52                   	push   %edx
     685:	4e                   	dec    %esi
     686:	41                   	inc    %ecx
     687:	54                   	push   %esp
     688:	49                   	dec    %ecx
     689:	4f                   	dec    %edi
     68a:	4e                   	dec    %esi
     68b:	41                   	inc    %ecx
     68c:	4c                   	dec    %esp
     68d:	37                   	aaa    
     68e:	00 53 44             	add    %dl,0x44(%ebx)
     691:	4c                   	dec    %esp
     692:	5f                   	pop    %edi
     693:	53                   	push   %ebx
     694:	43                   	inc    %ebx
     695:	41                   	inc    %ecx
     696:	4e                   	dec    %esi
     697:	43                   	inc    %ebx
     698:	4f                   	dec    %edi
     699:	44                   	inc    %esp
     69a:	45                   	inc    %ebp
     69b:	5f                   	pop    %edi
     69c:	49                   	dec    %ecx
     69d:	4e                   	dec    %esi
     69e:	54                   	push   %esp
     69f:	45                   	inc    %ebp
     6a0:	52                   	push   %edx
     6a1:	4e                   	dec    %esi
     6a2:	41                   	inc    %ecx
     6a3:	54                   	push   %esp
     6a4:	49                   	dec    %ecx
     6a5:	4f                   	dec    %edi
     6a6:	4e                   	dec    %esi
     6a7:	41                   	inc    %ecx
     6a8:	4c                   	dec    %esp
     6a9:	38 00                	cmp    %al,(%eax)
     6ab:	53                   	push   %ebx
     6ac:	44                   	inc    %esp
     6ad:	4c                   	dec    %esp
     6ae:	5f                   	pop    %edi
     6af:	53                   	push   %ebx
     6b0:	43                   	inc    %ebx
     6b1:	41                   	inc    %ecx
     6b2:	4e                   	dec    %esi
     6b3:	43                   	inc    %ebx
     6b4:	4f                   	dec    %edi
     6b5:	44                   	inc    %esp
     6b6:	45                   	inc    %ebp
     6b7:	5f                   	pop    %edi
     6b8:	49                   	dec    %ecx
     6b9:	4e                   	dec    %esi
     6ba:	54                   	push   %esp
     6bb:	45                   	inc    %ebp
     6bc:	52                   	push   %edx
     6bd:	4e                   	dec    %esi
     6be:	41                   	inc    %ecx
     6bf:	54                   	push   %esp
     6c0:	49                   	dec    %ecx
     6c1:	4f                   	dec    %edi
     6c2:	4e                   	dec    %esi
     6c3:	41                   	inc    %ecx
     6c4:	4c                   	dec    %esp
     6c5:	39 00                	cmp    %eax,(%eax)
     6c7:	53                   	push   %ebx
     6c8:	44                   	inc    %esp
     6c9:	4c                   	dec    %esp
     6ca:	5f                   	pop    %edi
     6cb:	53                   	push   %ebx
     6cc:	43                   	inc    %ebx
     6cd:	41                   	inc    %ecx
     6ce:	4e                   	dec    %esi
     6cf:	43                   	inc    %ebx
     6d0:	4f                   	dec    %edi
     6d1:	44                   	inc    %esp
     6d2:	45                   	inc    %ebp
     6d3:	5f                   	pop    %edi
     6d4:	41                   	inc    %ecx
     6d5:	50                   	push   %eax
     6d6:	50                   	push   %eax
     6d7:	4c                   	dec    %esp
     6d8:	49                   	dec    %ecx
     6d9:	43                   	inc    %ebx
     6da:	41                   	inc    %ecx
     6db:	54                   	push   %esp
     6dc:	49                   	dec    %ecx
     6dd:	4f                   	dec    %edi
     6de:	4e                   	dec    %esi
     6df:	00 53 44             	add    %dl,0x44(%ebx)
     6e2:	4c                   	dec    %esp
     6e3:	5f                   	pop    %edi
     6e4:	53                   	push   %ebx
     6e5:	43                   	inc    %ebx
     6e6:	41                   	inc    %ecx
     6e7:	4e                   	dec    %esi
     6e8:	43                   	inc    %ebx
     6e9:	4f                   	dec    %edi
     6ea:	44                   	inc    %esp
     6eb:	45                   	inc    %ebp
     6ec:	5f                   	pop    %edi
     6ed:	41                   	inc    %ecx
     6ee:	55                   	push   %ebp
     6ef:	44                   	inc    %esp
     6f0:	49                   	dec    %ecx
     6f1:	4f                   	dec    %edi
     6f2:	50                   	push   %eax
     6f3:	52                   	push   %edx
     6f4:	45                   	inc    %ebp
     6f5:	56                   	push   %esi
     6f6:	00 53 44             	add    %dl,0x44(%ebx)
     6f9:	4c                   	dec    %esp
     6fa:	5f                   	pop    %edi
     6fb:	4d                   	dec    %ebp
     6fc:	45                   	inc    %ebp
     6fd:	53                   	push   %ebx
     6fe:	53                   	push   %ebx
     6ff:	41                   	inc    %ecx
     700:	47                   	inc    %edi
     701:	45                   	inc    %ebp
     702:	42                   	inc    %edx
     703:	4f                   	dec    %edi
     704:	58                   	pop    %eax
     705:	5f                   	pop    %edi
     706:	43                   	inc    %ebx
     707:	4f                   	dec    %edi
     708:	4c                   	dec    %esp
     709:	4f                   	dec    %edi
     70a:	52                   	push   %edx
     70b:	5f                   	pop    %edi
     70c:	4d                   	dec    %ebp
     70d:	41                   	inc    %ecx
     70e:	58                   	pop    %eax
     70f:	00 53 44             	add    %dl,0x44(%ebx)
     712:	4c                   	dec    %esp
     713:	5f                   	pop    %edi
     714:	50                   	push   %eax
     715:	41                   	inc    %ecx
     716:	43                   	inc    %ebx
     717:	4b                   	dec    %ebx
     718:	45                   	inc    %ebp
     719:	44                   	inc    %esp
     71a:	4c                   	dec    %esp
     71b:	41                   	inc    %ecx
     71c:	59                   	pop    %ecx
     71d:	4f                   	dec    %edi
     71e:	55                   	push   %ebp
     71f:	54                   	push   %esp
     720:	5f                   	pop    %edi
     721:	4e                   	dec    %esi
     722:	4f                   	dec    %edi
     723:	4e                   	dec    %esi
     724:	45                   	inc    %ebp
     725:	00 53 44             	add    %dl,0x44(%ebx)
     728:	4c                   	dec    %esp
     729:	5f                   	pop    %edi
     72a:	53                   	push   %ebx
     72b:	43                   	inc    %ebx
     72c:	41                   	inc    %ecx
     72d:	4e                   	dec    %esi
     72e:	43                   	inc    %ebx
     72f:	4f                   	dec    %edi
     730:	44                   	inc    %esp
     731:	45                   	inc    %ebp
     732:	5f                   	pop    %edi
     733:	4b                   	dec    %ebx
     734:	50                   	push   %eax
     735:	5f                   	pop    %edi
     736:	42                   	inc    %edx
     737:	41                   	inc    %ecx
     738:	43                   	inc    %ebx
     739:	4b                   	dec    %ebx
     73a:	53                   	push   %ebx
     73b:	50                   	push   %eax
     73c:	41                   	inc    %ecx
     73d:	43                   	inc    %ebx
     73e:	45                   	inc    %ebp
     73f:	00 53 44             	add    %dl,0x44(%ebx)
     742:	4c                   	dec    %esp
     743:	5f                   	pop    %edi
     744:	53                   	push   %ebx
     745:	43                   	inc    %ebx
     746:	41                   	inc    %ecx
     747:	4e                   	dec    %esi
     748:	43                   	inc    %ebx
     749:	4f                   	dec    %edi
     74a:	44                   	inc    %esp
     74b:	45                   	inc    %ebp
     74c:	5f                   	pop    %edi
     74d:	43                   	inc    %ebx
     74e:	4c                   	dec    %esp
     74f:	45                   	inc    %ebp
     750:	41                   	inc    %ecx
     751:	52                   	push   %edx
     752:	41                   	inc    %ecx
     753:	47                   	inc    %edi
     754:	41                   	inc    %ecx
     755:	49                   	dec    %ecx
     756:	4e                   	dec    %esi
     757:	00 53 44             	add    %dl,0x44(%ebx)
     75a:	4c                   	dec    %esp
     75b:	5f                   	pop    %edi
     75c:	41                   	inc    %ecx
     75d:	52                   	push   %edx
     75e:	52                   	push   %edx
     75f:	41                   	inc    %ecx
     760:	59                   	pop    %ecx
     761:	4f                   	dec    %edi
     762:	52                   	push   %edx
     763:	44                   	inc    %esp
     764:	45                   	inc    %ebp
     765:	52                   	push   %edx
     766:	5f                   	pop    %edi
     767:	42                   	inc    %edx
     768:	47                   	inc    %edi
     769:	52                   	push   %edx
     76a:	00 73 64             	add    %dh,0x64(%ebx)
     76d:	6c                   	insb   (%dx),%es:(%edi)
     76e:	77 72                	ja     7e2 <F_IMMED+0x762>
     770:	61                   	popa   
     771:	70 2e                	jo     7a1 <F_IMMED+0x721>
     773:	63 00                	arpl   %ax,(%eax)
     775:	5f                   	pop    %edi
     776:	6d                   	insl   (%dx),%es:(%edi)
     777:	61                   	popa   
     778:	72 6b                	jb     7e5 <F_IMMED+0x765>
     77a:	65 72 73             	gs jb  7f0 <F_IMMED+0x770>
     77d:	00 53 44             	add    %dl,0x44(%ebx)
     780:	4c                   	dec    %esp
     781:	5f                   	pop    %edi
     782:	53                   	push   %ebx
     783:	43                   	inc    %ebx
     784:	41                   	inc    %ecx
     785:	4e                   	dec    %esi
     786:	43                   	inc    %ebx
     787:	4f                   	dec    %edi
     788:	44                   	inc    %esp
     789:	45                   	inc    %ebp
     78a:	5f                   	pop    %edi
     78b:	4c                   	dec    %esp
     78c:	41                   	inc    %ecx
     78d:	4c                   	dec    %esp
     78e:	54                   	push   %esp
     78f:	00 53 44             	add    %dl,0x44(%ebx)
     792:	4c                   	dec    %esp
     793:	5f                   	pop    %edi
     794:	53                   	push   %ebx
     795:	43                   	inc    %ebx
     796:	41                   	inc    %ecx
     797:	4e                   	dec    %esi
     798:	43                   	inc    %ebx
     799:	4f                   	dec    %edi
     79a:	44                   	inc    %esp
     79b:	45                   	inc    %ebp
     79c:	5f                   	pop    %edi
     79d:	4e                   	dec    %esi
     79e:	4f                   	dec    %edi
     79f:	4e                   	dec    %esi
     7a0:	55                   	push   %ebp
     7a1:	53                   	push   %ebx
     7a2:	48                   	dec    %eax
     7a3:	41                   	inc    %ecx
     7a4:	53                   	push   %ebx
     7a5:	48                   	dec    %eax
     7a6:	00 5f 49             	add    %bl,0x49(%edi)
     7a9:	4f                   	dec    %edi
     7aa:	5f                   	pop    %edi
     7ab:	72 65                	jb     812 <F_IMMED+0x792>
     7ad:	61                   	popa   
     7ae:	64 5f                	fs pop %edi
     7b0:	62 61 73             	bound  %esp,0x73(%ecx)
     7b3:	65 00 53 44          	add    %dl,%gs:0x44(%ebx)
     7b7:	4c                   	dec    %esp
     7b8:	5f                   	pop    %edi
     7b9:	53                   	push   %ebx
     7ba:	43                   	inc    %ebx
     7bb:	41                   	inc    %ecx
     7bc:	4e                   	dec    %esi
     7bd:	43                   	inc    %ebx
     7be:	4f                   	dec    %edi
     7bf:	44                   	inc    %esp
     7c0:	45                   	inc    %ebp
     7c1:	5f                   	pop    %edi
     7c2:	44                   	inc    %esp
     7c3:	45                   	inc    %ebp
     7c4:	43                   	inc    %ebx
     7c5:	49                   	dec    %ecx
     7c6:	4d                   	dec    %ebp
     7c7:	41                   	inc    %ecx
     7c8:	4c                   	dec    %esp
     7c9:	53                   	push   %ebx
     7ca:	45                   	inc    %ebp
     7cb:	50                   	push   %eax
     7cc:	41                   	inc    %ecx
     7cd:	52                   	push   %edx
     7ce:	41                   	inc    %ecx
     7cf:	54                   	push   %esp
     7d0:	4f                   	dec    %edi
     7d1:	52                   	push   %edx
     7d2:	00 53 44             	add    %dl,0x44(%ebx)
     7d5:	4c                   	dec    %esp
     7d6:	5f                   	pop    %edi
     7d7:	53                   	push   %ebx
     7d8:	43                   	inc    %ebx
     7d9:	41                   	inc    %ecx
     7da:	4e                   	dec    %esi
     7db:	43                   	inc    %ebx
     7dc:	4f                   	dec    %edi
     7dd:	44                   	inc    %esp
     7de:	45                   	inc    %ebp
     7df:	5f                   	pop    %edi
     7e0:	50                   	push   %eax
     7e1:	41                   	inc    %ecx
     7e2:	47                   	inc    %edi
     7e3:	45                   	inc    %ebp
     7e4:	55                   	push   %ebp
     7e5:	50                   	push   %eax
     7e6:	00 53 44             	add    %dl,0x44(%ebx)
     7e9:	4c                   	dec    %esp
     7ea:	5f                   	pop    %edi
     7eb:	53                   	push   %ebx
     7ec:	43                   	inc    %ebx
     7ed:	41                   	inc    %ecx
     7ee:	4e                   	dec    %esi
     7ef:	43                   	inc    %ebx
     7f0:	4f                   	dec    %edi
     7f1:	44                   	inc    %esp
     7f2:	45                   	inc    %ebp
     7f3:	5f                   	pop    %edi
     7f4:	4b                   	dec    %ebx
     7f5:	50                   	push   %eax
     7f6:	5f                   	pop    %edi
     7f7:	44                   	inc    %esp
     7f8:	49                   	dec    %ecx
     7f9:	56                   	push   %esi
     7fa:	49                   	dec    %ecx
     7fb:	44                   	inc    %esp
     7fc:	45                   	inc    %ebp
     7fd:	00 53 44             	add    %dl,0x44(%ebx)
     800:	4c                   	dec    %esp
     801:	5f                   	pop    %edi
     802:	53                   	push   %ebx
     803:	43                   	inc    %ebx
     804:	41                   	inc    %ecx
     805:	4e                   	dec    %esi
     806:	43                   	inc    %ebx
     807:	4f                   	dec    %edi
     808:	44                   	inc    %esp
     809:	45                   	inc    %ebp
     80a:	5f                   	pop    %edi
     80b:	4d                   	dec    %ebp
     80c:	55                   	push   %ebp
     80d:	54                   	push   %esp
     80e:	45                   	inc    %ebp
     80f:	00 53 44             	add    %dl,0x44(%ebx)
     812:	4c                   	dec    %esp
     813:	5f                   	pop    %edi
     814:	53                   	push   %ebx
     815:	43                   	inc    %ebx
     816:	41                   	inc    %ecx
     817:	4e                   	dec    %esi
     818:	43                   	inc    %ebx
     819:	4f                   	dec    %edi
     81a:	44                   	inc    %esp
     81b:	45                   	inc    %ebp
     81c:	5f                   	pop    %edi
     81d:	41                   	inc    %ecx
     81e:	50                   	push   %eax
     81f:	50                   	push   %eax
     820:	31 00                	xor    %eax,(%eax)
     822:	53                   	push   %ebx
     823:	44                   	inc    %esp
     824:	4c                   	dec    %esp
     825:	5f                   	pop    %edi
     826:	53                   	push   %ebx
     827:	43                   	inc    %ebx
     828:	41                   	inc    %ecx
     829:	4e                   	dec    %esi
     82a:	43                   	inc    %ebx
     82b:	4f                   	dec    %edi
     82c:	44                   	inc    %esp
     82d:	45                   	inc    %ebp
     82e:	5f                   	pop    %edi
     82f:	43                   	inc    %ebx
     830:	4f                   	dec    %edi
     831:	4d                   	dec    %ebp
     832:	50                   	push   %eax
     833:	55                   	push   %ebp
     834:	54                   	push   %esp
     835:	45                   	inc    %ebp
     836:	52                   	push   %edx
     837:	00 5f 6e             	add    %bl,0x6e(%edi)
     83a:	65 78 74             	gs js  8b1 <F_IMMED+0x831>
     83d:	00 53 44             	add    %dl,0x44(%ebx)
     840:	4c                   	dec    %esp
     841:	5f                   	pop    %edi
     842:	53                   	push   %ebx
     843:	43                   	inc    %ebx
     844:	41                   	inc    %ecx
     845:	4e                   	dec    %esi
     846:	43                   	inc    %ebx
     847:	4f                   	dec    %edi
     848:	44                   	inc    %esp
     849:	45                   	inc    %ebp
     84a:	5f                   	pop    %edi
     84b:	4b                   	dec    %ebx
     84c:	50                   	push   %eax
     84d:	5f                   	pop    %edi
     84e:	52                   	push   %edx
     84f:	49                   	dec    %ecx
     850:	47                   	inc    %edi
     851:	48                   	dec    %eax
     852:	54                   	push   %esp
     853:	42                   	inc    %edx
     854:	52                   	push   %edx
     855:	41                   	inc    %ecx
     856:	43                   	inc    %ebx
     857:	45                   	inc    %ebp
     858:	00 6f 6c             	add    %ch,0x6c(%edi)
     85b:	64 5f                	fs pop %edi
     85d:	64 69 72 00 5f 70 6f 	imul   $0x736f705f,%fs:0x0(%edx),%esi
     864:	73 
     865:	00 53 44             	add    %dl,0x44(%ebx)
     868:	4c                   	dec    %esp
     869:	5f                   	pop    %edi
     86a:	53                   	push   %ebx
     86b:	43                   	inc    %ebx
     86c:	41                   	inc    %ecx
     86d:	4e                   	dec    %esi
     86e:	43                   	inc    %ebx
     86f:	4f                   	dec    %edi
     870:	44                   	inc    %esp
     871:	45                   	inc    %ebp
     872:	5f                   	pop    %edi
     873:	47                   	inc    %edi
     874:	52                   	push   %edx
     875:	41                   	inc    %ecx
     876:	56                   	push   %esi
     877:	45                   	inc    %ebp
     878:	00 53 44             	add    %dl,0x44(%ebx)
     87b:	4c                   	dec    %esp
     87c:	5f                   	pop    %edi
     87d:	50                   	push   %eax
     87e:	41                   	inc    %ecx
     87f:	43                   	inc    %ebx
     880:	4b                   	dec    %ebx
     881:	45                   	inc    %ebp
     882:	44                   	inc    %esp
     883:	4c                   	dec    %esp
     884:	41                   	inc    %ecx
     885:	59                   	pop    %ecx
     886:	4f                   	dec    %edi
     887:	55                   	push   %ebp
     888:	54                   	push   %esp
     889:	5f                   	pop    %edi
     88a:	31 30                	xor    %esi,(%eax)
     88c:	31 30                	xor    %esi,(%eax)
     88e:	31 30                	xor    %esi,(%eax)
     890:	32 00                	xor    (%eax),%al
     892:	53                   	push   %ebx
     893:	44                   	inc    %esp
     894:	4c                   	dec    %esp
     895:	5f                   	pop    %edi
     896:	53                   	push   %ebx
     897:	43                   	inc    %ebx
     898:	41                   	inc    %ecx
     899:	4e                   	dec    %esi
     89a:	43                   	inc    %ebx
     89b:	4f                   	dec    %edi
     89c:	44                   	inc    %esp
     89d:	45                   	inc    %ebp
     89e:	5f                   	pop    %edi
     89f:	4b                   	dec    %ebx
     8a0:	50                   	push   %eax
     8a1:	5f                   	pop    %edi
     8a2:	4f                   	dec    %edi
     8a3:	43                   	inc    %ebx
     8a4:	54                   	push   %esp
     8a5:	41                   	inc    %ecx
     8a6:	4c                   	dec    %esp
     8a7:	00 53 44             	add    %dl,0x44(%ebx)
     8aa:	4c                   	dec    %esp
     8ab:	5f                   	pop    %edi
     8ac:	53                   	push   %ebx
     8ad:	43                   	inc    %ebx
     8ae:	41                   	inc    %ecx
     8af:	4e                   	dec    %esi
     8b0:	43                   	inc    %ebx
     8b1:	4f                   	dec    %edi
     8b2:	44                   	inc    %esp
     8b3:	45                   	inc    %ebp
     8b4:	5f                   	pop    %edi
     8b5:	56                   	push   %esi
     8b6:	4f                   	dec    %edi
     8b7:	4c                   	dec    %esp
     8b8:	55                   	push   %ebp
     8b9:	4d                   	dec    %ebp
     8ba:	45                   	inc    %ebp
     8bb:	55                   	push   %ebp
     8bc:	50                   	push   %eax
     8bd:	00 53 44             	add    %dl,0x44(%ebx)
     8c0:	4c                   	dec    %esp
     8c1:	5f                   	pop    %edi
     8c2:	53                   	push   %ebx
     8c3:	43                   	inc    %ebx
     8c4:	41                   	inc    %ecx
     8c5:	4e                   	dec    %esi
     8c6:	43                   	inc    %ebx
     8c7:	4f                   	dec    %edi
     8c8:	44                   	inc    %esp
     8c9:	45                   	inc    %ebp
     8ca:	5f                   	pop    %edi
     8cb:	41                   	inc    %ecx
     8cc:	55                   	push   %ebp
     8cd:	44                   	inc    %esp
     8ce:	49                   	dec    %ecx
     8cf:	4f                   	dec    %edi
     8d0:	50                   	push   %eax
     8d1:	4c                   	dec    %esp
     8d2:	41                   	inc    %ecx
     8d3:	59                   	pop    %ecx
     8d4:	00 53 44             	add    %dl,0x44(%ebx)
     8d7:	4c                   	dec    %esp
     8d8:	5f                   	pop    %edi
     8d9:	53                   	push   %ebx
     8da:	43                   	inc    %ebx
     8db:	41                   	inc    %ecx
     8dc:	4e                   	dec    %esi
     8dd:	43                   	inc    %ebx
     8de:	4f                   	dec    %edi
     8df:	44                   	inc    %esp
     8e0:	45                   	inc    %ebp
     8e1:	5f                   	pop    %edi
     8e2:	41                   	inc    %ecx
     8e3:	4c                   	dec    %esp
     8e4:	54                   	push   %esp
     8e5:	45                   	inc    %ebp
     8e6:	52                   	push   %edx
     8e7:	41                   	inc    %ecx
     8e8:	53                   	push   %ebx
     8e9:	45                   	inc    %ebp
     8ea:	00 53 44             	add    %dl,0x44(%ebx)
     8ed:	4c                   	dec    %esp
     8ee:	5f                   	pop    %edi
     8ef:	53                   	push   %ebx
     8f0:	43                   	inc    %ebx
     8f1:	41                   	inc    %ecx
     8f2:	4e                   	dec    %esi
     8f3:	43                   	inc    %ebx
     8f4:	4f                   	dec    %edi
     8f5:	44                   	inc    %esp
     8f6:	45                   	inc    %ebp
     8f7:	5f                   	pop    %edi
     8f8:	4b                   	dec    %ebx
     8f9:	50                   	push   %eax
     8fa:	5f                   	pop    %edi
     8fb:	36 00 53 44          	add    %dl,%ss:0x44(%ebx)
     8ff:	4c                   	dec    %esp
     900:	5f                   	pop    %edi
     901:	53                   	push   %ebx
     902:	43                   	inc    %ebx
     903:	41                   	inc    %ecx
     904:	4e                   	dec    %esi
     905:	43                   	inc    %ebx
     906:	4f                   	dec    %edi
     907:	44                   	inc    %esp
     908:	45                   	inc    %ebp
     909:	5f                   	pop    %edi
     90a:	4c                   	dec    %esp
     90b:	41                   	inc    %ecx
     90c:	4e                   	dec    %esi
     90d:	47                   	inc    %edi
     90e:	37                   	aaa    
     90f:	00 65 6c             	add    %ah,0x6c(%ebp)
     912:	65 6d                	gs insl (%dx),%es:(%edi)
     914:	73 00                	jae    916 <F_IMMED+0x896>
     916:	53                   	push   %ebx
     917:	44                   	inc    %esp
     918:	4c                   	dec    %esp
     919:	5f                   	pop    %edi
     91a:	53                   	push   %ebx
     91b:	43                   	inc    %ebx
     91c:	41                   	inc    %ecx
     91d:	4e                   	dec    %esi
     91e:	43                   	inc    %ebx
     91f:	4f                   	dec    %edi
     920:	44                   	inc    %esp
     921:	45                   	inc    %ebp
     922:	5f                   	pop    %edi
     923:	4b                   	dec    %ebx
     924:	50                   	push   %eax
     925:	5f                   	pop    %edi
     926:	48                   	dec    %eax
     927:	45                   	inc    %ebp
     928:	58                   	pop    %eax
     929:	41                   	inc    %ecx
     92a:	44                   	inc    %esp
     92b:	45                   	inc    %ebp
     92c:	43                   	inc    %ebx
     92d:	49                   	dec    %ecx
     92e:	4d                   	dec    %ebp
     92f:	41                   	inc    %ecx
     930:	4c                   	dec    %esp
     931:	00 53 44             	add    %dl,0x44(%ebx)
     934:	4c                   	dec    %esp
     935:	5f                   	pop    %edi
     936:	53                   	push   %ebx
     937:	43                   	inc    %ebx
     938:	41                   	inc    %ecx
     939:	4e                   	dec    %esi
     93a:	43                   	inc    %ebx
     93b:	4f                   	dec    %edi
     93c:	44                   	inc    %esp
     93d:	45                   	inc    %ebp
     93e:	5f                   	pop    %edi
     93f:	4b                   	dec    %ebx
     940:	50                   	push   %eax
     941:	5f                   	pop    %edi
     942:	39 00                	cmp    %eax,(%eax)
     944:	53                   	push   %ebx
     945:	44                   	inc    %esp
     946:	4c                   	dec    %esp
     947:	5f                   	pop    %edi
     948:	53                   	push   %ebx
     949:	43                   	inc    %ebx
     94a:	41                   	inc    %ecx
     94b:	4e                   	dec    %esi
     94c:	43                   	inc    %ebx
     94d:	4f                   	dec    %edi
     94e:	44                   	inc    %esp
     94f:	45                   	inc    %ebp
     950:	5f                   	pop    %edi
     951:	42                   	inc    %edx
     952:	41                   	inc    %ecx
     953:	43                   	inc    %ebx
     954:	4b                   	dec    %ebx
     955:	53                   	push   %ebx
     956:	4c                   	dec    %esp
     957:	41                   	inc    %ecx
     958:	53                   	push   %ebx
     959:	48                   	dec    %eax
     95a:	00 53 44             	add    %dl,0x44(%ebx)
     95d:	4c                   	dec    %esp
     95e:	5f                   	pop    %edi
     95f:	53                   	push   %ebx
     960:	43                   	inc    %ebx
     961:	41                   	inc    %ecx
     962:	4e                   	dec    %esi
     963:	43                   	inc    %ebx
     964:	4f                   	dec    %edi
     965:	44                   	inc    %esp
     966:	45                   	inc    %ebp
     967:	5f                   	pop    %edi
     968:	4b                   	dec    %ebx
     969:	50                   	push   %eax
     96a:	5f                   	pop    %edi
     96b:	50                   	push   %eax
     96c:	45                   	inc    %ebp
     96d:	52                   	push   %edx
     96e:	49                   	dec    %ecx
     96f:	4f                   	dec    %edi
     970:	44                   	inc    %esp
     971:	00 53 44             	add    %dl,0x44(%ebx)
     974:	4c                   	dec    %esp
     975:	5f                   	pop    %edi
     976:	4e                   	dec    %esi
     977:	55                   	push   %ebp
     978:	4d                   	dec    %ebp
     979:	5f                   	pop    %edi
     97a:	53                   	push   %ebx
     97b:	43                   	inc    %ebx
     97c:	41                   	inc    %ecx
     97d:	4e                   	dec    %esi
     97e:	43                   	inc    %ebx
     97f:	4f                   	dec    %edi
     980:	44                   	inc    %esp
     981:	45                   	inc    %ebp
     982:	53                   	push   %ebx
     983:	00 53 44             	add    %dl,0x44(%ebx)
     986:	4c                   	dec    %esp
     987:	5f                   	pop    %edi
     988:	53                   	push   %ebx
     989:	43                   	inc    %ebx
     98a:	41                   	inc    %ecx
     98b:	4e                   	dec    %esi
     98c:	43                   	inc    %ebx
     98d:	4f                   	dec    %edi
     98e:	44                   	inc    %esp
     98f:	45                   	inc    %ebp
     990:	5f                   	pop    %edi
     991:	4b                   	dec    %ebx
     992:	42                   	inc    %edx
     993:	44                   	inc    %esp
     994:	49                   	dec    %ecx
     995:	4c                   	dec    %esp
     996:	4c                   	dec    %esp
     997:	55                   	push   %ebp
     998:	4d                   	dec    %ebp
     999:	54                   	push   %esp
     99a:	4f                   	dec    %edi
     99b:	47                   	inc    %edi
     99c:	47                   	inc    %edi
     99d:	4c                   	dec    %esp
     99e:	45                   	inc    %ebp
     99f:	00 53 44             	add    %dl,0x44(%ebx)
     9a2:	4c                   	dec    %esp
     9a3:	5f                   	pop    %edi
     9a4:	53                   	push   %ebx
     9a5:	43                   	inc    %ebx
     9a6:	41                   	inc    %ecx
     9a7:	4e                   	dec    %esi
     9a8:	43                   	inc    %ebx
     9a9:	4f                   	dec    %edi
     9aa:	44                   	inc    %esp
     9ab:	45                   	inc    %ebp
     9ac:	5f                   	pop    %edi
     9ad:	4b                   	dec    %ebx
     9ae:	50                   	push   %eax
     9af:	5f                   	pop    %edi
     9b0:	50                   	push   %eax
     9b1:	4f                   	dec    %edi
     9b2:	57                   	push   %edi
     9b3:	45                   	inc    %ebp
     9b4:	52                   	push   %edx
     9b5:	00 70 61             	add    %dh,0x61(%eax)
     9b8:	74 68                	je     a22 <F_IMMED+0x9a2>
     9ba:	6e                   	outsb  %ds:(%esi),(%dx)
     9bb:	61                   	popa   
     9bc:	6d                   	insl   (%dx),%es:(%edi)
     9bd:	65 00 53 44          	add    %dl,%gs:0x44(%ebx)
     9c1:	4c                   	dec    %esp
     9c2:	5f                   	pop    %edi
     9c3:	53                   	push   %ebx
     9c4:	43                   	inc    %ebx
     9c5:	41                   	inc    %ecx
     9c6:	4e                   	dec    %esi
     9c7:	43                   	inc    %ebx
     9c8:	4f                   	dec    %edi
     9c9:	44                   	inc    %esp
     9ca:	45                   	inc    %ebp
     9cb:	5f                   	pop    %edi
     9cc:	55                   	push   %ebp
     9cd:	50                   	push   %eax
     9ce:	00 5f 6d             	add    %bl,0x6d(%edi)
     9d1:	6f                   	outsl  %ds:(%esi),(%dx)
     9d2:	64 65 00 47 4e       	fs add %al,%gs:0x4e(%edi)
     9d7:	55                   	push   %ebp
     9d8:	20 43 31             	and    %al,0x31(%ebx)
     9db:	31 20                	xor    %esp,(%eax)
     9dd:	35 2e 34 2e 30       	xor    $0x302e342e,%eax
     9e2:	20 32                	and    %dh,(%edx)
     9e4:	30 31                	xor    %dh,(%ecx)
     9e6:	36 30 36             	xor    %dh,%ss:(%esi)
     9e9:	30 39                	xor    %bh,(%ecx)
     9eb:	20 2d 6d 33 32 20    	and    %ch,0x2032336d
     9f1:	2d 6d 74 75 6e       	sub    $0x6e75746d,%eax
     9f6:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
     9fc:	72 69                	jb     a67 <F_IMMED+0x9e7>
     9fe:	63 20                	arpl   %sp,(%eax)
     a00:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
     a05:	68 3d 69 36 38       	push   $0x3836693d
     a0a:	36 20 2d 67 20 2d 66 	and    %ch,%ss:0x662d2067
     a11:	73 74                	jae    a87 <F_IMMED+0xa07>
     a13:	61                   	popa   
     a14:	63 6b 2d             	arpl   %bp,0x2d(%ebx)
     a17:	70 72                	jo     a8b <F_IMMED+0xa0b>
     a19:	6f                   	outsl  %ds:(%esi),(%dx)
     a1a:	74 65                	je     a81 <F_IMMED+0xa01>
     a1c:	63 74 6f 72          	arpl   %si,0x72(%edi,%ebp,2)
     a20:	2d 73 74 72 6f       	sub    $0x6f727473,%eax
     a25:	6e                   	outsb  %ds:(%esi),(%dx)
     a26:	67 00 53 44          	add    %dl,0x44(%bp,%di)
     a2a:	4c                   	dec    %esp
     a2b:	5f                   	pop    %edi
     a2c:	53                   	push   %ebx
     a2d:	43                   	inc    %ebx
     a2e:	41                   	inc    %ecx
     a2f:	4e                   	dec    %esi
     a30:	43                   	inc    %ebx
     a31:	4f                   	dec    %edi
     a32:	44                   	inc    %esp
     a33:	45                   	inc    %ebp
     a34:	5f                   	pop    %edi
     a35:	52                   	push   %edx
     a36:	53                   	push   %ebx
     a37:	48                   	dec    %eax
     a38:	49                   	dec    %ecx
     a39:	46                   	inc    %esi
     a3a:	54                   	push   %esp
     a3b:	00 53 44             	add    %dl,0x44(%ebx)
     a3e:	4c                   	dec    %esp
     a3f:	5f                   	pop    %edi
     a40:	53                   	push   %ebx
     a41:	43                   	inc    %ebx
     a42:	41                   	inc    %ecx
     a43:	4e                   	dec    %esi
     a44:	43                   	inc    %ebx
     a45:	4f                   	dec    %edi
     a46:	44                   	inc    %esp
     a47:	45                   	inc    %ebp
     a48:	5f                   	pop    %edi
     a49:	50                   	push   %eax
     a4a:	41                   	inc    %ecx
     a4b:	53                   	push   %ebx
     a4c:	54                   	push   %esp
     a4d:	45                   	inc    %ebp
     a4e:	00 5f 49             	add    %bl,0x49(%edi)
     a51:	4f                   	dec    %edi
     a52:	5f                   	pop    %edi
     a53:	6d                   	insl   (%dx),%es:(%edi)
     a54:	61                   	popa   
     a55:	72 6b                	jb     ac2 <F_IMMED+0xa42>
     a57:	65 72 00             	gs jb  a5a <F_IMMED+0x9da>
     a5a:	53                   	push   %ebx
     a5b:	44                   	inc    %esp
     a5c:	4c                   	dec    %esp
     a5d:	5f                   	pop    %edi
     a5e:	50                   	push   %eax
     a5f:	41                   	inc    %ecx
     a60:	43                   	inc    %ebx
     a61:	4b                   	dec    %ebx
     a62:	45                   	inc    %ebp
     a63:	44                   	inc    %esp
     a64:	4f                   	dec    %edi
     a65:	52                   	push   %edx
     a66:	44                   	inc    %esp
     a67:	45                   	inc    %ebp
     a68:	52                   	push   %edx
     a69:	5f                   	pop    %edi
     a6a:	41                   	inc    %ecx
     a6b:	42                   	inc    %edx
     a6c:	47                   	inc    %edi
     a6d:	52                   	push   %edx
     a6e:	00 53 44             	add    %dl,0x44(%ebx)
     a71:	4c                   	dec    %esp
     a72:	5f                   	pop    %edi
     a73:	53                   	push   %ebx
     a74:	43                   	inc    %ebx
     a75:	41                   	inc    %ecx
     a76:	4e                   	dec    %esi
     a77:	43                   	inc    %ebx
     a78:	4f                   	dec    %edi
     a79:	44                   	inc    %esp
     a7a:	45                   	inc    %ebp
     a7b:	5f                   	pop    %edi
     a7c:	33 00                	xor    (%eax),%eax
     a7e:	5f                   	pop    %edi
     a7f:	49                   	dec    %ecx
     a80:	4f                   	dec    %edi
     a81:	5f                   	pop    %edi
     a82:	72 65                	jb     ae9 <F_IMMED+0xa69>
     a84:	61                   	popa   
     a85:	64 5f                	fs pop %edi
     a87:	70 74                	jo     afd <F_IMMED+0xa7d>
     a89:	72 00                	jb     a8b <F_IMMED+0xa0b>
     a8b:	53                   	push   %ebx
     a8c:	44                   	inc    %esp
     a8d:	4c                   	dec    %esp
     a8e:	5f                   	pop    %edi
     a8f:	53                   	push   %ebx
     a90:	43                   	inc    %ebx
     a91:	41                   	inc    %ecx
     a92:	4e                   	dec    %esi
     a93:	43                   	inc    %ebx
     a94:	4f                   	dec    %edi
     a95:	44                   	inc    %esp
     a96:	45                   	inc    %ebp
     a97:	5f                   	pop    %edi
     a98:	35 00 67 61 6d       	xor    $0x6d616700,%eax
     a9d:	65 6f                	outsl  %gs:(%esi),(%dx)
     a9f:	76 65                	jbe    b06 <F_IMMED+0xa86>
     aa1:	72 5f                	jb     b02 <F_IMMED+0xa82>
     aa3:	66 6c                	data16 insb (%dx),%es:(%edi)
     aa5:	61                   	popa   
     aa6:	67 00 53 44          	add    %dl,0x44(%bp,%di)
     aaa:	4c                   	dec    %esp
     aab:	5f                   	pop    %edi
     aac:	50                   	push   %eax
     aad:	41                   	inc    %ecx
     aae:	43                   	inc    %ebx
     aaf:	4b                   	dec    %ebx
     ab0:	45                   	inc    %ebp
     ab1:	44                   	inc    %esp
     ab2:	4f                   	dec    %edi
     ab3:	52                   	push   %edx
     ab4:	44                   	inc    %esp
     ab5:	45                   	inc    %ebp
     ab6:	52                   	push   %edx
     ab7:	5f                   	pop    %edi
     ab8:	42                   	inc    %edx
     ab9:	47                   	inc    %edi
     aba:	52                   	push   %edx
     abb:	58                   	pop    %eax
     abc:	00 53 44             	add    %dl,0x44(%ebx)
     abf:	4c                   	dec    %esp
     ac0:	5f                   	pop    %edi
     ac1:	53                   	push   %ebx
     ac2:	43                   	inc    %ebx
     ac3:	41                   	inc    %ecx
     ac4:	4e                   	dec    %esi
     ac5:	43                   	inc    %ebx
     ac6:	4f                   	dec    %edi
     ac7:	44                   	inc    %esp
     ac8:	45                   	inc    %ebp
     ac9:	5f                   	pop    %edi
     aca:	37                   	aaa    
     acb:	00 53 44             	add    %dl,0x44(%ebx)
     ace:	4c                   	dec    %esp
     acf:	5f                   	pop    %edi
     ad0:	53                   	push   %ebx
     ad1:	43                   	inc    %ebx
     ad2:	41                   	inc    %ecx
     ad3:	4e                   	dec    %esi
     ad4:	43                   	inc    %ebx
     ad5:	4f                   	dec    %edi
     ad6:	44                   	inc    %esp
     ad7:	45                   	inc    %ebp
     ad8:	5f                   	pop    %edi
     ad9:	4b                   	dec    %ebx
     ada:	50                   	push   %eax
     adb:	5f                   	pop    %edi
     adc:	4d                   	dec    %ebp
     add:	45                   	inc    %ebp
     ade:	4d                   	dec    %ebp
     adf:	44                   	inc    %esp
     ae0:	49                   	dec    %ecx
     ae1:	56                   	push   %esi
     ae2:	49                   	dec    %ecx
     ae3:	44                   	inc    %esp
     ae4:	45                   	inc    %ebp
     ae5:	00 53 44             	add    %dl,0x44(%ebx)
     ae8:	4c                   	dec    %esp
     ae9:	5f                   	pop    %edi
     aea:	41                   	inc    %ecx
     aeb:	52                   	push   %edx
     aec:	52                   	push   %edx
     aed:	41                   	inc    %ecx
     aee:	59                   	pop    %ecx
     aef:	4f                   	dec    %edi
     af0:	52                   	push   %edx
     af1:	44                   	inc    %esp
     af2:	45                   	inc    %ebp
     af3:	52                   	push   %edx
     af4:	5f                   	pop    %edi
     af5:	41                   	inc    %ecx
     af6:	42                   	inc    %edx
     af7:	47                   	inc    %edi
     af8:	52                   	push   %edx
     af9:	00 53 44             	add    %dl,0x44(%ebx)
     afc:	4c                   	dec    %esp
     afd:	5f                   	pop    %edi
     afe:	53                   	push   %ebx
     aff:	43                   	inc    %ebx
     b00:	41                   	inc    %ecx
     b01:	4e                   	dec    %esi
     b02:	43                   	inc    %ebx
     b03:	4f                   	dec    %edi
     b04:	44                   	inc    %esp
     b05:	45                   	inc    %ebp
     b06:	5f                   	pop    %edi
     b07:	41                   	inc    %ecx
     b08:	50                   	push   %eax
     b09:	4f                   	dec    %edi
     b0a:	53                   	push   %ebx
     b0b:	54                   	push   %esp
     b0c:	52                   	push   %edx
     b0d:	4f                   	dec    %edi
     b0e:	50                   	push   %eax
     b0f:	48                   	dec    %eax
     b10:	45                   	inc    %ebp
     b11:	00 53 44             	add    %dl,0x44(%ebx)
     b14:	4c                   	dec    %esp
     b15:	5f                   	pop    %edi
     b16:	50                   	push   %eax
     b17:	49                   	dec    %ecx
     b18:	58                   	pop    %eax
     b19:	45                   	inc    %ebp
     b1a:	4c                   	dec    %esp
     b1b:	54                   	push   %esp
     b1c:	59                   	pop    %ecx
     b1d:	50                   	push   %eax
     b1e:	45                   	inc    %ebp
     b1f:	5f                   	pop    %edi
     b20:	49                   	dec    %ecx
     b21:	4e                   	dec    %esi
     b22:	44                   	inc    %esp
     b23:	45                   	inc    %ebp
     b24:	58                   	pop    %eax
     b25:	31 00                	xor    %eax,(%eax)
     b27:	53                   	push   %ebx
     b28:	44                   	inc    %esp
     b29:	4c                   	dec    %esp
     b2a:	5f                   	pop    %edi
     b2b:	50                   	push   %eax
     b2c:	49                   	dec    %ecx
     b2d:	58                   	pop    %eax
     b2e:	45                   	inc    %ebp
     b2f:	4c                   	dec    %esp
     b30:	54                   	push   %esp
     b31:	59                   	pop    %ecx
     b32:	50                   	push   %eax
     b33:	45                   	inc    %ebp
     b34:	5f                   	pop    %edi
     b35:	49                   	dec    %ecx
     b36:	4e                   	dec    %esi
     b37:	44                   	inc    %esp
     b38:	45                   	inc    %ebp
     b39:	58                   	pop    %eax
     b3a:	34 00                	xor    $0x0,%al
     b3c:	53                   	push   %ebx
     b3d:	44                   	inc    %esp
     b3e:	4c                   	dec    %esp
     b3f:	5f                   	pop    %edi
     b40:	53                   	push   %ebx
     b41:	43                   	inc    %ebx
     b42:	41                   	inc    %ecx
     b43:	4e                   	dec    %esi
     b44:	43                   	inc    %ebx
     b45:	4f                   	dec    %edi
     b46:	44                   	inc    %esp
     b47:	45                   	inc    %ebp
     b48:	5f                   	pop    %edi
     b49:	4b                   	dec    %ebx
     b4a:	50                   	push   %eax
     b4b:	5f                   	pop    %edi
     b4c:	4d                   	dec    %ebp
     b4d:	45                   	inc    %ebp
     b4e:	4d                   	dec    %ebp
     b4f:	4d                   	dec    %ebp
     b50:	55                   	push   %ebp
     b51:	4c                   	dec    %esp
     b52:	54                   	push   %esp
     b53:	49                   	dec    %ecx
     b54:	50                   	push   %eax
     b55:	4c                   	dec    %esp
     b56:	59                   	pop    %ecx
     b57:	00 53 44             	add    %dl,0x44(%ebx)
     b5a:	4c                   	dec    %esp
     b5b:	5f                   	pop    %edi
     b5c:	50                   	push   %eax
     b5d:	49                   	dec    %ecx
     b5e:	58                   	pop    %eax
     b5f:	45                   	inc    %ebp
     b60:	4c                   	dec    %esp
     b61:	54                   	push   %esp
     b62:	59                   	pop    %ecx
     b63:	50                   	push   %eax
     b64:	45                   	inc    %ebp
     b65:	5f                   	pop    %edi
     b66:	49                   	dec    %ecx
     b67:	4e                   	dec    %esi
     b68:	44                   	inc    %esp
     b69:	45                   	inc    %ebp
     b6a:	58                   	pop    %eax
     b6b:	38 00                	cmp    %al,(%eax)
     b6d:	75 69                	jne    bd8 <F_IMMED+0xb58>
     b6f:	6e                   	outsb  %ds:(%esi),(%dx)
     b70:	74 38                	je     baa <F_IMMED+0xb2a>
     b72:	5f                   	pop    %edi
     b73:	74 00                	je     b75 <F_IMMED+0xaf5>
     b75:	53                   	push   %ebx
     b76:	44                   	inc    %esp
     b77:	4c                   	dec    %esp
     b78:	5f                   	pop    %edi
     b79:	52                   	push   %edx
     b7a:	65 63 74 00 65       	arpl   %si,%gs:0x65(%eax,%eax,1)
     b7f:	61                   	popa   
     b80:	74 65                	je     be7 <F_IMMED+0xb67>
     b82:	6e                   	outsb  %ds:(%esi),(%dx)
     b83:	00 53 44             	add    %dl,0x44(%ebx)
     b86:	4c                   	dec    %esp
     b87:	5f                   	pop    %edi
     b88:	53                   	push   %ebx
     b89:	43                   	inc    %ebx
     b8a:	41                   	inc    %ecx
     b8b:	4e                   	dec    %esi
     b8c:	43                   	inc    %ebx
     b8d:	4f                   	dec    %edi
     b8e:	44                   	inc    %esp
     b8f:	45                   	inc    %ebp
     b90:	5f                   	pop    %edi
     b91:	42                   	inc    %edx
     b92:	00 53 44             	add    %dl,0x44(%ebx)
     b95:	4c                   	dec    %esp
     b96:	5f                   	pop    %edi
     b97:	53                   	push   %ebx
     b98:	43                   	inc    %ebx
     b99:	41                   	inc    %ecx
     b9a:	4e                   	dec    %esi
     b9b:	43                   	inc    %ebx
     b9c:	4f                   	dec    %edi
     b9d:	44                   	inc    %esp
     b9e:	45                   	inc    %ebp
     b9f:	5f                   	pop    %edi
     ba0:	4b                   	dec    %ebx
     ba1:	50                   	push   %eax
     ba2:	5f                   	pop    %edi
     ba3:	43                   	inc    %ebx
     ba4:	4c                   	dec    %esp
     ba5:	45                   	inc    %ebp
     ba6:	41                   	inc    %ecx
     ba7:	52                   	push   %edx
     ba8:	45                   	inc    %ebp
     ba9:	4e                   	dec    %esi
     baa:	54                   	push   %esp
     bab:	52                   	push   %edx
     bac:	59                   	pop    %ecx
     bad:	00 53 44             	add    %dl,0x44(%ebx)
     bb0:	4c                   	dec    %esp
     bb1:	5f                   	pop    %edi
     bb2:	53                   	push   %ebx
     bb3:	43                   	inc    %ebx
     bb4:	41                   	inc    %ecx
     bb5:	4e                   	dec    %esi
     bb6:	43                   	inc    %ebx
     bb7:	4f                   	dec    %edi
     bb8:	44                   	inc    %esp
     bb9:	45                   	inc    %ebp
     bba:	5f                   	pop    %edi
     bbb:	4b                   	dec    %ebx
     bbc:	50                   	push   %eax
     bbd:	5f                   	pop    %edi
     bbe:	4d                   	dec    %ebp
     bbf:	49                   	dec    %ecx
     bc0:	4e                   	dec    %esi
     bc1:	55                   	push   %ebp
     bc2:	53                   	push   %ebx
     bc3:	00 53 44             	add    %dl,0x44(%ebx)
     bc6:	4c                   	dec    %esp
     bc7:	5f                   	pop    %edi
     bc8:	53                   	push   %ebx
     bc9:	43                   	inc    %ebx
     bca:	41                   	inc    %ecx
     bcb:	4e                   	dec    %esi
     bcc:	43                   	inc    %ebx
     bcd:	4f                   	dec    %edi
     bce:	44                   	inc    %esp
     bcf:	45                   	inc    %ebp
     bd0:	5f                   	pop    %edi
     bd1:	53                   	push   %ebx
     bd2:	45                   	inc    %ebp
     bd3:	4c                   	dec    %esp
     bd4:	45                   	inc    %ebp
     bd5:	43                   	inc    %ebx
     bd6:	54                   	push   %esp
     bd7:	00 53 44             	add    %dl,0x44(%ebx)
     bda:	4c                   	dec    %esp
     bdb:	5f                   	pop    %edi
     bdc:	53                   	push   %ebx
     bdd:	43                   	inc    %ebx
     bde:	41                   	inc    %ecx
     bdf:	4e                   	dec    %esi
     be0:	43                   	inc    %ebx
     be1:	4f                   	dec    %edi
     be2:	44                   	inc    %esp
     be3:	45                   	inc    %ebp
     be4:	5f                   	pop    %edi
     be5:	4b                   	dec    %ebx
     be6:	50                   	push   %eax
     be7:	5f                   	pop    %edi
     be8:	45                   	inc    %ebp
     be9:	4e                   	dec    %esi
     bea:	54                   	push   %esp
     beb:	45                   	inc    %ebp
     bec:	52                   	push   %edx
     bed:	00 74 61 67          	add    %dh,0x67(%ecx,%eiz,2)
     bf1:	5f                   	pop    %edi
     bf2:	71 75                	jno    c69 <F_IMMED+0xbe9>
     bf4:	65 75 65             	gs jne c5c <F_IMMED+0xbdc>
     bf7:	00 53 44             	add    %dl,0x44(%ebx)
     bfa:	4c                   	dec    %esp
     bfb:	5f                   	pop    %edi
     bfc:	53                   	push   %ebx
     bfd:	43                   	inc    %ebx
     bfe:	41                   	inc    %ecx
     bff:	4e                   	dec    %esi
     c00:	43                   	inc    %ebx
     c01:	4f                   	dec    %edi
     c02:	44                   	inc    %esp
     c03:	45                   	inc    %ebp
     c04:	5f                   	pop    %edi
     c05:	4b                   	dec    %ebx
     c06:	50                   	push   %eax
     c07:	5f                   	pop    %edi
     c08:	43                   	inc    %ebx
     c09:	4f                   	dec    %edi
     c0a:	4d                   	dec    %ebp
     c0b:	4d                   	dec    %ebp
     c0c:	41                   	inc    %ecx
     c0d:	00 53 44             	add    %dl,0x44(%ebx)
     c10:	4c                   	dec    %esp
     c11:	5f                   	pop    %edi
     c12:	53                   	push   %ebx
     c13:	43                   	inc    %ebx
     c14:	41                   	inc    %ecx
     c15:	4e                   	dec    %esi
     c16:	43                   	inc    %ebx
     c17:	4f                   	dec    %edi
     c18:	44                   	inc    %esp
     c19:	45                   	inc    %ebp
     c1a:	5f                   	pop    %edi
     c1b:	45                   	inc    %ebp
     c1c:	4e                   	dec    %esi
     c1d:	44                   	inc    %esp
     c1e:	00 53 44             	add    %dl,0x44(%ebx)
     c21:	4c                   	dec    %esp
     c22:	5f                   	pop    %edi
     c23:	53                   	push   %ebx
     c24:	43                   	inc    %ebx
     c25:	41                   	inc    %ecx
     c26:	4e                   	dec    %esi
     c27:	43                   	inc    %ebx
     c28:	4f                   	dec    %edi
     c29:	44                   	inc    %esp
     c2a:	45                   	inc    %ebp
     c2b:	5f                   	pop    %edi
     c2c:	50                   	push   %eax
     c2d:	45                   	inc    %ebp
     c2e:	52                   	push   %edx
     c2f:	49                   	dec    %ecx
     c30:	4f                   	dec    %edi
     c31:	44                   	inc    %esp
     c32:	00 53 44             	add    %dl,0x44(%ebx)
     c35:	4c                   	dec    %esp
     c36:	5f                   	pop    %edi
     c37:	53                   	push   %ebx
     c38:	43                   	inc    %ebx
     c39:	41                   	inc    %ecx
     c3a:	4e                   	dec    %esi
     c3b:	43                   	inc    %ebx
     c3c:	4f                   	dec    %edi
     c3d:	44                   	inc    %esp
     c3e:	45                   	inc    %ebp
     c3f:	5f                   	pop    %edi
     c40:	53                   	push   %ebx
     c41:	45                   	inc    %ebp
     c42:	4d                   	dec    %ebp
     c43:	49                   	dec    %ecx
     c44:	43                   	inc    %ebx
     c45:	4f                   	dec    %edi
     c46:	4c                   	dec    %esp
     c47:	4f                   	dec    %edi
     c48:	4e                   	dec    %esi
     c49:	00 53 44             	add    %dl,0x44(%ebx)
     c4c:	4c                   	dec    %esp
     c4d:	5f                   	pop    %edi
     c4e:	53                   	push   %ebx
     c4f:	43                   	inc    %ebx
     c50:	41                   	inc    %ecx
     c51:	4e                   	dec    %esi
     c52:	43                   	inc    %ebx
     c53:	4f                   	dec    %edi
     c54:	44                   	inc    %esp
     c55:	45                   	inc    %ebp
     c56:	5f                   	pop    %edi
     c57:	41                   	inc    %ecx
     c58:	55                   	push   %ebp
     c59:	44                   	inc    %esp
     c5a:	49                   	dec    %ecx
     c5b:	4f                   	dec    %edi
     c5c:	53                   	push   %ebx
     c5d:	54                   	push   %esp
     c5e:	4f                   	dec    %edi
     c5f:	50                   	push   %eax
     c60:	00 53 44             	add    %dl,0x44(%ebx)
     c63:	4c                   	dec    %esp
     c64:	5f                   	pop    %edi
     c65:	53                   	push   %ebx
     c66:	43                   	inc    %ebx
     c67:	41                   	inc    %ecx
     c68:	4e                   	dec    %esi
     c69:	43                   	inc    %ebx
     c6a:	4f                   	dec    %edi
     c6b:	44                   	inc    %esp
     c6c:	45                   	inc    %ebp
     c6d:	5f                   	pop    %edi
     c6e:	4b                   	dec    %ebx
     c6f:	50                   	push   %eax
     c70:	5f                   	pop    %edi
     c71:	56                   	push   %esi
     c72:	45                   	inc    %ebp
     c73:	52                   	push   %edx
     c74:	54                   	push   %esp
     c75:	49                   	dec    %ecx
     c76:	43                   	inc    %ebx
     c77:	41                   	inc    %ecx
     c78:	4c                   	dec    %esp
     c79:	42                   	inc    %edx
     c7a:	41                   	inc    %ecx
     c7b:	52                   	push   %edx
     c7c:	00 53 44             	add    %dl,0x44(%ebx)
     c7f:	4c                   	dec    %esp
     c80:	5f                   	pop    %edi
     c81:	53                   	push   %ebx
     c82:	43                   	inc    %ebx
     c83:	41                   	inc    %ecx
     c84:	4e                   	dec    %esi
     c85:	43                   	inc    %ebx
     c86:	4f                   	dec    %edi
     c87:	44                   	inc    %esp
     c88:	45                   	inc    %ebp
     c89:	5f                   	pop    %edi
     c8a:	52                   	push   %edx
     c8b:	49                   	dec    %ecx
     c8c:	47                   	inc    %edi
     c8d:	48                   	dec    %eax
     c8e:	54                   	push   %esp
     c8f:	42                   	inc    %edx
     c90:	52                   	push   %edx
     c91:	41                   	inc    %ecx
     c92:	43                   	inc    %ebx
     c93:	4b                   	dec    %ebx
     c94:	45                   	inc    %ebp
     c95:	54                   	push   %esp
     c96:	00 5f 49             	add    %bl,0x49(%edi)
     c99:	4f                   	dec    %edi
     c9a:	5f                   	pop    %edi
     c9b:	77 72                	ja     d0f <F_IMMED+0xc8f>
     c9d:	69 74 65 5f 62 61 73 	imul   $0x65736162,0x5f(%ebp,%eiz,2),%esi
     ca4:	65 
     ca5:	00 53 44             	add    %dl,0x44(%ebx)
     ca8:	4c                   	dec    %esp
     ca9:	5f                   	pop    %edi
     caa:	53                   	push   %ebx
     cab:	43                   	inc    %ebx
     cac:	41                   	inc    %ecx
     cad:	4e                   	dec    %esi
     cae:	43                   	inc    %ebx
     caf:	4f                   	dec    %edi
     cb0:	44                   	inc    %esp
     cb1:	45                   	inc    %ebp
     cb2:	5f                   	pop    %edi
     cb3:	52                   	push   %edx
     cb4:	00 6c 6f 6e          	add    %ch,0x6e(%edi,%ebp,2)
     cb8:	67 20 6c 6f          	and    %ch,0x6f(%si)
     cbc:	6e                   	outsb  %ds:(%esi),(%dx)
     cbd:	67 20 69 6e          	and    %ch,0x6e(%bx,%di)
     cc1:	74 00                	je     cc3 <F_IMMED+0xc43>
     cc3:	77 69                	ja     d2e <F_IMMED+0xcae>
     cc5:	6e                   	outsb  %ds:(%esi),(%dx)
     cc6:	64 6f                	outsl  %fs:(%esi),(%dx)
     cc8:	77 00                	ja     cca <F_IMMED+0xc4a>
     cca:	5f                   	pop    %edi
     ccb:	49                   	dec    %ecx
     ccc:	4f                   	dec    %edi
     ccd:	5f                   	pop    %edi
     cce:	73 61                	jae    d31 <F_IMMED+0xcb1>
     cd0:	76 65                	jbe    d37 <F_IMMED+0xcb7>
     cd2:	5f                   	pop    %edi
     cd3:	62 61 73             	bound  %esp,0x73(%ecx)
     cd6:	65 00 53 44          	add    %dl,%gs:0x44(%ebx)
     cda:	4c                   	dec    %esp
     cdb:	5f                   	pop    %edi
     cdc:	53                   	push   %ebx
     cdd:	43                   	inc    %ebx
     cde:	41                   	inc    %ecx
     cdf:	4e                   	dec    %esi
     ce0:	43                   	inc    %ebx
     ce1:	4f                   	dec    %edi
     ce2:	44                   	inc    %esp
     ce3:	45                   	inc    %ebp
     ce4:	5f                   	pop    %edi
     ce5:	41                   	inc    %ecx
     ce6:	43                   	inc    %ebx
     ce7:	5f                   	pop    %edi
     ce8:	46                   	inc    %esi
     ce9:	4f                   	dec    %edi
     cea:	52                   	push   %edx
     ceb:	57                   	push   %edi
     cec:	41                   	inc    %ecx
     ced:	52                   	push   %edx
     cee:	44                   	inc    %esp
     cef:	00 53 44             	add    %dl,0x44(%ebx)
     cf2:	4c                   	dec    %esp
     cf3:	5f                   	pop    %edi
     cf4:	50                   	push   %eax
     cf5:	41                   	inc    %ecx
     cf6:	43                   	inc    %ebx
     cf7:	4b                   	dec    %ebx
     cf8:	45                   	inc    %ebp
     cf9:	44                   	inc    %esp
     cfa:	4c                   	dec    %esp
     cfb:	41                   	inc    %ecx
     cfc:	59                   	pop    %ecx
     cfd:	4f                   	dec    %edi
     cfe:	55                   	push   %ebp
     cff:	54                   	push   %esp
     d00:	5f                   	pop    %edi
     d01:	33 33                	xor    (%ebx),%esi
     d03:	32 00                	xor    (%eax),%al
     d05:	53                   	push   %ebx
     d06:	44                   	inc    %esp
     d07:	4c                   	dec    %esp
     d08:	5f                   	pop    %edi
     d09:	53                   	push   %ebx
     d0a:	43                   	inc    %ebx
     d0b:	41                   	inc    %ecx
     d0c:	4e                   	dec    %esi
     d0d:	43                   	inc    %ebx
     d0e:	4f                   	dec    %edi
     d0f:	44                   	inc    %esp
     d10:	45                   	inc    %ebp
     d11:	5f                   	pop    %edi
     d12:	44                   	inc    %esp
     d13:	45                   	inc    %ebp
     d14:	4c                   	dec    %esp
     d15:	45                   	inc    %ebp
     d16:	54                   	push   %esp
     d17:	45                   	inc    %ebp
     d18:	00 53 44             	add    %dl,0x44(%ebx)
     d1b:	4c                   	dec    %esp
     d1c:	5f                   	pop    %edi
     d1d:	53                   	push   %ebx
     d1e:	43                   	inc    %ebx
     d1f:	41                   	inc    %ecx
     d20:	4e                   	dec    %esi
     d21:	43                   	inc    %ebx
     d22:	4f                   	dec    %edi
     d23:	44                   	inc    %esp
     d24:	45                   	inc    %ebp
     d25:	5f                   	pop    %edi
     d26:	4c                   	dec    %esp
     d27:	45                   	inc    %ebp
     d28:	46                   	inc    %esi
     d29:	54                   	push   %esp
     d2a:	00 53 44             	add    %dl,0x44(%ebx)
     d2d:	4c                   	dec    %esp
     d2e:	5f                   	pop    %edi
     d2f:	53                   	push   %ebx
     d30:	43                   	inc    %ebx
     d31:	41                   	inc    %ecx
     d32:	4e                   	dec    %esi
     d33:	43                   	inc    %ebx
     d34:	4f                   	dec    %edi
     d35:	44                   	inc    %esp
     d36:	45                   	inc    %ebp
     d37:	5f                   	pop    %edi
     d38:	53                   	push   %ebx
     d39:	4c                   	dec    %esp
     d3a:	41                   	inc    %ecx
     d3b:	53                   	push   %ebx
     d3c:	48                   	dec    %eax
     d3d:	00 53 44             	add    %dl,0x44(%ebx)
     d40:	4c                   	dec    %esp
     d41:	5f                   	pop    %edi
     d42:	53                   	push   %ebx
     d43:	43                   	inc    %ebx
     d44:	41                   	inc    %ecx
     d45:	4e                   	dec    %esi
     d46:	43                   	inc    %ebx
     d47:	4f                   	dec    %edi
     d48:	44                   	inc    %esp
     d49:	45                   	inc    %ebp
     d4a:	5f                   	pop    %edi
     d4b:	4b                   	dec    %ebx
     d4c:	50                   	push   %eax
     d4d:	5f                   	pop    %edi
     d4e:	41                   	inc    %ecx
     d4f:	4d                   	dec    %ebp
     d50:	50                   	push   %eax
     d51:	45                   	inc    %ebp
     d52:	52                   	push   %edx
     d53:	53                   	push   %ebx
     d54:	41                   	inc    %ecx
     d55:	4e                   	dec    %esi
     d56:	44                   	inc    %esp
     d57:	00 53 44             	add    %dl,0x44(%ebx)
     d5a:	4c                   	dec    %esp
     d5b:	5f                   	pop    %edi
     d5c:	53                   	push   %ebx
     d5d:	43                   	inc    %ebx
     d5e:	41                   	inc    %ecx
     d5f:	4e                   	dec    %esi
     d60:	43                   	inc    %ebx
     d61:	4f                   	dec    %edi
     d62:	44                   	inc    %esp
     d63:	45                   	inc    %ebp
     d64:	5f                   	pop    %edi
     d65:	4b                   	dec    %ebx
     d66:	50                   	push   %eax
     d67:	5f                   	pop    %edi
     d68:	47                   	inc    %edi
     d69:	52                   	push   %edx
     d6a:	45                   	inc    %ebp
     d6b:	41                   	inc    %ecx
     d6c:	54                   	push   %esp
     d6d:	45                   	inc    %ebp
     d6e:	52                   	push   %edx
     d6f:	00 53 44             	add    %dl,0x44(%ebx)
     d72:	4c                   	dec    %esp
     d73:	5f                   	pop    %edi
     d74:	50                   	push   %eax
     d75:	41                   	inc    %ecx
     d76:	43                   	inc    %ebx
     d77:	4b                   	dec    %ebx
     d78:	45                   	inc    %ebp
     d79:	44                   	inc    %esp
     d7a:	4f                   	dec    %edi
     d7b:	52                   	push   %edx
     d7c:	44                   	inc    %esp
     d7d:	45                   	inc    %ebp
     d7e:	52                   	push   %edx
     d7f:	5f                   	pop    %edi
     d80:	4e                   	dec    %esi
     d81:	4f                   	dec    %edi
     d82:	4e                   	dec    %esi
     d83:	45                   	inc    %ebp
     d84:	00 74 61 67          	add    %dh,0x67(%ecx,%eiz,2)
     d88:	5f                   	pop    %edi
     d89:	6e                   	outsb  %ds:(%esi),(%dx)
     d8a:	6f                   	outsl  %ds:(%esi),(%dx)
     d8b:	64 65 00 53 44       	fs add %dl,%gs:0x44(%ebx)
     d90:	4c                   	dec    %esp
     d91:	5f                   	pop    %edi
     d92:	50                   	push   %eax
     d93:	49                   	dec    %ecx
     d94:	58                   	pop    %eax
     d95:	45                   	inc    %ebp
     d96:	4c                   	dec    %esp
     d97:	54                   	push   %esp
     d98:	59                   	pop    %ecx
     d99:	50                   	push   %eax
     d9a:	45                   	inc    %ebp
     d9b:	5f                   	pop    %edi
     d9c:	41                   	inc    %ecx
     d9d:	52                   	push   %edx
     d9e:	52                   	push   %edx
     d9f:	41                   	inc    %ecx
     da0:	59                   	pop    %ecx
     da1:	55                   	push   %ebp
     da2:	31 36                	xor    %esi,(%esi)
     da4:	00 53 44             	add    %dl,0x44(%ebx)
     da7:	4c                   	dec    %esp
     da8:	5f                   	pop    %edi
     da9:	53                   	push   %ebx
     daa:	43                   	inc    %ebx
     dab:	41                   	inc    %ecx
     dac:	4e                   	dec    %esi
     dad:	43                   	inc    %ebx
     dae:	4f                   	dec    %edi
     daf:	44                   	inc    %esp
     db0:	45                   	inc    %ebp
     db1:	5f                   	pop    %edi
     db2:	41                   	inc    %ecx
     db3:	43                   	inc    %ebx
     db4:	5f                   	pop    %edi
     db5:	53                   	push   %ebx
     db6:	45                   	inc    %ebp
     db7:	41                   	inc    %ecx
     db8:	52                   	push   %edx
     db9:	43                   	inc    %ebx
     dba:	48                   	dec    %eax
     dbb:	00 53 44             	add    %dl,0x44(%ebx)
     dbe:	4c                   	dec    %esp
     dbf:	5f                   	pop    %edi
     dc0:	41                   	inc    %ecx
     dc1:	52                   	push   %edx
     dc2:	52                   	push   %edx
     dc3:	41                   	inc    %ecx
     dc4:	59                   	pop    %ecx
     dc5:	4f                   	dec    %edi
     dc6:	52                   	push   %edx
     dc7:	44                   	inc    %esp
     dc8:	45                   	inc    %ebp
     dc9:	52                   	push   %edx
     dca:	5f                   	pop    %edi
     dcb:	4e                   	dec    %esi
     dcc:	4f                   	dec    %edi
     dcd:	4e                   	dec    %esi
     dce:	45                   	inc    %ebp
     dcf:	00 53 44             	add    %dl,0x44(%ebx)
     dd2:	4c                   	dec    %esp
     dd3:	5f                   	pop    %edi
     dd4:	53                   	push   %ebx
     dd5:	43                   	inc    %ebx
     dd6:	41                   	inc    %ecx
     dd7:	4e                   	dec    %esi
     dd8:	43                   	inc    %ebx
     dd9:	4f                   	dec    %edi
     dda:	44                   	inc    %esp
     ddb:	45                   	inc    %ebp
     ddc:	5f                   	pop    %edi
     ddd:	50                   	push   %eax
     dde:	52                   	push   %edx
     ddf:	49                   	dec    %ecx
     de0:	4e                   	dec    %esi
     de1:	54                   	push   %esp
     de2:	53                   	push   %ebx
     de3:	43                   	inc    %ebx
     de4:	52                   	push   %edx
     de5:	45                   	inc    %ebp
     de6:	45                   	inc    %ebp
     de7:	4e                   	dec    %esi
     de8:	00 53 44             	add    %dl,0x44(%ebx)
     deb:	4c                   	dec    %esp
     dec:	5f                   	pop    %edi
     ded:	53                   	push   %ebx
     dee:	43                   	inc    %ebx
     def:	41                   	inc    %ecx
     df0:	4e                   	dec    %esi
     df1:	43                   	inc    %ebx
     df2:	4f                   	dec    %edi
     df3:	44                   	inc    %esp
     df4:	45                   	inc    %ebp
     df5:	5f                   	pop    %edi
     df6:	45                   	inc    %ebp
     df7:	58                   	pop    %eax
     df8:	53                   	push   %ebx
     df9:	45                   	inc    %ebp
     dfa:	4c                   	dec    %esp
     dfb:	00 53 44             	add    %dl,0x44(%ebx)
     dfe:	4c                   	dec    %esp
     dff:	5f                   	pop    %edi
     e00:	53                   	push   %ebx
     e01:	43                   	inc    %ebx
     e02:	41                   	inc    %ecx
     e03:	4e                   	dec    %esi
     e04:	43                   	inc    %ebx
     e05:	4f                   	dec    %edi
     e06:	44                   	inc    %esp
     e07:	45                   	inc    %ebp
     e08:	5f                   	pop    %edi
     e09:	54                   	push   %esp
     e0a:	48                   	dec    %eax
     e0b:	4f                   	dec    %edi
     e0c:	55                   	push   %ebp
     e0d:	53                   	push   %ebx
     e0e:	41                   	inc    %ecx
     e0f:	4e                   	dec    %esi
     e10:	44                   	inc    %esp
     e11:	53                   	push   %ebx
     e12:	53                   	push   %ebx
     e13:	45                   	inc    %ebp
     e14:	50                   	push   %eax
     e15:	41                   	inc    %ecx
     e16:	52                   	push   %edx
     e17:	41                   	inc    %ecx
     e18:	54                   	push   %esp
     e19:	4f                   	dec    %edi
     e1a:	52                   	push   %edx
     e1b:	00 5f 5f             	add    %bl,0x5f(%edi)
     e1e:	71 75                	jno    e95 <F_IMMED+0xe15>
     e20:	61                   	popa   
     e21:	64 5f                	fs pop %edi
     e23:	74 00                	je     e25 <F_IMMED+0xda5>
     e25:	6c                   	insb   (%dx),%es:(%edi)
     e26:	6f                   	outsl  %ds:(%esi),(%dx)
     e27:	6e                   	outsb  %ds:(%esi),(%dx)
     e28:	67 20 64 6f          	and    %ah,0x6f(%si)
     e2c:	75 62                	jne    e90 <F_IMMED+0xe10>
     e2e:	6c                   	insb   (%dx),%es:(%edi)
     e2f:	65 00 53 44          	add    %dl,%gs:0x44(%ebx)
     e33:	4c                   	dec    %esp
     e34:	5f                   	pop    %edi
     e35:	50                   	push   %eax
     e36:	49                   	dec    %ecx
     e37:	58                   	pop    %eax
     e38:	45                   	inc    %ebp
     e39:	4c                   	dec    %esp
     e3a:	54                   	push   %esp
     e3b:	59                   	pop    %ecx
     e3c:	50                   	push   %eax
     e3d:	45                   	inc    %ebp
     e3e:	5f                   	pop    %edi
     e3f:	55                   	push   %ebp
     e40:	4e                   	dec    %esi
     e41:	4b                   	dec    %ebx
     e42:	4e                   	dec    %esi
     e43:	4f                   	dec    %edi
     e44:	57                   	push   %edi
     e45:	4e                   	dec    %esi
     e46:	00 53 44             	add    %dl,0x44(%ebx)
     e49:	4c                   	dec    %esp
     e4a:	5f                   	pop    %edi
     e4b:	53                   	push   %ebx
     e4c:	43                   	inc    %ebx
     e4d:	41                   	inc    %ecx
     e4e:	4e                   	dec    %esi
     e4f:	43                   	inc    %ebx
     e50:	4f                   	dec    %edi
     e51:	44                   	inc    %esp
     e52:	45                   	inc    %ebp
     e53:	5f                   	pop    %edi
     e54:	54                   	push   %esp
     e55:	41                   	inc    %ecx
     e56:	42                   	inc    %edx
     e57:	00 53 44             	add    %dl,0x44(%ebx)
     e5a:	4c                   	dec    %esp
     e5b:	5f                   	pop    %edi
     e5c:	53                   	push   %ebx
     e5d:	43                   	inc    %ebx
     e5e:	41                   	inc    %ecx
     e5f:	4e                   	dec    %esi
     e60:	43                   	inc    %ebx
     e61:	4f                   	dec    %edi
     e62:	44                   	inc    %esp
     e63:	45                   	inc    %ebp
     e64:	5f                   	pop    %edi
     e65:	45                   	inc    %ebp
     e66:	58                   	pop    %eax
     e67:	45                   	inc    %ebp
     e68:	43                   	inc    %ebx
     e69:	55                   	push   %ebp
     e6a:	54                   	push   %esp
     e6b:	45                   	inc    %ebp
     e6c:	00 53 44             	add    %dl,0x44(%ebx)
     e6f:	4c                   	dec    %esp
     e70:	5f                   	pop    %edi
     e71:	53                   	push   %ebx
     e72:	43                   	inc    %ebx
     e73:	41                   	inc    %ecx
     e74:	4e                   	dec    %esi
     e75:	43                   	inc    %ebx
     e76:	4f                   	dec    %edi
     e77:	44                   	inc    %esp
     e78:	45                   	inc    %ebp
     e79:	5f                   	pop    %edi
     e7a:	4b                   	dec    %ebx
     e7b:	42                   	inc    %edx
     e7c:	44                   	inc    %esp
     e7d:	49                   	dec    %ecx
     e7e:	4c                   	dec    %esp
     e7f:	4c                   	dec    %esp
     e80:	55                   	push   %ebp
     e81:	4d                   	dec    %ebp
     e82:	55                   	push   %ebp
     e83:	50                   	push   %eax
     e84:	00 5f 5f             	add    %bl,0x5f(%edi)
     e87:	70 61                	jo     eea <F_IMMED+0xe6a>
     e89:	64 32 00             	xor    %fs:(%eax),%al
     e8c:	5f                   	pop    %edi
     e8d:	5f                   	pop    %edi
     e8e:	70 61                	jo     ef1 <F_IMMED+0xe71>
     e90:	64 33 00             	xor    %fs:(%eax),%eax
     e93:	5f                   	pop    %edi
     e94:	5f                   	pop    %edi
     e95:	70 61                	jo     ef8 <F_IMMED+0xe78>
     e97:	64 34 00             	fs xor $0x0,%al
     e9a:	5f                   	pop    %edi
     e9b:	5f                   	pop    %edi
     e9c:	70 61                	jo     eff <F_IMMED+0xe7f>
     e9e:	64 35 00 66 72 75    	fs xor $0x75726600,%eax
     ea4:	69 74 00 53 44 4c 5f 	imul   $0x4d5f4c44,0x53(%eax,%eax,1),%esi
     eab:	4d 
     eac:	45                   	inc    %ebp
     ead:	53                   	push   %ebx
     eae:	53                   	push   %ebx
     eaf:	41                   	inc    %ecx
     eb0:	47                   	inc    %edi
     eb1:	45                   	inc    %ebp
     eb2:	42                   	inc    %edx
     eb3:	4f                   	dec    %edi
     eb4:	58                   	pop    %eax
     eb5:	5f                   	pop    %edi
     eb6:	43                   	inc    %ebx
     eb7:	4f                   	dec    %edi
     eb8:	4c                   	dec    %esp
     eb9:	4f                   	dec    %edi
     eba:	52                   	push   %edx
     ebb:	5f                   	pop    %edi
     ebc:	54                   	push   %esp
     ebd:	45                   	inc    %ebp
     ebe:	58                   	pop    %eax
     ebf:	54                   	push   %esp
     ec0:	00 53 44             	add    %dl,0x44(%ebx)
     ec3:	4c                   	dec    %esp
     ec4:	5f                   	pop    %edi
     ec5:	53                   	push   %ebx
     ec6:	43                   	inc    %ebx
     ec7:	41                   	inc    %ecx
     ec8:	4e                   	dec    %esi
     ec9:	43                   	inc    %ebx
     eca:	4f                   	dec    %edi
     ecb:	44                   	inc    %esp
     ecc:	45                   	inc    %ebp
     ecd:	5f                   	pop    %edi
     ece:	4b                   	dec    %ebx
     ecf:	50                   	push   %eax
     ed0:	5f                   	pop    %edi
     ed1:	54                   	push   %esp
     ed2:	41                   	inc    %ecx
     ed3:	42                   	inc    %edx
     ed4:	00 5f 76             	add    %bl,0x76(%edi)
     ed7:	74 61                	je     f3a <F_IMMED+0xeba>
     ed9:	62 6c 65 5f          	bound  %ebp,0x5f(%ebp,%eiz,2)
     edd:	6f                   	outsl  %ds:(%esi),(%dx)
     ede:	66 66 73 65          	data16 data16 jae f47 <F_IMMED+0xec7>
     ee2:	74 00                	je     ee4 <F_IMMED+0xe64>
     ee4:	53                   	push   %ebx
     ee5:	44                   	inc    %esp
     ee6:	4c                   	dec    %esp
     ee7:	5f                   	pop    %edi
     ee8:	53                   	push   %ebx
     ee9:	43                   	inc    %ebx
     eea:	41                   	inc    %ecx
     eeb:	4e                   	dec    %esi
     eec:	43                   	inc    %ebx
     eed:	4f                   	dec    %edi
     eee:	44                   	inc    %esp
     eef:	45                   	inc    %ebp
     ef0:	5f                   	pop    %edi
     ef1:	4b                   	dec    %ebx
     ef2:	50                   	push   %eax
     ef3:	5f                   	pop    %edi
     ef4:	50                   	push   %eax
     ef5:	4c                   	dec    %esp
     ef6:	55                   	push   %ebp
     ef7:	53                   	push   %ebx
     ef8:	4d                   	dec    %ebp
     ef9:	49                   	dec    %ecx
     efa:	4e                   	dec    %esi
     efb:	55                   	push   %ebp
     efc:	53                   	push   %ebx
     efd:	00 53 44             	add    %dl,0x44(%ebx)
     f00:	4c                   	dec    %esp
     f01:	5f                   	pop    %edi
     f02:	53                   	push   %ebx
     f03:	43                   	inc    %ebx
     f04:	41                   	inc    %ecx
     f05:	4e                   	dec    %esi
     f06:	43                   	inc    %ebx
     f07:	4f                   	dec    %edi
     f08:	44                   	inc    %esp
     f09:	45                   	inc    %ebp
     f0a:	5f                   	pop    %edi
     f0b:	41                   	inc    %ecx
     f0c:	43                   	inc    %ebx
     f0d:	5f                   	pop    %edi
     f0e:	42                   	inc    %edx
     f0f:	4f                   	dec    %edi
     f10:	4f                   	dec    %edi
     f11:	4b                   	dec    %ebx
     f12:	4d                   	dec    %ebp
     f13:	41                   	inc    %ecx
     f14:	52                   	push   %edx
     f15:	4b                   	dec    %ebx
     f16:	53                   	push   %ebx
     f17:	00 53 44             	add    %dl,0x44(%ebx)
     f1a:	4c                   	dec    %esp
     f1b:	5f                   	pop    %edi
     f1c:	53                   	push   %ebx
     f1d:	43                   	inc    %ebx
     f1e:	41                   	inc    %ecx
     f1f:	4e                   	dec    %esi
     f20:	43                   	inc    %ebx
     f21:	4f                   	dec    %edi
     f22:	44                   	inc    %esp
     f23:	45                   	inc    %ebp
     f24:	5f                   	pop    %edi
     f25:	55                   	push   %ebp
     f26:	4e                   	dec    %esi
     f27:	4b                   	dec    %ebx
     f28:	4e                   	dec    %esi
     f29:	4f                   	dec    %edi
     f2a:	57                   	push   %edi
     f2b:	4e                   	dec    %esi
     f2c:	00 53 44             	add    %dl,0x44(%ebx)
     f2f:	4c                   	dec    %esp
     f30:	5f                   	pop    %edi
     f31:	50                   	push   %eax
     f32:	41                   	inc    %ecx
     f33:	43                   	inc    %ebx
     f34:	4b                   	dec    %ebx
     f35:	45                   	inc    %ebp
     f36:	44                   	inc    %esp
     f37:	4c                   	dec    %esp
     f38:	41                   	inc    %ecx
     f39:	59                   	pop    %ecx
     f3a:	4f                   	dec    %edi
     f3b:	55                   	push   %ebp
     f3c:	54                   	push   %esp
     f3d:	5f                   	pop    %edi
     f3e:	31 35 35 35 00 73    	xor    %esi,0x73003535
     f44:	68 6f 72 74 20       	push   $0x2074726f
     f49:	75 6e                	jne    fb9 <F_IMMED+0xf39>
     f4b:	73 69                	jae    fb6 <F_IMMED+0xf36>
     f4d:	67 6e                	outsb  %ds:(%si),(%dx)
     f4f:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%ecx)
     f54:	74 00                	je     f56 <F_IMMED+0xed6>
     f56:	53                   	push   %ebx
     f57:	44                   	inc    %esp
     f58:	4c                   	dec    %esp
     f59:	5f                   	pop    %edi
     f5a:	53                   	push   %ebx
     f5b:	43                   	inc    %ebx
     f5c:	41                   	inc    %ecx
     f5d:	4e                   	dec    %esi
     f5e:	43                   	inc    %ebx
     f5f:	4f                   	dec    %edi
     f60:	44                   	inc    %esp
     f61:	45                   	inc    %ebp
     f62:	5f                   	pop    %edi
     f63:	4d                   	dec    %ebp
     f64:	45                   	inc    %ebp
     f65:	4e                   	dec    %esi
     f66:	55                   	push   %ebp
     f67:	00 53 44             	add    %dl,0x44(%ebx)
     f6a:	4c                   	dec    %esp
     f6b:	5f                   	pop    %edi
     f6c:	53                   	push   %ebx
     f6d:	43                   	inc    %ebx
     f6e:	41                   	inc    %ecx
     f6f:	4e                   	dec    %esi
     f70:	43                   	inc    %ebx
     f71:	4f                   	dec    %edi
     f72:	44                   	inc    %esp
     f73:	45                   	inc    %ebp
     f74:	5f                   	pop    %edi
     f75:	48                   	dec    %eax
     f76:	4f                   	dec    %edi
     f77:	4d                   	dec    %ebp
     f78:	45                   	inc    %ebp
     f79:	00 53 44             	add    %dl,0x44(%ebx)
     f7c:	4c                   	dec    %esp
     f7d:	5f                   	pop    %edi
     f7e:	53                   	push   %ebx
     f7f:	43                   	inc    %ebx
     f80:	41                   	inc    %ecx
     f81:	4e                   	dec    %esi
     f82:	43                   	inc    %ebx
     f83:	4f                   	dec    %edi
     f84:	44                   	inc    %esp
     f85:	45                   	inc    %ebp
     f86:	5f                   	pop    %edi
     f87:	53                   	push   %ebx
     f88:	43                   	inc    %ebx
     f89:	52                   	push   %edx
     f8a:	4f                   	dec    %edi
     f8b:	4c                   	dec    %esp
     f8c:	4c                   	dec    %esp
     f8d:	4c                   	dec    %esp
     f8e:	4f                   	dec    %edi
     f8f:	43                   	inc    %ebx
     f90:	4b                   	dec    %ebx
     f91:	00 53 44             	add    %dl,0x44(%ebx)
     f94:	4c                   	dec    %esp
     f95:	5f                   	pop    %edi
     f96:	53                   	push   %ebx
     f97:	43                   	inc    %ebx
     f98:	41                   	inc    %ecx
     f99:	4e                   	dec    %esi
     f9a:	43                   	inc    %ebx
     f9b:	4f                   	dec    %edi
     f9c:	44                   	inc    %esp
     f9d:	45                   	inc    %ebp
     f9e:	5f                   	pop    %edi
     f9f:	41                   	inc    %ecx
     fa0:	43                   	inc    %ebx
     fa1:	5f                   	pop    %edi
     fa2:	48                   	dec    %eax
     fa3:	4f                   	dec    %edi
     fa4:	4d                   	dec    %ebp
     fa5:	45                   	inc    %ebp
     fa6:	00 53 44             	add    %dl,0x44(%ebx)
     fa9:	4c                   	dec    %esp
     faa:	5f                   	pop    %edi
     fab:	53                   	push   %ebx
     fac:	43                   	inc    %ebx
     fad:	41                   	inc    %ecx
     fae:	4e                   	dec    %esi
     faf:	43                   	inc    %ebx
     fb0:	4f                   	dec    %edi
     fb1:	44                   	inc    %esp
     fb2:	45                   	inc    %ebp
     fb3:	5f                   	pop    %edi
     fb4:	4b                   	dec    %ebx
     fb5:	50                   	push   %eax
     fb6:	5f                   	pop    %edi
     fb7:	4d                   	dec    %ebp
     fb8:	45                   	inc    %ebp
     fb9:	4d                   	dec    %ebp
     fba:	52                   	push   %edx
     fbb:	45                   	inc    %ebp
     fbc:	43                   	inc    %ebx
     fbd:	41                   	inc    %ecx
     fbe:	4c                   	dec    %esp
     fbf:	4c                   	dec    %esp
     fc0:	00 73 69             	add    %dh,0x69(%ebx)
     fc3:	7a 65                	jp     102a <INPUT_BUFFER_SIZE+0x2a>
     fc5:	5f                   	pop    %edi
     fc6:	74 00                	je     fc8 <F_IMMED+0xf48>
     fc8:	53                   	push   %ebx
     fc9:	44                   	inc    %esp
     fca:	4c                   	dec    %esp
     fcb:	5f                   	pop    %edi
     fcc:	53                   	push   %ebx
     fcd:	43                   	inc    %ebx
     fce:	41                   	inc    %ecx
     fcf:	4e                   	dec    %esi
     fd0:	43                   	inc    %ebx
     fd1:	4f                   	dec    %edi
     fd2:	44                   	inc    %esp
     fd3:	45                   	inc    %ebp
     fd4:	5f                   	pop    %edi
     fd5:	4b                   	dec    %ebx
     fd6:	50                   	push   %eax
     fd7:	5f                   	pop    %edi
     fd8:	32 00                	xor    (%eax),%al
     fda:	53                   	push   %ebx
     fdb:	44                   	inc    %esp
     fdc:	4c                   	dec    %esp
     fdd:	5f                   	pop    %edi
     fde:	53                   	push   %ebx
     fdf:	43                   	inc    %ebx
     fe0:	41                   	inc    %ecx
     fe1:	4e                   	dec    %esi
     fe2:	43                   	inc    %ebx
     fe3:	4f                   	dec    %edi
     fe4:	44                   	inc    %esp
     fe5:	45                   	inc    %ebp
     fe6:	5f                   	pop    %edi
     fe7:	4b                   	dec    %ebx
     fe8:	50                   	push   %eax
     fe9:	5f                   	pop    %edi
     fea:	33 00                	xor    (%eax),%eax
     fec:	53                   	push   %ebx
     fed:	44                   	inc    %esp
     fee:	4c                   	dec    %esp
     fef:	5f                   	pop    %edi
     ff0:	53                   	push   %ebx
     ff1:	43                   	inc    %ebx
     ff2:	41                   	inc    %ecx
     ff3:	4e                   	dec    %esi
     ff4:	43                   	inc    %ebx
     ff5:	4f                   	dec    %edi
     ff6:	44                   	inc    %esp
     ff7:	45                   	inc    %ebp
     ff8:	5f                   	pop    %edi
     ff9:	4b                   	dec    %ebx
     ffa:	50                   	push   %eax
     ffb:	5f                   	pop    %edi
     ffc:	35 00 53 44 4c       	xor    $0x4c445300,%eax
    1001:	5f                   	pop    %edi
    1002:	53                   	push   %ebx
    1003:	43                   	inc    %ebx
    1004:	41                   	inc    %ecx
    1005:	4e                   	dec    %esi
    1006:	43                   	inc    %ebx
    1007:	4f                   	dec    %edi
    1008:	44                   	inc    %esp
    1009:	45                   	inc    %ebp
    100a:	5f                   	pop    %edi
    100b:	30 00                	xor    %al,(%eax)
    100d:	53                   	push   %ebx
    100e:	44                   	inc    %esp
    100f:	4c                   	dec    %esp
    1010:	5f                   	pop    %edi
    1011:	53                   	push   %ebx
    1012:	43                   	inc    %ebx
    1013:	41                   	inc    %ecx
    1014:	4e                   	dec    %esi
    1015:	43                   	inc    %ebx
    1016:	4f                   	dec    %edi
    1017:	44                   	inc    %esp
    1018:	45                   	inc    %ebp
    1019:	5f                   	pop    %edi
    101a:	31 00                	xor    %eax,(%eax)
    101c:	53                   	push   %ebx
    101d:	44                   	inc    %esp
    101e:	4c                   	dec    %esp
    101f:	5f                   	pop    %edi
    1020:	53                   	push   %ebx
    1021:	43                   	inc    %ebx
    1022:	41                   	inc    %ecx
    1023:	4e                   	dec    %esi
    1024:	43                   	inc    %ebx
    1025:	4f                   	dec    %edi
    1026:	44                   	inc    %esp
    1027:	45                   	inc    %ebp
    1028:	5f                   	pop    %edi
    1029:	32 00                	xor    (%eax),%al
    102b:	53                   	push   %ebx
    102c:	44                   	inc    %esp
    102d:	4c                   	dec    %esp
    102e:	5f                   	pop    %edi
    102f:	41                   	inc    %ecx
    1030:	52                   	push   %edx
    1031:	52                   	push   %edx
    1032:	41                   	inc    %ecx
    1033:	59                   	pop    %ecx
    1034:	4f                   	dec    %edi
    1035:	52                   	push   %edx
    1036:	44                   	inc    %esp
    1037:	45                   	inc    %ebp
    1038:	52                   	push   %edx
    1039:	5f                   	pop    %edi
    103a:	52                   	push   %edx
    103b:	47                   	inc    %edi
    103c:	42                   	inc    %edx
    103d:	00 53 44             	add    %dl,0x44(%ebx)
    1040:	4c                   	dec    %esp
    1041:	5f                   	pop    %edi
    1042:	53                   	push   %ebx
    1043:	43                   	inc    %ebx
    1044:	41                   	inc    %ecx
    1045:	4e                   	dec    %esi
    1046:	43                   	inc    %ebx
    1047:	4f                   	dec    %edi
    1048:	44                   	inc    %esp
    1049:	45                   	inc    %ebp
    104a:	5f                   	pop    %edi
    104b:	34 00                	xor    $0x0,%al
    104d:	75 6e                	jne    10bd <INPUT_BUFFER_SIZE+0xbd>
    104f:	73 69                	jae    10ba <INPUT_BUFFER_SIZE+0xba>
    1051:	67 6e                	outsb  %ds:(%si),(%dx)
    1053:	65 64 20 63 68       	gs and %ah,%fs:0x68(%ebx)
    1058:	61                   	popa   
    1059:	72 00                	jb     105b <INPUT_BUFFER_SIZE+0x5b>
    105b:	53                   	push   %ebx
    105c:	44                   	inc    %esp
    105d:	4c                   	dec    %esp
    105e:	5f                   	pop    %edi
    105f:	53                   	push   %ebx
    1060:	43                   	inc    %ebx
    1061:	41                   	inc    %ecx
    1062:	4e                   	dec    %esi
    1063:	43                   	inc    %ebx
    1064:	4f                   	dec    %edi
    1065:	44                   	inc    %esp
    1066:	45                   	inc    %ebp
    1067:	5f                   	pop    %edi
    1068:	36 00 53 44          	add    %dl,%ss:0x44(%ebx)
    106c:	4c                   	dec    %esp
    106d:	5f                   	pop    %edi
    106e:	53                   	push   %ebx
    106f:	43                   	inc    %ebx
    1070:	41                   	inc    %ecx
    1071:	4e                   	dec    %esi
    1072:	43                   	inc    %ebx
    1073:	4f                   	dec    %edi
    1074:	44                   	inc    %esp
    1075:	45                   	inc    %ebp
    1076:	5f                   	pop    %edi
    1077:	43                   	inc    %ebx
    1078:	41                   	inc    %ecx
    1079:	4e                   	dec    %esi
    107a:	43                   	inc    %ebx
    107b:	45                   	inc    %ebp
    107c:	4c                   	dec    %esp
    107d:	00 53 44             	add    %dl,0x44(%ebx)
    1080:	4c                   	dec    %esp
    1081:	5f                   	pop    %edi
    1082:	53                   	push   %ebx
    1083:	43                   	inc    %ebx
    1084:	41                   	inc    %ecx
    1085:	4e                   	dec    %esi
    1086:	43                   	inc    %ebx
    1087:	4f                   	dec    %edi
    1088:	44                   	inc    %esp
    1089:	45                   	inc    %ebp
    108a:	5f                   	pop    %edi
    108b:	38 00                	cmp    %al,(%eax)
    108d:	53                   	push   %ebx
    108e:	44                   	inc    %esp
    108f:	4c                   	dec    %esp
    1090:	5f                   	pop    %edi
    1091:	53                   	push   %ebx
    1092:	43                   	inc    %ebx
    1093:	41                   	inc    %ecx
    1094:	4e                   	dec    %esi
    1095:	43                   	inc    %ebx
    1096:	4f                   	dec    %edi
    1097:	44                   	inc    %esp
    1098:	45                   	inc    %ebp
    1099:	5f                   	pop    %edi
    109a:	39 00                	cmp    %eax,(%eax)
    109c:	53                   	push   %ebx
    109d:	44                   	inc    %esp
    109e:	4c                   	dec    %esp
    109f:	5f                   	pop    %edi
    10a0:	53                   	push   %ebx
    10a1:	43                   	inc    %ebx
    10a2:	41                   	inc    %ecx
    10a3:	4e                   	dec    %esi
    10a4:	43                   	inc    %ebx
    10a5:	4f                   	dec    %edi
    10a6:	44                   	inc    %esp
    10a7:	45                   	inc    %ebp
    10a8:	5f                   	pop    %edi
    10a9:	53                   	push   %ebx
    10aa:	54                   	push   %esp
    10ab:	4f                   	dec    %edi
    10ac:	50                   	push   %eax
    10ad:	00 5f 49             	add    %bl,0x49(%edi)
    10b0:	4f                   	dec    %edi
    10b1:	5f                   	pop    %edi
    10b2:	72 65                	jb     1119 <INPUT_BUFFER_SIZE+0x119>
    10b4:	61                   	popa   
    10b5:	64 5f                	fs pop %edi
    10b7:	65 6e                	outsb  %gs:(%esi),(%dx)
    10b9:	64 00 53 44          	add    %dl,%fs:0x44(%ebx)
    10bd:	4c                   	dec    %esp
    10be:	5f                   	pop    %edi
    10bf:	53                   	push   %ebx
    10c0:	43                   	inc    %ebx
    10c1:	41                   	inc    %ecx
    10c2:	4e                   	dec    %esi
    10c3:	43                   	inc    %ebx
    10c4:	4f                   	dec    %edi
    10c5:	44                   	inc    %esp
    10c6:	45                   	inc    %ebp
    10c7:	5f                   	pop    %edi
    10c8:	41                   	inc    %ecx
    10c9:	00 53 44             	add    %dl,0x44(%ebx)
    10cc:	4c                   	dec    %esp
    10cd:	5f                   	pop    %edi
    10ce:	53                   	push   %ebx
    10cf:	43                   	inc    %ebx
    10d0:	41                   	inc    %ecx
    10d1:	4e                   	dec    %esi
    10d2:	43                   	inc    %ebx
    10d3:	4f                   	dec    %edi
    10d4:	44                   	inc    %esp
    10d5:	45                   	inc    %ebp
    10d6:	5f                   	pop    %edi
    10d7:	56                   	push   %esi
    10d8:	4f                   	dec    %edi
    10d9:	4c                   	dec    %esp
    10da:	55                   	push   %ebp
    10db:	4d                   	dec    %ebp
    10dc:	45                   	inc    %ebp
    10dd:	44                   	inc    %esp
    10de:	4f                   	dec    %edi
    10df:	57                   	push   %edi
    10e0:	4e                   	dec    %esi
    10e1:	00 53 44             	add    %dl,0x44(%ebx)
    10e4:	4c                   	dec    %esp
    10e5:	5f                   	pop    %edi
    10e6:	53                   	push   %ebx
    10e7:	43                   	inc    %ebx
    10e8:	41                   	inc    %ecx
    10e9:	4e                   	dec    %esi
    10ea:	43                   	inc    %ebx
    10eb:	4f                   	dec    %edi
    10ec:	44                   	inc    %esp
    10ed:	45                   	inc    %ebp
    10ee:	5f                   	pop    %edi
    10ef:	43                   	inc    %ebx
    10f0:	00 53 44             	add    %dl,0x44(%ebx)
    10f3:	4c                   	dec    %esp
    10f4:	5f                   	pop    %edi
    10f5:	53                   	push   %ebx
    10f6:	43                   	inc    %ebx
    10f7:	41                   	inc    %ecx
    10f8:	4e                   	dec    %esi
    10f9:	43                   	inc    %ebx
    10fa:	4f                   	dec    %edi
    10fb:	44                   	inc    %esp
    10fc:	45                   	inc    %ebp
    10fd:	5f                   	pop    %edi
    10fe:	44                   	inc    %esp
    10ff:	00 53 44             	add    %dl,0x44(%ebx)
    1102:	4c                   	dec    %esp
    1103:	5f                   	pop    %edi
    1104:	53                   	push   %ebx
    1105:	43                   	inc    %ebx
    1106:	41                   	inc    %ecx
    1107:	4e                   	dec    %esi
    1108:	43                   	inc    %ebx
    1109:	4f                   	dec    %edi
    110a:	44                   	inc    %esp
    110b:	45                   	inc    %ebp
    110c:	5f                   	pop    %edi
    110d:	45                   	inc    %ebp
    110e:	00 53 44             	add    %dl,0x44(%ebx)
    1111:	4c                   	dec    %esp
    1112:	5f                   	pop    %edi
    1113:	53                   	push   %ebx
    1114:	43                   	inc    %ebx
    1115:	41                   	inc    %ecx
    1116:	4e                   	dec    %esi
    1117:	43                   	inc    %ebx
    1118:	4f                   	dec    %edi
    1119:	44                   	inc    %esp
    111a:	45                   	inc    %ebp
    111b:	5f                   	pop    %edi
    111c:	46                   	inc    %esi
    111d:	00 53 44             	add    %dl,0x44(%ebx)
    1120:	4c                   	dec    %esp
    1121:	5f                   	pop    %edi
    1122:	53                   	push   %ebx
    1123:	43                   	inc    %ebx
    1124:	41                   	inc    %ecx
    1125:	4e                   	dec    %esi
    1126:	43                   	inc    %ebx
    1127:	4f                   	dec    %edi
    1128:	44                   	inc    %esp
    1129:	45                   	inc    %ebp
    112a:	5f                   	pop    %edi
    112b:	47                   	inc    %edi
    112c:	00 53 44             	add    %dl,0x44(%ebx)
    112f:	4c                   	dec    %esp
    1130:	5f                   	pop    %edi
    1131:	53                   	push   %ebx
    1132:	43                   	inc    %ebx
    1133:	41                   	inc    %ecx
    1134:	4e                   	dec    %esi
    1135:	43                   	inc    %ebx
    1136:	4f                   	dec    %edi
    1137:	44                   	inc    %esp
    1138:	45                   	inc    %ebp
    1139:	5f                   	pop    %edi
    113a:	48                   	dec    %eax
    113b:	00 53 44             	add    %dl,0x44(%ebx)
    113e:	4c                   	dec    %esp
    113f:	5f                   	pop    %edi
    1140:	53                   	push   %ebx
    1141:	43                   	inc    %ebx
    1142:	41                   	inc    %ecx
    1143:	4e                   	dec    %esi
    1144:	43                   	inc    %ebx
    1145:	4f                   	dec    %edi
    1146:	44                   	inc    %esp
    1147:	45                   	inc    %ebp
    1148:	5f                   	pop    %edi
    1149:	49                   	dec    %ecx
    114a:	00 53 44             	add    %dl,0x44(%ebx)
    114d:	4c                   	dec    %esp
    114e:	5f                   	pop    %edi
    114f:	53                   	push   %ebx
    1150:	43                   	inc    %ebx
    1151:	41                   	inc    %ecx
    1152:	4e                   	dec    %esi
    1153:	43                   	inc    %ebx
    1154:	4f                   	dec    %edi
    1155:	44                   	inc    %esp
    1156:	45                   	inc    %ebp
    1157:	5f                   	pop    %edi
    1158:	4a                   	dec    %edx
    1159:	00 53 44             	add    %dl,0x44(%ebx)
    115c:	4c                   	dec    %esp
    115d:	5f                   	pop    %edi
    115e:	53                   	push   %ebx
    115f:	43                   	inc    %ebx
    1160:	41                   	inc    %ecx
    1161:	4e                   	dec    %esi
    1162:	43                   	inc    %ebx
    1163:	4f                   	dec    %edi
    1164:	44                   	inc    %esp
    1165:	45                   	inc    %ebp
    1166:	5f                   	pop    %edi
    1167:	4b                   	dec    %ebx
    1168:	00 53 44             	add    %dl,0x44(%ebx)
    116b:	4c                   	dec    %esp
    116c:	5f                   	pop    %edi
    116d:	53                   	push   %ebx
    116e:	43                   	inc    %ebx
    116f:	41                   	inc    %ecx
    1170:	4e                   	dec    %esi
    1171:	43                   	inc    %ebx
    1172:	4f                   	dec    %edi
    1173:	44                   	inc    %esp
    1174:	45                   	inc    %ebp
    1175:	5f                   	pop    %edi
    1176:	4c                   	dec    %esp
    1177:	00 53 44             	add    %dl,0x44(%ebx)
    117a:	4c                   	dec    %esp
    117b:	5f                   	pop    %edi
    117c:	53                   	push   %ebx
    117d:	43                   	inc    %ebx
    117e:	41                   	inc    %ecx
    117f:	4e                   	dec    %esi
    1180:	43                   	inc    %ebx
    1181:	4f                   	dec    %edi
    1182:	44                   	inc    %esp
    1183:	45                   	inc    %ebp
    1184:	5f                   	pop    %edi
    1185:	4d                   	dec    %ebp
    1186:	00 53 44             	add    %dl,0x44(%ebx)
    1189:	4c                   	dec    %esp
    118a:	5f                   	pop    %edi
    118b:	53                   	push   %ebx
    118c:	43                   	inc    %ebx
    118d:	41                   	inc    %ecx
    118e:	4e                   	dec    %esi
    118f:	43                   	inc    %ebx
    1190:	4f                   	dec    %edi
    1191:	44                   	inc    %esp
    1192:	45                   	inc    %ebp
    1193:	5f                   	pop    %edi
    1194:	4e                   	dec    %esi
    1195:	00 53 44             	add    %dl,0x44(%ebx)
    1198:	4c                   	dec    %esp
    1199:	5f                   	pop    %edi
    119a:	53                   	push   %ebx
    119b:	43                   	inc    %ebx
    119c:	41                   	inc    %ecx
    119d:	4e                   	dec    %esi
    119e:	43                   	inc    %ebx
    119f:	4f                   	dec    %edi
    11a0:	44                   	inc    %esp
    11a1:	45                   	inc    %ebp
    11a2:	5f                   	pop    %edi
    11a3:	4f                   	dec    %edi
    11a4:	00 53 44             	add    %dl,0x44(%ebx)
    11a7:	4c                   	dec    %esp
    11a8:	5f                   	pop    %edi
    11a9:	53                   	push   %ebx
    11aa:	43                   	inc    %ebx
    11ab:	41                   	inc    %ecx
    11ac:	4e                   	dec    %esi
    11ad:	43                   	inc    %ebx
    11ae:	4f                   	dec    %edi
    11af:	44                   	inc    %esp
    11b0:	45                   	inc    %ebp
    11b1:	5f                   	pop    %edi
    11b2:	50                   	push   %eax
    11b3:	00 53 44             	add    %dl,0x44(%ebx)
    11b6:	4c                   	dec    %esp
    11b7:	5f                   	pop    %edi
    11b8:	53                   	push   %ebx
    11b9:	43                   	inc    %ebx
    11ba:	41                   	inc    %ecx
    11bb:	4e                   	dec    %esi
    11bc:	43                   	inc    %ebx
    11bd:	4f                   	dec    %edi
    11be:	44                   	inc    %esp
    11bf:	45                   	inc    %ebp
    11c0:	5f                   	pop    %edi
    11c1:	51                   	push   %ecx
    11c2:	00 53 44             	add    %dl,0x44(%ebx)
    11c5:	4c                   	dec    %esp
    11c6:	5f                   	pop    %edi
    11c7:	53                   	push   %ebx
    11c8:	43                   	inc    %ebx
    11c9:	41                   	inc    %ecx
    11ca:	4e                   	dec    %esi
    11cb:	43                   	inc    %ebx
    11cc:	4f                   	dec    %edi
    11cd:	44                   	inc    %esp
    11ce:	45                   	inc    %ebp
    11cf:	5f                   	pop    %edi
    11d0:	43                   	inc    %ebx
    11d1:	55                   	push   %ebp
    11d2:	52                   	push   %edx
    11d3:	52                   	push   %edx
    11d4:	45                   	inc    %ebp
    11d5:	4e                   	dec    %esi
    11d6:	43                   	inc    %ebx
    11d7:	59                   	pop    %ecx
    11d8:	53                   	push   %ebx
    11d9:	55                   	push   %ebp
    11da:	42                   	inc    %edx
    11db:	55                   	push   %ebp
    11dc:	4e                   	dec    %esi
    11dd:	49                   	dec    %ecx
    11de:	54                   	push   %esp
    11df:	00 53 44             	add    %dl,0x44(%ebx)
    11e2:	4c                   	dec    %esp
    11e3:	5f                   	pop    %edi
    11e4:	53                   	push   %ebx
    11e5:	43                   	inc    %ebx
    11e6:	41                   	inc    %ecx
    11e7:	4e                   	dec    %esi
    11e8:	43                   	inc    %ebx
    11e9:	4f                   	dec    %edi
    11ea:	44                   	inc    %esp
    11eb:	45                   	inc    %ebp
    11ec:	5f                   	pop    %edi
    11ed:	53                   	push   %ebx
    11ee:	00 53 44             	add    %dl,0x44(%ebx)
    11f1:	4c                   	dec    %esp
    11f2:	5f                   	pop    %edi
    11f3:	53                   	push   %ebx
    11f4:	43                   	inc    %ebx
    11f5:	41                   	inc    %ecx
    11f6:	4e                   	dec    %esi
    11f7:	43                   	inc    %ebx
    11f8:	4f                   	dec    %edi
    11f9:	44                   	inc    %esp
    11fa:	45                   	inc    %ebp
    11fb:	5f                   	pop    %edi
    11fc:	54                   	push   %esp
    11fd:	00 53 44             	add    %dl,0x44(%ebx)
    1200:	4c                   	dec    %esp
    1201:	5f                   	pop    %edi
    1202:	53                   	push   %ebx
    1203:	43                   	inc    %ebx
    1204:	41                   	inc    %ecx
    1205:	4e                   	dec    %esi
    1206:	43                   	inc    %ebx
    1207:	4f                   	dec    %edi
    1208:	44                   	inc    %esp
    1209:	45                   	inc    %ebp
    120a:	5f                   	pop    %edi
    120b:	55                   	push   %ebp
    120c:	00 53 44             	add    %dl,0x44(%ebx)
    120f:	4c                   	dec    %esp
    1210:	5f                   	pop    %edi
    1211:	53                   	push   %ebx
    1212:	43                   	inc    %ebx
    1213:	41                   	inc    %ecx
    1214:	4e                   	dec    %esi
    1215:	43                   	inc    %ebx
    1216:	4f                   	dec    %edi
    1217:	44                   	inc    %esp
    1218:	45                   	inc    %ebp
    1219:	5f                   	pop    %edi
    121a:	56                   	push   %esi
    121b:	00 53 44             	add    %dl,0x44(%ebx)
    121e:	4c                   	dec    %esp
    121f:	5f                   	pop    %edi
    1220:	53                   	push   %ebx
    1221:	43                   	inc    %ebx
    1222:	41                   	inc    %ecx
    1223:	4e                   	dec    %esi
    1224:	43                   	inc    %ebx
    1225:	4f                   	dec    %edi
    1226:	44                   	inc    %esp
    1227:	45                   	inc    %ebp
    1228:	5f                   	pop    %edi
    1229:	57                   	push   %edi
    122a:	00 53 44             	add    %dl,0x44(%ebx)
    122d:	4c                   	dec    %esp
    122e:	5f                   	pop    %edi
    122f:	53                   	push   %ebx
    1230:	43                   	inc    %ebx
    1231:	41                   	inc    %ecx
    1232:	4e                   	dec    %esi
    1233:	43                   	inc    %ebx
    1234:	4f                   	dec    %edi
    1235:	44                   	inc    %esp
    1236:	45                   	inc    %ebp
    1237:	5f                   	pop    %edi
    1238:	58                   	pop    %eax
    1239:	00 53 44             	add    %dl,0x44(%ebx)
    123c:	4c                   	dec    %esp
    123d:	5f                   	pop    %edi
    123e:	53                   	push   %ebx
    123f:	43                   	inc    %ebx
    1240:	41                   	inc    %ecx
    1241:	4e                   	dec    %esi
    1242:	43                   	inc    %ebx
    1243:	4f                   	dec    %edi
    1244:	44                   	inc    %esp
    1245:	45                   	inc    %ebp
    1246:	5f                   	pop    %edi
    1247:	59                   	pop    %ecx
    1248:	00 53 44             	add    %dl,0x44(%ebx)
    124b:	4c                   	dec    %esp
    124c:	5f                   	pop    %edi
    124d:	53                   	push   %ebx
    124e:	43                   	inc    %ebx
    124f:	41                   	inc    %ecx
    1250:	4e                   	dec    %esi
    1251:	43                   	inc    %ebx
    1252:	4f                   	dec    %edi
    1253:	44                   	inc    %esp
    1254:	45                   	inc    %ebp
    1255:	5f                   	pop    %edi
    1256:	5a                   	pop    %edx
    1257:	00 53 44             	add    %dl,0x44(%ebx)
    125a:	4c                   	dec    %esp
    125b:	5f                   	pop    %edi
    125c:	50                   	push   %eax
    125d:	49                   	dec    %ecx
    125e:	58                   	pop    %eax
    125f:	45                   	inc    %ebp
    1260:	4c                   	dec    %esp
    1261:	54                   	push   %esp
    1262:	59                   	pop    %ecx
    1263:	50                   	push   %eax
    1264:	45                   	inc    %ebp
    1265:	5f                   	pop    %edi
    1266:	50                   	push   %eax
    1267:	41                   	inc    %ecx
    1268:	43                   	inc    %ebx
    1269:	4b                   	dec    %ebx
    126a:	45                   	inc    %ebp
    126b:	44                   	inc    %esp
    126c:	38 00                	cmp    %al,(%eax)
    126e:	53                   	push   %ebx
    126f:	44                   	inc    %esp
    1270:	4c                   	dec    %esp
    1271:	5f                   	pop    %edi
    1272:	50                   	push   %eax
    1273:	41                   	inc    %ecx
    1274:	43                   	inc    %ebx
    1275:	4b                   	dec    %ebx
    1276:	45                   	inc    %ebp
    1277:	44                   	inc    %esp
    1278:	4f                   	dec    %edi
    1279:	52                   	push   %edx
    127a:	44                   	inc    %esp
    127b:	45                   	inc    %ebp
    127c:	52                   	push   %edx
    127d:	5f                   	pop    %edi
    127e:	42                   	inc    %edx
    127f:	47                   	inc    %edi
    1280:	52                   	push   %edx
    1281:	41                   	inc    %ecx
    1282:	00 53 44             	add    %dl,0x44(%ebx)
    1285:	4c                   	dec    %esp
    1286:	5f                   	pop    %edi
    1287:	50                   	push   %eax
    1288:	41                   	inc    %ecx
    1289:	43                   	inc    %ebx
    128a:	4b                   	dec    %ebx
    128b:	45                   	inc    %ebp
    128c:	44                   	inc    %esp
    128d:	4f                   	dec    %edi
    128e:	52                   	push   %edx
    128f:	44                   	inc    %esp
    1290:	45                   	inc    %ebp
    1291:	52                   	push   %edx
    1292:	5f                   	pop    %edi
    1293:	58                   	pop    %eax
    1294:	42                   	inc    %edx
    1295:	47                   	inc    %edi
    1296:	52                   	push   %edx
    1297:	00 53 44             	add    %dl,0x44(%ebx)
    129a:	4c                   	dec    %esp
    129b:	5f                   	pop    %edi
    129c:	53                   	push   %ebx
    129d:	43                   	inc    %ebx
    129e:	41                   	inc    %ecx
    129f:	4e                   	dec    %esi
    12a0:	43                   	inc    %ebx
    12a1:	4f                   	dec    %edi
    12a2:	44                   	inc    %esp
    12a3:	45                   	inc    %ebp
    12a4:	5f                   	pop    %edi
    12a5:	4d                   	dec    %ebp
    12a6:	41                   	inc    %ecx
    12a7:	49                   	dec    %ecx
    12a8:	4c                   	dec    %esp
    12a9:	00 53 44             	add    %dl,0x44(%ebx)
    12ac:	4c                   	dec    %esp
    12ad:	5f                   	pop    %edi
    12ae:	41                   	inc    %ecx
    12af:	52                   	push   %edx
    12b0:	52                   	push   %edx
    12b1:	41                   	inc    %ecx
    12b2:	59                   	pop    %ecx
    12b3:	4f                   	dec    %edi
    12b4:	52                   	push   %edx
    12b5:	44                   	inc    %esp
    12b6:	45                   	inc    %ebp
    12b7:	52                   	push   %edx
    12b8:	5f                   	pop    %edi
    12b9:	42                   	inc    %edx
    12ba:	47                   	inc    %edi
    12bb:	52                   	push   %edx
    12bc:	41                   	inc    %ecx
    12bd:	00 53 44             	add    %dl,0x44(%ebx)
    12c0:	4c                   	dec    %esp
    12c1:	5f                   	pop    %edi
    12c2:	53                   	push   %ebx
    12c3:	43                   	inc    %ebx
    12c4:	41                   	inc    %ecx
    12c5:	4e                   	dec    %esi
    12c6:	43                   	inc    %ebx
    12c7:	4f                   	dec    %edi
    12c8:	44                   	inc    %esp
    12c9:	45                   	inc    %ebp
    12ca:	5f                   	pop    %edi
    12cb:	57                   	push   %edi
    12cc:	57                   	push   %edi
    12cd:	57                   	push   %edi
    12ce:	00 53 44             	add    %dl,0x44(%ebx)
    12d1:	4c                   	dec    %esp
    12d2:	5f                   	pop    %edi
    12d3:	50                   	push   %eax
    12d4:	49                   	dec    %ecx
    12d5:	58                   	pop    %eax
    12d6:	45                   	inc    %ebp
    12d7:	4c                   	dec    %esp
    12d8:	54                   	push   %esp
    12d9:	59                   	pop    %ecx
    12da:	50                   	push   %eax
    12db:	45                   	inc    %ebp
    12dc:	5f                   	pop    %edi
    12dd:	41                   	inc    %ecx
    12de:	52                   	push   %edx
    12df:	52                   	push   %edx
    12e0:	41                   	inc    %ecx
    12e1:	59                   	pop    %ecx
    12e2:	55                   	push   %ebp
    12e3:	38 00                	cmp    %al,(%eax)
    12e5:	53                   	push   %ebx
    12e6:	44                   	inc    %esp
    12e7:	4c                   	dec    %esp
    12e8:	5f                   	pop    %edi
    12e9:	50                   	push   %eax
    12ea:	49                   	dec    %ecx
    12eb:	58                   	pop    %eax
    12ec:	45                   	inc    %ebp
    12ed:	4c                   	dec    %esp
    12ee:	54                   	push   %esp
    12ef:	59                   	pop    %ecx
    12f0:	50                   	push   %eax
    12f1:	45                   	inc    %ebp
    12f2:	5f                   	pop    %edi
    12f3:	50                   	push   %eax
    12f4:	41                   	inc    %ecx
    12f5:	43                   	inc    %ebx
    12f6:	4b                   	dec    %ebx
    12f7:	45                   	inc    %ebp
    12f8:	44                   	inc    %esp
    12f9:	31 36                	xor    %esi,(%esi)
    12fb:	00 53 44             	add    %dl,0x44(%ebx)
    12fe:	4c                   	dec    %esp
    12ff:	5f                   	pop    %edi
    1300:	50                   	push   %eax
    1301:	41                   	inc    %ecx
    1302:	43                   	inc    %ebx
    1303:	4b                   	dec    %ebx
    1304:	45                   	inc    %ebp
    1305:	44                   	inc    %esp
    1306:	4c                   	dec    %esp
    1307:	41                   	inc    %ecx
    1308:	59                   	pop    %ecx
    1309:	4f                   	dec    %edi
    130a:	55                   	push   %ebp
    130b:	54                   	push   %esp
    130c:	5f                   	pop    %edi
    130d:	35 36 35 00 67       	xor    $0x67003536,%eax
    1312:	61                   	popa   
    1313:	6d                   	insl   (%dx),%es:(%edi)
    1314:	65 6f                	outsl  %gs:(%esi),(%dx)
    1316:	76 65                	jbe    137d <INPUT_BUFFER_SIZE+0x37d>
    1318:	72 00                	jb     131a <INPUT_BUFFER_SIZE+0x31a>
    131a:	53                   	push   %ebx
    131b:	44                   	inc    %esp
    131c:	4c                   	dec    %esp
    131d:	5f                   	pop    %edi
    131e:	53                   	push   %ebx
    131f:	43                   	inc    %ebx
    1320:	41                   	inc    %ecx
    1321:	4e                   	dec    %esi
    1322:	43                   	inc    %ebx
    1323:	4f                   	dec    %edi
    1324:	44                   	inc    %esp
    1325:	45                   	inc    %ebp
    1326:	5f                   	pop    %edi
    1327:	42                   	inc    %edx
    1328:	41                   	inc    %ecx
    1329:	43                   	inc    %ebx
    132a:	4b                   	dec    %ebx
    132b:	53                   	push   %ebx
    132c:	50                   	push   %eax
    132d:	41                   	inc    %ecx
    132e:	43                   	inc    %ebx
    132f:	45                   	inc    %ebp
    1330:	00 53 44             	add    %dl,0x44(%ebx)
    1333:	4c                   	dec    %esp
    1334:	5f                   	pop    %edi
    1335:	53                   	push   %ebx
    1336:	43                   	inc    %ebx
    1337:	41                   	inc    %ecx
    1338:	4e                   	dec    %esi
    1339:	43                   	inc    %ebx
    133a:	4f                   	dec    %edi
    133b:	44                   	inc    %esp
    133c:	45                   	inc    %ebp
    133d:	5f                   	pop    %edi
    133e:	41                   	inc    %ecx
    133f:	55                   	push   %ebp
    1340:	44                   	inc    %esp
    1341:	49                   	dec    %ecx
    1342:	4f                   	dec    %edi
    1343:	4d                   	dec    %ebp
    1344:	55                   	push   %ebp
    1345:	54                   	push   %esp
    1346:	45                   	inc    %ebp
    1347:	00 53 44             	add    %dl,0x44(%ebx)
    134a:	4c                   	dec    %esp
    134b:	5f                   	pop    %edi
    134c:	53                   	push   %ebx
    134d:	43                   	inc    %ebx
    134e:	41                   	inc    %ecx
    134f:	4e                   	dec    %esi
    1350:	43                   	inc    %ebx
    1351:	4f                   	dec    %edi
    1352:	44                   	inc    %esp
    1353:	45                   	inc    %ebp
    1354:	5f                   	pop    %edi
    1355:	52                   	push   %edx
    1356:	47                   	inc    %edi
    1357:	55                   	push   %ebp
    1358:	49                   	dec    %ecx
    1359:	00 53 44             	add    %dl,0x44(%ebx)
    135c:	4c                   	dec    %esp
    135d:	5f                   	pop    %edi
    135e:	50                   	push   %eax
    135f:	49                   	dec    %ecx
    1360:	58                   	pop    %eax
    1361:	45                   	inc    %ebp
    1362:	4c                   	dec    %esp
    1363:	54                   	push   %esp
    1364:	59                   	pop    %ecx
    1365:	50                   	push   %eax
    1366:	45                   	inc    %ebp
    1367:	5f                   	pop    %edi
    1368:	41                   	inc    %ecx
    1369:	52                   	push   %edx
    136a:	52                   	push   %edx
    136b:	41                   	inc    %ecx
    136c:	59                   	pop    %ecx
    136d:	46                   	inc    %esi
    136e:	31 36                	xor    %esi,(%esi)
    1370:	00 53 44             	add    %dl,0x44(%ebx)
    1373:	4c                   	dec    %esp
    1374:	5f                   	pop    %edi
    1375:	50                   	push   %eax
    1376:	41                   	inc    %ecx
    1377:	43                   	inc    %ebx
    1378:	4b                   	dec    %ebx
    1379:	45                   	inc    %ebp
    137a:	44                   	inc    %esp
    137b:	4f                   	dec    %edi
    137c:	52                   	push   %edx
    137d:	44                   	inc    %esp
    137e:	45                   	inc    %ebp
    137f:	52                   	push   %edx
    1380:	5f                   	pop    %edi
    1381:	41                   	inc    %ecx
    1382:	52                   	push   %edx
    1383:	47                   	inc    %edi
    1384:	42                   	inc    %edx
    1385:	00 5f 49             	add    %bl,0x49(%edi)
    1388:	4f                   	dec    %edi
    1389:	5f                   	pop    %edi
    138a:	62 75 66             	bound  %esi,0x66(%ebp)
    138d:	5f                   	pop    %edi
    138e:	62 61 73             	bound  %esp,0x73(%ecx)
    1391:	65 00 53 44          	add    %dl,%gs:0x44(%ebx)
    1395:	4c                   	dec    %esp
    1396:	5f                   	pop    %edi
    1397:	53                   	push   %ebx
    1398:	43                   	inc    %ebx
    1399:	41                   	inc    %ecx
    139a:	4e                   	dec    %esi
    139b:	43                   	inc    %ebx
    139c:	4f                   	dec    %edi
    139d:	44                   	inc    %esp
    139e:	45                   	inc    %ebp
    139f:	5f                   	pop    %edi
    13a0:	52                   	push   %edx
    13a1:	45                   	inc    %ebp
    13a2:	54                   	push   %esp
    13a3:	55                   	push   %ebp
    13a4:	52                   	push   %edx
    13a5:	4e                   	dec    %esi
    13a6:	00 53 44             	add    %dl,0x44(%ebx)
    13a9:	4c                   	dec    %esp
    13aa:	5f                   	pop    %edi
    13ab:	41                   	inc    %ecx
    13ac:	52                   	push   %edx
    13ad:	52                   	push   %edx
    13ae:	41                   	inc    %ecx
    13af:	59                   	pop    %ecx
    13b0:	4f                   	dec    %edi
    13b1:	52                   	push   %edx
    13b2:	44                   	inc    %esp
    13b3:	45                   	inc    %ebp
    13b4:	52                   	push   %edx
    13b5:	5f                   	pop    %edi
    13b6:	41                   	inc    %ecx
    13b7:	52                   	push   %edx
    13b8:	47                   	inc    %edi
    13b9:	42                   	inc    %edx
    13ba:	00 53 44             	add    %dl,0x44(%ebx)
    13bd:	4c                   	dec    %esp
    13be:	5f                   	pop    %edi
    13bf:	53                   	push   %ebx
    13c0:	43                   	inc    %ebx
    13c1:	41                   	inc    %ecx
    13c2:	4e                   	dec    %esi
    13c3:	43                   	inc    %ebx
    13c4:	4f                   	dec    %edi
    13c5:	44                   	inc    %esp
    13c6:	45                   	inc    %ebp
    13c7:	5f                   	pop    %edi
    13c8:	53                   	push   %ebx
    13c9:	50                   	push   %eax
    13ca:	41                   	inc    %ecx
    13cb:	43                   	inc    %ebx
    13cc:	45                   	inc    %ebp
    13cd:	00 69 6e             	add    %ch,0x6e(%ecx)
    13d0:	69 74 00 5f 6c 6f 63 	imul   $0x6b636f6c,0x5f(%eax,%eax,1),%esi
    13d7:	6b 
    13d8:	00 53 44             	add    %dl,0x44(%ebx)
    13db:	4c                   	dec    %esp
    13dc:	5f                   	pop    %edi
    13dd:	50                   	push   %eax
    13de:	41                   	inc    %ecx
    13df:	43                   	inc    %ebx
    13e0:	4b                   	dec    %ebx
    13e1:	45                   	inc    %ebp
    13e2:	44                   	inc    %esp
    13e3:	4c                   	dec    %esp
    13e4:	41                   	inc    %ecx
    13e5:	59                   	pop    %ecx
    13e6:	4f                   	dec    %edi
    13e7:	55                   	push   %ebp
    13e8:	54                   	push   %esp
    13e9:	5f                   	pop    %edi
    13ea:	34 34                	xor    $0x34,%al
    13ec:	34 34                	xor    $0x34,%al
    13ee:	00 73 69             	add    %dh,0x69(%ebx)
    13f1:	7a 65                	jp     1458 <INPUT_BUFFER_SIZE+0x458>
    13f3:	74 79                	je     146e <INPUT_BUFFER_SIZE+0x46e>
    13f5:	70 65                	jo     145c <INPUT_BUFFER_SIZE+0x45c>
    13f7:	00 53 44             	add    %dl,0x44(%ebx)
    13fa:	4c                   	dec    %esp
    13fb:	5f                   	pop    %edi
    13fc:	53                   	push   %ebx
    13fd:	43                   	inc    %ebx
    13fe:	41                   	inc    %ecx
    13ff:	4e                   	dec    %esi
    1400:	43                   	inc    %ebx
    1401:	4f                   	dec    %edi
    1402:	44                   	inc    %esp
    1403:	45                   	inc    %ebp
    1404:	5f                   	pop    %edi
    1405:	43                   	inc    %ebx
    1406:	52                   	push   %edx
    1407:	53                   	push   %ebx
    1408:	45                   	inc    %ebp
    1409:	4c                   	dec    %esp
    140a:	00 53 44             	add    %dl,0x44(%ebx)
    140d:	4c                   	dec    %esp
    140e:	5f                   	pop    %edi
    140f:	53                   	push   %ebx
    1410:	43                   	inc    %ebx
    1411:	41                   	inc    %ecx
    1412:	4e                   	dec    %esi
    1413:	43                   	inc    %ebx
    1414:	4f                   	dec    %edi
    1415:	44                   	inc    %esp
    1416:	45                   	inc    %ebp
    1417:	5f                   	pop    %edi
    1418:	52                   	push   %edx
    1419:	41                   	inc    %ecx
    141a:	4c                   	dec    %esp
    141b:	54                   	push   %esp
    141c:	00 53 44             	add    %dl,0x44(%ebx)
    141f:	4c                   	dec    %esp
    1420:	5f                   	pop    %edi
    1421:	53                   	push   %ebx
    1422:	43                   	inc    %ebx
    1423:	41                   	inc    %ecx
    1424:	4e                   	dec    %esi
    1425:	43                   	inc    %ebx
    1426:	4f                   	dec    %edi
    1427:	44                   	inc    %esp
    1428:	45                   	inc    %ebp
    1429:	5f                   	pop    %edi
    142a:	4b                   	dec    %ebx
    142b:	50                   	push   %eax
    142c:	5f                   	pop    %edi
    142d:	4c                   	dec    %esp
    142e:	45                   	inc    %ebp
    142f:	53                   	push   %ebx
    1430:	53                   	push   %ebx
    1431:	00 5f 49             	add    %bl,0x49(%edi)
    1434:	4f                   	dec    %edi
    1435:	5f                   	pop    %edi
    1436:	46                   	inc    %esi
    1437:	49                   	dec    %ecx
    1438:	4c                   	dec    %esp
    1439:	45                   	inc    %ebp
    143a:	00 53 44             	add    %dl,0x44(%ebx)
    143d:	4c                   	dec    %esp
    143e:	5f                   	pop    %edi
    143f:	50                   	push   %eax
    1440:	49                   	dec    %ecx
    1441:	58                   	pop    %eax
    1442:	45                   	inc    %ebp
    1443:	4c                   	dec    %esp
    1444:	54                   	push   %esp
    1445:	59                   	pop    %ecx
    1446:	50                   	push   %eax
    1447:	45                   	inc    %ebp
    1448:	5f                   	pop    %edi
    1449:	41                   	inc    %ecx
    144a:	52                   	push   %edx
    144b:	52                   	push   %edx
    144c:	41                   	inc    %ecx
    144d:	59                   	pop    %ecx
    144e:	55                   	push   %ebp
    144f:	33 32                	xor    (%edx),%esi
    1451:	00 66 6c             	add    %ah,0x6c(%esi)
    1454:	6f                   	outsl  %ds:(%esi),(%dx)
    1455:	61                   	popa   
    1456:	74 00                	je     1458 <INPUT_BUFFER_SIZE+0x458>
    1458:	53                   	push   %ebx
    1459:	44                   	inc    %esp
    145a:	4c                   	dec    %esp
    145b:	5f                   	pop    %edi
    145c:	53                   	push   %ebx
    145d:	43                   	inc    %ebx
    145e:	41                   	inc    %ecx
    145f:	4e                   	dec    %esi
    1460:	43                   	inc    %ebx
    1461:	4f                   	dec    %edi
    1462:	44                   	inc    %esp
    1463:	45                   	inc    %ebp
    1464:	5f                   	pop    %edi
    1465:	4b                   	dec    %ebx
    1466:	50                   	push   %eax
    1467:	5f                   	pop    %edi
    1468:	43                   	inc    %ebx
    1469:	4c                   	dec    %esp
    146a:	45                   	inc    %ebp
    146b:	41                   	inc    %ecx
    146c:	52                   	push   %edx
    146d:	00 53 44             	add    %dl,0x44(%ebx)
    1470:	4c                   	dec    %esp
    1471:	5f                   	pop    %edi
    1472:	53                   	push   %ebx
    1473:	43                   	inc    %ebx
    1474:	41                   	inc    %ecx
    1475:	4e                   	dec    %esi
    1476:	43                   	inc    %ebx
    1477:	4f                   	dec    %edi
    1478:	44                   	inc    %esp
    1479:	45                   	inc    %ebp
    147a:	5f                   	pop    %edi
    147b:	4c                   	dec    %esp
    147c:	53                   	push   %ebx
    147d:	48                   	dec    %eax
    147e:	49                   	dec    %ecx
    147f:	46                   	inc    %esi
    1480:	54                   	push   %esp
    1481:	00 53 44             	add    %dl,0x44(%ebx)
    1484:	4c                   	dec    %esp
    1485:	5f                   	pop    %edi
    1486:	53                   	push   %ebx
    1487:	43                   	inc    %ebx
    1488:	41                   	inc    %ecx
    1489:	4e                   	dec    %esi
    148a:	43                   	inc    %ebx
    148b:	4f                   	dec    %edi
    148c:	44                   	inc    %esp
    148d:	45                   	inc    %ebp
    148e:	5f                   	pop    %edi
    148f:	4b                   	dec    %ebx
    1490:	50                   	push   %eax
    1491:	5f                   	pop    %edi
    1492:	4d                   	dec    %ebp
    1493:	45                   	inc    %ebp
    1494:	4d                   	dec    %ebp
    1495:	41                   	inc    %ecx
    1496:	44                   	inc    %esp
    1497:	44                   	inc    %esp
    1498:	00 53 44             	add    %dl,0x44(%ebx)
    149b:	4c                   	dec    %esp
    149c:	5f                   	pop    %edi
    149d:	53                   	push   %ebx
    149e:	43                   	inc    %ebx
    149f:	41                   	inc    %ecx
    14a0:	4e                   	dec    %esi
    14a1:	43                   	inc    %ebx
    14a2:	4f                   	dec    %edi
    14a3:	44                   	inc    %esp
    14a4:	45                   	inc    %ebp
    14a5:	5f                   	pop    %edi
    14a6:	52                   	push   %edx
    14a7:	49                   	dec    %ecx
    14a8:	47                   	inc    %edi
    14a9:	48                   	dec    %eax
    14aa:	54                   	push   %esp
    14ab:	00 62 6f             	add    %ah,0x6f(%edx)
    14ae:	64 79 00             	fs jns 14b1 <INPUT_BUFFER_SIZE+0x4b1>
    14b1:	5f                   	pop    %edi
    14b2:	73 62                	jae    1516 <INPUT_BUFFER_SIZE+0x516>
    14b4:	75 66                	jne    151c <INPUT_BUFFER_SIZE+0x51c>
    14b6:	00 53 44             	add    %dl,0x44(%ebx)
    14b9:	4c                   	dec    %esp
    14ba:	5f                   	pop    %edi
    14bb:	53                   	push   %ebx
    14bc:	43                   	inc    %ebx
    14bd:	41                   	inc    %ecx
    14be:	4e                   	dec    %esi
    14bf:	43                   	inc    %ebx
    14c0:	4f                   	dec    %edi
    14c1:	44                   	inc    %esp
    14c2:	45                   	inc    %ebp
    14c3:	5f                   	pop    %edi
    14c4:	53                   	push   %ebx
    14c5:	59                   	pop    %ecx
    14c6:	53                   	push   %ebx
    14c7:	52                   	push   %edx
    14c8:	45                   	inc    %ebp
    14c9:	51                   	push   %ecx
    14ca:	00 73 6e             	add    %dh,0x6e(%ebx)
    14cd:	61                   	popa   
    14ce:	6b 65 00 53          	imul   $0x53,0x0(%ebp),%esp
    14d2:	44                   	inc    %esp
    14d3:	4c                   	dec    %esp
    14d4:	5f                   	pop    %edi
    14d5:	53                   	push   %ebx
    14d6:	43                   	inc    %ebx
    14d7:	41                   	inc    %ecx
    14d8:	4e                   	dec    %esi
    14d9:	43                   	inc    %ebx
    14da:	4f                   	dec    %edi
    14db:	44                   	inc    %esp
    14dc:	45                   	inc    %ebp
    14dd:	5f                   	pop    %edi
    14de:	50                   	push   %eax
    14df:	41                   	inc    %ecx
    14e0:	47                   	inc    %edi
    14e1:	45                   	inc    %ebp
    14e2:	44                   	inc    %esp
    14e3:	4f                   	dec    %edi
    14e4:	57                   	push   %edi
    14e5:	4e                   	dec    %esi
    14e6:	00 53 44             	add    %dl,0x44(%ebx)
    14e9:	4c                   	dec    %esp
    14ea:	5f                   	pop    %edi
    14eb:	53                   	push   %ebx
    14ec:	43                   	inc    %ebx
    14ed:	41                   	inc    %ecx
    14ee:	4e                   	dec    %esi
    14ef:	43                   	inc    %ebx
    14f0:	4f                   	dec    %edi
    14f1:	44                   	inc    %esp
    14f2:	45                   	inc    %ebp
    14f3:	5f                   	pop    %edi
    14f4:	46                   	inc    %esi
    14f5:	31 00                	xor    %eax,(%eax)
    14f7:	53                   	push   %ebx
    14f8:	44                   	inc    %esp
    14f9:	4c                   	dec    %esp
    14fa:	5f                   	pop    %edi
    14fb:	53                   	push   %ebx
    14fc:	43                   	inc    %ebx
    14fd:	41                   	inc    %ecx
    14fe:	4e                   	dec    %esi
    14ff:	43                   	inc    %ebx
    1500:	4f                   	dec    %edi
    1501:	44                   	inc    %esp
    1502:	45                   	inc    %ebp
    1503:	5f                   	pop    %edi
    1504:	46                   	inc    %esi
    1505:	32 00                	xor    (%eax),%al
    1507:	53                   	push   %ebx
    1508:	44                   	inc    %esp
    1509:	4c                   	dec    %esp
    150a:	5f                   	pop    %edi
    150b:	53                   	push   %ebx
    150c:	43                   	inc    %ebx
    150d:	41                   	inc    %ecx
    150e:	4e                   	dec    %esi
    150f:	43                   	inc    %ebx
    1510:	4f                   	dec    %edi
    1511:	44                   	inc    %esp
    1512:	45                   	inc    %ebp
    1513:	5f                   	pop    %edi
    1514:	46                   	inc    %esi
    1515:	33 00                	xor    (%eax),%eax
    1517:	53                   	push   %ebx
    1518:	44                   	inc    %esp
    1519:	4c                   	dec    %esp
    151a:	5f                   	pop    %edi
    151b:	53                   	push   %ebx
    151c:	43                   	inc    %ebx
    151d:	41                   	inc    %ecx
    151e:	4e                   	dec    %esi
    151f:	43                   	inc    %ebx
    1520:	4f                   	dec    %edi
    1521:	44                   	inc    %esp
    1522:	45                   	inc    %ebp
    1523:	5f                   	pop    %edi
    1524:	46                   	inc    %esi
    1525:	34 00                	xor    $0x0,%al
    1527:	53                   	push   %ebx
    1528:	44                   	inc    %esp
    1529:	4c                   	dec    %esp
    152a:	5f                   	pop    %edi
    152b:	53                   	push   %ebx
    152c:	43                   	inc    %ebx
    152d:	41                   	inc    %ecx
    152e:	4e                   	dec    %esi
    152f:	43                   	inc    %ebx
    1530:	4f                   	dec    %edi
    1531:	44                   	inc    %esp
    1532:	45                   	inc    %ebp
    1533:	5f                   	pop    %edi
    1534:	46                   	inc    %esi
    1535:	35 00 53 44 4c       	xor    $0x4c445300,%eax
    153a:	5f                   	pop    %edi
    153b:	53                   	push   %ebx
    153c:	43                   	inc    %ebx
    153d:	41                   	inc    %ecx
    153e:	4e                   	dec    %esi
    153f:	43                   	inc    %ebx
    1540:	4f                   	dec    %edi
    1541:	44                   	inc    %esp
    1542:	45                   	inc    %ebp
    1543:	5f                   	pop    %edi
    1544:	46                   	inc    %esi
    1545:	36 00 53 44          	add    %dl,%ss:0x44(%ebx)
    1549:	4c                   	dec    %esp
    154a:	5f                   	pop    %edi
    154b:	53                   	push   %ebx
    154c:	43                   	inc    %ebx
    154d:	41                   	inc    %ecx
    154e:	4e                   	dec    %esi
    154f:	43                   	inc    %ebx
    1550:	4f                   	dec    %edi
    1551:	44                   	inc    %esp
    1552:	45                   	inc    %ebp
    1553:	5f                   	pop    %edi
    1554:	46                   	inc    %esi
    1555:	37                   	aaa    
    1556:	00 53 44             	add    %dl,0x44(%ebx)
    1559:	4c                   	dec    %esp
    155a:	5f                   	pop    %edi
    155b:	53                   	push   %ebx
    155c:	43                   	inc    %ebx
    155d:	41                   	inc    %ecx
    155e:	4e                   	dec    %esi
    155f:	43                   	inc    %ebx
    1560:	4f                   	dec    %edi
    1561:	44                   	inc    %esp
    1562:	45                   	inc    %ebp
    1563:	5f                   	pop    %edi
    1564:	46                   	inc    %esi
    1565:	38 00                	cmp    %al,(%eax)
    1567:	53                   	push   %ebx
    1568:	44                   	inc    %esp
    1569:	4c                   	dec    %esp
    156a:	5f                   	pop    %edi
    156b:	53                   	push   %ebx
    156c:	43                   	inc    %ebx
    156d:	41                   	inc    %ecx
    156e:	4e                   	dec    %esi
    156f:	43                   	inc    %ebx
    1570:	4f                   	dec    %edi
    1571:	44                   	inc    %esp
    1572:	45                   	inc    %ebp
    1573:	5f                   	pop    %edi
    1574:	46                   	inc    %esi
    1575:	39 00                	cmp    %eax,(%eax)
    1577:	53                   	push   %ebx
    1578:	44                   	inc    %esp
    1579:	4c                   	dec    %esp
    157a:	5f                   	pop    %edi
    157b:	50                   	push   %eax
    157c:	49                   	dec    %ecx
    157d:	58                   	pop    %eax
    157e:	45                   	inc    %ebp
    157f:	4c                   	dec    %esp
    1580:	54                   	push   %esp
    1581:	59                   	pop    %ecx
    1582:	50                   	push   %eax
    1583:	45                   	inc    %ebp
    1584:	5f                   	pop    %edi
    1585:	50                   	push   %eax
    1586:	41                   	inc    %ecx
    1587:	43                   	inc    %ebx
    1588:	4b                   	dec    %ebx
    1589:	45                   	inc    %ebp
    158a:	44                   	inc    %esp
    158b:	33 32                	xor    (%edx),%esi
    158d:	00 5f 49             	add    %bl,0x49(%edi)
    1590:	4f                   	dec    %edi
    1591:	5f                   	pop    %edi
    1592:	77 72                	ja     1606 <INPUT_BUFFER_SIZE+0x606>
    1594:	69 74 65 5f 70 74 72 	imul   $0x727470,0x5f(%ebp,%eiz,2),%esi
    159b:	00 
    159c:	53                   	push   %ebx
    159d:	44                   	inc    %esp
    159e:	4c                   	dec    %esp
    159f:	5f                   	pop    %edi
    15a0:	53                   	push   %ebx
    15a1:	43                   	inc    %ebx
    15a2:	41                   	inc    %ecx
    15a3:	4e                   	dec    %esi
    15a4:	43                   	inc    %ebx
    15a5:	4f                   	dec    %edi
    15a6:	44                   	inc    %esp
    15a7:	45                   	inc    %ebp
    15a8:	5f                   	pop    %edi
    15a9:	42                   	inc    %edx
    15aa:	52                   	push   %edx
    15ab:	49                   	dec    %ecx
    15ac:	47                   	inc    %edi
    15ad:	48                   	dec    %eax
    15ae:	54                   	push   %esp
    15af:	4e                   	dec    %esi
    15b0:	45                   	inc    %ebp
    15b1:	53                   	push   %ebx
    15b2:	53                   	push   %ebx
    15b3:	55                   	push   %ebp
    15b4:	50                   	push   %eax
    15b5:	00 74 61 69          	add    %dh,0x69(%ecx,%eiz,2)
    15b9:	6c                   	insb   (%dx),%es:(%edi)
    15ba:	00 66 69             	add    %ah,0x69(%esi)
    15bd:	72 73                	jb     1632 <INPUT_BUFFER_SIZE+0x632>
    15bf:	74 00                	je     15c1 <INPUT_BUFFER_SIZE+0x5c1>
    15c1:	53                   	push   %ebx
    15c2:	44                   	inc    %esp
    15c3:	4c                   	dec    %esp
    15c4:	5f                   	pop    %edi
    15c5:	42                   	inc    %edx
    15c6:	49                   	dec    %ecx
    15c7:	54                   	push   %esp
    15c8:	4d                   	dec    %ebp
    15c9:	41                   	inc    %ecx
    15ca:	50                   	push   %eax
    15cb:	4f                   	dec    %edi
    15cc:	52                   	push   %edx
    15cd:	44                   	inc    %esp
    15ce:	45                   	inc    %ebp
    15cf:	52                   	push   %edx
    15d0:	5f                   	pop    %edi
    15d1:	31 32                	xor    %esi,(%edx)
    15d3:	33 34 00             	xor    (%eax,%eax,1),%esi
    15d6:	53                   	push   %ebx
    15d7:	44                   	inc    %esp
    15d8:	4c                   	dec    %esp
    15d9:	5f                   	pop    %edi
    15da:	53                   	push   %ebx
    15db:	43                   	inc    %ebx
    15dc:	41                   	inc    %ecx
    15dd:	4e                   	dec    %esi
    15de:	43                   	inc    %ebx
    15df:	4f                   	dec    %edi
    15e0:	44                   	inc    %esp
    15e1:	45                   	inc    %ebp
    15e2:	5f                   	pop    %edi
    15e3:	52                   	push   %edx
    15e4:	45                   	inc    %ebp
    15e5:	54                   	push   %esp
    15e6:	55                   	push   %ebp
    15e7:	52                   	push   %edx
    15e8:	4e                   	dec    %esi
    15e9:	32 00                	xor    (%eax),%al
    15eb:	53                   	push   %ebx
    15ec:	44                   	inc    %esp
    15ed:	4c                   	dec    %esp
    15ee:	5f                   	pop    %edi
    15ef:	53                   	push   %ebx
    15f0:	43                   	inc    %ebx
    15f1:	41                   	inc    %ecx
    15f2:	4e                   	dec    %esi
    15f3:	43                   	inc    %ebx
    15f4:	4f                   	dec    %edi
    15f5:	44                   	inc    %esp
    15f6:	45                   	inc    %ebp
    15f7:	5f                   	pop    %edi
    15f8:	46                   	inc    %esi
    15f9:	31 39                	xor    %edi,(%ecx)
    15fb:	00 53 44             	add    %dl,0x44(%ebx)
    15fe:	4c                   	dec    %esp
    15ff:	5f                   	pop    %edi
    1600:	4d                   	dec    %ebp
    1601:	45                   	inc    %ebp
    1602:	53                   	push   %ebx
    1603:	53                   	push   %ebx
    1604:	41                   	inc    %ecx
    1605:	47                   	inc    %edi
    1606:	45                   	inc    %ebp
    1607:	42                   	inc    %edx
    1608:	4f                   	dec    %edi
    1609:	58                   	pop    %eax
    160a:	5f                   	pop    %edi
    160b:	43                   	inc    %ebx
    160c:	4f                   	dec    %edi
    160d:	4c                   	dec    %esp
    160e:	4f                   	dec    %edi
    160f:	52                   	push   %edx
    1610:	5f                   	pop    %edi
    1611:	42                   	inc    %edx
    1612:	41                   	inc    %ecx
    1613:	43                   	inc    %ebx
    1614:	4b                   	dec    %ebx
    1615:	47                   	inc    %edi
    1616:	52                   	push   %edx
    1617:	4f                   	dec    %edi
    1618:	55                   	push   %ebp
    1619:	4e                   	dec    %esi
    161a:	44                   	inc    %esp
    161b:	00 53 44             	add    %dl,0x44(%ebx)
    161e:	4c                   	dec    %esp
    161f:	5f                   	pop    %edi
    1620:	50                   	push   %eax
    1621:	41                   	inc    %ecx
    1622:	43                   	inc    %ebx
    1623:	4b                   	dec    %ebx
    1624:	45                   	inc    %ebp
    1625:	44                   	inc    %esp
    1626:	4f                   	dec    %edi
    1627:	52                   	push   %edx
    1628:	44                   	inc    %esp
    1629:	45                   	inc    %ebp
    162a:	52                   	push   %edx
    162b:	5f                   	pop    %edi
    162c:	52                   	push   %edx
    162d:	47                   	inc    %edi
    162e:	42                   	inc    %edx
    162f:	41                   	inc    %ecx
    1630:	00 53 44             	add    %dl,0x44(%ebx)
    1633:	4c                   	dec    %esp
    1634:	5f                   	pop    %edi
    1635:	53                   	push   %ebx
    1636:	43                   	inc    %ebx
    1637:	41                   	inc    %ecx
    1638:	4e                   	dec    %esi
    1639:	43                   	inc    %ebx
    163a:	4f                   	dec    %edi
    163b:	44                   	inc    %esp
    163c:	45                   	inc    %ebp
    163d:	5f                   	pop    %edi
    163e:	4b                   	dec    %ebx
    163f:	50                   	push   %eax
    1640:	5f                   	pop    %edi
    1641:	45                   	inc    %ebp
    1642:	51                   	push   %ecx
    1643:	55                   	push   %ebp
    1644:	41                   	inc    %ecx
    1645:	4c                   	dec    %esp
    1646:	53                   	push   %ebx
    1647:	00 53 44             	add    %dl,0x44(%ebx)
    164a:	4c                   	dec    %esp
    164b:	5f                   	pop    %edi
    164c:	42                   	inc    %edx
    164d:	49                   	dec    %ecx
    164e:	54                   	push   %esp
    164f:	4d                   	dec    %ebp
    1650:	41                   	inc    %ecx
    1651:	50                   	push   %eax
    1652:	4f                   	dec    %edi
    1653:	52                   	push   %edx
    1654:	44                   	inc    %esp
    1655:	45                   	inc    %ebp
    1656:	52                   	push   %edx
    1657:	5f                   	pop    %edi
    1658:	4e                   	dec    %esi
    1659:	4f                   	dec    %edi
    165a:	4e                   	dec    %esi
    165b:	45                   	inc    %ebp
    165c:	00 53 44             	add    %dl,0x44(%ebx)
    165f:	4c                   	dec    %esp
    1660:	5f                   	pop    %edi
    1661:	50                   	push   %eax
    1662:	49                   	dec    %ecx
    1663:	58                   	pop    %eax
    1664:	45                   	inc    %ebp
    1665:	4c                   	dec    %esp
    1666:	54                   	push   %esp
    1667:	59                   	pop    %ecx
    1668:	50                   	push   %eax
    1669:	45                   	inc    %ebp
    166a:	5f                   	pop    %edi
    166b:	41                   	inc    %ecx
    166c:	52                   	push   %edx
    166d:	52                   	push   %edx
    166e:	41                   	inc    %ecx
    166f:	59                   	pop    %ecx
    1670:	46                   	inc    %esi
    1671:	33 32                	xor    (%edx),%esi
    1673:	00 53 44             	add    %dl,0x44(%ebx)
    1676:	4c                   	dec    %esp
    1677:	5f                   	pop    %edi
    1678:	53                   	push   %ebx
    1679:	43                   	inc    %ebx
    167a:	41                   	inc    %ecx
    167b:	4e                   	dec    %esi
    167c:	43                   	inc    %ebx
    167d:	4f                   	dec    %edi
    167e:	44                   	inc    %esp
    167f:	45                   	inc    %ebp
    1680:	5f                   	pop    %edi
    1681:	4b                   	dec    %ebx
    1682:	50                   	push   %eax
    1683:	5f                   	pop    %edi
    1684:	48                   	dec    %eax
    1685:	41                   	inc    %ecx
    1686:	53                   	push   %ebx
    1687:	48                   	dec    %eax
    1688:	00 53 44             	add    %dl,0x44(%ebx)
    168b:	4c                   	dec    %esp
    168c:	5f                   	pop    %edi
    168d:	41                   	inc    %ecx
    168e:	52                   	push   %edx
    168f:	52                   	push   %edx
    1690:	41                   	inc    %ecx
    1691:	59                   	pop    %ecx
    1692:	4f                   	dec    %edi
    1693:	52                   	push   %edx
    1694:	44                   	inc    %esp
    1695:	45                   	inc    %ebp
    1696:	52                   	push   %edx
    1697:	5f                   	pop    %edi
    1698:	52                   	push   %edx
    1699:	47                   	inc    %edi
    169a:	42                   	inc    %edx
    169b:	41                   	inc    %ecx
    169c:	00 53 44             	add    %dl,0x44(%ebx)
    169f:	4c                   	dec    %esp
    16a0:	5f                   	pop    %edi
    16a1:	53                   	push   %ebx
    16a2:	43                   	inc    %ebx
    16a3:	41                   	inc    %ecx
    16a4:	4e                   	dec    %esi
    16a5:	43                   	inc    %ebx
    16a6:	4f                   	dec    %edi
    16a7:	44                   	inc    %esp
    16a8:	45                   	inc    %ebp
    16a9:	5f                   	pop    %edi
    16aa:	46                   	inc    %esi
    16ab:	31 30                	xor    %esi,(%eax)
    16ad:	00 53 44             	add    %dl,0x44(%ebx)
    16b0:	4c                   	dec    %esp
    16b1:	5f                   	pop    %edi
    16b2:	53                   	push   %ebx
    16b3:	43                   	inc    %ebx
    16b4:	41                   	inc    %ecx
    16b5:	4e                   	dec    %esi
    16b6:	43                   	inc    %ebx
    16b7:	4f                   	dec    %edi
    16b8:	44                   	inc    %esp
    16b9:	45                   	inc    %ebp
    16ba:	5f                   	pop    %edi
    16bb:	4b                   	dec    %ebx
    16bc:	50                   	push   %eax
    16bd:	5f                   	pop    %edi
    16be:	4c                   	dec    %esp
    16bf:	45                   	inc    %ebp
    16c0:	46                   	inc    %esi
    16c1:	54                   	push   %esp
    16c2:	42                   	inc    %edx
    16c3:	52                   	push   %edx
    16c4:	41                   	inc    %ecx
    16c5:	43                   	inc    %ebx
    16c6:	45                   	inc    %ebp
    16c7:	00 53 44             	add    %dl,0x44(%ebx)
    16ca:	4c                   	dec    %esp
    16cb:	5f                   	pop    %edi
    16cc:	53                   	push   %ebx
    16cd:	43                   	inc    %ebx
    16ce:	41                   	inc    %ecx
    16cf:	4e                   	dec    %esi
    16d0:	43                   	inc    %ebx
    16d1:	4f                   	dec    %edi
    16d2:	44                   	inc    %esp
    16d3:	45                   	inc    %ebp
    16d4:	5f                   	pop    %edi
    16d5:	46                   	inc    %esi
    16d6:	31 32                	xor    %esi,(%edx)
    16d8:	00 53 44             	add    %dl,0x44(%ebx)
    16db:	4c                   	dec    %esp
    16dc:	5f                   	pop    %edi
    16dd:	50                   	push   %eax
    16de:	41                   	inc    %ecx
    16df:	43                   	inc    %ebx
    16e0:	4b                   	dec    %ebx
    16e1:	45                   	inc    %ebp
    16e2:	44                   	inc    %esp
    16e3:	4f                   	dec    %edi
    16e4:	52                   	push   %edx
    16e5:	44                   	inc    %esp
    16e6:	45                   	inc    %ebp
    16e7:	52                   	push   %edx
    16e8:	5f                   	pop    %edi
    16e9:	52                   	push   %edx
    16ea:	47                   	inc    %edi
    16eb:	42                   	inc    %edx
    16ec:	58                   	pop    %eax
    16ed:	00 5f 5f             	add    %bl,0x5f(%edi)
    16f0:	6f                   	outsl  %ds:(%esi),(%dx)
    16f1:	66 66 5f             	data16 pop %di
    16f4:	74 00                	je     16f6 <INPUT_BUFFER_SIZE+0x6f6>
    16f6:	53                   	push   %ebx
    16f7:	44                   	inc    %esp
    16f8:	4c                   	dec    %esp
    16f9:	5f                   	pop    %edi
    16fa:	53                   	push   %ebx
    16fb:	43                   	inc    %ebx
    16fc:	41                   	inc    %ecx
    16fd:	4e                   	dec    %esi
    16fe:	43                   	inc    %ebx
    16ff:	4f                   	dec    %edi
    1700:	44                   	inc    %esp
    1701:	45                   	inc    %ebp
    1702:	5f                   	pop    %edi
    1703:	46                   	inc    %esi
    1704:	31 36                	xor    %esi,(%esi)
    1706:	00 53 44             	add    %dl,0x44(%ebx)
    1709:	4c                   	dec    %esp
    170a:	5f                   	pop    %edi
    170b:	53                   	push   %ebx
    170c:	43                   	inc    %ebx
    170d:	41                   	inc    %ecx
    170e:	4e                   	dec    %esi
    170f:	43                   	inc    %ebx
    1710:	4f                   	dec    %edi
    1711:	44                   	inc    %esp
    1712:	45                   	inc    %ebp
    1713:	5f                   	pop    %edi
    1714:	53                   	push   %ebx
    1715:	45                   	inc    %ebp
    1716:	50                   	push   %eax
    1717:	41                   	inc    %ecx
    1718:	52                   	push   %edx
    1719:	41                   	inc    %ecx
    171a:	54                   	push   %esp
    171b:	4f                   	dec    %edi
    171c:	52                   	push   %edx
    171d:	00 53 44             	add    %dl,0x44(%ebx)
    1720:	4c                   	dec    %esp
    1721:	5f                   	pop    %edi
    1722:	53                   	push   %ebx
    1723:	43                   	inc    %ebx
    1724:	41                   	inc    %ecx
    1725:	4e                   	dec    %esi
    1726:	43                   	inc    %ebx
    1727:	4f                   	dec    %edi
    1728:	44                   	inc    %esp
    1729:	45                   	inc    %ebp
    172a:	5f                   	pop    %edi
    172b:	4b                   	dec    %ebx
    172c:	50                   	push   %eax
    172d:	5f                   	pop    %edi
    172e:	45                   	inc    %ebp
    172f:	58                   	pop    %eax
    1730:	43                   	inc    %ebx
    1731:	4c                   	dec    %esp
    1732:	41                   	inc    %ecx
    1733:	4d                   	dec    %ebp
    1734:	00 53 44             	add    %dl,0x44(%ebx)
    1737:	4c                   	dec    %esp
    1738:	5f                   	pop    %edi
    1739:	53                   	push   %ebx
    173a:	43                   	inc    %ebx
    173b:	41                   	inc    %ecx
    173c:	4e                   	dec    %esi
    173d:	43                   	inc    %ebx
    173e:	4f                   	dec    %edi
    173f:	44                   	inc    %esp
    1740:	45                   	inc    %ebp
    1741:	5f                   	pop    %edi
    1742:	4b                   	dec    %ebx
    1743:	50                   	push   %eax
    1744:	5f                   	pop    %edi
    1745:	30 00                	xor    %al,(%eax)
    1747:	53                   	push   %ebx
    1748:	44                   	inc    %esp
    1749:	4c                   	dec    %esp
    174a:	5f                   	pop    %edi
    174b:	53                   	push   %ebx
    174c:	43                   	inc    %ebx
    174d:	41                   	inc    %ecx
    174e:	4e                   	dec    %esi
    174f:	43                   	inc    %ebx
    1750:	4f                   	dec    %edi
    1751:	44                   	inc    %esp
    1752:	45                   	inc    %ebp
    1753:	5f                   	pop    %edi
    1754:	4b                   	dec    %ebx
    1755:	50                   	push   %eax
    1756:	5f                   	pop    %edi
    1757:	31 00                	xor    %eax,(%eax)
    1759:	53                   	push   %ebx
    175a:	44                   	inc    %esp
    175b:	4c                   	dec    %esp
    175c:	5f                   	pop    %edi
    175d:	53                   	push   %ebx
    175e:	43                   	inc    %ebx
    175f:	41                   	inc    %ecx
    1760:	4e                   	dec    %esi
    1761:	43                   	inc    %ebx
    1762:	4f                   	dec    %edi
    1763:	44                   	inc    %esp
    1764:	45                   	inc    %ebp
    1765:	5f                   	pop    %edi
    1766:	4d                   	dec    %ebp
    1767:	45                   	inc    %ebp
    1768:	44                   	inc    %esp
    1769:	49                   	dec    %ecx
    176a:	41                   	inc    %ecx
    176b:	53                   	push   %ebx
    176c:	45                   	inc    %ebp
    176d:	4c                   	dec    %esp
    176e:	45                   	inc    %ebp
    176f:	43                   	inc    %ebx
    1770:	54                   	push   %esp
    1771:	00 53 44             	add    %dl,0x44(%ebx)
    1774:	4c                   	dec    %esp
    1775:	5f                   	pop    %edi
    1776:	53                   	push   %ebx
    1777:	43                   	inc    %ebx
    1778:	41                   	inc    %ecx
    1779:	4e                   	dec    %esi
    177a:	43                   	inc    %ebx
    177b:	4f                   	dec    %edi
    177c:	44                   	inc    %esp
    177d:	45                   	inc    %ebp
    177e:	5f                   	pop    %edi
    177f:	4f                   	dec    %edi
    1780:	55                   	push   %ebp
    1781:	54                   	push   %esp
    1782:	00 53 44             	add    %dl,0x44(%ebx)
    1785:	4c                   	dec    %esp
    1786:	5f                   	pop    %edi
    1787:	53                   	push   %ebx
    1788:	43                   	inc    %ebx
    1789:	41                   	inc    %ecx
    178a:	4e                   	dec    %esi
    178b:	43                   	inc    %ebx
    178c:	4f                   	dec    %edi
    178d:	44                   	inc    %esp
    178e:	45                   	inc    %ebp
    178f:	5f                   	pop    %edi
    1790:	4b                   	dec    %ebx
    1791:	50                   	push   %eax
    1792:	5f                   	pop    %edi
    1793:	34 00                	xor    $0x0,%al
    1795:	53                   	push   %ebx
    1796:	44                   	inc    %esp
    1797:	4c                   	dec    %esp
    1798:	5f                   	pop    %edi
    1799:	42                   	inc    %edx
    179a:	49                   	dec    %ecx
    179b:	54                   	push   %esp
    179c:	4d                   	dec    %ebp
    179d:	41                   	inc    %ecx
    179e:	50                   	push   %eax
    179f:	4f                   	dec    %edi
    17a0:	52                   	push   %edx
    17a1:	44                   	inc    %esp
    17a2:	45                   	inc    %ebp
    17a3:	52                   	push   %edx
    17a4:	5f                   	pop    %edi
    17a5:	34 33                	xor    $0x33,%al
    17a7:	32 31                	xor    (%ecx),%dh
    17a9:	00 53 44             	add    %dl,0x44(%ebx)
    17ac:	4c                   	dec    %esp
    17ad:	5f                   	pop    %edi
    17ae:	53                   	push   %ebx
    17af:	43                   	inc    %ebx
    17b0:	41                   	inc    %ecx
    17b1:	4e                   	dec    %esi
    17b2:	43                   	inc    %ebx
    17b3:	4f                   	dec    %edi
    17b4:	44                   	inc    %esp
    17b5:	45                   	inc    %ebp
    17b6:	5f                   	pop    %edi
    17b7:	4d                   	dec    %ebp
    17b8:	4f                   	dec    %edi
    17b9:	44                   	inc    %esp
    17ba:	45                   	inc    %ebp
    17bb:	00 53 44             	add    %dl,0x44(%ebx)
    17be:	4c                   	dec    %esp
    17bf:	5f                   	pop    %edi
    17c0:	53                   	push   %ebx
    17c1:	43                   	inc    %ebx
    17c2:	41                   	inc    %ecx
    17c3:	4e                   	dec    %esi
    17c4:	43                   	inc    %ebx
    17c5:	4f                   	dec    %edi
    17c6:	44                   	inc    %esp
    17c7:	45                   	inc    %ebp
    17c8:	5f                   	pop    %edi
    17c9:	4b                   	dec    %ebx
    17ca:	50                   	push   %eax
    17cb:	5f                   	pop    %edi
    17cc:	37                   	aaa    
    17cd:	00 53 44             	add    %dl,0x44(%ebx)
    17d0:	4c                   	dec    %esp
    17d1:	5f                   	pop    %edi
    17d2:	53                   	push   %ebx
    17d3:	43                   	inc    %ebx
    17d4:	41                   	inc    %ecx
    17d5:	4e                   	dec    %esi
    17d6:	43                   	inc    %ebx
    17d7:	4f                   	dec    %edi
    17d8:	44                   	inc    %esp
    17d9:	45                   	inc    %ebp
    17da:	5f                   	pop    %edi
    17db:	4b                   	dec    %ebx
    17dc:	50                   	push   %eax
    17dd:	5f                   	pop    %edi
    17de:	38 00                	cmp    %al,(%eax)
    17e0:	53                   	push   %ebx
    17e1:	44                   	inc    %esp
    17e2:	4c                   	dec    %esp
    17e3:	5f                   	pop    %edi
    17e4:	50                   	push   %eax
    17e5:	41                   	inc    %ecx
    17e6:	43                   	inc    %ebx
    17e7:	4b                   	dec    %ebx
    17e8:	45                   	inc    %ebp
    17e9:	44                   	inc    %esp
    17ea:	4c                   	dec    %esp
    17eb:	41                   	inc    %ecx
    17ec:	59                   	pop    %ecx
    17ed:	4f                   	dec    %edi
    17ee:	55                   	push   %ebp
    17ef:	54                   	push   %esp
    17f0:	5f                   	pop    %edi
    17f1:	35 35 35 31 00       	xor    $0x313535,%eax
    17f6:	53                   	push   %ebx
    17f7:	44                   	inc    %esp
    17f8:	4c                   	dec    %esp
    17f9:	5f                   	pop    %edi
    17fa:	4d                   	dec    %ebp
    17fb:	45                   	inc    %ebp
    17fc:	53                   	push   %ebx
    17fd:	53                   	push   %ebx
    17fe:	41                   	inc    %ecx
    17ff:	47                   	inc    %edi
    1800:	45                   	inc    %ebp
    1801:	42                   	inc    %edx
    1802:	4f                   	dec    %edi
    1803:	58                   	pop    %eax
    1804:	5f                   	pop    %edi
    1805:	43                   	inc    %ebx
    1806:	4f                   	dec    %edi
    1807:	4c                   	dec    %esp
    1808:	4f                   	dec    %edi
    1809:	52                   	push   %edx
    180a:	5f                   	pop    %edi
    180b:	42                   	inc    %edx
    180c:	55                   	push   %ebp
    180d:	54                   	push   %esp
    180e:	54                   	push   %esp
    180f:	4f                   	dec    %edi
    1810:	4e                   	dec    %esi
    1811:	5f                   	pop    %edi
    1812:	53                   	push   %ebx
    1813:	45                   	inc    %ebp
    1814:	4c                   	dec    %esp
    1815:	45                   	inc    %ebp
    1816:	43                   	inc    %ebx
    1817:	54                   	push   %esp
    1818:	45                   	inc    %ebp
    1819:	44                   	inc    %esp
    181a:	00 53 44             	add    %dl,0x44(%ebx)
    181d:	4c                   	dec    %esp
    181e:	5f                   	pop    %edi
    181f:	53                   	push   %ebx
    1820:	43                   	inc    %ebx
    1821:	41                   	inc    %ecx
    1822:	4e                   	dec    %esi
    1823:	43                   	inc    %ebx
    1824:	4f                   	dec    %edi
    1825:	44                   	inc    %esp
    1826:	45                   	inc    %ebp
    1827:	5f                   	pop    %edi
    1828:	4b                   	dec    %ebx
    1829:	50                   	push   %eax
    182a:	5f                   	pop    %edi
    182b:	41                   	inc    %ecx
    182c:	00 53 44             	add    %dl,0x44(%ebx)
    182f:	4c                   	dec    %esp
    1830:	5f                   	pop    %edi
    1831:	53                   	push   %ebx
    1832:	43                   	inc    %ebx
    1833:	41                   	inc    %ecx
    1834:	4e                   	dec    %esi
    1835:	43                   	inc    %ebx
    1836:	4f                   	dec    %edi
    1837:	44                   	inc    %esp
    1838:	45                   	inc    %ebp
    1839:	5f                   	pop    %edi
    183a:	4b                   	dec    %ebx
    183b:	50                   	push   %eax
    183c:	5f                   	pop    %edi
    183d:	42                   	inc    %edx
    183e:	00 53 44             	add    %dl,0x44(%ebx)
    1841:	4c                   	dec    %esp
    1842:	5f                   	pop    %edi
    1843:	53                   	push   %ebx
    1844:	43                   	inc    %ebx
    1845:	41                   	inc    %ecx
    1846:	4e                   	dec    %esi
    1847:	43                   	inc    %ebx
    1848:	4f                   	dec    %edi
    1849:	44                   	inc    %esp
    184a:	45                   	inc    %ebp
    184b:	5f                   	pop    %edi
    184c:	4b                   	dec    %ebx
    184d:	50                   	push   %eax
    184e:	5f                   	pop    %edi
    184f:	43                   	inc    %ebx
    1850:	00 53 44             	add    %dl,0x44(%ebx)
    1853:	4c                   	dec    %esp
    1854:	5f                   	pop    %edi
    1855:	53                   	push   %ebx
    1856:	43                   	inc    %ebx
    1857:	41                   	inc    %ecx
    1858:	4e                   	dec    %esi
    1859:	43                   	inc    %ebx
    185a:	4f                   	dec    %edi
    185b:	44                   	inc    %esp
    185c:	45                   	inc    %ebp
    185d:	5f                   	pop    %edi
    185e:	4b                   	dec    %ebx
    185f:	50                   	push   %eax
    1860:	5f                   	pop    %edi
    1861:	44                   	inc    %esp
    1862:	00 53 44             	add    %dl,0x44(%ebx)
    1865:	4c                   	dec    %esp
    1866:	5f                   	pop    %edi
    1867:	53                   	push   %ebx
    1868:	43                   	inc    %ebx
    1869:	41                   	inc    %ecx
    186a:	4e                   	dec    %esi
    186b:	43                   	inc    %ebx
    186c:	4f                   	dec    %edi
    186d:	44                   	inc    %esp
    186e:	45                   	inc    %ebp
    186f:	5f                   	pop    %edi
    1870:	4b                   	dec    %ebx
    1871:	50                   	push   %eax
    1872:	5f                   	pop    %edi
    1873:	45                   	inc    %ebp
    1874:	00 53 44             	add    %dl,0x44(%ebx)
    1877:	4c                   	dec    %esp
    1878:	5f                   	pop    %edi
    1879:	53                   	push   %ebx
    187a:	43                   	inc    %ebx
    187b:	41                   	inc    %ecx
    187c:	4e                   	dec    %esi
    187d:	43                   	inc    %ebx
    187e:	4f                   	dec    %edi
    187f:	44                   	inc    %esp
    1880:	45                   	inc    %ebp
    1881:	5f                   	pop    %edi
    1882:	4b                   	dec    %ebx
    1883:	50                   	push   %eax
    1884:	5f                   	pop    %edi
    1885:	46                   	inc    %esi
    1886:	00 53 44             	add    %dl,0x44(%ebx)
    1889:	4c                   	dec    %esp
    188a:	5f                   	pop    %edi
    188b:	53                   	push   %ebx
    188c:	43                   	inc    %ebx
    188d:	41                   	inc    %ecx
    188e:	4e                   	dec    %esi
    188f:	43                   	inc    %ebx
    1890:	4f                   	dec    %edi
    1891:	44                   	inc    %esp
    1892:	45                   	inc    %ebp
    1893:	5f                   	pop    %edi
    1894:	4e                   	dec    %esi
    1895:	55                   	push   %ebp
    1896:	4d                   	dec    %ebp
    1897:	4c                   	dec    %esp
    1898:	4f                   	dec    %edi
    1899:	43                   	inc    %ebx
    189a:	4b                   	dec    %ebx
    189b:	43                   	inc    %ebx
    189c:	4c                   	dec    %esp
    189d:	45                   	inc    %ebp
    189e:	41                   	inc    %ecx
    189f:	52                   	push   %edx
    18a0:	00 53 44             	add    %dl,0x44(%ebx)
    18a3:	4c                   	dec    %esp
    18a4:	5f                   	pop    %edi
    18a5:	53                   	push   %ebx
    18a6:	43                   	inc    %ebx
    18a7:	41                   	inc    %ecx
    18a8:	4e                   	dec    %esi
    18a9:	43                   	inc    %ebx
    18aa:	4f                   	dec    %edi
    18ab:	44                   	inc    %esp
    18ac:	45                   	inc    %ebp
    18ad:	5f                   	pop    %edi
    18ae:	46                   	inc    %esi
    18af:	31 31                	xor    %esi,(%ecx)
    18b1:	00 53 44             	add    %dl,0x44(%ebx)
    18b4:	4c                   	dec    %esp
    18b5:	5f                   	pop    %edi
    18b6:	53                   	push   %ebx
    18b7:	43                   	inc    %ebx
    18b8:	41                   	inc    %ecx
    18b9:	4e                   	dec    %esi
    18ba:	43                   	inc    %ebx
    18bb:	4f                   	dec    %edi
    18bc:	44                   	inc    %esp
    18bd:	45                   	inc    %ebp
    18be:	5f                   	pop    %edi
    18bf:	50                   	push   %eax
    18c0:	52                   	push   %edx
    18c1:	49                   	dec    %ecx
    18c2:	4f                   	dec    %edi
    18c3:	52                   	push   %edx
    18c4:	00 53 44             	add    %dl,0x44(%ebx)
    18c7:	4c                   	dec    %esp
    18c8:	5f                   	pop    %edi
    18c9:	53                   	push   %ebx
    18ca:	43                   	inc    %ebx
    18cb:	41                   	inc    %ecx
    18cc:	4e                   	dec    %esi
    18cd:	43                   	inc    %ebx
    18ce:	4f                   	dec    %edi
    18cf:	44                   	inc    %esp
    18d0:	45                   	inc    %ebp
    18d1:	5f                   	pop    %edi
    18d2:	46                   	inc    %esi
    18d3:	31 33                	xor    %esi,(%ebx)
    18d5:	00 53 44             	add    %dl,0x44(%ebx)
    18d8:	4c                   	dec    %esp
    18d9:	5f                   	pop    %edi
    18da:	53                   	push   %ebx
    18db:	43                   	inc    %ebx
    18dc:	41                   	inc    %ecx
    18dd:	4e                   	dec    %esi
    18de:	43                   	inc    %ebx
    18df:	4f                   	dec    %edi
    18e0:	44                   	inc    %esp
    18e1:	45                   	inc    %ebp
    18e2:	5f                   	pop    %edi
    18e3:	46                   	inc    %esi
    18e4:	31 34 00             	xor    %esi,(%eax,%eax,1)
    18e7:	53                   	push   %ebx
    18e8:	44                   	inc    %esp
    18e9:	4c                   	dec    %esp
    18ea:	5f                   	pop    %edi
    18eb:	53                   	push   %ebx
    18ec:	43                   	inc    %ebx
    18ed:	41                   	inc    %ecx
    18ee:	4e                   	dec    %esi
    18ef:	43                   	inc    %ebx
    18f0:	4f                   	dec    %edi
    18f1:	44                   	inc    %esp
    18f2:	45                   	inc    %ebp
    18f3:	5f                   	pop    %edi
    18f4:	46                   	inc    %esi
    18f5:	31 35 00 5f 63 68    	xor    %esi,0x68635f00
    18fb:	61                   	popa   
    18fc:	69 6e 00 53 44 4c 5f 	imul   $0x5f4c4453,0x0(%esi),%ebp
    1903:	53                   	push   %ebx
    1904:	43                   	inc    %ebx
    1905:	41                   	inc    %ecx
    1906:	4e                   	dec    %esi
    1907:	43                   	inc    %ebx
    1908:	4f                   	dec    %edi
    1909:	44                   	inc    %esp
    190a:	45                   	inc    %ebp
    190b:	5f                   	pop    %edi
    190c:	46                   	inc    %esi
    190d:	31 37                	xor    %esi,(%edi)
    190f:	00 53 44             	add    %dl,0x44(%ebx)
    1912:	4c                   	dec    %esp
    1913:	5f                   	pop    %edi
    1914:	53                   	push   %ebx
    1915:	43                   	inc    %ebx
    1916:	41                   	inc    %ecx
    1917:	4e                   	dec    %esi
    1918:	43                   	inc    %ebx
    1919:	4f                   	dec    %edi
    191a:	44                   	inc    %esp
    191b:	45                   	inc    %ebp
    191c:	5f                   	pop    %edi
    191d:	46                   	inc    %esi
    191e:	31 38                	xor    %edi,(%eax)
    1920:	00 53 44             	add    %dl,0x44(%ebx)
    1923:	4c                   	dec    %esp
    1924:	5f                   	pop    %edi
    1925:	53                   	push   %ebx
    1926:	43                   	inc    %ebx
    1927:	41                   	inc    %ecx
    1928:	4e                   	dec    %esi
    1929:	43                   	inc    %ebx
    192a:	4f                   	dec    %edi
    192b:	44                   	inc    %esp
    192c:	45                   	inc    %ebp
    192d:	5f                   	pop    %edi
    192e:	43                   	inc    %ebx
    192f:	4f                   	dec    %edi
    1930:	50                   	push   %eax
    1931:	59                   	pop    %ecx
    1932:	00 53 44             	add    %dl,0x44(%ebx)
    1935:	4c                   	dec    %esp
    1936:	5f                   	pop    %edi
    1937:	53                   	push   %ebx
    1938:	43                   	inc    %ebx
    1939:	41                   	inc    %ecx
    193a:	4e                   	dec    %esi
    193b:	43                   	inc    %ebx
    193c:	4f                   	dec    %edi
    193d:	44                   	inc    %esp
    193e:	45                   	inc    %ebp
    193f:	5f                   	pop    %edi
    1940:	45                   	inc    %ebp
    1941:	51                   	push   %ecx
    1942:	55                   	push   %ebp
    1943:	41                   	inc    %ecx
    1944:	4c                   	dec    %esp
    1945:	53                   	push   %ebx
    1946:	00 53 44             	add    %dl,0x44(%ebx)
    1949:	4c                   	dec    %esp
    194a:	5f                   	pop    %edi
    194b:	53                   	push   %ebx
    194c:	43                   	inc    %ebx
    194d:	41                   	inc    %ecx
    194e:	4e                   	dec    %esi
    194f:	43                   	inc    %ebx
    1950:	4f                   	dec    %edi
    1951:	44                   	inc    %esp
    1952:	45                   	inc    %ebp
    1953:	5f                   	pop    %edi
    1954:	41                   	inc    %ecx
    1955:	43                   	inc    %ebx
    1956:	5f                   	pop    %edi
    1957:	42                   	inc    %edx
    1958:	41                   	inc    %ecx
    1959:	43                   	inc    %ebx
    195a:	4b                   	dec    %ebx
    195b:	00 53 44             	add    %dl,0x44(%ebx)
    195e:	4c                   	dec    %esp
    195f:	5f                   	pop    %edi
    1960:	53                   	push   %ebx
    1961:	43                   	inc    %ebx
    1962:	41                   	inc    %ecx
    1963:	4e                   	dec    %esi
    1964:	43                   	inc    %ebx
    1965:	4f                   	dec    %edi
    1966:	44                   	inc    %esp
    1967:	45                   	inc    %ebp
    1968:	5f                   	pop    %edi
    1969:	4c                   	dec    %esp
    196a:	41                   	inc    %ecx
    196b:	4e                   	dec    %esi
    196c:	47                   	inc    %edi
    196d:	31 00                	xor    %eax,(%eax)
    196f:	53                   	push   %ebx
    1970:	44                   	inc    %esp
    1971:	4c                   	dec    %esp
    1972:	5f                   	pop    %edi
    1973:	53                   	push   %ebx
    1974:	43                   	inc    %ebx
    1975:	41                   	inc    %ecx
    1976:	4e                   	dec    %esi
    1977:	43                   	inc    %ebx
    1978:	4f                   	dec    %edi
    1979:	44                   	inc    %esp
    197a:	45                   	inc    %ebp
    197b:	5f                   	pop    %edi
    197c:	4c                   	dec    %esp
    197d:	41                   	inc    %ecx
    197e:	4e                   	dec    %esi
    197f:	47                   	inc    %edi
    1980:	32 00                	xor    (%eax),%al
    1982:	53                   	push   %ebx
    1983:	44                   	inc    %esp
    1984:	4c                   	dec    %esp
    1985:	5f                   	pop    %edi
    1986:	53                   	push   %ebx
    1987:	43                   	inc    %ebx
    1988:	41                   	inc    %ecx
    1989:	4e                   	dec    %esi
    198a:	43                   	inc    %ebx
    198b:	4f                   	dec    %edi
    198c:	44                   	inc    %esp
    198d:	45                   	inc    %ebp
    198e:	5f                   	pop    %edi
    198f:	4c                   	dec    %esp
    1990:	41                   	inc    %ecx
    1991:	4e                   	dec    %esi
    1992:	47                   	inc    %edi
    1993:	33 00                	xor    (%eax),%eax
    1995:	53                   	push   %ebx
    1996:	44                   	inc    %esp
    1997:	4c                   	dec    %esp
    1998:	5f                   	pop    %edi
    1999:	53                   	push   %ebx
    199a:	43                   	inc    %ebx
    199b:	41                   	inc    %ecx
    199c:	4e                   	dec    %esi
    199d:	43                   	inc    %ebx
    199e:	4f                   	dec    %edi
    199f:	44                   	inc    %esp
    19a0:	45                   	inc    %ebp
    19a1:	5f                   	pop    %edi
    19a2:	4c                   	dec    %esp
    19a3:	41                   	inc    %ecx
    19a4:	4e                   	dec    %esi
    19a5:	47                   	inc    %edi
    19a6:	34 00                	xor    $0x0,%al
    19a8:	53                   	push   %ebx
    19a9:	44                   	inc    %esp
    19aa:	4c                   	dec    %esp
    19ab:	5f                   	pop    %edi
    19ac:	53                   	push   %ebx
    19ad:	43                   	inc    %ebx
    19ae:	41                   	inc    %ecx
    19af:	4e                   	dec    %esi
    19b0:	43                   	inc    %ebx
    19b1:	4f                   	dec    %edi
    19b2:	44                   	inc    %esp
    19b3:	45                   	inc    %ebp
    19b4:	5f                   	pop    %edi
    19b5:	4c                   	dec    %esp
    19b6:	41                   	inc    %ecx
    19b7:	4e                   	dec    %esi
    19b8:	47                   	inc    %edi
    19b9:	35 00 53 44 4c       	xor    $0x4c445300,%eax
    19be:	5f                   	pop    %edi
    19bf:	53                   	push   %ebx
    19c0:	43                   	inc    %ebx
    19c1:	41                   	inc    %ecx
    19c2:	4e                   	dec    %esi
    19c3:	43                   	inc    %ebx
    19c4:	4f                   	dec    %edi
    19c5:	44                   	inc    %esp
    19c6:	45                   	inc    %ebp
    19c7:	5f                   	pop    %edi
    19c8:	4c                   	dec    %esp
    19c9:	41                   	inc    %ecx
    19ca:	4e                   	dec    %esi
    19cb:	47                   	inc    %edi
    19cc:	36 00 53 44          	add    %dl,%ss:0x44(%ebx)
    19d0:	4c                   	dec    %esp
    19d1:	5f                   	pop    %edi
    19d2:	52                   	push   %edx
    19d3:	65 6e                	outsb  %gs:(%esi),(%dx)
    19d5:	64 65 72 65          	fs gs jb 1a3e <INPUT_BUFFER_SIZE+0xa3e>
    19d9:	72 00                	jb     19db <INPUT_BUFFER_SIZE+0x9db>
    19db:	53                   	push   %ebx
    19dc:	44                   	inc    %esp
    19dd:	4c                   	dec    %esp
    19de:	5f                   	pop    %edi
    19df:	53                   	push   %ebx
    19e0:	43                   	inc    %ebx
    19e1:	41                   	inc    %ecx
    19e2:	4e                   	dec    %esi
    19e3:	43                   	inc    %ebx
    19e4:	4f                   	dec    %edi
    19e5:	44                   	inc    %esp
    19e6:	45                   	inc    %ebp
    19e7:	5f                   	pop    %edi
    19e8:	4c                   	dec    %esp
    19e9:	41                   	inc    %ecx
    19ea:	4e                   	dec    %esi
    19eb:	47                   	inc    %edi
    19ec:	38 00                	cmp    %al,(%eax)
    19ee:	53                   	push   %ebx
    19ef:	44                   	inc    %esp
    19f0:	4c                   	dec    %esp
    19f1:	5f                   	pop    %edi
    19f2:	53                   	push   %ebx
    19f3:	43                   	inc    %ebx
    19f4:	41                   	inc    %ecx
    19f5:	4e                   	dec    %esi
    19f6:	43                   	inc    %ebx
    19f7:	4f                   	dec    %edi
    19f8:	44                   	inc    %esp
    19f9:	45                   	inc    %ebp
    19fa:	5f                   	pop    %edi
    19fb:	4c                   	dec    %esp
    19fc:	41                   	inc    %ecx
    19fd:	4e                   	dec    %esi
    19fe:	47                   	inc    %edi
    19ff:	39 00                	cmp    %eax,(%eax)
    1a01:	53                   	push   %ebx
    1a02:	44                   	inc    %esp
    1a03:	4c                   	dec    %esp
    1a04:	5f                   	pop    %edi
    1a05:	53                   	push   %ebx
    1a06:	43                   	inc    %ebx
    1a07:	41                   	inc    %ecx
    1a08:	4e                   	dec    %esi
    1a09:	43                   	inc    %ebx
    1a0a:	4f                   	dec    %edi
    1a0b:	44                   	inc    %esp
    1a0c:	45                   	inc    %ebp
    1a0d:	5f                   	pop    %edi
    1a0e:	4b                   	dec    %ebx
    1a0f:	50                   	push   %eax
    1a10:	5f                   	pop    %edi
    1a11:	4d                   	dec    %ebp
    1a12:	55                   	push   %ebp
    1a13:	4c                   	dec    %esp
    1a14:	54                   	push   %esp
    1a15:	49                   	dec    %ecx
    1a16:	50                   	push   %eax
    1a17:	4c                   	dec    %esp
    1a18:	59                   	pop    %ecx
    1a19:	00 5f 63             	add    %bl,0x63(%edi)
    1a1c:	75 72                	jne    1a90 <INPUT_BUFFER_SIZE+0xa90>
    1a1e:	5f                   	pop    %edi
    1a1f:	63 6f 6c             	arpl   %bp,0x6c(%edi)
    1a22:	75 6d                	jne    1a91 <INPUT_BUFFER_SIZE+0xa91>
    1a24:	6e                   	outsb  %ds:(%esi),(%dx)
    1a25:	00 2f                	add    %ch,(%edi)
    1a27:	68 6f 6d 65 2f       	push   $0x2f656d6f
    1a2c:	73 6f                	jae    1a9d <INPUT_BUFFER_SIZE+0xa9d>
    1a2e:	6e                   	outsb  %ds:(%esi),(%dx)
    1a2f:	6a 61                	push   $0x61
    1a31:	2f                   	das    
    1a32:	66 6f                	outsw  %ds:(%esi),(%dx)
    1a34:	72 74                	jb     1aaa <INPUT_BUFFER_SIZE+0xaaa>
    1a36:	68 5f 43 4f 50       	push   $0x504f435f
    1a3b:	59                   	pop    %ecx
    1a3c:	2f                   	das    
    1a3d:	66 72 6f             	data16 jb 1aaf <INPUT_BUFFER_SIZE+0xaaf>
    1a40:	6d                   	insl   (%dx),%es:(%edi)
    1a41:	2d 43 2d 74 6f       	sub    $0x6f742d43,%eax
    1a46:	2d 46 6f 72 74       	sub    $0x74726f46,%eax
    1a4b:	68 00 53 44 4c       	push   $0x4c445300
    1a50:	5f                   	pop    %edi
    1a51:	53                   	push   %ebx
    1a52:	43                   	inc    %ebx
    1a53:	41                   	inc    %ecx
    1a54:	4e                   	dec    %esi
    1a55:	43                   	inc    %ebx
    1a56:	4f                   	dec    %edi
    1a57:	44                   	inc    %esp
    1a58:	45                   	inc    %ebp
    1a59:	5f                   	pop    %edi
    1a5a:	44                   	inc    %esp
    1a5b:	4f                   	dec    %edi
    1a5c:	57                   	push   %edi
    1a5d:	4e                   	dec    %esi
    1a5e:	00 5f 5f             	add    %bl,0x5f(%edi)
    1a61:	6f                   	outsl  %ds:(%esi),(%dx)
    1a62:	66 66 36 34 5f       	data16 data16 ss xor $0x5f,%al
    1a67:	74 00                	je     1a69 <INPUT_BUFFER_SIZE+0xa69>
    1a69:	5f                   	pop    %edi
    1a6a:	75 6e                	jne    1ada <INPUT_BUFFER_SIZE+0xada>
    1a6c:	75 73                	jne    1ae1 <INPUT_BUFFER_SIZE+0xae1>
    1a6e:	65 64 32 00          	gs xor %fs:(%eax),%al
    1a72:	53                   	push   %ebx
    1a73:	44                   	inc    %esp
    1a74:	4c                   	dec    %esp
    1a75:	5f                   	pop    %edi
    1a76:	53                   	push   %ebx
    1a77:	43                   	inc    %ebx
    1a78:	41                   	inc    %ecx
    1a79:	4e                   	dec    %esi
    1a7a:	43                   	inc    %ebx
    1a7b:	4f                   	dec    %edi
    1a7c:	44                   	inc    %esp
    1a7d:	45                   	inc    %ebp
    1a7e:	5f                   	pop    %edi
    1a7f:	4b                   	dec    %ebx
    1a80:	50                   	push   %eax
    1a81:	5f                   	pop    %edi
    1a82:	50                   	push   %eax
    1a83:	45                   	inc    %ebp
    1a84:	52                   	push   %edx
    1a85:	43                   	inc    %ebx
    1a86:	45                   	inc    %ebp
    1a87:	4e                   	dec    %esi
    1a88:	54                   	push   %esp
    1a89:	00 53 44             	add    %dl,0x44(%ebx)
    1a8c:	4c                   	dec    %esp
    1a8d:	5f                   	pop    %edi
    1a8e:	53                   	push   %ebx
    1a8f:	43                   	inc    %ebx
    1a90:	41                   	inc    %ecx
    1a91:	4e                   	dec    %esi
    1a92:	43                   	inc    %ebx
    1a93:	4f                   	dec    %edi
    1a94:	44                   	inc    %esp
    1a95:	45                   	inc    %ebp
    1a96:	5f                   	pop    %edi
    1a97:	4b                   	dec    %ebx
    1a98:	50                   	push   %eax
    1a99:	5f                   	pop    %edi
    1a9a:	52                   	push   %edx
    1a9b:	49                   	dec    %ecx
    1a9c:	47                   	inc    %edi
    1a9d:	48                   	dec    %eax
    1a9e:	54                   	push   %esp
    1a9f:	50                   	push   %eax
    1aa0:	41                   	inc    %ecx
    1aa1:	52                   	push   %edx
    1aa2:	45                   	inc    %ebp
    1aa3:	4e                   	dec    %esi
    1aa4:	00 6d 61             	add    %ch,0x61(%ebp)
    1aa7:	69 6e 00 73 72 63 2f 	imul   $0x2f637273,0x0(%esi),%ebp
    1aae:	6d                   	insl   (%dx),%es:(%edi)
    1aaf:	61                   	popa   
    1ab0:	69 6e 2e 63 00 73 68 	imul   $0x68730063,0x2e(%esi),%ebp
    1ab7:	65 61                	gs popa 
    1ab9:	64 5f                	fs pop %edi
    1abb:	74 65                	je     1b22 <INPUT_BUFFER_SIZE+0xb22>
    1abd:	78 74                	js     1b33 <INPUT_BUFFER_SIZE+0xb33>
    1abf:	75 72                	jne    1b33 <INPUT_BUFFER_SIZE+0xb33>
    1ac1:	65 00 66 72          	add    %ah,%gs:0x72(%esi)
    1ac5:	75 69                	jne    1b30 <INPUT_BUFFER_SIZE+0xb30>
    1ac7:	74 5f                	je     1b28 <INPUT_BUFFER_SIZE+0xb28>
    1ac9:	74 65                	je     1b30 <INPUT_BUFFER_SIZE+0xb30>
    1acb:	78 74                	js     1b41 <INPUT_BUFFER_SIZE+0xb41>
    1acd:	75 72                	jne    1b41 <INPUT_BUFFER_SIZE+0xb41>
    1acf:	65 00 66 69          	add    %ah,%gs:0x69(%esi)
    1ad3:	65 6c                	gs insb (%dx),%es:(%edi)
    1ad5:	64 5f                	fs pop %edi
    1ad7:	74 65                	je     1b3e <INPUT_BUFFER_SIZE+0xb3e>
    1ad9:	78 74                	js     1b4f <INPUT_BUFFER_SIZE+0xb4f>
    1adb:	75 72                	jne    1b4f <INPUT_BUFFER_SIZE+0xb4f>
    1add:	65 00 73 6e          	add    %dh,%gs:0x6e(%ebx)
    1ae1:	61                   	popa   
    1ae2:	6b 65 5f 74          	imul   $0x74,0x5f(%ebp),%esp
    1ae6:	65 78 74             	gs js  1b5d <INPUT_BUFFER_SIZE+0xb5d>
    1ae9:	75 72                	jne    1b5d <INPUT_BUFFER_SIZE+0xb5d>
    1aeb:	65                   	gs
	...
