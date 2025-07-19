Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA271B0AE18
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Jul 2025 07:27:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BDF4361B2E;
	Sat, 19 Jul 2025 05:26:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kxhQDSqZkYPC; Sat, 19 Jul 2025 05:26:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C975561B35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752902818;
	bh=+ooeLQ4zGTNne86A0UA5I+phnmQ0cuyVzXhSfouJGCk=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=p2Pf2u8xc//iltwsd8TMbK1LKWFzGCI4QGnhsy75FA3F4/de5fVCiyHtQPytgWVnZ
	 1OrYh4Ra4QglLvO87SNelSJau5I9SKPlJmF+kcFGIINMXf3/F1xsdgAblmKnvKf7GV
	 aAmy9P4ID+29QuKZIIvqWsBuWH4GhYfR0vgxi6CtwwjlZ3f310RlStF8Fn3O7ICFup
	 gOjL/9LfnP3VaU83ihRD8Ce4AgKdbes486yVYHV/m3sop+64xCxXepeo+cbHPZ1v+E
	 Tx0U3AeSOqRdyhDsfOIM1LoVimUoBM+vUtxdO+aIRPhXPiSdZpx7f8tfuhb6RUlak2
	 yn2WfQ+SG+qbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C975561B35;
	Sat, 19 Jul 2025 05:26:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 84356222
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Jul 2025 05:26:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6A14D400F9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Jul 2025 05:26:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v7vraZLocV-0 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Jul 2025 05:26:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::12f; helo=mail-il1-x12f.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A8FD940072
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8FD940072
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com
 [IPv6:2607:f8b0:4864:20::12f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A8FD940072
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Jul 2025 05:26:55 +0000 (UTC)
Received: by mail-il1-x12f.google.com with SMTP id
 e9e14a558f8ab-3e059b14cb1so17139885ab.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 22:26:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752902815; x=1753507615;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+ooeLQ4zGTNne86A0UA5I+phnmQ0cuyVzXhSfouJGCk=;
 b=r8yDHLaWOB0t3JEDZj6HFYo5EiRs/NwiGqG66uuhzszoGe7F9TjxHEHfin7ubojYgn
 gyXbXzAAVelCZLyDtqmCizmEzGpuuXEi+qLFsnfJGNwLH0bdBFN39HL8qr0BSYvYqm61
 aRPHXFhHVx/ocuHQFnDqJ6G3TXtyFfSsDcCWdjSHK2iSsgrwAnJ6Z9S944eyaYKb/0IZ
 /YvFhRuBRx78wYSPweTvkhaB0R4O760d4o8FfBMCal/5I3CEzk7YB7u2ZwNNfCJgbtgb
 +SJGUMqiCCrGct7dz7ieGsuIUeKqyjuqP7c7aFw/xaF+KuYXoyBaNfUUpBPZLCv1Mcny
 DAFw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVSpNl22PfmAaPMTU555A2Px6dCGv7GSz64pbLOfXl7tXG2NzzpDGsktJMPBcY8y6KsMWdb6Y0x4gke0tV7s2I=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzijx3RgoTLmz3BuMzOE48YwnEruX89nFjiSkuf9pYeAXifh5C1
 z807VBuymqHD9yBx4d7nlmG7unWbJg0EXs+kyGZEBT60W88bTE6bRag3xYLyCWbUYLp0pQLwNZS
 Z8mb37SnjaXSGy36kklMGSGgbwddHQI8=
X-Gm-Gg: ASbGncsj6CdB0RBtVMAKRNz/H0UZDz3EJY7baJIKmPGWnpxNMDBEDd46ZJW9oQd05PM
 HbS0M561PInEXj9f0kU1jkALZQxnTyiQq6U7gkHx8Oa9/4xTnzJLHmVl20MpStNRGutM6KnNIk2
 h7ZubaK6kE8HXOETIIyiXZH3B83SSjAOYpjXYOZRZqyp/NyJg2YT3emkzb7s6UY+x1D4Puq89Rk
 n8Cfcg=
X-Google-Smtp-Source: AGHT+IHd5v0jT6NG2kgqyG4EeeCtSp7LmOVQY2GbX6PDeBeo69dTItMmMe8E6wuAAaeJbQp2XUYa5BmkfaBjO0diLX0=
X-Received: by 2002:a05:6e02:4513:b0:3dd:bb43:1fc0 with SMTP id
 e9e14a558f8ab-3e295a89951mr35283525ab.11.1752902814490; Fri, 18 Jul 2025
 22:26:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAL+tcoCTHTptwmok9vhp7GEwQgMhNsBJxT3PStJDeVOLR_-Q3g@mail.gmail.com>
 <aHohbwWCF0ccpmtj@soc-5CG4396X81.clients.intel.com>
In-Reply-To: <aHohbwWCF0ccpmtj@soc-5CG4396X81.clients.intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Sat, 19 Jul 2025 13:26:18 +0800
X-Gm-Features: Ac12FXwvfdEfdJ8HKmQX2AmC9Tuh52YC6mQkso_YplQU3aLWryMOSoSsL89nCp8
Message-ID: <CAL+tcoCJ9ghWVQ1afD_WJmx-3n+80Th7jPw-N-k9Z6ZjJErSkw@mail.gmail.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: Jakub Kicinski <kuba@kernel.org>, Stanislav Fomichev <sdf@fomichev.me>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, przemyslaw.kitszel@intel.com,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1752902815; x=1753507615; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+ooeLQ4zGTNne86A0UA5I+phnmQ0cuyVzXhSfouJGCk=;
 b=SmqyNneDFFS2Fd6xBPc0deqHyelymSdsTIFXdnT1cUY22wuXlqBwjt/TiRP5eFQ/yp
 CRZONHu/Zgr5x/mXhB50BIxKvbhwWtt+8OJNt2/T1FR8/m6MWE1qLjA21zLpMSih9dL/
 8YWbZaQueoH00LBsVeCrZ3CBbCCRqaKR6dvxxHv9gQPr93KXB+PGbbFlntUOfgXtgkzP
 9UXefhCOihYgmnTL97xwv/3UwuYHpKhXNg3VgH2t9QXMerKIwd8u5LhzGAg3WfOeu/eJ
 n4928PP+2gqQHAdGGV4zBUu5aWh7gRhz92GGcgfBwr6ZGB0POZjAQROu97397I6SzSWc
 DYzw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=SmqyNneD
Subject: Re: [Intel-wired-lan] ixgbe driver stops sending normal data when
 using xsk
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

On Fri, Jul 18, 2025 at 6:27=E2=80=AFPM Larysa Zaremba <larysa.zaremba@inte=
l.com> wrote:
>
> On Wed, Jul 16, 2025 at 11:41:42AM +0800, Jason Xing wrote:
> > Hi all,
> >
> > I'm currently faced with one tough issue caused by zero copy mode in
> > xsk with ixgbe driver loaded. The case is that if we use xdpsock to
> > send descs, nearly at the same time normal packets from other tx
> > queues cannot be transmitted/completed at all.
> >
> > Here is how I try:
> > 1. run iperf or ping to see if the transmission is successful.
> > 2. then run "timeout 5 ./xdpsock -i enp2s0f0 -t  -z -s 64"
> >
> > You will obviously find the whole machine loses connection. It can
> > only recover as soon as the xdpsock is stopped due to timeout.
> >
> > I tried a lot and then traced down to this line in ixgbe driver:
> > ixgbe_clean_tx_irq()
> >     -> if (!(eop_desc->wb.status & cpu_to_le32(IXGBE_TXD_STAT_DD)))
> >             break;
> > The above line always 'breaks' the sending process.
> >
> > I also managed to make the external ixgbe 6.15 work and it turned out
> > to be the same issue as before.
> >
> > I have no idea on how to analyze further in this driver. Could someone
> > point out a direction that I can take? Is it a known issue?
> >
> > Thanks,
> > Jason
> >
>
> I was able to reproduce the described behaviour, xdpsock does break the I=
P
> communication. However, in my case this was not because of ixgbe not bein=
g able
> to send, but because of queue 0 RX packets being dropped, which is the in=
dended
> outcome in xdpsock, even in Tx only mode.

Thanks for your feedback. It would be great if you could elaborate
more on this. How did you spot that it's queue 0 that causes the
problem? Why is xdpsock breaking IP communication intended?

When you try i40e, you will find the connection behaves normally. Ping
can work as usual. As I depicted before, with ixgbe driver, ping even
doesn't work at all.

iperf is the one that I should not list... Because I find iperf always
doesn't work with either of them loaded.

>
> When I run `tcpdump -nn -e -p -i <ifname>` on the link partner, I see tha=
t the
> ixgbe host spams ARP packets just fine.

Interesting. I managed to see the same phenomenon.

I debugged the ixgbe and saw the following code breaks the whole
sending process:
ixgbe_clean_tx_irq()
     -> if (!(eop_desc->wb.status & cpu_to_le32(IXGBE_TXD_STAT_DD)))
             break;

Do you have any idea why?

>
> When debugging low-level stuff such as XDP, I advise you to send packets =
at the
> lower level, e.g. with scapy's sendp().
>
> In case you have a different problem, please provide lspci card descripti=
on and
> some truncated output of the commands that you are running and the result=
ing
> dmesg.

I'm not that sure if they are the same.

One of ixgbe machines that I manipulate looks like this:
# lspci -vv | grep -i ether
02:00.0 Ethernet controller: Intel Corporation Ethernet Controller
10-Gigabit X540-AT2 (rev 01)
02:00.1 Ethernet controller: Intel Corporation Ethernet Controller
10-Gigabit X540-AT2 (rev 01)

# dmesg -T|grep -i ixgbe
[Fri Jul 18 16:20:29 2025] ixgbe: Intel(R) 10 Gigabit PCI Express Network D=
river
[Fri Jul 18 16:20:29 2025] ixgbe: Copyright (c) 1999-2016 Intel Corporation=
.
[Fri Jul 18 16:20:29 2025] ixgbe 0000:02:00.0: Multiqueue Enabled: Rx
Queue count =3D 48, Tx Queue count =3D 48 XDP Queue count =3D 0
[Fri Jul 18 16:20:29 2025] ixgbe 0000:02:00.0: 32.000 Gb/s available
PCIe bandwidth (5.0 GT/s PCIe x8 link)
[Fri Jul 18 16:20:29 2025] ixgbe 0000:02:00.0: MAC: 3, PHY: 0, PBA No:
000000-000
[Fri Jul 18 16:20:29 2025] ixgbe 0000:02:00.0: f0:98:38:1a:5d:4e
[Fri Jul 18 16:20:29 2025] ixgbe 0000:02:00.0: Intel(R) 10 Gigabit
Network Connection
[Fri Jul 18 16:20:30 2025] ixgbe 0000:02:00.1: Multiqueue Enabled: Rx
Queue count =3D 48, Tx Queue count =3D 48 XDP Queue count =3D 0
[Fri Jul 18 16:20:30 2025] ixgbe 0000:02:00.1: 32.000 Gb/s available
PCIe bandwidth (5.0 GT/s PCIe x8 link)
[Fri Jul 18 16:20:30 2025] ixgbe 0000:02:00.1: MAC: 3, PHY: 0, PBA No:
000000-000
[Fri Jul 18 16:20:30 2025] ixgbe 0000:02:00.1: f0:98:38:1a:5d:4f
[Fri Jul 18 16:20:30 2025] ixgbe 0000:02:00.1: Intel(R) 10 Gigabit
Network Connection
[Fri Jul 18 16:20:30 2025] ixgbe 0000:02:00.0 enp2s0f0np0: renamed from eth=
0
[Fri Jul 18 16:20:30 2025] ixgbe 0000:02:00.1 enp2s0f1np1: renamed from eth=
1
[Fri Jul 18 16:20:38 2025] ixgbe 0000:02:00.0: registered PHC device
on enp2s0f0np0
[Fri Jul 18 16:20:38 2025] ixgbe 0000:02:00.0 enp2s0f0np0: NIC Link is
Up 1 Gbps, Flow Control: None
[Fri Jul 18 16:20:38 2025] ixgbe 0000:02:00.1: registered PHC device
on enp2s0f1np1
[Sat Jul 19 13:11:30 2025] ixgbe 0000:02:00.0: removed PHC on enp2s0f0np0
[Sat Jul 19 13:11:31 2025] ixgbe 0000:02:00.0: Multiqueue Enabled: Rx
Queue count =3D 48, Tx Queue count =3D 48 XDP Queue count =3D 48
[Sat Jul 19 13:11:31 2025] ixgbe 0000:02:00.0: registered PHC device
on enp2s0f0np0
[Sat Jul 19 13:11:31 2025] ixgbe 0000:02:00.0 enp2s0f0np0: NIC Link is
Up 1 Gbps, Flow Control: None
[Sat Jul 19 13:11:34 2025] ixgbe 0000:02:00.0: removed PHC on enp2s0f0np0
[Sat Jul 19 13:11:34 2025] ixgbe 0000:02:00.0: Multiqueue Enabled: Rx
Queue count =3D 48, Tx Queue count =3D 48 XDP Queue count =3D 0
[Sat Jul 19 13:11:35 2025] ixgbe 0000:02:00.0: registered PHC device
on enp2s0f0np0
[Sat Jul 19 13:11:35 2025] ixgbe 0000:02:00.0 enp2s0f0np0: NIC Link is
Up 1 Gbps, Flow Control: None

reproduce process:
1. timeout 3 ./xdpsock -i enp2s0f0np0 -t  -z -s 64
2. ping <another IP address>

Thanks,
Jason
