Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EE5899E54
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Apr 2024 15:31:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D26B417ED;
	Fri,  5 Apr 2024 13:31:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5Z84VJfBuB0T; Fri,  5 Apr 2024 13:31:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 28AC741810
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712323901;
	bh=cU55856UNCppQUrzSRZ2YPSctavDkwpN10qv6YvBmvU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zU1Zc1xJYpaR+oSPFdwBCeWlLTE7veBvr7thkCatNLClWzZq/BNhEjjYTIU2gWZjh
	 GoiQG8WoZrlN89rUySC0j7LnIBa5Gov3FOg/MttHG5vEAqa0zXMRdvPyjRkhQK8LlX
	 KgVZcZHlWi2IY1lhQwpH5/WQGCW2mUQbr8u5Epud8RuZitS8tDCGtCFdsabTaNvHuD
	 BV8kGX+782iIUC0Lzym6+TioN78cIv+PhL0GYYSUKRq5ga9DGKuKelH/O6LOI3BJlH
	 J43aPqOMNMVEPUR5b+JNFuKs6z92/Oe8V6cfLwAbCIrQNb+wumolLBu5KlFpvd24sj
	 XsccpRvlt5EDA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 28AC741810;
	Fri,  5 Apr 2024 13:31:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E6BEF1BF31D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 13:31:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DD8A6417ED
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 13:31:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1zDR9dmJ3GIZ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Apr 2024 13:31:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52b; helo=mail-ed1-x52b.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3509F417E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3509F417E2
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3509F417E2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 13:31:37 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id
 4fb4d7f45d1cf-56c404da0ebso3295468a12.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 05 Apr 2024 06:31:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712323895; x=1712928695;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cU55856UNCppQUrzSRZ2YPSctavDkwpN10qv6YvBmvU=;
 b=exKSVCMq7+Qu5sjEwfdUSRfu0cCrgGhHaqXReLxUX9yjGDwsC8TM+kXDyi+GejPAso
 azY+pJ/sl4FcePyWqDJtORUfIs0atBnvQuo3zJ76mo+84zbTWygWfP5LB2yMDhbcXJgb
 hpwBH+cA/23ieyUX+f3cOVWcVwtwqwPIvokHD0oVBU8+iwZS7oYfzJo2px7zWpn4gzaN
 VLAUHQdZ4riSN4pJchYJdehi3eEehLAQdMXmWhjR3vBTy+KeJJnaKYgoObyOluNo86l4
 8F318c/10uGhJjuqBHK+5g7Fal7dsCbIra5Z8ibNTiFeXOg1QoaX56hp0c5jmHagfyEn
 Uogw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUhPtBXgPp6DBZqXNpAze/HqqLQ6DPIf86gECqIZGuYSiOnp/l3tbk8BKLMvBUxI8DLboj0reMrS/Qsc8sLJgZWpKVXIK2Z7FgD7EnTytqRVQ==
X-Gm-Message-State: AOJu0YzqqTprOKmI46pI3gGOdJCWyUuMp6e+UAnaBLbfYIZ2+GK/bUt8
 hOlSS7v/a+KAMx1V1ITWXSr67o8TYBloe0r1J/wlltAg8NDo9T35
X-Google-Smtp-Source: AGHT+IFqHKKdYL1NZsxYc02rhfGB4ZOKAZvH6hPYuhJQryu2o2oDBfNAQsk4LY+J8AnFIo/yL3kOhA==
X-Received: by 2002:a17:907:970b:b0:a51:ab38:7477 with SMTP id
 jg11-20020a170907970b00b00a51ab387477mr1195243ejc.43.1712323894711; 
 Fri, 05 Apr 2024 06:31:34 -0700 (PDT)
Received: from ?IPV6:2a01:c22:72bb:b200:d170:f5fb:7a97:42d6?
 (dynamic-2a01-0c22-72bb-b200-d170-f5fb-7a97-42d6.c22.pool.telefonica.de.
 [2a01:c22:72bb:b200:d170:f5fb:7a97:42d6])
 by smtp.googlemail.com with ESMTPSA id
 my47-20020a1709065a6f00b00a4e7c2b2070sm851629ejc.8.2024.04.05.06.31.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Apr 2024 06:31:33 -0700 (PDT)
Message-ID: <cd9edf12-5241-4366-b376-d5ee8f919903@gmail.com>
Date: Fri, 5 Apr 2024 15:31:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lukas Wunner <lukas@wunner.de>, Roman Lozko <lozko.roma@gmail.com>
References: <CAEhC_B=ksywxCG_+aQqXUrGEgKq+4mqnSV8EBHOKbC3-Obj9+Q@mail.gmail.com>
 <Zg_MOG1OufptoRph@wunner.de>
Content-Language: en-US
From: Heiner Kallweit <hkallweit1@gmail.com>
Autocrypt: addr=hkallweit1@gmail.com; keydata=
 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
In-Reply-To: <Zg_MOG1OufptoRph@wunner.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1712323895; x=1712928695; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=cU55856UNCppQUrzSRZ2YPSctavDkwpN10qv6YvBmvU=;
 b=Xt6KIF2fh0QBRAjVGYR7RTiDmR7EQfxD8kRmhiAXCn3ucWPe51n/Ue3HSuv66rKHw6
 Vl5v1wfrfKVbDflMdPfvhv2J9oZabZHNfDOz6QqmcQU73XE9VQCv8efMRW4gR25oJvuX
 wX8KDlfH4aAGSukDwhbsNSLR/iO8irBFrezHmjKDfxRriDUl3bOr5DOjlaxEPUGN0MGk
 Iah6y82xbktzAUC3TJwPoJeM1Oz76DdOBClAYXsainwxj86rwfz2+RjMo1PRWlIdwCE1
 nzBg44sSPQmxfdmqacE2PCQFhU84c5NzwywVOF4RrkcY2stjiRkqp9wimXnfIEjOqK+r
 5v4g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Xt6KIF2f
Subject: Re: [Intel-wired-lan] Deadlock in pciehp on dock disconnect
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Kurt Kanzenbach <kurt@linutronix.de>, linux-pci@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Christian Marangi <ansuelsmth@gmail.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Sean Christopherson <seanjc@google.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 05.04.2024 12:02, Lukas Wunner wrote:
> [cc += netdev maintainers]
> 
> On Fri, Apr 05, 2024 at 11:14:01AM +0200, Roman Lozko wrote:
>> Hi, I'm using HP G4 Thunderbolt docking station, and recently (?)
>> kernel started to "partially" deadlock after disconnecting the dock
>> station. This results in inability to turn network interfaces on or
>> off, system can't reboot, `sudo` does not work (guess because it uses
>> DNS).
>>
>> It started to occur ~two weeks ago, don't know why, I did not change
>> anything at that time. First seen on 6.8.2, nothing changed with
>> 6.9.0-rc2.
> 
> This is not a pciehp issue, it's a networking issue:
> 
> In the stacktrace you've provided below, the rtnl_lock() is acquired
> recursively, which leads to the deadlock:
> 
> unregister_netdev() acquires rtnl_lock(), indirectly invokes
> netdev_trig_deactivate() upon unregistering some LED, thereby
> calling unregister_netdevice_notifier(), which tries to
> acquire rtnl_lock() again.
> 
>>From a quick look at the source files involved, this doesn't look
> like something new, though I note LED support for igc was added
> only recently with ea578703b03d ("igc: Add support for LEDs on
> i225/i226"), which went into v6.9-rc1.
> 
> The other hanging tasks are simply waiting for rtnl_lock() as well.
> 
> 
>> pciehp stack trace:
>> INFO: task irq/122-pciehp:209 blocked for more than 120 seconds.
>>       Not tainted 6.9.0-rc2 #1
>> "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
>> task:irq/122-pciehp  state:D stack:0     pid:209   tgid:209   ppid:2
>>    flags:0x00004000
>> Call Trace:
>>  <TASK>
>>  __schedule+0x5dd/0x1380
>>  schedule+0x6e/0xf0
>>  schedule_preempt_disabled+0x15/0x20
>>  __mutex_lock+0x2a0/0x750
>>  unregister_netdevice_notifier+0x40/0x150
>>  netdev_trig_deactivate+0x1f/0x60 [ledtrig_netdev c68f5c964fe428d1a2169816a653c62dba2f2e01]
>>  led_trigger_set+0x102/0x330
>>  led_classdev_unregister+0x4b/0x110
>>  release_nodes+0x3d/0xb0
>>  devres_release_all+0x8b/0xc0
>>  device_del+0x34f/0x3c0
>>  unregister_netdevice_many_notify+0x80b/0xaf0
>>  unregister_netdev+0x7c/0xd0
>>  igc_remove+0xd8/0x1e0 [igc d1bcf7b726f7370e167c72960cdb27ae7f970357]
>>  pci_device_remove+0x3f/0xb0
>>  device_release_driver_internal+0x1be/0x2d0
>>  pci_stop_bus_device+0x68/0xa0
>>  pci_stop_bus_device+0x39/0xa0
>>  pci_stop_bus_device+0x39/0xa0
>>  pciehp_unconfigure_device+0x12b/0x1d0
>>  pciehp_disable_slot+0x65/0x120
>>  pciehp_handle_presence_or_link_change+0x7a/0x450
>>  pciehp_ist+0xf5/0x320
>>  irq_thread_fn+0x1d/0x40
>>  irq_thread+0x19b/0x260
>>  kthread+0x147/0x160
>>  ret_from_fork+0x34/0x40
>>  ret_from_fork_asm+0x11/0x20
>>  </TASK>
>>
>> Other affected kernel threads
>> INFO: task NetworkManager:1294 blocked for more than 120 seconds.
>>       Not tainted 6.9.0-rc2 #1
>> "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
>> task:NetworkManager  state:D stack:0     pid:1294  tgid:1294  ppid:1
>>    flags:0x00000002
>> Call Trace:
>>  <TASK>
>>  __schedule+0x5dd/0x1380
>>  schedule+0x6e/0xf0
>>  schedule_preempt_disabled+0x15/0x20
>>  __mutex_lock+0x2a0/0x750
>>  netlink_dump+0x1c4/0x3f0
>>  __netlink_dump_start+0x2b3/0x340
>>  rtnetlink_rcv_msg+0x469/0x4a0
>>  netlink_rcv_skb+0xed/0x120
>>  netlink_unicast+0x2ce/0x3f0
>>  netlink_sendmsg+0x39c/0x450
>>  ____sys_sendmsg+0x1a5/0x2a0
>>  ___sys_sendmsg+0x293/0x2d0
>>  __x64_sys_sendmsg+0x10d/0x140
>>  do_syscall_64+0x92/0x170
>>  entry_SYSCALL_64_after_hwframe+0x46/0x4e
>> RIP: 0033:0x7971ac52c02b
>> RSP: 002b:00007ffc684c09a0 EFLAGS: 00000293 ORIG_RAX: 000000000000002e
>> RAX: ffffffffffffffda RBX: 00005661e9bc5be0 RCX: 00007971ac52c02b
>> RDX: 0000000000000000 RSI: 00007ffc684c09e0 RDI: 000000000000000d
>> RBP: 00007ffc684c09c0 R08: 0000000000000000 R09: 0000000000000001
>> R10: 0000000000000001 R11: 0000000000000293 R12: 0000000000000001
>> R13: 0000000000000000 R14: 00005661e9c45030 R15: 00005661e9bc5cac
>>  </TASK>
>> INFO: task geoclue:2325 blocked for more than 120 seconds.
>>       Not tainted 6.9.0-rc2 #1
>> "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
>> task:geoclue         state:D stack:0     pid:2325  tgid:2325  ppid:1
>>    flags:0x00000002
>> Call Trace:
>>  <TASK>
>>  __schedule+0x5dd/0x1380
>>  schedule+0x6e/0xf0
>>  schedule_preempt_disabled+0x15/0x20
>>  __mutex_lock+0x2a0/0x750
>>  netlink_dump+0x1c4/0x3f0
>>  __netlink_dump_start+0x2b3/0x340
>>  rtnetlink_rcv_msg+0x469/0x4a0
>>  netlink_rcv_skb+0xed/0x120
>>  netlink_unicast+0x2ce/0x3f0
>>  netlink_sendmsg+0x39c/0x450
>>  __sys_sendto+0x2c8/0x350
>>  __x64_sys_sendto+0x26/0x30
>>  do_syscall_64+0x92/0x170
>>  entry_SYSCALL_64_after_hwframe+0x46/0x4e
>> RIP: 0033:0x7ad712b2beea
>> RSP: 002b:00007fff94c1fd80 EFLAGS: 00000246 ORIG_RAX: 000000000000002c
>> RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007ad712b2beea
>> RDX: 0000000000000014 RSI: 00007fff94c1fe10 RDI: 0000000000000007
>> RBP: 00007fff94c1fdb0 R08: 0000000000000000 R09: 0000000000000000
>> R10: 0000000000004000 R11: 0000000000000246 R12: 00007fff94c1fe10
>> R13: 0000000000000014 R14: 0000000000000000 R15: 0000000000000000
>>  </TASK>
>> INFO: task pool-geoclue:84396 blocked for more than 120 seconds.
>>       Not tainted 6.9.0-rc2 #1
>> "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
>> task:pool-geoclue    state:D stack:0     pid:84396 tgid:2325  ppid:1
>>    flags:0x00000002
>> Call Trace:
>>  <TASK>
>>  __schedule+0x5dd/0x1380
>>  schedule+0x6e/0xf0
>>  schedule_preempt_disabled+0x15/0x20
>>  __mutex_lock+0x2a0/0x750
>>  netlink_dump+0x1c4/0x3f0
>>  __netlink_dump_start+0x2b3/0x340
>>  rtnetlink_rcv_msg+0x469/0x4a0
>>  netlink_rcv_skb+0xed/0x120
>>  netlink_unicast+0x2ce/0x3f0
>>  netlink_sendmsg+0x39c/0x450
>>  __sys_sendto+0x2c8/0x350
>>  __x64_sys_sendto+0x26/0x30
>>  do_syscall_64+0x92/0x170
>>  entry_SYSCALL_64_after_hwframe+0x46/0x4e
>> RIP: 0033:0x7ad712b2c0e4
>> RSP: 002b:00007ad6e7dfdf40 EFLAGS: 00000293 ORIG_RAX: 000000000000002c
>> RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007ad712b2c0e4
>> RDX: 0000000000000014 RSI: 00007ad6e7dff070 RDI: 000000000000000b
>> RBP: 00007ad6e7dfdf80 R08: 00007ad6e7dff014 R09: 000000000000000c
>> R10: 0000000000000000 R11: 0000000000000293 R12: 000000000000000b
>> R13: 0000000000000010 R14: 00007ad6e7dff030 R15: 00000000d3fb1bea
>>  </TASK>
>> INFO: task Qt bearer threa:4002 blocked for more than 120 seconds.
>>       Not tainted 6.9.0-rc2 #1
>> "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
>> task:Qt bearer threa state:D stack:0     pid:4002  tgid:3506
>> ppid:3034   flags:0x00000002
>> Call Trace:
>>  <TASK>
>>  __schedule+0x5dd/0x1380
>>  schedule+0x6e/0xf0
>>  schedule_preempt_disabled+0x15/0x20
>>  __mutex_lock+0x2a0/0x750
>>  netlink_dump+0x1c4/0x3f0
>>  __netlink_dump_start+0x2b3/0x340
>>  rtnetlink_rcv_msg+0x469/0x4a0
>>  netlink_rcv_skb+0xed/0x120
>>  netlink_unicast+0x2ce/0x3f0
>>  netlink_sendmsg+0x39c/0x450
>>  __sys_sendto+0x2c8/0x350
>>  __x64_sys_sendto+0x26/0x30
>>  do_syscall_64+0x92/0x170
>>  entry_SYSCALL_64_after_hwframe+0x46/0x4e
>> RIP: 0033:0x76f3c692beea
>> RSP: 002b:000076f3a51fecb0 EFLAGS: 00000246 ORIG_RAX: 000000000000002c
>> RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 000076f3c692beea
>> RDX: 0000000000000020 RSI: 000076f3a51fed60 RDI: 0000000000000023
>> RBP: 000076f3a51fece0 R08: 0000000000000000 R09: 0000000000000000
>> R10: 0000000000000000 R11: 0000000000000246 R12: 000076f3a51fee38
>> R13: 000076f378026b30 R14: 000076f3a51fed30 R15: 000076f378026b48
>>  </TASK>
>> INFO: task gnome-software:3529 blocked for more than 120 seconds.
>>       Not tainted 6.9.0-rc2 #1
>> "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
>> task:gnome-software  state:D stack:0     pid:3529  tgid:3529
>> ppid:3034   flags:0x00000002
>> Call Trace:
>>  <TASK>
>>  __schedule+0x5dd/0x1380
>>  schedule+0x6e/0xf0
>>  schedule_preempt_disabled+0x15/0x20
>>  __mutex_lock+0x2a0/0x750
>>  netlink_dump+0x1c4/0x3f0
>>  __netlink_dump_start+0x2b3/0x340
>>  rtnetlink_rcv_msg+0x469/0x4a0
>>  netlink_rcv_skb+0xed/0x120
>>  netlink_unicast+0x2ce/0x3f0
>>  netlink_sendmsg+0x39c/0x450
>>  __sys_sendto+0x2c8/0x350
>>  __x64_sys_sendto+0x26/0x30
>>  do_syscall_64+0x92/0x170
>>  entry_SYSCALL_64_after_hwframe+0x46/0x4e
>> RIP: 0033:0x7d6be892beea
>> RSP: 002b:00007ffd94e01560 EFLAGS: 00000246 ORIG_RAX: 000000000000002c
>> RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007d6be892beea
>> RDX: 0000000000000014 RSI: 00007ffd94e015f0 RDI: 000000000000000d
>> RBP: 00007ffd94e01590 R08: 0000000000000000 R09: 0000000000000000
>> R10: 0000000000004000 R11: 0000000000000246 R12: 00007ffd94e015f0
>> R13: 0000000000000014 R14: 0000000000000000 R15: 0000000000000000
>>  </TASK>
>> INFO: task Qt bearer threa:3960 blocked for more than 120 seconds.
>>       Not tainted 6.9.0-rc2 #1
>> "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
>> task:Qt bearer threa state:D stack:0     pid:3960  tgid:3550
>> ppid:3034   flags:0x00000002
>> Call Trace:
>>  <TASK>
>>  __schedule+0x5dd/0x1380
>>  schedule+0x6e/0xf0
>>  schedule_preempt_disabled+0x15/0x20
>>  __mutex_lock+0x2a0/0x750
>>  netlink_dump+0x1c4/0x3f0
>>  __netlink_dump_start+0x2b3/0x340
>>  rtnetlink_rcv_msg+0x469/0x4a0
>>  netlink_rcv_skb+0xed/0x120
>>  netlink_unicast+0x2ce/0x3f0
>>  netlink_sendmsg+0x39c/0x450
>>  __sys_sendto+0x2c8/0x350
>>  __x64_sys_sendto+0x26/0x30
>>  do_syscall_64+0x92/0x170
>>  entry_SYSCALL_64_after_hwframe+0x46/0x4e
>> RIP: 0033:0x777a42b2beea
>> RSP: 002b:0000777a2abfecf0 EFLAGS: 00000246 ORIG_RAX: 000000000000002c
>> RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 0000777a42b2beea
>> RDX: 0000000000000020 RSI: 0000777a2abfeda0 RDI: 000000000000001d
>> RBP: 0000777a2abfed20 R08: 0000000000000000 R09: 0000000000000000
>> R10: 0000000000000000 R11: 0000000000000246 R12: 0000777a2abfee78
>> R13: 0000777a080285b0 R14: 0000777a2abfed70 R15: 0000777a080285c8
>>  </TASK>
>> INFO: task xdg-desktop-por:3821 blocked for more than 120 seconds.
>>       Not tainted 6.9.0-rc2 #1
>> "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
>> task:xdg-desktop-por state:D stack:0     pid:3821  tgid:3821
>> ppid:2776   flags:0x00000002
>> Call Trace:
>>  <TASK>
>>  __schedule+0x5dd/0x1380
>>  schedule+0x6e/0xf0
>>  schedule_preempt_disabled+0x15/0x20
>>  __mutex_lock+0x2a0/0x750
>>  netlink_dump+0x1c4/0x3f0
>>  __netlink_dump_start+0x2b3/0x340
>>  rtnetlink_rcv_msg+0x469/0x4a0
>>  netlink_rcv_skb+0xed/0x120
>>  netlink_unicast+0x2ce/0x3f0
>>  netlink_sendmsg+0x39c/0x450
>>  __sys_sendto+0x2c8/0x350
>>  __x64_sys_sendto+0x26/0x30
>>  do_syscall_64+0x92/0x170
>>  entry_SYSCALL_64_after_hwframe+0x46/0x4e
>> RIP: 0033:0x79d76612beea
>> RSP: 002b:00007ffd480942a0 EFLAGS: 00000246 ORIG_RAX: 000000000000002c
>> RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 000079d76612beea
>> RDX: 0000000000000014 RSI: 00007ffd48094330 RDI: 0000000000000008
>> RBP: 00007ffd480942d0 R08: 0000000000000000 R09: 0000000000000000
>> R10: 0000000000004000 R11: 0000000000000246 R12: 00007ffd48094330
>> R13: 0000000000000014 R14: 0000000000000000 R15: 0000000000000000
>>  </TASK>
>> INFO: task DNS Res~ver #11:25588 blocked for more than 120 seconds.
>>       Not tainted 6.9.0-rc2 #1
>> "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
>> task:DNS Res~ver #11 state:D stack:0     pid:25588 tgid:4934
>> ppid:3070   flags:0x00000002
>> Call Trace:
>>  <TASK>
>>  __schedule+0x5dd/0x1380
>>  schedule+0x6e/0xf0
>>  schedule_preempt_disabled+0x15/0x20
>>  __mutex_lock+0x2a0/0x750
>>  netlink_dump+0x1c4/0x3f0
>>  __netlink_dump_start+0x2b3/0x340
>>  rtnetlink_rcv_msg+0x469/0x4a0
>>  netlink_rcv_skb+0xed/0x120
>>  netlink_unicast+0x2ce/0x3f0
>>  netlink_sendmsg+0x39c/0x450
>>  __sys_sendto+0x2c8/0x350
>>  __x64_sys_sendto+0x26/0x30
>>  do_syscall_64+0x92/0x170
>>  entry_SYSCALL_64_after_hwframe+0x46/0x4e
>> RIP: 0033:0x72d65892c0e4
>> RSP: 002b:000072d649cbb880 EFLAGS: 00000293 ORIG_RAX: 000000000000002c
>> RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 000072d65892c0e4
>> RDX: 0000000000000014 RSI: 000072d649cbc9b0 RDI: 0000000000000053
>> RBP: 000072d649cbb8c0 R08: 000072d649cbc954 R09: 000000000000000c
>> R10: 0000000000000000 R11: 0000000000000293 R12: 0000000000000053
>> R13: 0000000000000010 R14: 000072d649cbc970 R15: 00000000b48fd654
>>  </TASK>
>> INFO: task kworker/u88:2:31385 blocked for more than 120 seconds.
>>       Not tainted 6.9.0-rc2 #1
>> "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
>> task:kworker/u88:2   state:D stack:0     pid:31385 tgid:31385 ppid:2
>>    flags:0x00004000
>> Workqueue: ipv6_addrconf addrconf_verify_work
>> Call Trace:
>>  <TASK>
>>  __schedule+0x5dd/0x1380
>>  schedule+0x6e/0xf0
>>  schedule_preempt_disabled+0x15/0x20
>>  __mutex_lock+0x2a0/0x750
>>  addrconf_verify_work+0x20/0x30
>>  process_scheduled_works+0x1f4/0x450
>>  worker_thread+0x349/0x5e0
>>  kthread+0x147/0x160
>>  ret_from_fork+0x34/0x40
>>  ret_from_fork_asm+0x11/0x20
>>  </TASK>
> 

It's unfortunate that the device-managed LED is bound to the netdev device.
Wouldn't binding it to the parent (&pdev->dev) solve the issue?

