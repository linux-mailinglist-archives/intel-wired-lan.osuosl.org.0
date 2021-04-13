Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0506235E6FC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Apr 2021 21:20:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F5138457F;
	Tue, 13 Apr 2021 19:20:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WWxAwQB3OETZ; Tue, 13 Apr 2021 19:20:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 135C6844A8;
	Tue, 13 Apr 2021 19:20:18 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 178121BF8A8
 for <intel-wired-lan@osuosl.org>; Tue, 13 Apr 2021 19:20:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0597F402C0
 for <intel-wired-lan@osuosl.org>; Tue, 13 Apr 2021 19:20:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UqDPHivFBLRw for <intel-wired-lan@osuosl.org>;
 Tue, 13 Apr 2021 19:20:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x936.google.com (mail-ua1-x936.google.com
 [IPv6:2607:f8b0:4864:20::936])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 70AC6400A4
 for <intel-wired-lan@osuosl.org>; Tue, 13 Apr 2021 19:20:07 +0000 (UTC)
Received: by mail-ua1-x936.google.com with SMTP id v23so5634817uaq.13
 for <intel-wired-lan@osuosl.org>; Tue, 13 Apr 2021 12:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=EraBrHsCCYNbrKc3LsGXeLMwDzzQBooDslDDzxWgRc4=;
 b=GF2orn5tLRyu3NOhsHPYG0GPqgYb+sKqWIs3aYJ/OhwhyeCYwQFDWoaaBL4p7LuVn2
 nSD8xjwNQtKmeJSxSpmaI9QS9qu3lUgJIk7Ht0VRCAdwlxR50qs0VoDPjJWnnp0VSDTM
 dRs9C8APi+jyw8x+7Mn2F9cxCbFfq7uflQHv4AVUNc7p5IT+maalqrWEzOjTGfmrK2Jz
 ddPE52cgfxWRfOkVlSN/9p2um+QvLpcGc4prbidU1n/4iICVZooEj0gdE1v2mTO1c+eu
 lz/CR5j6Td4gQhzKh4FJ7KSMctzwIoCmgz+2pBHrgERT46LvtToAi8M124Z5t9kGOLz3
 BZ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=EraBrHsCCYNbrKc3LsGXeLMwDzzQBooDslDDzxWgRc4=;
 b=Azx3gl/xupVGhIaZZJIBMkPvKLc2SBcqUZ76iKyAJ7VRY8nQ2JHbA///V9z8/dlQMl
 iYEdbJ4Ki95qu1h+0JlIfoRl7A49qatTN5V25tD6rMZxIXtcpenFjimBeczt8pObwMEB
 CFTcgNvehYPeGgQrR1G5OZOTH4X00ylcOLO0OkptdGtnV5J1F3FZT0+x4JisKbrhTe6Q
 wBJGIRowE0a9/NsECVxnx5dLLZsO4QbCgfPCv6hyEdvusSQNz4pZnKMsezND4DZTJ0DD
 wD+YtyGoQ1HDBXJlGKOk3wkPaNSbJtq47ufUXRSPggx5mOKH94uaLcBScZ2O35sXfrRO
 VpPg==
X-Gm-Message-State: AOAM532foChGeXEBjoz6keBToGC09HNgsE8RSjQi9Fdl/vg3AwH8XVwN
 Rx9wOqxEthPQ1X/mA5QUqoxO0hzspdzMfBq/DhPK/5xeUoU=
X-Google-Smtp-Source: ABdhPJwujPDZEMaEQ7SaQOuB7s1xkvJmggVtz7ZsHe2pi6ZvvcMmKjwVsbt7ZO22sldAoW2jD/U94+voig0nGpu0g94=
X-Received: by 2002:ab0:6f4f:: with SMTP id r15mr8996961uat.48.1618341606058; 
 Tue, 13 Apr 2021 12:20:06 -0700 (PDT)
MIME-Version: 1.0
From: Damilola Bello <rogbabello@gmail.com>
Date: Tue, 13 Apr 2021 15:19:55 -0400
Message-ID: <CAFspsv4==uah2gw8SM1aERmBCteJH2TKYQJGoog4kkOSXSwizQ@mail.gmail.com>
To: intel-wired-lan@osuosl.org
Subject: [Intel-wired-lan] i40e and igb ethtool counters
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
Content-Type: multipart/mixed; boundary="===============1052039603904631509=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============1052039603904631509==
Content-Type: multipart/alternative; boundary="0000000000008decb705bfdf84cf"

--0000000000008decb705bfdf84cf
Content-Type: text/plain; charset="UTF-8"

I'd like to get a rough estimate of the follwoing: Total packets, Dropped
packets, Error packets and Successful packets (transmitted/received) all
from the ethtool.

My assumptions:

igb:
Total RX packets received from the network: "rx_packets" + "rx_errors" +
"rx_missed_errors" + ("rx_fifo_errors" - "rx_missed_errors")
Total TX packets sent by the host: "tx_packets" + "tx_errors"
Dropped RX packets: "rx_missed_errors" +  ("rx_fifo_errors" -
"rx_missed_errors")
Dropped TX packets: "tx_dropped"
RX error packets: "rx_errors"
TX error packets; "tx_errors"
Successful RX packets: "rx_packets" - ("rx_fifo_errors" -
"rx_missed_errors")
Successful TX packets: "tx_packets"

Note: igb adds the MPC ("rx_missed_errors") to "rx_fifo_errors".

i40e:
Total RX packets received from the network:
"port.rx_dropped" +"rx_packets" + "rx_dropped"  + "rx_errors"
Total TX packets sent by the host: "port.tx_dropped" + "tx_packets" +
"tx_dropped"  + "tx_errors"
Dropped RX packets: "rx_dropped"
Dropped TX packets: "tx_dropped"
RX error packets: "rx_errors"
TX error packets; "tx_errors"
Successful RX packets: "rx_packets"
Successful TX packets: "tx_packets"

I would like to know if the assumptions above are correct.
Thanks.

--0000000000008decb705bfdf84cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;d like to get a rough estimate of the follwoing: Tot=
al packets, Dropped packets, Error packets and Successful=C2=A0packets (tra=
nsmitted/received) all from the ethtool.<div><br></div><div>My assumptions:=
</div><div><br></div><div><div><div><div>igb:<div>Total RX packets received=
 from the network: &quot;rx_packets&quot;=C2=A0+ &quot;rx_errors&quot;=C2=
=A0+ &quot;rx_missed_errors&quot;=C2=A0+ (&quot;rx_fifo_errors&quot; - &quo=
t;rx_missed_errors&quot;)</div></div></div></div><div>Total TX packets sent=
 by the host: &quot;tx_packets&quot;=C2=A0+ &quot;tx_errors&quot;<br></div>=
<div>Dropped RX packets: &quot;rx_missed_errors&quot;=C2=A0+=C2=A0 (&quot;r=
x_fifo_errors&quot; - &quot;rx_missed_errors&quot;)</div><div>Dropped TX pa=
ckets: &quot;tx_dropped&quot;</div><div>RX error packets: &quot;rx_errors&q=
uot;</div><div>TX error packets; &quot;tx_errors&quot;</div><div>Successful=
=C2=A0RX packets: &quot;rx_packets&quot; -=C2=A0(&quot;rx_fifo_errors&quot;=
 - &quot;rx_missed_errors&quot;)</div><div>Successful TX packets: &quot;tx_=
packets&quot;</div><div><br></div><div>Note: igb adds the MPC (&quot;rx_mis=
sed_errors&quot;) to &quot;rx_fifo_errors&quot;.</div><div><br></div><div>i=
40e:</div><div><div><div><div><div>Total RX packets received from the netwo=
rk: &quot;port.rx_dropped&quot;=C2=A0+&quot;rx_packets&quot;=C2=A0+ &quot;r=
x_dropped&quot;=C2=A0 + &quot;rx_errors&quot;</div></div></div></div><div>T=
otal TX packets sent by the host:  &quot;port.tx_dropped&quot;=C2=A0+ &quot=
;tx_packets&quot;=C2=A0+ &quot;tx_dropped&quot;=C2=A0 + &quot;tx_errors&quo=
t;<br></div><div>Dropped RX packets: &quot;rx_dropped&quot;</div><div>Dropp=
ed TX packets: &quot;tx_dropped&quot;</div><div>RX error packets: &quot;rx_=
errors&quot;</div><div>TX error packets; &quot;tx_errors&quot;</div><div>Su=
ccessful=C2=A0RX packets: &quot;rx_packets&quot;</div><div>Successful TX pa=
ckets: &quot;tx_packets&quot;</div></div><div><br></div><div>I would like t=
o know if the assumptions above are correct.<br></div></div><div>Thanks.</d=
iv></div>

--0000000000008decb705bfdf84cf--

--===============1052039603904631509==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1052039603904631509==--
