Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E5B9E4BAF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Dec 2024 02:14:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2229141446;
	Thu,  5 Dec 2024 01:14:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RwJDXLKfBZBm; Thu,  5 Dec 2024 01:14:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BAEDC4143E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733361290;
	bh=xfZMYXPm/XnOBhZKHxlljIg3cpKjNn+y0on19a7NN2Q=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zG/YLMn9xSYQtGt2ewEEh4BQ3tqJ8jQPgZL7U/SRxrh3A+G0GHxQCb5KwtdSBGMMm
	 LcI8YwTGlftvqvR1cgEd6V3WByKiTL77FFNGJWM//vN9PZpCljRv41j8su7PvOLfwb
	 oHaASZ3ggwrdjzM7s+4Hwd13ttbD9BwSF3ypaIJCU3yQhxAIeDYiFElgb1oo8fRGkN
	 2n6lglP5Cpn/dpKDgM6HC1ZFZEzw9u8P8bjVptQZZtypW+CZ8eLK0OHTOOv/Sr/blq
	 pieMhg54QKIDd7NRLyueCHcovSF5wlzm94anac2GgkwuVxtz3t5DEKCGeTEussintB
	 i99ZkBXwfwCdw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAEDC4143E;
	Thu,  5 Dec 2024 01:14:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C796B1DD1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 01:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A6E0C41438
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 01:14:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5Xiys5J1Xb77 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Dec 2024 01:14:47 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b2e; helo=mail-yb1-xb2e.google.com;
 envelope-from=andrew@andrewstrohman.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C473341390
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C473341390
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com
 [IPv6:2607:f8b0:4864:20::b2e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C473341390
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 01:14:46 +0000 (UTC)
Received: by mail-yb1-xb2e.google.com with SMTP id
 3f1490d57ef6-e39779a268bso683724276.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 04 Dec 2024 17:14:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733361285; x=1733966085;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=xfZMYXPm/XnOBhZKHxlljIg3cpKjNn+y0on19a7NN2Q=;
 b=jaB5ZT1o5K2NvoPzd9atTqeVQRl6sKoZi18iGy7FES4sgbptN4Fo0H4/v9vvesYQkP
 Tg04/vx88r4lWC2hqX8CdmiHXr3tmBiGk7sQs0BF0GpvzzTKEqNxycUdf1jPQ4PVVymS
 RSX3GenZH3ZrqY4kPfpRQdV9aSmjY+rwAv+6ZfbgBNH/NkaXHyjZ13jTW0S602WpxWwl
 ZNYrP1eHX10QsAiw9EG4htixkR56ZyXyWjDwyDaVIjN2kfVueVy4ug6Nv7Ee2np5jezH
 zpXbQZ6nsqentPjhLKMmx7wvOSAwfWXVl8GWKGoRjElimjc6wSICpwjtm06KJxhkmYuV
 ulZA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUACvksp4cUqPtMhqkmK8y88co85x4AyXJenptx3JcVtRfkWk6fVrkK1zi7F/AJaeLiX61UnTLyBGIWO25AoxY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwHjvmJaU4fBNa1AQ1I3z2MwvcUIP3C7mNf7mddZuvTQtE1xI8F
 g3vuH1Lnqe1hNz+4DiOOfyqdgpN9LtFVN+W01vAhnBcOqnXIKPNlCNkWZ0Rg4MRqsCU2P0pnHYL
 3V36DS23LRH8ssyYG9TXGoq4IOCRonNaETfvuqw==
X-Gm-Gg: ASbGnctvG1O9PCT/JykUc9Tvxbmv0K8WMCb1qzzugTQ2uedWVq6QIrN0ExXrVgEUbLi
 2+sI19nR3gzXrmiAnhmUPLXTlYIVgtpU=
X-Google-Smtp-Source: AGHT+IHA0+z3aYrs1oHL7bfJ5mmSCDhOEW1KC+mJa23OdZXviguzJEU7KjVhNJq4otCChADvbWMuAWS+kWh7228uAqM=
X-Received: by 2002:a05:6902:2b01:b0:e38:230d:aee0 with SMTP id
 3f1490d57ef6-e39f2338efdmr1688035276.23.1733361285485; Wed, 04 Dec 2024
 17:14:45 -0800 (PST)
MIME-Version: 1.0
References: <20241130000802.2822146-1-andrew@andrewstrohman.com>
 <Z0s3pDGGE0zXq0UE@penguin>
 <CAA8ajJmn-jWTweDMO48y7Dtk3XPEhnH0QbFj5J5RH4KgXog4ZQ@mail.gmail.com>
 <20241202100635.hkowskequgsrqqkf@skbuf>
 <CAA8ajJkPzpGRXO6tX5CkgX7DjGwR6bPyT4AXjZ0z8kXBk8Vr_g@mail.gmail.com>
 <20241204084817.g7tort3v3gwdzeic@skbuf>
 <CAA8ajJnRPB=KRcDpQiAJww3Apv6ZGqWaAg5stSjOE99BOmkCjg@mail.gmail.com>
 <20241204105645.vwhnwyp3gyq5av4m@skbuf>
In-Reply-To: <20241204105645.vwhnwyp3gyq5av4m@skbuf>
From: Andrew Strohman <andrew@andrewstrohman.com>
Date: Wed, 4 Dec 2024 17:14:34 -0800
Message-ID: <CAA8ajJn0+tBL=5YtuJt5Y6NKWKf_sEctq6Jm=h_Jht4DDnBRkw@mail.gmail.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Nikolay Aleksandrov <razor@blackwall.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Ido Schimmel <idosch@nvidia.com>, 
 Petr Machata <petrm@nvidia.com>, Claudiu Manoil <claudiu.manoil@nxp.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, UNGLinuxDriver@microchip.com,
 Shahed Shaikh <shshaikh@marvell.com>, Manish Chopra <manishc@marvell.com>,
 GR-Linux-NIC-Dev@marvell.com, 
 Simon Horman <horms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
 Roopa Prabhu <roopa@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, 
 bridge@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=andrewstrohman-com.20230601.gappssmtp.com; s=20230601; t=1733361285;
 x=1733966085; darn=lists.osuosl.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=xfZMYXPm/XnOBhZKHxlljIg3cpKjNn+y0on19a7NN2Q=;
 b=ymUJFBSAkaMjYHpu+J2jiARgYAXvGV0Zd0XuR4l24iwIwNyc4NkdcgZvcSSduzxhKd
 oGl9uGq6klV6b3OCP4lngdHV3GyG2VVaWnqkFCHX8YpRMvqZatkL88d6faASzyqBO1Jj
 RsXP4TpgtShXIYOr5hzA4FcRWM6O8lLym26dkMHRZ6eCnRv8gxw+jtJCjR11hx4WMykl
 wx+DvDaa2mDpCllmUZPdaMttux72Hj0B8SbxvU42EUcN7qXKyGi5l/CaZyVcJI2+c6+F
 J/rQ7VQwT35xMIli+QMIcglhr9M6cxCTSEPhvWyFVWCh7Uq7zCzfEmypa+QYBfCm1ZEz
 P/Vw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=andrewstrohman.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=andrewstrohman-com.20230601.gappssmtp.com
 header.i=@andrewstrohman-com.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=ymUJFBSA
Subject: Re: [Intel-wired-lan] [PATCH net-next] bridge: Make the FDB
 consider inner tag for Q-in-Q
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

> Here the same thing. The 802.1ad bridge has the same PVID on all ports.
> Why does the FDB lookup have to be as complex as to take 2 VIDs into
> consideration, instead of just the inner one?

In all my examples I'm using the same PVID, because that's a required
condition for the issue to happen. I omit that the other .1ad ports in
could have different .1ad VIDs configured for them, to focus
on the concept I'm trying to describe.

But other VIDs can be configured on other ports. So, there could be
collisions of .1q VIDs across different .1ad VIDs. As such,
I don't want to ignore the outer VID during FDB lookup.

In my use case (topology-sim) the test fabric consists of .1ad bridges
that are connected to networking equipment under test.

The topology-sim user configures virtual ethernet cables (point to point)
and/or L2 IVL ethernet segments between multiple devices under test. They do
this to construct an arbitrary ethernet topology that they want to test.
topology-sim assigns / maps each one of these  L2 segments to a unique
.1ad VID.  This is how it keeps the "virtual wires" from interfering with each
other.

So if one virtual wire (ie .1ad vid 3) is connecting to a switch under test
that is emitting frames with .1q vid 7, I want this virtual wire
to be independent from another virtual wire (ie .1ad vid 4) that is also
emitting frame with .lq7 vid 7.

I acknowledge that we shouldn't make this upstream change just for topology-sim,
considering that I'm the only user of it. But these same problems
can affect, for example, metro ethernet carriers that use .1ad vlan stacking
to differentiate between their different customer's sites. I'm not
trying to claim that
metro ethernet carriers would be inclined to use this feature -- I'm just
providing another example to point out that this same concept applies to
use cases outside of topology-sim, because toplogy-sim uses VLAN
stacking in a typical, conventional way.

I'll now proceed to go over my hairpin example,
https://docs.google.com/drawings/d/1FybJP3UyCPxVQRGxAqGztO4Qc5mgXclV4m-QEyfUFQ8
in more detail. I think that it will help demonstrate why I want
to consider the inner tags. It's an example about a circuitous network
path where the same packet can enter the same .1ad bridge multiple
times, with the same .1ad VID, but different inner .1q VIDs.

Like I mentioned before, this network is contrived. I've never seen
this done, and don't expect that it is a common topology. But my
goal is to prevent connectivity issues that only arise due to how
topology-sim constructs the virtual L2 ethernet segments.

The network under test has a bridge mode firewall that is used to inspect
traffic as it passes from some subset of a L2 segment to another subset
of the same L2 segment. The way that the network operator achieve this
goal is by creating separate VLANs for each subset of the L2 segment
that need firewall interjection. This way, communicate between these
different subsets are forced though the firewall. The firewall bridges
the two VLANs to merge them into one L2 segment, one broadcast
domain.

Say the topology-sim user wants to interconnect two .q1 bridges via
a virtual Ethernet connection. topology-sim accomplishes this by setting
the same PVID for both ports that that face these .q1 switches under test.

Let's follow what happens when a packets it transmitted from A towards
B.

When the frame is emitted from ".lq #1", heading toward the .1ad switch,
it is .1q tagged as 7.  When the .1ad bridge receives the frame, it will
associate it with .1ad vid 3 and .1q vid 7 can be seen in the packet,
if desired.
At this point, the .1ad bridge can either learn that A is behind it's
left port, for
.1ad vid 3 (current implementation), or it can learn that
A is behind the left port only for .1ad vid 3 + inner .1a vid 7
(proposed functionality).
When the frame leaves the .1ad switch heading toward
".1q #2", it will just have .1q vid 7 tag. ".1q #2" sends the packet
to the firewall,
via its left port, untagged. The firewall bridges the frame, and
therefore transmits
out its right port to ".1q #2", untagged.  ".1q #2" transmits toward
.1ad with .1q tag
8. When the .1ad bridge receives the frame, it will associate it with
.1ad vid 3 and the inner .1q vid 8 can be seen in the packet if
desired. At this point,
the .1ad bridge can either learn that A is behind its right port, for
.1ad vid 3 or it can
learn that A is behind it's right port, for .1ad vid 3 + .1q inner vid 8.

Without my change, the .1ad switch's fdb entry for A's mac, .1ad vid 3, would
flip continuously between the left and right port.

With my change, for .1ad vid 3, the .1ad bridge will always forward
packets destined
to host A's MAC to the right if the inner vid is 8 and will always
forward host A's MAC
to the left when the inner vid is 7.

I hope this example explains why I want to look at the inner VID. The
fact that we can have
inner VID collisions for different outer vids, drives the need to examine the
outer VID. This is why, collectively I want to consider MAC + inner + outer.

Does that make sense?
