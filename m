Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B30685AE8EC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Sep 2022 14:59:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1AECF4049B;
	Tue,  6 Sep 2022 12:59:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AECF4049B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662469169;
	bh=VdcWQcPdTr4ndIuj2Fm2EZsGoqKg7nQuG+CgDShi2/0=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mjHRgqTLvLBlc7o8m+Ab30kqBh+uw5vbUkmhnJIYRmCQkDIvdkt6ED5OKQDV0AKPJ
	 d49edC6HtQmLJOeXQoUNVFsQHdBpz18H/FyoEfm8Lyjzy0ByJDV3nkNvYC3ygu1JMe
	 MrO/VeXp5jEvH7imnE5kVsw2TJm75yAJtfk5g3Gj8pHVkszd6ikTFmtUIHpJR/gnG2
	 CobIvGmFxczwx2vhl51g1xzShkAzLohV2VZkdeoDoT6KOYbGvI1oq7P/91cgkVt5Z0
	 3DbJernSsqB7sM4CE9doYWCwZr5paEUOR0JTBtBQehFWmysP3R5HKID7dMGbTg4+yf
	 /cpg8rZbYRWOg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GhY15x8Oz9iz; Tue,  6 Sep 2022 12:59:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CEC55401C2;
	Tue,  6 Sep 2022 12:59:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEC55401C2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4FEBD1BF350
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Sep 2022 09:54:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 36AC2608F5
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Sep 2022 09:54:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36AC2608F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zvzqxIJuDb9r for <intel-wired-lan@lists.osuosl.org>;
 Sat,  3 Sep 2022 09:54:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7F4560881
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B7F4560881
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Sep 2022 09:54:02 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id m1so5580043edb.7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 03 Sep 2022 02:54:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:date:message-id:subject:mime-version:content-transfer-encoding
 :from:x-gm-message-state:from:to:cc:subject:date;
 bh=0GPZ6vi26uMs7VaHjYgrOJ/Zs7F1EYMFLz+6h1byWZ0=;
 b=R7oRK3wGd7Kaync9CiDA2j7dENZucO4mcKWldSKeXwhj7E6uK7zfnIyG59pc4GukX2
 rW2uoZQwfP0kqd02ntpaWPPJvGE2hTWns3+VQVe9925ZV3dItPU4luZuczcmjJMu1wdE
 pQSGWKABe+iJRxLdRd+2jK5mjDP0yuMz3nEuL2aNQpcjbwESSTvuRd0sOwGq6xH4E4R/
 2pQBbZqa6hq3X9q9HSpgs62IPvsLU+rw3WjE44qni9y3Ys2P+BqacD6W3FsQAwDNFM1L
 o1n0DgQRofdcb0UTp2ubhApzdFm5ZYCQVWxthjIIVS38ZrWFPNrs1y38GXWL7kEA1qxP
 77sw==
X-Gm-Message-State: ACgBeo0H563M98uCzVATuk3fk4LHOUffYmVTabXBffSTpa22qF/omCZb
 yDUdrLWNh3F7cDAG3KrN8J0=
X-Google-Smtp-Source: AA6agR4X1ETqCJoXz4fZ9Z/LHUmLCthR+UmZajlre4DHZ5y99ohi8DMhhKZQH4FUaSO3vqUdxEe+oQ==
X-Received: by 2002:a05:6402:84d:b0:435:a764:9aad with SMTP id
 b13-20020a056402084d00b00435a7649aadmr38107277edz.332.1662198840578; 
 Sat, 03 Sep 2022 02:54:00 -0700 (PDT)
Received: from smtpclient.apple ([178.254.237.20])
 by smtp.gmail.com with ESMTPSA id
 l17-20020a1709063d3100b007308bdef04bsm2335309ejf.103.2022.09.03.02.53.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 03 Sep 2022 02:53:59 -0700 (PDT)
From: Martin Zaharinov <micron10@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Message-Id: <FA05D61D-3E1A-4C0E-BE32-CD427DFEEAD2@gmail.com>
Date: Sat, 3 Sep 2022 12:53:57 +0300
To: Eric Dumazet <eric.dumazet@gmail.com>, Eric Dumazet <edumazet@google.com>,
 maciej.fijalkowski@intel.com, jesse.brandeburg@intel.com,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, anthony.l.nguyen@intel.com,
 netdev <netdev@vger.kernel.org>, helena.anna.dubel@intel.com,
 intel-wired-lan@lists.osuosl.org
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Mailman-Approved-At: Tue, 06 Sep 2022 12:59:22 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:date:message-id:subject:mime-version:content-transfer-encoding
 :from:from:to:cc:subject:date;
 bh=0GPZ6vi26uMs7VaHjYgrOJ/Zs7F1EYMFLz+6h1byWZ0=;
 b=IR9wSqABuQ+qvIk/R1qU/Y8GuDObgoOoLbkg++d2lMZGbGTB6tUVyQDdr+svtuUQxI
 N1QY1YUl5oTyDkGXb6rhsRflA8M6LlnwtkPzCnMFrNI3NGBnDkTMf1OPXyFXEz+3xTpX
 AFifpAhuxxl9C4Th4n4jbKLYHz2wPL63C6I1dE5x1IfFW+X+zmhQriZDpmN/17N1nOKw
 II3fMR2Oam6tg3cp6CRC23Dr7FnDjtssttrG2ChCi3b1VTriCQ6fY+PBgKtSICnpxsRI
 3dNKXyhVdKXlyNp7PSRfagDtlQ2JIWX5zCj5sJN+t5AIe8dHIxTvzEDiIIMOWtQKoVGX
 uJaQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=IR9wSqAB
Subject: [Intel-wired-lan] Urgent Kernel Bug NETDEV WATCHDOG ixgbe transmit
 queue 2 timed out after kernel 5.19.2 to 5.19.6
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi All


after move to release 5.19.x (2 and up to 6 ) 
start geting this bug report and machine reboot automatic after that.

With kernel 5.18 this problem is not happen.

Machine run with 2x 10G Intel 82599 card in bonding .
its a simple router with 6 core cpu.

Sep  3 10:05:39  [193378.949952][   C10] ------------[ cut here ]------------
Sep  3 10:05:39  [193378.949965][   C10] NETDEV WATCHDOG: eth1 (ixgbe): transmit queue 2 timed out
Sep  3 10:05:39  [193378.949980][   C10] WARNING: CPU: 10 PID: 0 at net/sched/sch_generic.c:529 dev_watchdog+0x167/0x170
Sep  3 10:05:39  [193378.949992][   C10] Modules linked in: nf_conntrack_netlink nft_limit pppoe pppox ppp_generic slhc nft_nat nft_chain_nat nf_tables team_mode_loadbalance team netconsole coretemp ixgbe mdio_devres libphy mdio nf_nat_sip nf_conntrack_sip nf_nat_pptp nf_conntrack_pptp nf_nat_tftp nf_conntrack_tftp nf_nat_ftp nf_conntrack_ftp nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 acpi_ipmi ipmi_si ipmi_devintf ipmi_msghandler rtc_cmos
Sep  3 10:05:39  [193378.950023][   C10] CPU: 10 PID: 0 Comm: swapper/10 Tainted: G           O      5.19.4 #1
Sep  3 10:05:39  [193378.950028][   C10] Hardware name: Supermicro Super Server/X10SRD-F, BIOS 3.3 10/28/2020
Sep  3 10:05:39  [193378.950032][   C10] RIP: 0010:dev_watchdog+0x167/0x170
Sep  3 10:05:39  [193378.950037][   C10] Code: 28 e9 77 ff ff ff 48 89 df c6 05 95 3d c4 00 01 e8 9e 5a fb ff 48 89 c2 44 89 e1 48 89 de 48 c7 c7 f0 d0 ec a7 e8 c2 c2 13 00 <0f> 0b eb 85 0f 1f 44 00 00 41 55 41 54 55 53 48 8b 47 50 4c 8b 28
Sep  3 10:05:39  [193378.950043][   C10] RSP: 0018:ffff96320030cee8 EFLAGS: 00010292
Sep  3 10:05:39  [193378.950048][   C10] RAX: 0000000000000039 RBX: ffff898a4da00000 RCX: 0000000000000001
Sep  3 10:05:39  [193378.950053][   C10] RDX: 00000000ffffffea RSI: 00000000fffbffff RDI: 00000000fffbffff
Sep  3 10:05:39  [193378.950057][   C10] RBP: ffff898a4da003c0 R08: 0000000000000001 R09: 00000000fffbffff
Sep  3 10:05:39  [193378.950061][   C10] R10: ffff89919d600000 R11: 0000000000000003 R12: 0000000000000002
Sep  3 10:05:39  [193378.950065][   C10] R13: 0000000000000000 R14: ffff89919fca07a8 R15: 0000000000000082
Sep  3 10:05:39  [193378.950070][   C10] FS:  0000000000000000(0000) GS:ffff89919fc80000(0000) knlGS:0000000000000000
Sep  3 10:05:39  [193378.950074][   C10] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
Sep  3 10:05:39  [193378.950078][   C10] CR2: 00007fb39f41d000 CR3: 00000001002fd003 CR4: 00000000003706e0
Sep  3 10:05:39  [193378.950082][   C10] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
Sep  3 10:05:39  [193378.950086][   C10] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Sep  3 10:05:39  [193378.950090][   C10] Call Trace:
Sep  3 10:05:39  [193378.950094][   C10]  <IRQ>
Sep  3 10:05:39  [193378.950098][   C10]  ? pfifo_fast_destroy+0x30/0x30
Sep  3 10:05:39  [193378.950104][   C10]  call_timer_fn.constprop.0+0x14/0x70
Sep  3 10:05:39  [193378.950110][   C10]  __run_timers.part.0+0x164/0x190
Sep  3 10:05:39  [193378.950116][   C10]  ? __hrtimer_run_queues+0x143/0x1a0
Sep  3 10:05:39  [193378.950120][   C10]  ? ktime_get+0x30/0x90
Sep  3 10:05:39  [193378.950125][   C10]  run_timer_softirq+0x21/0x50
Sep  3 10:05:39  [193378.950130][   C10]  __do_softirq+0xaf/0x1d7
Sep  3 10:05:39  [193378.950136][   C10]  __irq_exit_rcu+0x9a/0xd0
Sep  3 10:05:39  [193378.950142][   C10]  sysvec_apic_timer_interrupt+0x66/0x80
Sep  3 10:05:39  [193378.950149][   C10]  </IRQ>
Sep  3 10:05:39  [193378.950152][   C10]  <TASK>
Sep  3 10:05:39  [193378.950155][   C10]  asm_sysvec_apic_timer_interrupt+0x16/0x20
Sep  3 10:05:39  [193378.950160][   C10] RIP: 0010:cpuidle_enter_state+0xb3/0x290
Sep  3 10:05:39  [193378.950167][   C10] Code: e8 d2 0d b0 ff 31 ff 49 89 c5 e8 48 68 af ff 45 84 ff 74 12 9c 58 f6 c4 02 0f 85 cf 01 00 00 31 ff e8 81 b4 b3 ff fb 45 85 f6 <0f> 88 d0 00 00 00 49 63 ce 48 6b f1 68 48 8b 04 24 4c 89 ea 48 29
Sep  3 10:05:39  [193378.950402][   C10] RSP: 0018:ffff96320014fe98 EFLAGS: 00000202
Sep  3 10:05:39  [193378.950411][   C10] RAX: ffff89919fca6800 RBX: ffff898a4206c800 RCX: 000000000000001f
Sep  3 10:05:39  [193378.950418][   C10] RDX: 0000afe08b9e69de RSI: 00000000238e3b7a RDI: 0000000000000000
Sep  3 10:05:39  [193378.950424][   C10] RBP: 0000000000000001 R08: 0000000000000002 R09: ffff89919fca5704
Sep  3 10:05:39  [193378.950430][   C10] R10: 0000000000000008 R11: 000000000000010b R12: ffffffffa8222f40
Sep  3 10:05:39  [193378.950436][   C10] R13: 0000afe08b9e69de R14: 0000000000000001 R15: 0000000000000000
Sep  3 10:05:39  [193378.950443][   C10]  ? cpuidle_enter_state+0x98/0x290
Sep  3 10:05:39  [193378.950451][   C10]  cpuidle_enter+0x24/0x40
Sep  3 10:05:39  [193378.950459][   C10]  cpuidle_idle_call+0xbb/0x100
Sep  3 10:05:39  [193378.950468][   C10]  do_idle+0x76/0xc0
Sep  3 10:05:39  [193378.950476][   C10]  cpu_startup_entry+0x14/0x20
Sep  3 10:05:39  [193378.950483][   C10]  start_secondary+0xd6/0xe0
Sep  3 10:05:39  [193378.950491][   C10]  secondary_startup_64_no_verify+0xd3/0xdb
Sep  3 10:05:39  [193378.950499][   C10]  </TASK>
Sep  3 10:05:39  [193378.950504][   C10] ---[ end trace 0000000000000000 ]---
Sep  3 10:05:39  [193378.950513][   C10] ixgbe 0000:02:00.1 eth1: initiating reset due to tx timeout
Sep  3 10:05:39  [193378.950525][T1766094] ixgbe 0000:02:00.1 eth1: Reset adapter
Sep  3 10:10:02  [   30.021823][  T454] ixgbe 0000:02:00.1 eth1: NIC Link is Up 10 Gbps, Flow Control: None



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
