Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B9CB13FDF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Jul 2025 18:19:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3029340CBE;
	Mon, 28 Jul 2025 16:19:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FGLGHmRwX9r3; Mon, 28 Jul 2025 16:19:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AD0740CDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753719544;
	bh=l2cj4YfPSXVmYoc4IiWft3+ar6a3KqtRrSDGyMRAmig=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=C58S39PbpFt+AB5GeOLEnJE5JzXzWLIzBDsLwvkD+M4wrnBBoO5YOglZr97RvwdFO
	 +ESnzT0LpGphx9QK5k7twBAb36ZbbNMLIE4NphhFyRa+bHzQT3IOjZP5nMd5wXSAJY
	 GYbIe9QO24Mc/74QkxKBSfXXz/hE6pOiXLsC56+/+SoHSzP4mNeo25DvZSmyrUbXaf
	 Px3BNy5I7dpAXThLYiovnOtUKDRT0NgPUI8PTksxdT3Drou3OuOGPCyzXbcyaiKF47
	 3KYdY1UTc9Fp6ZBjJIqrwLdHN02DCkzLUPGYGWDbwbUQO61CRlfLHjYO8e+WuqtYCv
	 nETtTFh+k1k6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2AD0740CDA;
	Mon, 28 Jul 2025 16:19:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 057AC151
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jul 2025 16:19:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB40640413
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jul 2025 16:19:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HnGJv6lHNvB8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Jul 2025 16:19:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::532; helo=mail-pg1-x532.google.com;
 envelope-from=jbrandeburg@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 39A20400BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39A20400BB
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com
 [IPv6:2607:f8b0:4864:20::532])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 39A20400BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jul 2025 16:19:02 +0000 (UTC)
Received: by mail-pg1-x532.google.com with SMTP id
 41be03b00d2f7-b271f3ae786so3835470a12.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jul 2025 09:19:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753719541; x=1754324341;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=l2cj4YfPSXVmYoc4IiWft3+ar6a3KqtRrSDGyMRAmig=;
 b=HqvjC5go+cnFS+qvjCd34sw3CjOtG7DQQdfvhYMrHMe3BTSdynPok4tXYhha+yML7v
 Y661CEJjSjOsSrrWf4Gb+38Of15IzHIQcxnxDfK9zK+Ek0t49Loe3a+137WxDYHEp3E7
 XkWlGU7bjRGA0v5cc4jYRb7h0nT7CeWqm9B7ozYf4QVK2O5sOUvaMFYKAhwZx/s3eysb
 l8zef5hoQ1vOlH72RAH8y2sQUXvDAD9ikqQRgyQjvdg5fHNhrJALnRbLMxdJHUXFAGXw
 rzKSKae5Jgj8U/FJ8pcX17BThG4BFw1tRfRrlsIPaVkS5nu8rck5UHn3wEPbXBhrlLF+
 tykg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUB5C6q4DvGzVDq5gLc7UfMfZzuO/d5hhHm9T7zRyJrenqVIgCxNr82exYxh1C3bjK4pKi9ZOW3YUH20H/SPd4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxqIk8ITwdcAHgwMZzUG4cHAowbqbDlLE5R3gy1GC4pGhZST7Cm
 txPqE4bgtTYCfHWo7dk/V2P91ij6ZUl6gNQaEp2Loz1EAFiUHqTMp/mCCWwHR5rlwzA=
X-Gm-Gg: ASbGncuZzofTiCPhHUCS81dBO0Sq6ObiFeIM6nADiswIFMQo5AgfrWCFSPIEXj/l37J
 kvK5XwC63HHvnyHUpYZSeB+cT+kj+J9InpN80AgiEVok5a/bPe2n0NYONjdlKUIQ2BQG4+57Zhf
 HdCD8VnEa4ZE631eSl6bltT5t7wDTb8J/vjC6/2nGeaZAUQGStg2sFb/HU/1GGSH2/jRlh1GTMA
 Ka4kIEG2xxw2AC3nEF5xVNq1GyzP+lzsQ8uGD8sFv1HoTG8PQXNnxYyhfVEs30yC5Xk0P66eq4n
 6tQeyL+L2A7nQ82RGn+hkt0SmV8CuJ3NdR6FN6+QLp6pfnzWnwGeM5i4wUIUiLS6UrK0kkyxvRg
 q7pAG+RuigWFl1a9vw++pLZm6u+L8aH1M2NN8ec8ODA==
X-Google-Smtp-Source: AGHT+IEFX22EWCqIkNp4/fQDHmFrpLU/BsbuivBi5shbtLhS/OV5Qc6cgb1uvEXTNr14F3ZT8SfVHQ==
X-Received: by 2002:a17:90b:3c88:b0:313:2768:3f6b with SMTP id
 98e67ed59e1d1-31e77b0a72dmr17767843a91.27.1753719541243; 
 Mon, 28 Jul 2025 09:19:01 -0700 (PDT)
Received: from [127.0.0.1] ([104.28.237.250]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-31ec1c5cfc9sm4054288a91.28.2025.07.28.09.19.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 28 Jul 2025 09:19:00 -0700 (PDT)
Message-ID: <8743bbc9-8299-495c-8aef-842197bd8714@cloudflare.com>
Date: Mon, 28 Jul 2025 09:18:59 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Frederick Lawler <fred@cloudflare.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 AndrewLunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, kernel-team@cloudflare.com,
 intel-wired-lan@lists.osuosl.org
References: <aIKWoZzEPoa1omlw@CMGLRV3>
Content-Language: en-US
From: Jesse Brandeburg <jbrandeburg@cloudflare.com>
In-Reply-To: <aIKWoZzEPoa1omlw@CMGLRV3>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1753719541; x=1754324341;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=l2cj4YfPSXVmYoc4IiWft3+ar6a3KqtRrSDGyMRAmig=;
 b=BP1xfZsaHHiwrizOLNi5MU6WEIPURq682ifYNWDACHQGq5TjE1FbDVlva+UpvGD07o
 P2AliEgH5cooRlkI1mzvIeILToNvEtoqmyi3lYcuby+mgeLW80Z/Ioqu5T1BWor4a22O
 6ebZwjCN7k26tRN1Tvp0ivrof5EeKUgAAE20NRliZGFGB6rYRm0F70PzX2Zk2rSbRmwF
 /a7XLRYjH/CBx1GZj0NkQdmXShs6Zn6xeJckcQeGo8G+dhYVI8HgfS/WStAUtpbga2fr
 Q9mW3BYom6aLeHemi6/wCAgNflOwSwoc4vRncU3C15jRSz/E59qfZoWShTf6WUYINH3y
 zcig==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=BP1xfZsa
Subject: Re: [Intel-wired-lan] ice: General protection fault in
 ptp_clock_index
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

+IWL

Hi Intel team, anyone have an idea on this? Looks like maybe removal of 
device 0 that had originally registered PTP clock isn't handled well?

On 7/24/25 1:25 PM, Frederick Lawler wrote:
> Hi,
> 
> On Linux 6.12.39, we appear to hit a race reading ethtool while the
> device is removed.
> 
> We have automation to remove unused interfaces during early boot
> process, and when systemd is restarting the network afterwards, we
> get a page fault and get into a boot-crash-loop state. We're currently
> renaming the interface to something like unused0 to circumvent the
> issue.
> 
> I was able to reproduce with the following snippet:
> 
> $ watch -n0.1 /sbin/ethtool -T ext0
> $ echo -n "1" | sudo tee /sys/class/net/ext0/device/remove
> 
> ice 0000:41:00.0: Removed PTP clock
> 
> ...
> 
> Oops: general protection fault, probably for non-canonical address 0xae09e2b3b0c665f1: 0000 [#1] PREEMPT SMP NOPTI
> Tainted: [O]=OOT_MODULE
> Hardware name: Lenovo HR355M-V3-G12/HR355M_V3_HPM, BIOS HR355M_V3.G.031 02/17/2025
> RIP: 0010:ptp_clock_index (drivers/ptp/ptp_clock.c:476 (discriminator 1))
> Code: 38 1b 4e 00 66 66 2e 0f 1f 84 00 00 00 00 00 66 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 f3 0f 1e fa 0f 1f 44 00 00 <8b> 87 94 03 00 00 e9 07 1b 4e 00 66 66 2e 0f 1f 84 00 00 00 00 00
> All code
> ========
>     0:	38 1b                	cmp    %bl,(%rbx)
>     2:	4e 00 66 66          	rex.WRX add %r12b,0x66(%rsi)
>     6:	2e 0f 1f 84 00 00 00 	cs nopl 0x0(%rax,%rax,1)
>     d:	00 00
>     f:	66 90                	xchg   %ax,%ax
>    11:	90                   	nop
>    12:	90                   	nop
>    13:	90                   	nop
>    14:	90                   	nop
>    15:	90                   	nop
>    16:	90                   	nop
>    17:	90                   	nop
>    18:	90                   	nop
>    19:	90                   	nop
>    1a:	90                   	nop
>    1b:	90                   	nop
>    1c:	90                   	nop
>    1d:	90                   	nop
>    1e:	90                   	nop
>    1f:	90                   	nop
>    20:	90                   	nop
>    21:	f3 0f 1e fa          	endbr64
>    25:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
>    2a:*	8b 87 94 03 00 00    	mov    0x394(%rdi),%eax		<-- trapping instruction
>    30:	e9 07 1b 4e 00       	jmp    0x4e1b3c
>    35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
>    3c:	00 00 00 00
> 
> Code starting with the faulting instruction
> ===========================================
>     0:	8b 87 94 03 00 00    	mov    0x394(%rdi),%eax
>     6:	e9 07 1b 4e 00       	jmp    0x4e1b12
>     b:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
>    12:	00 00 00 00
> RSP: 0018:ffffb5664f657c88 EFLAGS: 00010282
> RAX: ffff9f4854c201a0 RBX: ffffb5664f657d34 RCX: ffffffffc1c6a5c0
> RDX: 555485607aaada55 RSI: ffffb5664f657d34 RDI: ae09e2b3b0c6625d
> RBP: ffffb5664f657df0 R08: 0000000000000000 R09: ffff9f3124c570a8
> R10: ffffb5664f657cc0 R11: 0000000000000001 R12: ffffffffafab4680
> R13: 00007ffc828fdbb0 R14: ffff9f3124c57000 R15: ffffb5664f657d80
> FS:  00007ff5abba1340(0000) GS:ffff9f402f600000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 00007ff5ac03f0c0 CR3: 0000000a8768e006 CR4: 0000000000770ef0
> PKRU: 55555554
> Call Trace:
> <TASK>
> ice_get_ts_info (drivers/net/ethernet/intel/ice/ice_ethtool.c:3776 (discriminator 1)) ice
> __ethtool_get_ts_info (net/ethtool/common.c:713)
> __ethtool_get_ts_info (net/ethtool/common.c:713)
> dev_ethtool (net/ethtool/ioctl.c:2651 net/ethtool/ioctl.c:3312 net/ethtool/ioctl.c:3390)
> ? srso_alias_return_thunk (arch/x86/lib/retpoline.S:182)
> ? trace_call_bpf (kernel/trace/bpf_trace.c:151 (discriminator 38))
> ? security_file_ioctl (security/security.c:2909)
> ? trace_call_bpf (kernel/trace/bpf_trace.c:151 (discriminator 38))
> ? __x64_sys_ioctl (fs/ioctl.c:893)
> ? kprobe_ftrace_handler (arch/x86/kernel/kprobes/ftrace.c:45 (discriminator 1))
> ? srso_alias_return_thunk (arch/x86/lib/retpoline.S:182)
> dev_ioctl (net/core/dev_ioctl.c:720)
> sock_ioctl (net/socket.c:1242 net/socket.c:1346)
> __x64_sys_ioctl (fs/ioctl.c:51 fs/ioctl.c:907 fs/ioctl.c:893 fs/ioctl.c:893)
> osnoise_arch_unregister (??:?)
> entry_SYSCALL_64_after_hwframe (arch/x86/entry/entry_64.S:130)
> RIP: 0033:0x7ff5abe13d1b
> Code: 00 48 89 44 24 18 31 c0 48 8d 44 24 60 c7 04 24 10 00 00 00 48 89 44 24 08 48 8d 44 24 20 48 89 44 24 10 b8 10 00 00 00 0f 05 <89> c2 3d 00 f0 ff ff 77 1c 48 8b 44 24 18 64 48 2b 04 25 28 00 00
> All code
> ========
>     0:	00 48 89             	add    %cl,-0x77(%rax)
>     3:	44 24 18             	rex.R and $0x18,%al
>     6:	31 c0                	xor    %eax,%eax
>     8:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
>     d:	c7 04 24 10 00 00 00 	movl   $0x10,(%rsp)
>    14:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
>    19:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
>    1e:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
>    23:	b8 10 00 00 00       	mov    $0x10,%eax
>    28:	0f 05                	syscall
>    2a:*	89 c2                	mov    %eax,%edx		<-- trapping instruction
>    2c:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
>    31:	77 1c                	ja     0x4f
>    33:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
>    38:	64                   	fs
>    39:	48                   	rex.W
>    3a:	2b                   	.byte 0x2b
>    3b:	04 25                	add    $0x25,%al
>    3d:	28 00                	sub    %al,(%rax)
> 	...
> 
> Code starting with the faulting instruction
> ===========================================
>     0:	89 c2                	mov    %eax,%edx
>     2:	3d 00 f0 ff ff       	cmp    $0xfffff000,%eax
>     7:	77 1c                	ja     0x25
>     9:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
>     e:	64                   	fs
>     f:	48                   	rex.W
>    10:	2b                   	.byte 0x2b
>    11:	04 25                	add    $0x25,%al
>    13:	28 00                	sub    %al,(%rax)
> 	...
> RSP: 002b:00007ffc828fdb20 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
> RAX: ffffffffffffffda RBX: 000056370e675800 RCX: 00007ff5abe13d1b
> RDX: 00007ffc828fdb80 RSI: 0000000000008946 RDI: 0000000000000005
> RBP: 000056370e6757e0 R08: 00007ff5abee8c60 R09: 0000000000000000
> R10: 00007ff5abd2f310 R11: 0000000000000246 R12: 00007ffc828fdd80
> R13: 0000000000000005 R14: 00007ffc828fdb80 R15: 00007ffc828fff1a
> </TASK>
> 

