Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6312464A978
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Dec 2022 22:23:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EDE7840422;
	Mon, 12 Dec 2022 21:23:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDE7840422
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670880229;
	bh=+ZHmYwVn5anTAi+wz7QdIUev6jUvEasZTbScK6bKFWA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=zzYzNPFI2tZsk2yCMwamT/eh9GoWaY14J0csFvvnhnvKSZZQ3qJsYBuQvM48df2YQ
	 0OJtKuHP4UTpfTCYp/3SDFLWq0BYsHMsiGN4FeaLXMBBZR8W6AK70oNXwRTAV3UHz2
	 WwkeMWdWlaWRfUGy7DhmEAYbp8hzveQgeGYez59V4NAXcJJcpPGZJOcwUu5QXxaXpL
	 sALEjeApOOsKZGTMfVlpvz8cVNn36A3sqMwBzBuHFyHVESYs34zsm2IMLVmCF2mDy9
	 lqNqDurzQZYPNsYkev2jEoqvBBUwKdhsPHBvWn5sNMgmMRony8gwlV+xthw8VlImpQ
	 dhu+Z+Yn4ysWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1dIQ_UfPE3OQ; Mon, 12 Dec 2022 21:23:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E7AC403B4;
	Mon, 12 Dec 2022 21:23:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E7AC403B4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 61D5A1BF30A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 21:23:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3BF80812A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 21:23:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BF80812A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bi1x7S1SfVmS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Dec 2022 21:23:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9B38812A0
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B9B38812A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 21:23:40 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 3-20020a17090a098300b00219041dcbe9so1360303pjo.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 13:23:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:subject:cc:to
 :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=d8YpHtaRobEd438a7JMg+CLImrJkpiRy1NCMvFK7K+g=;
 b=1Fqh8m+pmo7imTumiMgY993LOz8ePndioZ5PYciyaP+0JscVM5AGe/CU6yODFyno8E
 mQa6tnW/e3MPARquiATdVKnR+wMO90Ob7dplwaFYHU18ppGASRghmbslr8yl9pJJHUKD
 dg4F+PhToPBykxO4TxPWM3No246gY2DdRP/jhMbLMgGYvuNK1k66GdISIdvL5KLeCnqJ
 +XpP2O7q0jlPBFpY5gcB0PwSThbkM+kSX2H33o/glU4tS8YzPtL9I2zAsawVke4pka+5
 2/AssOzDvL8Rmj6yhxdjZFl2hcx05xxzIz5BQmW2VESV6C2Z9s+6RAil8scM+fNp+ChS
 IHwA==
X-Gm-Message-State: ANoB5pn/8FAnRufxdSSsfSnruAzNVtLAnSPhZPhzoP11tCbubD7BuiX9
 KMMLZXaCaDWuOpCgjwVY2TJDSQ==
X-Google-Smtp-Source: AA0mqf77PPqRtDuI0TIC3hK5nLrziBkQRZRJLNWHI4d/ZypfAP1i698jY8aS8dLo2mFa1z+Hhu1png==
X-Received: by 2002:a17:902:c3cd:b0:189:d3dc:a9c4 with SMTP id
 j13-20020a170902c3cd00b00189d3dca9c4mr17401274plj.36.1670880219981; 
 Mon, 12 Dec 2022 13:23:39 -0800 (PST)
Received: from hermes.local (204-195-120-218.wavecable.com. [204.195.120.218])
 by smtp.gmail.com with ESMTPSA id
 d18-20020a170902f15200b00188b5d25438sm6859649plb.35.2022.12.12.13.23.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Dec 2022 13:23:39 -0800 (PST)
Date: Mon, 12 Dec 2022 13:23:38 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, anthony.l.nguyen@intel.com
Message-ID: <20221212132338.26a9f3a0@hermes.local>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:subject:cc:to
 :from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=d8YpHtaRobEd438a7JMg+CLImrJkpiRy1NCMvFK7K+g=;
 b=JfTPlb4izYRS5a9mZxVBhiaz8O4UXZivS3QNj9h5DoV69hdCMD1Bas8JqBveLVnLHr
 68+kU2Y47oRHPawO9NgCZaN9UCGEjFfxy5pHVdYhxZ9UiyBoDtA+/d7JiuplEbxLpnZI
 mS6lwMU/JQu7M0xr3ZyYMFEHC0hAbORtzpIvLXhMtm/vUtqehCNMa9l8VLXnrYqI5/+n
 hQ45M4nQIvsr5/cOAKr0HlWc3cy0kqbqsNnPXiMibohfCgikGhll5VkwWf79YvUAG1ce
 ucdtIS6LOm7DKuIt6DqYcrfaEw05KzU54YmidZdRaeXQM5aw1uc/FR1SrDGGQA4VRdHR
 ihsw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=networkplumber-org.20210112.gappssmtp.com
 header.i=@networkplumber-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=JfTPlb4i
Subject: [Intel-wired-lan] Fw: [Bug 205073] igb driver hang
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



Begin forwarded message:

Date: Mon, 12 Dec 2022 18:58:10 +0000
From: bugzilla-daemon@kernel.org
To: stephen@networkplumber.org
Subject: [Bug 205073] igb driver hang


https://bugzilla.kernel.org/show_bug.cgi?id=205073

Perlover (perlover@perlover.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |perlover@perlover.com

--- Comment #7 from Perlover (perlover@perlover.com) ---
Hello!
Same problem
Ubuntu 20.04 LTE
Kernel: 5.4.0-135-generic

Stack trace:

Dec 12 18:58:05 AH15 kernel: [4699248.577166] igb 0000:01:00.1 internal: PCIe
link lost
Dec 12 18:58:05 AH15 kernel: [4699248.577230] igb 0000:01:00.1 internal:
malformed Tx packet detected and dropped, LVMMC:0xffffffff
Dec 12 18:58:05 AH15 kernel: [4699249.473382] igb 0000:01:00.0 external: PCIe
link lost
Dec 12 18:58:05 AH15 kernel: [4699249.473446] ------------[ cut here
]------------
Dec 12 18:58:05 AH15 kernel: [4699249.473448] igb: Failed to read reg 0xc030!
Dec 12 18:58:05 AH15 kernel: [4699249.473538] WARNING: CPU: 21 PID: 501169 at
drivers/net/ethernet/intel/igb/igb_main.c:756 igb_rd32.cold+0x3a/0x46 [igb]
Dec 12 18:58:05 AH15 kernel: [4699249.473540] Modules linked in: ufs qnx4
hfsplus hfs minix ntfs msdos jfs xfs cpuid binfmt_misc nf_log_ipv6 ip6t_REJECT
nf_reject_ipv6 xt_hl ip6t_rt nf_log_ipv4 nf_log_common ipt_REJECT
nf_reject_ipv4 xt_LOG xt_limit xt_addrtype xt_tcpudp ip6table_filter ip6_tables
xt_recent xt_connt>
Dec 12 18:58:05 AH15 kernel: [4699249.473596]  crypto_simd usbhid cryptd
glue_helper igb ahci libsas drm hid i2c_i801 libahci megaraid_sas lpc_ich
scsi_transport_sas dca i2c_algo_bit
Dec 12 18:58:05 AH15 kernel: [4699249.473613] CPU: 21 PID: 501169 Comm:
kworker/21:1 Not tainted 5.4.0-128-generic #144-Ubuntu
Dec 12 18:58:05 AH15 kernel: [4699249.473615] Hardware name: Supermicro
X9DR3-F/X9DR3-F, BIOS 1.0c 06/29/2012
Dec 12 18:58:05 AH15 kernel: [4699249.473626] Workqueue: events
igb_watchdog_task [igb]
Dec 12 18:58:05 AH15 kernel: [4699249.473638] RIP: 0010:igb_rd32.cold+0x3a/0x46
[igb]
Dec 12 18:58:05 AH15 kernel: [4699249.473643] Code: c7 c6 c2 01 4b c0 e8 da da
23 e2 48 8b bb 30 ff ff ff e8 94 cf cc e1 84 c0 74 16 44 89 ee 48 c7 c7 d0 0e
4b c0 e8 a2 de 1e e2 <0f> 0b e9 12 3c fe ff e9 29 3c fe ff 8b b3 14 18 00 00 49
8d bc 24
Dec 12 18:58:05 AH15 kernel: [4699249.473645] RSP: 0018:ffffb1c9cf1abdb0
EFLAGS: 00010282
Dec 12 18:58:05 AH15 kernel: [4699249.473648] RAX: 0000000000000000 RBX:
ffffa05c6ced0e08 RCX: 0000000000000006
Dec 12 18:58:05 AH15 kernel: [4699249.473650] RDX: 0000000000000007 RSI:
0000000000000092 RDI: ffffa05c7fa5c8c0
Dec 12 18:58:05 AH15 kernel: [4699249.473652] RBP: ffffb1c9cf1abdc8 R08:
0000000000039e75 R09: 0000000000000004
Dec 12 18:58:05 AH15 kernel: [4699249.473654] R10: 0000000000000000 R11:
0000000000000001 R12: 00000000ffffffff
Dec 12 18:58:05 AH15 kernel: [4699249.473655] R13: 000000000000c030 R14:
0000000000000000 R15: ffffa05c78909f00
Dec 12 18:58:05 AH15 kernel: [4699249.473659] FS:  0000000000000000(0000)
GS:ffffa05c7fa40000(0000) knlGS:0000000000000000
Dec 12 18:58:05 AH15 kernel: [4699249.473661] CS:  0010 DS: 0000 ES: 0000 CR0:
0000000080050033
Dec 12 18:58:05 AH15 kernel: [4699249.473662] CR2: 00007f7d7617f000 CR3:
0000000e61c0a006 CR4: 00000000000606e0
Dec 12 18:58:05 AH15 kernel: [4699249.473665] Call Trace:
Dec 12 18:58:05 AH15 kernel: [4699249.473680]  igb_update_stats+0x78/0x820
[igb]
Dec 12 18:58:05 AH15 kernel: [4699249.473689]  igb_watchdog_task+0xa8/0x410
[igb]
Dec 12 18:58:05 AH15 kernel: [4699249.473697]  ? __schedule+0x2eb/0x740
Dec 12 18:58:05 AH15 kernel: [4699249.473705]  process_one_work+0x1eb/0x3b0
Dec 12 18:58:05 AH15 kernel: [4699249.473710]  worker_thread+0x4d/0x400
Dec 12 18:58:05 AH15 kernel: [4699249.473715]  kthread+0x104/0x140
Dec 12 18:58:05 AH15 kernel: [4699249.473719]  ? process_one_work+0x3b0/0x3b0
Dec 12 18:58:05 AH15 kernel: [4699249.473722]  ? kthread_park+0x90/0x90
Dec 12 18:58:05 AH15 kernel: [4699249.473726]  ret_from_fork+0x35/0x40
Dec 12 18:58:05 AH15 kernel: [4699249.473729] ---[ end trace f6253424685efc67
]---
Dec 12 18:58:05 AH15 kernel: [4699249.473740] igb 0000:01:00.0 external:
malformed Tx packet detected and dropped, LVMMC:0xffffffff
Dec 12 18:58:07 AH15 kernel: [4699250.561446] igb 0000:01:00.1 internal:
malformed Tx packet detected and dropped, LVMMC:0xffffffff

-- 
You may reply to this email to add a comment.

You are receiving this mail because:
You are the assignee for the bug.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
