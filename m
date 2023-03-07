Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA456ADE75
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Mar 2023 13:12:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B26341711;
	Tue,  7 Mar 2023 12:12:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B26341711
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678191123;
	bh=lJm6vJB5it/EvAAHQy0MnXu07HDjou4mkWVM7uCKU1c=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=AoXEdMpiEYXmREvSH0UKNLsUu2kOrPA7wjYu5rFhEeVSv/ov2ZwMPaNeoFtF1UKuI
	 K14Zaqh9tL2pttUvcGHuK/3Aj/wWzrOUZ+K1GijCShFgEBnfR0Y6eSQRdmiuPRra5K
	 kZbzLhf8xA3V7dOEGpuVMBmSTgjYgYX7h2OMwx4RsVk3vx8KOl3TwvN7cqBxj3XY67
	 oOq9NcK22pNQfHBuHTiv9jO2qACv52oVhhnwdGuO84WpBtfkma8kJ/vpF88DTVi8F7
	 BqZcMjL5dC6kld6rLCoTUacfQFXNDJn/CxAfEMGu9xz1Mj/NTQ9wFFQ19owtXvKOEv
	 saTEdCgS8KYFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T1WzaaFi8ZP9; Tue,  7 Mar 2023 12:12:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D8B6415A7;
	Tue,  7 Mar 2023 12:12:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D8B6415A7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5644B1BF303
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 12:11:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2B481415A7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 12:11:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B481415A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ys7SngDHAblC for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Mar 2023 12:11:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB79C41506
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AB79C41506
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 12:11:53 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-363-iFxcURc1NaikOb9Tk_85_Q-1; Tue, 07 Mar 2023 07:11:48 -0500
X-MC-Unique: iFxcURc1NaikOb9Tk_85_Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 01824802D2F;
 Tue,  7 Mar 2023 12:11:48 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.192.200])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 577F718EC6;
 Tue,  7 Mar 2023 12:11:47 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 204E8A80721; Tue,  7 Mar 2023 13:11:46 +0100 (CET)
Date: Tue, 7 Mar 2023 13:11:46 +0100
From: Corinna Vinschen <vinschen@redhat.com>
To: Lin Ma <linma@zju.edu.cn>
Message-ID: <ZAcqAgLo5/EMca8e@calimero.vinschen.de>
Mail-Followup-To: Lin Ma <linma@zju.edu.cn>,
 Paul Menzel <pmenzel@molgen.mpg.de>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 regressions <regressions@lists.linux.dev>
References: <ZAcJvkEPqWeJHO2r@calimero.vinschen.de>
 <3ef31c0b-ce40-20d0-7740-5dc0cca278ca@molgen.mpg.de>
 <882d6a36-d3ac-c231-ba02-bc2235984cfd@molgen.mpg.de>
 <43532635.82161.186bba49ec2.Coremail.linma@zju.edu.cn>
MIME-Version: 1.0
In-Reply-To: <43532635.82161.186bba49ec2.Coremail.linma@zju.edu.cn>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1678191112;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:in-reply-to:in-reply-to:  references:references;
 bh=SLqVJBp1eLgW5h0bSEtFxgqaBWz+fhMg0KuAiUSegZI=;
 b=CnShngQOL+8fEl5ljEY7lBwgOwd57vbSd5F+/rAFmqHZ6bAyKGy5J6SZtK2wWg5FirzRhi
 oMf8k232RmUOpfokAJliFvRGmv2bPhbqlZa8iEh7VEhTCwQte4g5ds/GBFNHDYG0LZtmxT
 ZkGRvjNfS/JVMgMQGkVBEJ/G9C0n7h8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=CnShngQO
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
Reply-To: intel-wired-lan@lists.osuosl.org
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 regressions <regressions@lists.linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Lin,

On Mar  7 18:36, Lin Ma wrote:
> Hello there
> 
> Yeah I am looking at it. Could you please offer the crash log or
> locking debug message if accessible? Thanks in advance.

The commands used to reroduce and the resulting log message:

  # echo 10 > /proc/sys/kernel/hung_task_timeout_secs
  # echo 2 > /sys/class/net/ens5f2/device/sriov_numvfs
  # modprobe -r igb
  [hang]

console log:

[  116.914656] pci 0000:84:10.2: [8086:1520] type 00 class 0x020000
[  116.915722] pci 0000:84:10.6: [8086:1520] type 00 class 0x020000
[  116.917013] igb 0000:84:00.2: 2 VFs allocated
[  116.978350] igbvf: Intel(R) Gigabit Virtual Function Network Driver
[  116.979072] igbvf: Copyright (c) 2009 - 2012 Intel Corporation.
[  116.980253] igbvf 0000:84:10.2: enabling device (0000 -> 0002)
[  116.982356] igbvf 0000:84:10.2: PF still in reset state. Is the PF interface up?
[  116.983196] igbvf 0000:84:10.2: Assigning random MAC address.
[  116.985058] igbvf 0000:84:10.2: PF still resetting
[  117.011054] igbvf 0000:84:10.2: Intel(R) I350 Virtual Function
[  117.011785] igbvf 0000:84:10.2: Address: c2:e5:c2:a2:75:00
[  117.012189] igbvf 0000:84:10.6: enabling device (0000 -> 0002)
[  117.023911] igbvf 0000:84:10.6: PF still in reset state. Is the PF interface up?
[  117.024724] igbvf 0000:84:10.6: Assigning random MAC address.
[  117.036215] igbvf 0000:84:10.6: PF still resetting
[  117.037596] igbvf 0000:84:10.6: Intel(R) I350 Virtual Function
[  117.038327] igbvf 0000:84:10.6: Address: ea:74:07:f4:28:7c
[  117.047970] igbvf 0000:84:10.6 ens5f2v1: renamed from eth1
[  117.062847] igbvf 0000:84:10.2 ens5f2v0: renamed from eth0
[  117.080725] igb 0000:84:00.2: VF 1 attempted to set invalid MAC filter
[  117.106106] igb 0000:84:00.2: VF 1 attempted to set invalid MAC filter
[  117.107189] igb 0000:84:00.2: VF 1 attempted to set invalid MAC filter
[  127.361316] igb 0000:84:00.3: removed PHC on ens5f3
[  127.361975] igb 0000:84:00.3: DCA disabled
[  127.483085] igb 0000:84:00.2: removed PHC on ens5f2
[  127.483786] igb 0000:84:00.2: DCA disabled
[  141.418410] INFO: task modprobe:2078 blocked for more than 10 seconds.
[  141.418856]       Not tainted 6.2.0-rc8+ #12
[  141.419184] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[  141.419616] task:modprobe        state:D stack:0     pid:2078  ppid:2037   flags:0x00004000
[  141.420039] Call Trace:
[  141.420169]  <TASK>
[  141.420672]  __schedule+0x2dd/0x840
[  141.421427]  schedule+0x50/0xc0
[  141.422041]  schedule_preempt_disabled+0x11/0x20
[  141.422678]  __mutex_lock.isra.13+0x431/0x6b0
[  141.423324]  unregister_netdev+0xe/0x20
[  141.423578]  igbvf_remove+0x45/0xe0 [igbvf]
[  141.423791]  pci_device_remove+0x36/0xb0
[  141.423990]  device_release_driver_internal+0xc1/0x160
[  141.424270]  pci_stop_bus_device+0x6d/0x90
[  141.424507]  pci_stop_and_remove_bus_device+0xe/0x20
[  141.424789]  pci_iov_remove_virtfn+0xba/0x120
[  141.425452]  sriov_disable+0x2f/0xf0
[  141.425679]  igb_disable_sriov+0x4e/0x100 [igb]
[  141.426353]  igb_remove+0xa0/0x130 [igb]
[  141.426599]  pci_device_remove+0x36/0xb0
[  141.426796]  device_release_driver_internal+0xc1/0x160
[  141.427060]  driver_detach+0x44/0x90
[  141.427253]  bus_remove_driver+0x55/0xe0
[  141.427477]  pci_unregister_driver+0x2a/0xa0
[  141.428296]  __x64_sys_delete_module+0x141/0x2b0
[  141.429126]  ? mntput_no_expire+0x4a/0x240
[  141.429363]  ? syscall_trace_enter.isra.19+0x126/0x1a0
[  141.429653]  do_syscall_64+0x5b/0x80
[  141.429847]  ? exit_to_user_mode_prepare+0x14d/0x1c0
[  141.430109]  ? syscall_exit_to_user_mode+0x12/0x30
[  141.430849]  ? do_syscall_64+0x67/0x80
[  141.431083]  ? syscall_exit_to_user_mode_prepare+0x183/0x1b0
[  141.431770]  ? syscall_exit_to_user_mode+0x12/0x30
[  141.432482]  ? do_syscall_64+0x67/0x80
[  141.432714]  ? exc_page_fault+0x64/0x140
[  141.432911]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
[  141.433175] RIP: 0033:0x7ff04cc3a05b
[  141.433375] RSP: 002b:00007ffd891bcb38 EFLAGS: 00000206 ORIG_RAX: 00000000000000b0
[  141.434337] RAX: ffffffffffffffda RBX: 000055fde256dd00 RCX: 00007ff04cc3a05b
[  141.435171] RDX: 0000000000000000 RSI: 0000000000000800 RDI: 000055fde256dd68
[  141.435973] RBP: 000055fde256dd68 R08: 00007ffd891bbae1 R09: 0000000000000000
[  141.436852] R10: 00007ff04cd71480 R11: 0000000000000206 R12: 0000000000000000
[  141.437636] R13: 0000000000000000 R14: 000055fde256dd68 R15: 0000000000000000
[  141.438442]  </TASK>


Corinna

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
