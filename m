Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A24B0BF95
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 11:03:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6057427E7;
	Mon, 21 Jul 2025 09:03:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ccKIhRumWaaL; Mon, 21 Jul 2025 09:03:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4387C427E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753088628;
	bh=eGz9tABlj+U/GQqGIPNZErlvt1NjJTBIq6a5O+QSzd0=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4TrZi01mCanSJJeIZLRCwkVZgVV2WeC0Svg1Pz1TV/CvmPZZvChB8Zh25LqjsRADh
	 70H3KQPgg5cwcmoUWcuFkAkS1hcktt0U6GmLBE2CujC5s8EesbRECIt2F/aOYFbZj4
	 aREpxs+GJUphlHA6jwEkIvLvzvMX9WZfaJ/Aq9Ujx7yla8stPMC9KNSEhTg5k0JCN/
	 FSyOodESxGDo3C4th8AUWpWHT1P7LDrosiMq0KgNc1Dwy6cHsnqVWDGM3fvH/NtVs+
	 9YR1tiODLvFh81theon4NZj4UYV0w8Ame/q9Mm+sE8cz+uxWp3UOaI14sKvG/M7FtQ
	 u3a7mwdjOJxOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4387C427E4;
	Mon, 21 Jul 2025 09:03:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 711881F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 09:03:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 25EBC427D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 09:03:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fm2tzkkGbfHs for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 09:03:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::133; helo=mail-il1-x133.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6C0F4427DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C0F4427DA
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com
 [IPv6:2607:f8b0:4864:20::133])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6C0F4427DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 09:03:45 +0000 (UTC)
Received: by mail-il1-x133.google.com with SMTP id
 e9e14a558f8ab-3de252f75d7so41127445ab.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:03:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753088624; x=1753693424;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=eGz9tABlj+U/GQqGIPNZErlvt1NjJTBIq6a5O+QSzd0=;
 b=kuh7HrimU742e9ebATGtORF6SedK3CExOHzuoFu0bSV/cvlTuH5MBM8NDVgWA5CQi0
 SsSDntG05mWNBml76mlddlakwNYWF2+aFOL8YW0sEtRAsJO25v45aHlaZ7sZQJ+yO3Qp
 rgYjT6iNGeJ35k0SJvC8hKqq9v/4iiRg4rug0nOCAxqs4hl4d+8UMdnuhERzCjhxfLZy
 GnEr8mOOTEu5W7RbS+Vw+Ovex8xhHwZlWN+O6is56u8CMQcOY6gbNH95qx7MM9Wuh2B8
 DC8tFbpT7rpOm3AfGUhZuhtsLIoHgQBciqU3a+XtxhC5ZKPReupfqnrcqjm2cT4U7hOT
 25jA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW89RFU1E0AagCz/7aSI7jKmGMabH1/xBFgKtVBfNnGBfEIjhvXiau7qPoHU/g/oSpQyO+hT/FL9Np6A0hW0M0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzNkLBqfCG54zhWc1zY8CgGvhpHVJUuBZBamk8rgDIa95w2Pe+u
 isCYz1m1ErX/Pmz529i/a8G4N6YmM1QVXTz5pek1cF6rZu7DGvOW90AqGgy/fHRDrMuxKlbVshU
 X4b7psErlS+NkGHdlLC447uFSLztTYxs=
X-Gm-Gg: ASbGncuZm5EHFlIrHewnR//zDhRygbR7DnvzK/G8KWKQTQ/SmFPttKILyrOwzC5H+Hj
 NTYKUZvqJvru3jw/jU6msUXWsY/fxN42mj4rWcG77yqEyS/77Hzx/tKk0XDESVRISJ/mW3AA3Te
 xjd2IOU6UJqRSduc0zVGfVIYrTZcb4Y+HR/xJcnUpNZtaiJEgn4bOgVb+ejYo1Zjm1wjhyz9Lkk
 IDMoA==
X-Google-Smtp-Source: AGHT+IHBmuJ4qV9IXEf74vNoOSu9MKPOXTxuc6Ipnr/G9UnNSNFG1wh2bTO/QVE9Adxi2a/oLhwsvFNKrBvFv1AZ7pE=
X-Received: by 2002:a92:c26f:0:b0:3e2:9b48:4585 with SMTP id
 e9e14a558f8ab-3e29b48537amr120828795ab.3.1753088624175; Mon, 21 Jul 2025
 02:03:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAL+tcoCTHTptwmok9vhp7GEwQgMhNsBJxT3PStJDeVOLR_-Q3g@mail.gmail.com>
 <aHohbwWCF0ccpmtj@soc-5CG4396X81.clients.intel.com>
 <CAL+tcoCJ9ghWVQ1afD_WJmx-3n+80Th7jPw-N-k9Z6ZjJErSkw@mail.gmail.com>
 <aH3rRHm8rQ35MqMd@soc-5CG4396X81.clients.intel.com>
In-Reply-To: <aH3rRHm8rQ35MqMd@soc-5CG4396X81.clients.intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Mon, 21 Jul 2025 17:03:07 +0800
X-Gm-Features: Ac12FXzB9cHju70bPo1uCg6BdrKE5YjftjAU7o6wChSg7hKVFMxEiNutyLzNKj8
Message-ID: <CAL+tcoAQF_Aom4dn--RQzowiUO1haNPw=_Rzw2C7MJRF_sSUOw@mail.gmail.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: Jakub Kicinski <kuba@kernel.org>, Stanislav Fomichev <sdf@fomichev.me>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, przemyslaw.kitszel@intel.com,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753088624; x=1753693424; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=eGz9tABlj+U/GQqGIPNZErlvt1NjJTBIq6a5O+QSzd0=;
 b=nTFBgfbax81sWOG41mTtKmiYR1arcB1O3bjifbmIlQ/eGPK6FIOGO7viS4+5cmlioP
 EuLie4HjhD7JWpE5TAo5/uFPKZ1gDBWfw77HN10JWYQ7jpXrDg/x44LJ/hVlI0WEziGY
 gG8XRoc5FwvrfZRF+EjCzUUoC3szPFT7FEDEuEVhaGflQ+1DMb3DPcpvjhKsaF60ufaz
 Yo+f7W4lYYiRDlu+oLH3wjovrS6//B2TZlyowRpRw53Q8vcCImgwAgP+4NIZn36ljajE
 yk3YgFXTXzRAPXi9uE+uf/3tjxR3ciRbal4a/tiqb2yzEHnMLXXx7h5TPbS3k9/RwQvS
 oFVQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=nTFBgfba
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

On Mon, Jul 21, 2025 at 3:25=E2=80=AFPM Larysa Zaremba <larysa.zaremba@inte=
l.com> wrote:
>
> On Sat, Jul 19, 2025 at 01:26:18PM +0800, Jason Xing wrote:
> > On Fri, Jul 18, 2025 at 6:27=E2=80=AFPM Larysa Zaremba <larysa.zaremba@=
intel.com> wrote:
> > >
> > > On Wed, Jul 16, 2025 at 11:41:42AM +0800, Jason Xing wrote:
> > > > Hi all,
> > > >
> > > > I'm currently faced with one tough issue caused by zero copy mode i=
n
> > > > xsk with ixgbe driver loaded. The case is that if we use xdpsock to
> > > > send descs, nearly at the same time normal packets from other tx
> > > > queues cannot be transmitted/completed at all.
> > > >
> > > > Here is how I try:
> > > > 1. run iperf or ping to see if the transmission is successful.
> > > > 2. then run "timeout 5 ./xdpsock -i enp2s0f0 -t  -z -s 64"
> > > >
> > > > You will obviously find the whole machine loses connection. It can
> > > > only recover as soon as the xdpsock is stopped due to timeout.
> > > >
> > > > I tried a lot and then traced down to this line in ixgbe driver:
> > > > ixgbe_clean_tx_irq()
> > > >     -> if (!(eop_desc->wb.status & cpu_to_le32(IXGBE_TXD_STAT_DD)))
> > > >             break;
> > > > The above line always 'breaks' the sending process.
> > > >
> > > > I also managed to make the external ixgbe 6.15 work and it turned o=
ut
> > > > to be the same issue as before.
> > > >
> > > > I have no idea on how to analyze further in this driver. Could some=
one
> > > > point out a direction that I can take? Is it a known issue?
> > > >
> > > > Thanks,
> > > > Jason
> > > >
> > >
> > > I was able to reproduce the described behaviour, xdpsock does break t=
he IP
> > > communication. However, in my case this was not because of ixgbe not =
being able
> > > to send, but because of queue 0 RX packets being dropped, which is th=
e indended
> > > outcome in xdpsock, even in Tx only mode.
> >
> > Thanks for your feedback. It would be great if you could elaborate
> > more on this. How did you spot that it's queue 0 that causes the
> > problem?
>
> If you do not specify -q parameter, xdpsock loads on the queue pair 0.
>
> > Why is xdpsock breaking IP communication intended?
>
> Because when a packet arrives on the AF_XDP-managed queue (0 in this case=
), the
> default xdpsock XDP program provided by libxdp returns XDP_REDIRECT even =
in
> tx-only mode, XDP_PASS for all other queues (1-39). XDP_REDIRECT results =
in a
> packet leaving the kernel network stack, it is now managed by the AF_XDP
> userspace program. I think it is possible to modify libxdp to return XDP_=
PASS
> when the socket is tx-only.
>
> >
> > When you try i40e, you will find the connection behaves normally. Ping
> > can work as usual. As I depicted before, with ixgbe driver, ping even
> > doesn't work at all.
>
> I think this is due to RSS configuration, ping packets on i40e go to anot=
her
> queue.

Thanks so much for your detailed explanation.

But, I still doubt it's not the reason why xdpsock breaks with ixgbe
driver loaded because I tried the following commands:
1. ping <ip>
2. timeout 3 ./xdpsock -i enp2s0f0np0 -t -q 11  -z -s 64
Whatever the queue value I adjusted, ping always fails with
"Destination Host Unreachable" warning.

Thanks,
Jason
