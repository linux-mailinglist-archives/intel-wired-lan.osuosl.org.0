Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 332926ADEE5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Mar 2023 13:38:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C1D4540356;
	Tue,  7 Mar 2023 12:38:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C1D4540356
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678192687;
	bh=ilViWt8hz5cQK4KdDpLSyGTNzRME8nhrMqRyk/W4rpU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NGVqFB4t6lf65vt8ZgUA/ksf8xVDMBw1i6t8aqQwxiGxuwAhX9/JxhWAAR+qVjxMm
	 rgFyHCb8MVIzWYBmwVyHpsM+rp6GccK6jPJqeZzTFwRGwgyoL6VHbv7s0S3NwVRIVH
	 w8GVn+vIqXejMQTL9C+VEy+X4iOzZdrMHpb1sM8+gvLzHQThJFDS7p7Xt4tXu82bCq
	 bmiBe/lJBUFw2Z3g69vob25AUrZRtptZY9XPUWp3xcVg6i9eKbFrCJdI3BNqAlbbTl
	 4hj7EVA1ECspvn+ZX11sELZ6AebCt/a9nV4LW/ka1odmrxfByvPwdipDW+rv75uOJc
	 5XTOyrcphktng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1VbR4qbE8Js3; Tue,  7 Mar 2023 12:38:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2FCB34030B;
	Tue,  7 Mar 2023 12:38:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2FCB34030B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 40DCB1BF303
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 12:38:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 195DE80E84
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 12:38:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 195DE80E84
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rpDiM1mNQANA for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Mar 2023 12:37:58 +0000 (UTC)
X-Greylist: delayed 02:01:33 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65A2B80E76
Received: from zg8tmtyylji0my4xnjqumte4.icoremail.net
 (zg8tmtyylji0my4xnjqumte4.icoremail.net [162.243.164.118])
 by smtp1.osuosl.org (Postfix) with ESMTP id 65A2B80E76
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 12:37:57 +0000 (UTC)
Received: by ajax-webmail-mail-app3 (Coremail) ; Tue, 7 Mar 2023 20:37:46
 +0800 (GMT+08:00)
X-Originating-IP: [183.128.133.225]
Date: Tue, 7 Mar 2023 20:37:46 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: "Lin Ma" <linma@zju.edu.cn>
To: intel-wired-lan@lists.osuosl.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20210104(ab8c30b6)
 Copyright (c) 2002-2023 www.mailtech.cn zju.edu.cn
In-Reply-To: <ZAcqAgLo5/EMca8e@calimero.vinschen.de>
References: <ZAcJvkEPqWeJHO2r@calimero.vinschen.de>
 <3ef31c0b-ce40-20d0-7740-5dc0cca278ca@molgen.mpg.de>
 <882d6a36-d3ac-c231-ba02-bc2235984cfd@molgen.mpg.de>
 <43532635.82161.186bba49ec2.Coremail.linma@zju.edu.cn>
 <ZAcqAgLo5/EMca8e@calimero.vinschen.de>
MIME-Version: 1.0
Message-ID: <4826c9a2.825ce.186bc13e703.Coremail.linma@zju.edu.cn>
X-Coremail-Locale: en_US
X-CM-TRANSID: cC_KCgD3_6saMAdkCdPrDQ--.24099W
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/1tbiAwMHElNG3KG1xgAAsO
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
 CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
 daVFxhVjvjDU=
Subject: Re: [Intel-wired-lan] [REGRESSION] Deadlock since commit
 6faee3d4ee8b ("igb: Add lock to avoid data race")
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 regressions <regressions@lists.linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Corinna,

Thanks for the crash log. Seems the reason I didn't successfully reproduce the bug is that I didn't actually enable the sriov. 
According to the log, the deadlock seems obvious. I'm soooo noob to make such a mistake.

> [  141.423324]  unregister_netdev+0xe/0x20  // <===== again grant rtnl_lock
> [  141.423578]  igbvf_remove+0x45/0xe0 [igbvf]
> [  141.423791]  pci_device_remove+0x36/0xb0
> [  141.423990]  device_release_driver_internal+0xc1/0x160
> [  141.424270]  pci_stop_bus_device+0x6d/0x90
> [  141.424507]  pci_stop_and_remove_bus_device+0xe/0x20
> [  141.424789]  pci_iov_remove_virtfn+0xba/0x120
> [  141.425452]  sriov_disable+0x2f/0xf0
> [  141.425679]  igb_disable_sriov+0x4e/0x100 [igb]
> [  141.426353]  igb_remove+0xa0/0x130 [igb] // <===== first grant rtnl_lock

I will prepare the commit to revert this buggy commit and I will add the Report-by tag for you.

Regards
Lin


> From: "Corinna Vinschen" <vinschen@redhat.com>
> Sent Time: 2023-03-07 20:11:46 (Tuesday)
> To: "Lin Ma" <linma@zju.edu.cn>
> Cc: "Paul Menzel" <pmenzel@molgen.mpg.de>, intel-wired-lan <intel-wired-lan@lists.osuosl.org>, regressions <regressions@lists.linux.dev>
> Subject: Re: [Intel-wired-lan] [REGRESSION] Deadlock since commit 6faee3d4ee8b ("igb: Add lock to avoid data race")
> 
> Hi Lin,
> 
> On Mar  7 18:36, Lin Ma wrote:
> > Hello there
> > 
> > Yeah I am looking at it. Could you please offer the crash log or
> > locking debug message if accessible? Thanks in advance.
> 
> The commands used to reroduce and the resulting log message:
> 
>   # echo 10 > /proc/sys/kernel/hung_task_timeout_secs
>   # echo 2 > /sys/class/net/ens5f2/device/sriov_numvfs
>   # modprobe -r igb
>   [hang]
> 
> console log:
> 
> [  116.914656] pci 0000:84:10.2: [8086:1520] type 00 class 0x020000
> [  116.915722] pci 0000:84:10.6: [8086:1520] type 00 class 0x020000
> [  116.917013] igb 0000:84:00.2: 2 VFs allocated
> [  116.978350] igbvf: Intel(R) Gigabit Virtual Function Network Driver
> [  116.979072] igbvf: Copyright (c) 2009 - 2012 Intel Corporation.
> [  116.980253] igbvf 0000:84:10.2: enabling device (0000 -> 0002)
> [  116.982356] igbvf 0000:84:10.2: PF still in reset state. Is the PF interface up?
> [  116.983196] igbvf 0000:84:10.2: Assigning random MAC address.
> [  116.985058] igbvf 0000:84:10.2: PF still resetting
> [  117.011054] igbvf 0000:84:10.2: Intel(R) I350 Virtual Function
> [  117.011785] igbvf 0000:84:10.2: Address: c2:e5:c2:a2:75:00
> [  117.012189] igbvf 0000:84:10.6: enabling device (0000 -> 0002)
> [  117.023911] igbvf 0000:84:10.6: PF still in reset state. Is the PF interface up?
> [  117.024724] igbvf 0000:84:10.6: Assigning random MAC address.
> [  117.036215] igbvf 0000:84:10.6: PF still resetting
> [  117.037596] igbvf 0000:84:10.6: Intel(R) I350 Virtual Function
> [  117.038327] igbvf 0000:84:10.6: Address: ea:74:07:f4:28:7c
> [  117.047970] igbvf 0000:84:10.6 ens5f2v1: renamed from eth1
> [  117.062847] igbvf 0000:84:10.2 ens5f2v0: renamed from eth0
> [  117.080725] igb 0000:84:00.2: VF 1 attempted to set invalid MAC filter
> [  117.106106] igb 0000:84:00.2: VF 1 attempted to set invalid MAC filter
> [  117.107189] igb 0000:84:00.2: VF 1 attempted to set invalid MAC filter
> [  127.361316] igb 0000:84:00.3: removed PHC on ens5f3
> [  127.361975] igb 0000:84:00.3: DCA disabled
> [  127.483085] igb 0000:84:00.2: removed PHC on ens5f2
> [  127.483786] igb 0000:84:00.2: DCA disabled
> [  141.418410] INFO: task modprobe:2078 blocked for more than 10 seconds.
> [  141.418856]       Not tainted 6.2.0-rc8+ #12
> [  141.419184] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
> [  141.419616] task:modprobe        state:D stack:0     pid:2078  ppid:2037   flags:0x00004000
> [  141.420039] Call Trace:
> [  141.420169]  <TASK>
> [  141.420672]  __schedule+0x2dd/0x840
> [  141.421427]  schedule+0x50/0xc0
> [  141.422041]  schedule_preempt_disabled+0x11/0x20
> [  141.422678]  __mutex_lock.isra.13+0x431/0x6b0
> [  141.423324]  unregister_netdev+0xe/0x20
> [  141.423578]  igbvf_remove+0x45/0xe0 [igbvf]
> [  141.423791]  pci_device_remove+0x36/0xb0
> [  141.423990]  device_release_driver_internal+0xc1/0x160
> [  141.424270]  pci_stop_bus_device+0x6d/0x90
> [  141.424507]  pci_stop_and_remove_bus_device+0xe/0x20
> [  141.424789]  pci_iov_remove_virtfn+0xba/0x120
> [  141.425452]  sriov_disable+0x2f/0xf0
> [  141.425679]  igb_disable_sriov+0x4e/0x100 [igb]
> [  141.426353]  igb_remove+0xa0/0x130 [igb]
> [  141.426599]  pci_device_remove+0x36/0xb0
> [  141.426796]  device_release_driver_internal+0xc1/0x160
> [  141.427060]  driver_detach+0x44/0x90
> [  141.427253]  bus_remove_driver+0x55/0xe0
> [  141.427477]  pci_unregister_driver+0x2a/0xa0
> [  141.428296]  __x64_sys_delete_module+0x141/0x2b0
> [  141.429126]  ? mntput_no_expire+0x4a/0x240
> [  141.429363]  ? syscall_trace_enter.isra.19+0x126/0x1a0
> [  141.429653]  do_syscall_64+0x5b/0x80
> [  141.429847]  ? exit_to_user_mode_prepare+0x14d/0x1c0
> [  141.430109]  ? syscall_exit_to_user_mode+0x12/0x30
> [  141.430849]  ? do_syscall_64+0x67/0x80
> [  141.431083]  ? syscall_exit_to_user_mode_prepare+0x183/0x1b0
> [  141.431770]  ? syscall_exit_to_user_mode+0x12/0x30
> [  141.432482]  ? do_syscall_64+0x67/0x80
> [  141.432714]  ? exc_page_fault+0x64/0x140
> [  141.432911]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
> [  141.433175] RIP: 0033:0x7ff04cc3a05b
> [  141.433375] RSP: 002b:00007ffd891bcb38 EFLAGS: 00000206 ORIG_RAX: 00000000000000b0
> [  141.434337] RAX: ffffffffffffffda RBX: 000055fde256dd00 RCX: 00007ff04cc3a05b
> [  141.435171] RDX: 0000000000000000 RSI: 0000000000000800 RDI: 000055fde256dd68
> [  141.435973] RBP: 000055fde256dd68 R08: 00007ffd891bbae1 R09: 0000000000000000
> [  141.436852] R10: 00007ff04cd71480 R11: 0000000000000206 R12: 0000000000000000
> [  141.437636] R13: 0000000000000000 R14: 000055fde256dd68 R15: 0000000000000000
> [  141.438442]  </TASK>
> 
> 
> Corinna
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
