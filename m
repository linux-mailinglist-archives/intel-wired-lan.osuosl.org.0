Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A3346B0C0C8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 11:57:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C11B8461D;
	Mon, 21 Jul 2025 09:57:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PKTQmsWKexy0; Mon, 21 Jul 2025 09:57:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8881E845A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753091838;
	bh=taMZo6pydQCRBGSIZbvIqFAt83MtbeZxKyy642DFWnc=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GE2mAzOz6INgKDsZHD0LBE5jbA5PBj2b+LI74A/V+tGjXLUOAtDy6uFOLzeJHfEOD
	 QasuO6e+KSHjDHoYfzEKlF3buBtIATIGuIMtONBGJEbzayFSFqa5N7/BIUfAC1wIVD
	 Ymf1cjAuSX94uS4b9KZakQXoeie71bIrVfwboToIWlDYl4Gl4WGO/PSH6Cxat2gYoo
	 V5TyvVQSPMMIO32ZUdyhQ9rb7o/5drKePOcK47G7K7sOMJNKhOsmM2rNYXYBgrWROa
	 Jj5OtfBgc+qA5aYx9QV6xjgQO1wZf5ioj2mo+nQ3BOvDEHYVAe8U+YlA4wk7xlpD8h
	 w89L3bTfSuxjg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8881E845A3;
	Mon, 21 Jul 2025 09:57:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A7D941F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 09:57:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 98AF8842BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 09:57:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qP6J6Aw96Bgf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 09:57:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::d2b; helo=mail-io1-xd2b.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C7FA9844DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7FA9844DE
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com
 [IPv6:2607:f8b0:4864:20::d2b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C7FA9844DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 09:57:15 +0000 (UTC)
Received: by mail-io1-xd2b.google.com with SMTP id
 ca18e2360f4ac-87c0166df31so289506339f.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:57:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753091835; x=1753696635;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=taMZo6pydQCRBGSIZbvIqFAt83MtbeZxKyy642DFWnc=;
 b=QXW/6A8onqtjcsUgwuVep/0ck1vyA5w8N1ncm+JYxOY2NMvNYB2ngnBd9zouC7Odee
 hXlkmznBqsGOUchzU1xaOvV3fYO2s0aQcUbTAkTDtDzhbMa6+2aIsnQTgM4iBr494qc+
 2RerNn3m6eGHvxSWjTi7hiGrw+P3cKrLf5CDLql/i3F3hiS59YyLr8JNVp8G+mzktFaM
 JWJusP1e8GcJJmtGOpmKS+pKFBhsY8F+Z9Kf/lXxWt/HkiXt1XyPKuEDwkzgQ0u+4vtP
 KUJdz/j1+kx5sZHnOYgYXxJBsb6uGBqaJaEhnB//bPt0mlPyuIV3NYQY5xdpgH+5wHs7
 gyKg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX0a9DzHY71heTDKdCOrw2K6UzCompf4i8RQBIPaab/NXbk6Jwu6OtMKAOuqBrcMMqLhP6fLt6j02CDqjJJmcg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyKpy6tXpNTnRTmo8K3XCFTDGFvdVza8kmVPtdZMgWf8vB2zyo0
 8ZhU56K1JX84r7q4lhEF5sJjR9pab099BeGqMJhZC5UsvlwJjEnqTUpmuOKrNGjJ8INdgcUppxl
 WTf6Fd/6Wxb8H68TgVy5IZK+wcFLLxck=
X-Gm-Gg: ASbGnctaX+45YBlM7a2wpDuCJzY8jYK6KmwpbHoyme3X/W9e5YSGPM2wd8Nxz+Mb2XQ
 6maWj+rLgtkst7P/+691EqR5dxEAE6jxqB5sNSQ8DvGA5qRfzoXsm8RFf4arJ2MwJBkJZU+cXZX
 7OHpAL6VitTdQz1aDroHO0KCvK9bg3E1bSzGudMF8Udo7vt/9a9TqLW/wqgc2XHzjSqbtbKkN1a
 3FTVr0=
X-Google-Smtp-Source: AGHT+IEG1c4ENZShiBcMx7qrd4GO3hFaW/XXSsh5bk87LrmKPlFClSSZh6HzoCdHRp3T9nQzDSFchD+yKv2fPGQZjZk=
X-Received: by 2002:a05:6e02:3b0a:b0:3df:4234:df7b with SMTP id
 e9e14a558f8ab-3e282d62ac7mr241573455ab.3.1753091834502; Mon, 21 Jul 2025
 02:57:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAL+tcoCTHTptwmok9vhp7GEwQgMhNsBJxT3PStJDeVOLR_-Q3g@mail.gmail.com>
 <aHohbwWCF0ccpmtj@soc-5CG4396X81.clients.intel.com>
 <CAL+tcoCJ9ghWVQ1afD_WJmx-3n+80Th7jPw-N-k9Z6ZjJErSkw@mail.gmail.com>
 <aH3rRHm8rQ35MqMd@soc-5CG4396X81.clients.intel.com>
 <CAL+tcoAQF_Aom4dn--RQzowiUO1haNPw=_Rzw2C7MJRF_sSUOw@mail.gmail.com>
 <aH4HNquLzjagCLeX@soc-5CG4396X81.clients.intel.com>
In-Reply-To: <aH4HNquLzjagCLeX@soc-5CG4396X81.clients.intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Mon, 21 Jul 2025 17:56:37 +0800
X-Gm-Features: Ac12FXwgh7Zd0MIstUca3D9v28GZp5nOp_WVPhOBZecXwtWxy0lla-HwnACjXlU
Message-ID: <CAL+tcoANWC5h2FdRkB470qmWYk9-f-SVbRmwiNqfXRXJn8JZBQ@mail.gmail.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: Jakub Kicinski <kuba@kernel.org>, Stanislav Fomichev <sdf@fomichev.me>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, przemyslaw.kitszel@intel.com,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753091835; x=1753696635; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=taMZo6pydQCRBGSIZbvIqFAt83MtbeZxKyy642DFWnc=;
 b=nWANiqHl8yhP9Jxeswh2Xb8akqIy3lF1ZcLVCzfKbDaeSwgG9Dm/OIqNHtHXqomdMt
 uFhtLLpjXJl1pGbNimijBhNId/EsP4rD0HPs+VOlNTxMRDqTHkKR4nZMIj6BR/r47z9O
 WGYNHTQ4qcxCXBJvu1RLkgGcmhyvvftJaVC9eT5RJWG0PzEnSWrBs5h8oolNhJG4Pz2X
 RUwbBSfbH4OIIS7WAp5ZiAGEHwEfN2fswjhiQ0YLwlXawhZj+nnKZK5NVC/wrx+h8qMs
 zMml9W1FZjdP/6Crm1JInRarmxCqWK95B8idD9gjU8YAn/6wVVovistUSHXRsqvjwLRR
 ovgw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=nWANiqHl
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

On Mon, Jul 21, 2025 at 5:25=E2=80=AFPM Larysa Zaremba <larysa.zaremba@inte=
l.com> wrote:
>
> On Mon, Jul 21, 2025 at 05:03:07PM +0800, Jason Xing wrote:
> > On Mon, Jul 21, 2025 at 3:25=E2=80=AFPM Larysa Zaremba <larysa.zaremba@=
intel.com> wrote:
> > >
> > > On Sat, Jul 19, 2025 at 01:26:18PM +0800, Jason Xing wrote:
> > > > On Fri, Jul 18, 2025 at 6:27=E2=80=AFPM Larysa Zaremba <larysa.zare=
mba@intel.com> wrote:
> > > > >
> > > > > On Wed, Jul 16, 2025 at 11:41:42AM +0800, Jason Xing wrote:
> > > > > > Hi all,
> > > > > >
> > > > > > I'm currently faced with one tough issue caused by zero copy mo=
de in
> > > > > > xsk with ixgbe driver loaded. The case is that if we use xdpsoc=
k to
> > > > > > send descs, nearly at the same time normal packets from other t=
x
> > > > > > queues cannot be transmitted/completed at all.
> > > > > >
> > > > > > Here is how I try:
> > > > > > 1. run iperf or ping to see if the transmission is successful.
> > > > > > 2. then run "timeout 5 ./xdpsock -i enp2s0f0 -t  -z -s 64"
> > > > > >
> > > > > > You will obviously find the whole machine loses connection. It =
can
> > > > > > only recover as soon as the xdpsock is stopped due to timeout.
> > > > > >
> > > > > > I tried a lot and then traced down to this line in ixgbe driver=
:
> > > > > > ixgbe_clean_tx_irq()
> > > > > >     -> if (!(eop_desc->wb.status & cpu_to_le32(IXGBE_TXD_STAT_D=
D)))
> > > > > >             break;
> > > > > > The above line always 'breaks' the sending process.
> > > > > >
> > > > > > I also managed to make the external ixgbe 6.15 work and it turn=
ed out
> > > > > > to be the same issue as before.
> > > > > >
> > > > > > I have no idea on how to analyze further in this driver. Could =
someone
> > > > > > point out a direction that I can take? Is it a known issue?
> > > > > >
> > > > > > Thanks,
> > > > > > Jason
> > > > > >
> > > > >
> > > > > I was able to reproduce the described behaviour, xdpsock does bre=
ak the IP
> > > > > communication. However, in my case this was not because of ixgbe =
not being able
> > > > > to send, but because of queue 0 RX packets being dropped, which i=
s the indended
> > > > > outcome in xdpsock, even in Tx only mode.
> > > >
> > > > Thanks for your feedback. It would be great if you could elaborate
> > > > more on this. How did you spot that it's queue 0 that causes the
> > > > problem?
> > >
> > > If you do not specify -q parameter, xdpsock loads on the queue pair 0=
.
> > >
> > > > Why is xdpsock breaking IP communication intended?
> > >
> > > Because when a packet arrives on the AF_XDP-managed queue (0 in this =
case), the
> > > default xdpsock XDP program provided by libxdp returns XDP_REDIRECT e=
ven in
> > > tx-only mode, XDP_PASS for all other queues (1-39). XDP_REDIRECT resu=
lts in a
> > > packet leaving the kernel network stack, it is now managed by the AF_=
XDP
> > > userspace program. I think it is possible to modify libxdp to return =
XDP_PASS
> > > when the socket is tx-only.
> > >
> > > >
> > > > When you try i40e, you will find the connection behaves normally. P=
ing
> > > > can work as usual. As I depicted before, with ixgbe driver, ping ev=
en
> > > > doesn't work at all.
> > >
> > > I think this is due to RSS configuration, ping packets on i40e go to =
another
> > > queue.
> >
> > Thanks so much for your detailed explanation.
> >
> > But, I still doubt it's not the reason why xdpsock breaks with ixgbe
> > driver loaded because I tried the following commands:
> > 1. ping <ip>
> > 2. timeout 3 ./xdpsock -i enp2s0f0np0 -t -q 11  -z -s 64
> > Whatever the queue value I adjusted, ping always fails with
> > "Destination Host Unreachable" warning.
>
> First I would make sure, if the problem is from Rx or Tx. This is hard to=
 do

I ran tcpdump xxx & on the other machine (receiver) to see if there
were any incoming icmp packets first. It turned out to be no incoming
data at all. So I presume the problem happens on the tx side.

> with IP-level applications, because they fail if any of those does not wo=
rk.
>
> Please, try sending MAC packet with scapy using a following command:
> sendp(Ether(src=3D"<src MAC>", dst=3D"<dst MAC>")/IP(src=3D"<any IP>", ds=
t=3D"<another IP>")/UDP(sport=3D2000, dport=3D9091)/Raw(load=3D"xdp"), ifac=
e=3D"<src ifname>")
>
> First, send this from host to link partner while running `tcpdump -nn -e =
-p -i
> <ifname>` on link partner.
>
> Then send this from LK to host while running tcpdump on host.
>
> In both cases, note whether the packet shows up in tcpdump with and witho=
ut
> xdpsock loaded on the host.

Thanks for your guidance. But it probably takes me more time than
expected due to the whole connection being totally broken while
xdpsock is running :(

I ran tcpdump xxx > log & while running xdpsock. Later, I found that
there are as many packets as w/o xdpscok.

Thanks,
Jason
