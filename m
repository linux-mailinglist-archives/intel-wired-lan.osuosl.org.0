Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 661C65B382C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Sep 2022 14:50:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7D6C610C1;
	Fri,  9 Sep 2022 12:50:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7D6C610C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662727841;
	bh=aYBqLtqbm7RZncossa5dMkPVuQvp+wGbGYytUg01tYI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2jXl0ivr8mdWmSXnodzXKXF1IjUyXvmsdqS++tNE81oBfpaYje3dUZc6gQRpUZXLR
	 MZJvSwlygnf6gBwLEBufRLdgG8H4wvINN8/E0ZtuDCotKXzA+EQmQzoLPHnPJVGwKQ
	 WMn3J5payX9NX1Hu0fCPjynIML33xVvuAwb3NPEqgIEueK6Zai7XUE7uAdL5UcaYjP
	 mqWm4wmSNe2bWFZEUMHYYTv7ywY5Rmuk8pVqDEPGGTqFlH9KEzFJiW78vVLXSKSUW3
	 9zlwX9xSjQGrVjRac0B+0l6j5qZAF7fQI7SAVK69POos1cc3QUkE15HVKwSzkVgqvz
	 1YLIy9DGNUXHA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PWGyYzFINNzX; Fri,  9 Sep 2022 12:50:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B46F60FA1;
	Fri,  9 Sep 2022 12:50:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B46F60FA1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9DAAA1BF402
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Sep 2022 20:12:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 84E55826C0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Sep 2022 20:12:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 84E55826C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W0oxggIh_8CB for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Sep 2022 20:12:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C86782690
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8C86782690
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Sep 2022 20:12:24 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id s14so9402917plr.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 08 Sep 2022 13:12:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=AgWbSCqsBhHrsZVaw/sxv1pyjzYk2RKYwGT/J2cxviE=;
 b=7IHwPRNmMY0P+uSnLAUYCFw5a3fYcO/Kmh3luywbYFZiyy/LEkb/CXCYokja6Zdrqj
 U9bQhbgUMlwBP/xM/oZWHT4UaD9ZMuqlzdJQIUqNLkgFr1vivRqNNTkC/wURJlxAD3w5
 RxJdvE0KF8zIPO+yZosUpLoFve52EreuD1uvoU4Hwo1zQVLPXlqcxN3WY4tFkvgQJD0R
 ph9JjP8iKCW9ZHOTBcmK+oZj/Djh+dJtQERsega51lLVgeOOFXvu2zk1B0BlFawC7yFM
 5y7HMuu/J9Nqs4uFv+spzg9Phenjob58ZUJ0lipw9gkkSenP/ZuhvOoOcGOSHIYKxEo8
 1SKw==
X-Gm-Message-State: ACgBeo1XnkKdNjnfeFXepsEvCYwkIiLspiI0mITmhIwlinKA5MDFZgM+
 p82jFFSELPa+hT6OQnkr2vGXX9coE6q6/A8XEOQ=
X-Google-Smtp-Source: AA6agR5KOMUR8ZKnX8tx2MXSJlAkIlqGadbD/DCXbpZdNLcvfoMW0hG1rMUpHqSV/hxQ743MK+orWtEB5bSy7M70EVU=
X-Received: by 2002:a17:902:c411:b0:170:91ff:884b with SMTP id
 k17-20020a170902c41100b0017091ff884bmr10656414plk.58.1662667938991; Thu, 08
 Sep 2022 13:12:18 -0700 (PDT)
MIME-Version: 1.0
References: <FA05D61D-3E1A-4C0E-BE32-CD427DFEEAD2@gmail.com>
 <SN6PR11MB35188DA27C2DAF0FEE874A65EB7E9@SN6PR11MB3518.namprd11.prod.outlook.com>
In-Reply-To: <SN6PR11MB35188DA27C2DAF0FEE874A65EB7E9@SN6PR11MB3518.namprd11.prod.outlook.com>
From: Martin Zaharinov <micron10@gmail.com>
Date: Thu, 8 Sep 2022 23:12:07 +0300
Message-ID: <CALidq=Ue3s9L0zexhY0pVsuKizJ1SOb9nevktM_FZs+bp-+zhQ@mail.gmail.com>
To: "Switzer, David" <david.switzer@intel.com>
X-Mailman-Approved-At: Fri, 09 Sep 2022 12:50:35 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=AgWbSCqsBhHrsZVaw/sxv1pyjzYk2RKYwGT/J2cxviE=;
 b=D/covYbZQQ5ITLpezO3Fc4MNbzNEd16djD/BRKChgQNYOX09vfzuzAUeIowwAOy+dt
 Tltn3ofZPuANwzxrl/dYEZ1/fuEAv/R9pXonAA64vIDWFwd2OyGnT63Yf0ID5y6vNNsM
 kdgIY8kTmzh+oPT2lpQmjTlFZqT7CZEYDPIO6fnh3zs0aBI913EqE0irYRyudntKwjdz
 D2xh/hRSdyPndBBkzNiZdYp8200uaymLjBXsyK+PR6XtjRGebBztrT4dExbEAmbLKg2u
 zghGvKVP5fkxvOGUkHIgDVE0wuSTz7/zN2Iz3b85118kfPLP8GqKlRmkd/dcctRHDzNE
 wIdg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=D/covYbZ
Subject: Re: [Intel-wired-lan] Urgent Kernel Bug NETDEV WATCHDOG ixgbe
 transmit queue 2 timed out after kernel 5.19.2 to 5.19.6
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
Cc: "Dubel, Helena Anna" <helena.anna.dubel@intel.com>,
 Eric Dumazet <eric.dumazet@gmail.com>, netdev <netdev@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============4635376008422964241=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============4635376008422964241==
Content-Type: multipart/alternative; boundary="000000000000e21d3305e8300bcb"

--000000000000e21d3305e8300bcb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dave

Good i am here if need more info.
same problem is happen with i40e driver.
and may be this is bug in kernel.


Martin

=D0=9D=D0=B0 =D0=B2=D1=82, 6.09.2022 =D0=B3. =D0=B2 22:02 =D1=87. Switzer, =
David <david.switzer@intel.com>
=D0=BD=D0=B0=D0=BF=D0=B8=D1=81=D0=B0:

>
>
> >-----Original Message-----
> >From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> >Martin Zaharinov
> >Sent: Saturday, September 3, 2022 2:54 AM
> >To: Eric Dumazet <eric.dumazet@gmail.com>; Eric Dumazet
> ><edumazet@google.com>; Fijalkowski, Maciej
> ><maciej.fijalkowski@intel.com>; Brandeburg, Jesse
> ><jesse.brandeburg@intel.com>; David S . Miller <davem@davemloft.net>;
> >Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> >Nguyen, Anthony L <anthony.l.nguyen@intel.com>; netdev
> ><netdev@vger.kernel.org>; Dubel, Helena Anna
> ><helena.anna.dubel@intel.com>; intel-wired-lan@lists.osuosl.org
> >Subject: [Intel-wired-lan] Urgent Kernel Bug NETDEV WATCHDOG ixgbe
> >transmit queue 2 timed out after kernel 5.19.2 to 5.19.6
> >
> >Hi All
> Hello Martin!
>
> I'm Dave, a driver validation engineer at Intel Corp.
> >
> >
> >after move to release 5.19.x (2 and up to 6 ) start geting this bug
> report and
> >machine reboot automatic after that.
> I'm sorry you're having this issue, I'm working on reproducing your issue
> so that we can have our developers look into it.
>
> I will reach out to you if I have any questions.
>
> Have a great day!
> Dave
> >
> >With kernel 5.18 this problem is not happen.
> >
> >Machine run with 2x 10G Intel 82599 card in bonding .
> >its a simple router with 6 core cpu.
> >
> >Sep  3 10:05:39  [193378.949952][   C10] ------------[ cut here
> ]------------
> >Sep  3 10:05:39  [193378.949965][   C10] NETDEV WATCHDOG: eth1 (ixgbe):
> >transmit queue 2 timed out
> >Sep  3 10:05:39  [193378.949980][   C10] WARNING: CPU: 10 PID: 0 at
> >net/sched/sch_generic.c:529 dev_watchdog+0x167/0x170
> >Sep  3 10:05:39  [193378.949992][   C10] Modules linked in:
> >nf_conntrack_netlink nft_limit pppoe pppox ppp_generic slhc nft_nat
> >nft_chain_nat nf_tables team_mode_loadbalance team netconsole coretemp
> >ixgbe mdio_devres libphy mdio nf_nat_sip nf_conntrack_sip nf_nat_pptp
> >nf_conntrack_pptp nf_nat_tftp nf_conntrack_tftp nf_nat_ftp
> >nf_conntrack_ftp nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4
> >acpi_ipmi ipmi_si ipmi_devintf ipmi_msghandler rtc_cmos
> >Sep  3 10:05:39  [193378.950023][   C10] CPU: 10 PID: 0 Comm: swapper/10
> >Tainted: G           O      5.19.4 #1
> >Sep  3 10:05:39  [193378.950028][   C10] Hardware name: Supermicro Super
> >Server/X10SRD-F, BIOS 3.3 10/28/2020
> >Sep  3 10:05:39  [193378.950032][   C10] RIP:
> 0010:dev_watchdog+0x167/0x170
> >Sep  3 10:05:39  [193378.950037][   C10] Code: 28 e9 77 ff ff ff 48 89 d=
f
> c6 05 95
> >3d c4 00 01 e8 9e 5a fb ff 48 89 c2 44 89 e1 48 89 de 48 c7 c7 f0 d0 ec
> a7 e8 c2 c2
> >13 00 <0f> 0b eb 85 0f 1f 44 00 00 41 55 41 54 55 53 48 8b 47 50 4c 8b 2=
8
> >Sep  3 10:05:39  [193378.950043][   C10] RSP: 0018:ffff96320030cee8
> EFLAGS:
> >00010292
> >Sep  3 10:05:39  [193378.950048][   C10] RAX: 0000000000000039 RBX:
> >ffff898a4da00000 RCX: 0000000000000001
> >Sep  3 10:05:39  [193378.950053][   C10] RDX: 00000000ffffffea RSI:
> >00000000fffbffff RDI: 00000000fffbffff
> >Sep  3 10:05:39  [193378.950057][   C10] RBP: ffff898a4da003c0 R08:
> >0000000000000001 R09: 00000000fffbffff
> >Sep  3 10:05:39  [193378.950061][   C10] R10: ffff89919d600000 R11:
> >0000000000000003 R12: 0000000000000002
> >Sep  3 10:05:39  [193378.950065][   C10] R13: 0000000000000000 R14:
> >ffff89919fca07a8 R15: 0000000000000082
> >Sep  3 10:05:39  [193378.950070][   C10] FS:  0000000000000000(0000)
> >GS:ffff89919fc80000(0000) knlGS:0000000000000000
> >Sep  3 10:05:39  [193378.950074][   C10] CS:  0010 DS: 0000 ES: 0000 CR0=
:
> >0000000080050033
> >Sep  3 10:05:39  [193378.950078][   C10] CR2: 00007fb39f41d000 CR3:
> >00000001002fd003 CR4: 00000000003706e0
> >Sep  3 10:05:39  [193378.950082][   C10] DR0: 0000000000000000 DR1:
> >0000000000000000 DR2: 0000000000000000
> >Sep  3 10:05:39  [193378.950086][   C10] DR3: 0000000000000000 DR6:
> >00000000fffe0ff0 DR7: 0000000000000400
> >Sep  3 10:05:39  [193378.950090][   C10] Call Trace:
> >Sep  3 10:05:39  [193378.950094][   C10]  <IRQ>
> >Sep  3 10:05:39  [193378.950098][   C10]  ? pfifo_fast_destroy+0x30/0x30
> >Sep  3 10:05:39  [193378.950104][   C10]
> call_timer_fn.constprop.0+0x14/0x70
> >Sep  3 10:05:39  [193378.950110][   C10]  __run_timers.part.0+0x164/0x19=
0
> >Sep  3 10:05:39  [193378.950116][   C10]  ?
> >__hrtimer_run_queues+0x143/0x1a0
> >Sep  3 10:05:39  [193378.950120][   C10]  ? ktime_get+0x30/0x90
> >Sep  3 10:05:39  [193378.950125][   C10]  run_timer_softirq+0x21/0x50
> >Sep  3 10:05:39  [193378.950130][   C10]  __do_softirq+0xaf/0x1d7
> >Sep  3 10:05:39  [193378.950136][   C10]  __irq_exit_rcu+0x9a/0xd0
> >Sep  3 10:05:39  [193378.950142][   C10]
> >sysvec_apic_timer_interrupt+0x66/0x80
> >Sep  3 10:05:39  [193378.950149][   C10]  </IRQ>
> >Sep  3 10:05:39  [193378.950152][   C10]  <TASK>
> >Sep  3 10:05:39  [193378.950155][   C10]
> >asm_sysvec_apic_timer_interrupt+0x16/0x20
> >Sep  3 10:05:39  [193378.950160][   C10] RIP:
> >0010:cpuidle_enter_state+0xb3/0x290
> >Sep  3 10:05:39  [193378.950167][   C10] Code: e8 d2 0d b0 ff 31 ff 49 8=
9
> c5 e8 48
> >68 af ff 45 84 ff 74 12 9c 58 f6 c4 02 0f 85 cf 01 00 00 31 ff e8 81 b4
> b3 ff fb 45 85
> >f6 <0f> 88 d0 00 00 00 49 63 ce 48 6b f1 68 48 8b 04 24 4c 89 ea 48 29
> >Sep  3 10:05:39  [193378.950402][   C10] RSP: 0018:ffff96320014fe98
> EFLAGS:
> >00000202
> >Sep  3 10:05:39  [193378.950411][   C10] RAX: ffff89919fca6800 RBX:
> >ffff898a4206c800 RCX: 000000000000001f
> >Sep  3 10:05:39  [193378.950418][   C10] RDX: 0000afe08b9e69de RSI:
> >00000000238e3b7a RDI: 0000000000000000
> >Sep  3 10:05:39  [193378.950424][   C10] RBP: 0000000000000001 R08:
> >0000000000000002 R09: ffff89919fca5704
> >Sep  3 10:05:39  [193378.950430][   C10] R10: 0000000000000008 R11:
> >000000000000010b R12: ffffffffa8222f40
> >Sep  3 10:05:39  [193378.950436][   C10] R13: 0000afe08b9e69de R14:
> >0000000000000001 R15: 0000000000000000
> >Sep  3 10:05:39  [193378.950443][   C10]  ? cpuidle_enter_state+0x98/0x2=
90
> >Sep  3 10:05:39  [193378.950451][   C10]  cpuidle_enter+0x24/0x40
> >Sep  3 10:05:39  [193378.950459][   C10]  cpuidle_idle_call+0xbb/0x100
> >Sep  3 10:05:39  [193378.950468][   C10]  do_idle+0x76/0xc0
> >Sep  3 10:05:39  [193378.950476][   C10]  cpu_startup_entry+0x14/0x20
> >Sep  3 10:05:39  [193378.950483][   C10]  start_secondary+0xd6/0xe0
> >Sep  3 10:05:39  [193378.950491][   C10]
> >secondary_startup_64_no_verify+0xd3/0xdb
> >Sep  3 10:05:39  [193378.950499][   C10]  </TASK>
> >Sep  3 10:05:39  [193378.950504][   C10] ---[ end trace 0000000000000000
> ]---
> >Sep  3 10:05:39  [193378.950513][   C10] ixgbe 0000:02:00.1 eth1:
> initiating reset
> >due to tx timeout
> >Sep  3 10:05:39  [193378.950525][T1766094] ixgbe 0000:02:00.1 eth1: Rese=
t
> >adapter
> >Sep  3 10:10:02  [   30.021823][  T454] ixgbe 0000:02:00.1 eth1: NIC Lin=
k
> is Up 10
> >Gbps, Flow Control: None
> >
> >
> >
> >_______________________________________________
> >Intel-wired-lan mailing list
> >Intel-wired-lan@osuosl.org
> >https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>

--000000000000e21d3305e8300bcb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Dave<div><br></div><div>Good i am here if need more inf=
o.</div><div>same problem is happen with i40e driver.</div><div>and may be =
this is bug in kernel.</div><div><br></div><div><br></div><div>Martin</div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
=D0=9D=D0=B0 =D0=B2=D1=82, 6.09.2022 =D0=B3. =D0=B2 22:02 =D1=87. Switzer, =
David &lt;<a href=3D"mailto:david.switzer@intel.com">david.switzer@intel.co=
m</a>&gt; =D0=BD=D0=B0=D0=BF=D0=B8=D1=81=D0=B0:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><br>
<br>
&gt;-----Original Message-----<br>
&gt;From: Intel-wired-lan &lt;<a href=3D"mailto:intel-wired-lan-bounces@osu=
osl.org" target=3D"_blank">intel-wired-lan-bounces@osuosl.org</a>&gt; On Be=
half Of<br>
&gt;Martin Zaharinov<br>
&gt;Sent: Saturday, September 3, 2022 2:54 AM<br>
&gt;To: Eric Dumazet &lt;<a href=3D"mailto:eric.dumazet@gmail.com" target=
=3D"_blank">eric.dumazet@gmail.com</a>&gt;; Eric Dumazet<br>
&gt;&lt;<a href=3D"mailto:edumazet@google.com" target=3D"_blank">edumazet@g=
oogle.com</a>&gt;; Fijalkowski, Maciej<br>
&gt;&lt;<a href=3D"mailto:maciej.fijalkowski@intel.com" target=3D"_blank">m=
aciej.fijalkowski@intel.com</a>&gt;; Brandeburg, Jesse<br>
&gt;&lt;<a href=3D"mailto:jesse.brandeburg@intel.com" target=3D"_blank">jes=
se.brandeburg@intel.com</a>&gt;; David S . Miller &lt;<a href=3D"mailto:dav=
em@davemloft.net" target=3D"_blank">davem@davemloft.net</a>&gt;;<br>
&gt;Jakub Kicinski &lt;<a href=3D"mailto:kuba@kernel.org" target=3D"_blank"=
>kuba@kernel.org</a>&gt;; Paolo Abeni &lt;<a href=3D"mailto:pabeni@redhat.c=
om" target=3D"_blank">pabeni@redhat.com</a>&gt;;<br>
&gt;Nguyen, Anthony L &lt;<a href=3D"mailto:anthony.l.nguyen@intel.com" tar=
get=3D"_blank">anthony.l.nguyen@intel.com</a>&gt;; netdev<br>
&gt;&lt;<a href=3D"mailto:netdev@vger.kernel.org" target=3D"_blank">netdev@=
vger.kernel.org</a>&gt;; Dubel, Helena Anna<br>
&gt;&lt;<a href=3D"mailto:helena.anna.dubel@intel.com" target=3D"_blank">he=
lena.anna.dubel@intel.com</a>&gt;; <a href=3D"mailto:intel-wired-lan@lists.=
osuosl.org" target=3D"_blank">intel-wired-lan@lists.osuosl.org</a><br>
&gt;Subject: [Intel-wired-lan] Urgent Kernel Bug NETDEV WATCHDOG ixgbe<br>
&gt;transmit queue 2 timed out after kernel 5.19.2 to 5.19.6<br>
&gt;<br>
&gt;Hi All<br>
Hello Martin!<br>
<br>
I&#39;m Dave, a driver validation engineer at Intel Corp.<br>
&gt;<br>
&gt;<br>
&gt;after move to release 5.19.x (2 and up to 6 ) start geting this bug rep=
ort and<br>
&gt;machine reboot automatic after that.<br>
I&#39;m sorry you&#39;re having this issue, I&#39;m working on reproducing =
your issue so that we can have our developers look into it.<br>
<br>
I will reach out to you if I have any questions.<br>
<br>
Have a great day!<br>
Dave<br>
&gt;<br>
&gt;With kernel 5.18 this problem is not happen.<br>
&gt;<br>
&gt;Machine run with 2x 10G Intel 82599 card in bonding .<br>
&gt;its a simple router with 6 core cpu.<br>
&gt;<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.949952][=C2=A0 =C2=A0C10] ----------=
--[ cut here ]------------<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.949965][=C2=A0 =C2=A0C10] NETDEV WAT=
CHDOG: eth1 (ixgbe):<br>
&gt;transmit queue 2 timed out<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.949980][=C2=A0 =C2=A0C10] WARNING: C=
PU: 10 PID: 0 at<br>
&gt;net/sched/sch_generic.c:529 dev_watchdog+0x167/0x170<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.949992][=C2=A0 =C2=A0C10] Modules li=
nked in:<br>
&gt;nf_conntrack_netlink nft_limit pppoe pppox ppp_generic slhc nft_nat<br>
&gt;nft_chain_nat nf_tables team_mode_loadbalance team netconsole coretemp<=
br>
&gt;ixgbe mdio_devres libphy mdio nf_nat_sip nf_conntrack_sip nf_nat_pptp<b=
r>
&gt;nf_conntrack_pptp nf_nat_tftp nf_conntrack_tftp nf_nat_ftp<br>
&gt;nf_conntrack_ftp nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4<br>
&gt;acpi_ipmi ipmi_si ipmi_devintf ipmi_msghandler rtc_cmos<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950023][=C2=A0 =C2=A0C10] CPU: 10 PI=
D: 0 Comm: swapper/10<br>
&gt;Tainted: G=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0O=C2=A0 =C2=A0 =C2=
=A0 5.19.4 #1<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950028][=C2=A0 =C2=A0C10] Hardware n=
ame: Supermicro Super<br>
&gt;Server/X10SRD-F, BIOS 3.3 10/28/2020<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950032][=C2=A0 =C2=A0C10] RIP: 0010:=
dev_watchdog+0x167/0x170<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950037][=C2=A0 =C2=A0C10] Code: 28 e=
9 77 ff ff ff 48 89 df c6 05 95<br>
&gt;3d c4 00 01 e8 9e 5a fb ff 48 89 c2 44 89 e1 48 89 de 48 c7 c7 f0 d0 ec=
 a7 e8 c2 c2<br>
&gt;13 00 &lt;0f&gt; 0b eb 85 0f 1f 44 00 00 41 55 41 54 55 53 48 8b 47 50 =
4c 8b 28<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950043][=C2=A0 =C2=A0C10] RSP: 0018:=
ffff96320030cee8 EFLAGS:<br>
&gt;00010292<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950048][=C2=A0 =C2=A0C10] RAX: 00000=
00000000039 RBX:<br>
&gt;ffff898a4da00000 RCX: 0000000000000001<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950053][=C2=A0 =C2=A0C10] RDX: 00000=
000ffffffea RSI:<br>
&gt;00000000fffbffff RDI: 00000000fffbffff<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950057][=C2=A0 =C2=A0C10] RBP: ffff8=
98a4da003c0 R08:<br>
&gt;0000000000000001 R09: 00000000fffbffff<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950061][=C2=A0 =C2=A0C10] R10: ffff8=
9919d600000 R11:<br>
&gt;0000000000000003 R12: 0000000000000002<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950065][=C2=A0 =C2=A0C10] R13: 00000=
00000000000 R14:<br>
&gt;ffff89919fca07a8 R15: 0000000000000082<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950070][=C2=A0 =C2=A0C10] FS:=C2=A0 =
0000000000000000(0000)<br>
&gt;GS:ffff89919fc80000(0000) knlGS:0000000000000000<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950074][=C2=A0 =C2=A0C10] CS:=C2=A0 =
0010 DS: 0000 ES: 0000 CR0:<br>
&gt;0000000080050033<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950078][=C2=A0 =C2=A0C10] CR2: 00007=
fb39f41d000 CR3:<br>
&gt;00000001002fd003 CR4: 00000000003706e0<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950082][=C2=A0 =C2=A0C10] DR0: 00000=
00000000000 DR1:<br>
&gt;0000000000000000 DR2: 0000000000000000<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950086][=C2=A0 =C2=A0C10] DR3: 00000=
00000000000 DR6:<br>
&gt;00000000fffe0ff0 DR7: 0000000000000400<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950090][=C2=A0 =C2=A0C10] Call Trace=
:<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950094][=C2=A0 =C2=A0C10]=C2=A0 &lt;=
IRQ&gt;<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950098][=C2=A0 =C2=A0C10]=C2=A0 ? pf=
ifo_fast_destroy+0x30/0x30<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950104][=C2=A0 =C2=A0C10]=C2=A0 call=
_timer_fn.constprop.0+0x14/0x70<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950110][=C2=A0 =C2=A0C10]=C2=A0 __ru=
n_timers.part.0+0x164/0x190<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950116][=C2=A0 =C2=A0C10]=C2=A0 ?<br=
>
&gt;__hrtimer_run_queues+0x143/0x1a0<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950120][=C2=A0 =C2=A0C10]=C2=A0 ? kt=
ime_get+0x30/0x90<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950125][=C2=A0 =C2=A0C10]=C2=A0 run_=
timer_softirq+0x21/0x50<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950130][=C2=A0 =C2=A0C10]=C2=A0 __do=
_softirq+0xaf/0x1d7<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950136][=C2=A0 =C2=A0C10]=C2=A0 __ir=
q_exit_rcu+0x9a/0xd0<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950142][=C2=A0 =C2=A0C10]<br>
&gt;sysvec_apic_timer_interrupt+0x66/0x80<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950149][=C2=A0 =C2=A0C10]=C2=A0 &lt;=
/IRQ&gt;<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950152][=C2=A0 =C2=A0C10]=C2=A0 &lt;=
TASK&gt;<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950155][=C2=A0 =C2=A0C10]<br>
&gt;asm_sysvec_apic_timer_interrupt+0x16/0x20<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950160][=C2=A0 =C2=A0C10] RIP:<br>
&gt;0010:cpuidle_enter_state+0xb3/0x290<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950167][=C2=A0 =C2=A0C10] Code: e8 d=
2 0d b0 ff 31 ff 49 89 c5 e8 48<br>
&gt;68 af ff 45 84 ff 74 12 9c 58 f6 c4 02 0f 85 cf 01 00 00 31 ff e8 81 b4=
 b3 ff fb 45 85<br>
&gt;f6 &lt;0f&gt; 88 d0 00 00 00 49 63 ce 48 6b f1 68 48 8b 04 24 4c 89 ea =
48 29<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950402][=C2=A0 =C2=A0C10] RSP: 0018:=
ffff96320014fe98 EFLAGS:<br>
&gt;00000202<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950411][=C2=A0 =C2=A0C10] RAX: ffff8=
9919fca6800 RBX:<br>
&gt;ffff898a4206c800 RCX: 000000000000001f<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950418][=C2=A0 =C2=A0C10] RDX: 0000a=
fe08b9e69de RSI:<br>
&gt;00000000238e3b7a RDI: 0000000000000000<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950424][=C2=A0 =C2=A0C10] RBP: 00000=
00000000001 R08:<br>
&gt;0000000000000002 R09: ffff89919fca5704<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950430][=C2=A0 =C2=A0C10] R10: 00000=
00000000008 R11:<br>
&gt;000000000000010b R12: ffffffffa8222f40<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950436][=C2=A0 =C2=A0C10] R13: 0000a=
fe08b9e69de R14:<br>
&gt;0000000000000001 R15: 0000000000000000<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950443][=C2=A0 =C2=A0C10]=C2=A0 ? cp=
uidle_enter_state+0x98/0x290<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950451][=C2=A0 =C2=A0C10]=C2=A0 cpui=
dle_enter+0x24/0x40<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950459][=C2=A0 =C2=A0C10]=C2=A0 cpui=
dle_idle_call+0xbb/0x100<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950468][=C2=A0 =C2=A0C10]=C2=A0 do_i=
dle+0x76/0xc0<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950476][=C2=A0 =C2=A0C10]=C2=A0 cpu_=
startup_entry+0x14/0x20<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950483][=C2=A0 =C2=A0C10]=C2=A0 star=
t_secondary+0xd6/0xe0<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950491][=C2=A0 =C2=A0C10]<br>
&gt;secondary_startup_64_no_verify+0xd3/0xdb<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950499][=C2=A0 =C2=A0C10]=C2=A0 &lt;=
/TASK&gt;<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950504][=C2=A0 =C2=A0C10] ---[ end t=
race 0000000000000000 ]---<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950513][=C2=A0 =C2=A0C10] ixgbe 0000=
:02:00.1 eth1: initiating reset<br>
&gt;due to tx timeout<br>
&gt;Sep=C2=A0 3 10:05:39=C2=A0 [193378.950525][T1766094] ixgbe 0000:02:00.1=
 eth1: Reset<br>
&gt;adapter<br>
&gt;Sep=C2=A0 3 10:10:02=C2=A0 [=C2=A0 =C2=A030.021823][=C2=A0 T454] ixgbe =
0000:02:00.1 eth1: NIC Link is Up 10<br>
&gt;Gbps, Flow Control: None<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;_______________________________________________<br>
&gt;Intel-wired-lan mailing list<br>
&gt;<a href=3D"mailto:Intel-wired-lan@osuosl.org" target=3D"_blank">Intel-w=
ired-lan@osuosl.org</a><br>
&gt;<a href=3D"https://lists.osuosl.org/mailman/listinfo/intel-wired-lan" r=
el=3D"noreferrer" target=3D"_blank">https://lists.osuosl.org/mailman/listin=
fo/intel-wired-lan</a><br>
</blockquote></div>

--000000000000e21d3305e8300bcb--

--===============4635376008422964241==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4635376008422964241==--
