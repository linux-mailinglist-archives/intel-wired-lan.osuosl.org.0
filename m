Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBEB9E0842
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Dec 2024 17:19:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B0E440731;
	Mon,  2 Dec 2024 16:19:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j9AQL7b0L8YJ; Mon,  2 Dec 2024 16:19:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93504407BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733156343;
	bh=7Wdetpt4bdjb03TKiWu74j2GUFJllbRsXuM68hzws7A=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3WH4J0BlNyiqAKNsZVvRDwd0E9iLFzq4L9siONqtt1Y5uPT4QtPu8wLBQDa+HdAXf
	 Jih+cOMiewbRmbtCSUZT/yaXibhQewxEtwEigJYZ8nHTwijTM0VlygQVsxomjTsikr
	 iOsZu0RB/MbztAE86UJziEjv57YGsegR888BUUiSH+0CF0P49Qw+5XjbIO2oT5N7dY
	 GGmw7zwPGCH8uFtqk3Oky5aM99icPBSjzU9O8m8koRpI8MFJPahFmOwji3EctWIMRO
	 MYEfRXH++QR6oS6Ka9JKV3glw70YKP0kmNUvIajgUDrLRhB6NNiLSqcAnJNNe84/Vd
	 LVYMTuXd1JcTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93504407BD;
	Mon,  2 Dec 2024 16:19:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 08C896C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Nov 2024 22:28:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DD49461453
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Nov 2024 22:28:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CHJkIHyImerU for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Nov 2024 22:28:46 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b30; helo=mail-yb1-xb30.google.com;
 envelope-from=andrew@andrewstrohman.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 69BDC60AA4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69BDC60AA4
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com
 [IPv6:2607:f8b0:4864:20::b30])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 69BDC60AA4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Nov 2024 22:28:46 +0000 (UTC)
Received: by mail-yb1-xb30.google.com with SMTP id
 3f1490d57ef6-e398dc7864dso1344796276.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Nov 2024 14:28:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733005725; x=1733610525;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7Wdetpt4bdjb03TKiWu74j2GUFJllbRsXuM68hzws7A=;
 b=HvQLonGZZiGoSuv8N1GDQ+hWfeSALcAw6kZYApal4/6VH5HsBKA3bI/Io/eUe2lRyI
 Xs11sNWmvmAsDaa/rWZKD/FjVbcjtEDfr3IQJc07EewSm6jdeMVk1qLnmjzk0LgQBO0r
 USETuH+UX56gR54gS2MxK2+XvyBP9nnY2zjXjPeWoLkP0vWAysXVqeHJKTSgQDuWu66C
 KF07eL3M9JwlANeRYe/tzIjLXuJmNk6UnJCovZahixnh+VUOjme+ZHd1kW36vy7ktAu0
 9dK/uro89dC3sP/HOIr99s8HJWta/1qHLOgQFT00jCxqf5woZgR3HrVYb1iYD0CM75nS
 pIBA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWqrPg2LPY8V/o/X8KbFAZwNYnTG0jwu7OEyAxANnfx19oY5O9H4pLMlAMOpIjxBMKqNm8exXOzRpaC4+aTiUI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyVN3f4bM0/VQsz7M4M/EhiGCkRzGAtMqBtOwXOJKC/wkLVSFiB
 ZwI2Hh9+vtQobT+Sud38dAGFGQNm91nXCEW6imbPaE83dsUMWeGcrkMhv1lKhHmxSGyARq3SwD8
 RT9IYmzGwCJoXCODCYdx442Dg8AypKMmT9b2VXA==
X-Gm-Gg: ASbGncuGV6Mw8prd4eVcpuNOEsBYqgAWs0Kv+4Q2FNh5X+b58ipPlLobpNVJDL7x2lP
 HZ12SmdZ+pwSy57X+RFLf242naLy5+XY=
X-Google-Smtp-Source: AGHT+IHfnTZT06dr55uMoGVVPSi3LB207JWWsC6/9JeXc0W+4fBNcHyu/kAuUK9CXwsbr7aiFeRwXRPIXc7R/5ScSg4=
X-Received: by 2002:a05:6902:2087:b0:e39:84c6:3041 with SMTP id
 3f1490d57ef6-e3984c633afmr9172615276.22.1733005725180; Sat, 30 Nov 2024
 14:28:45 -0800 (PST)
MIME-Version: 1.0
References: <20241130000802.2822146-1-andrew@andrewstrohman.com>
 <Z0s3pDGGE0zXq0UE@penguin>
In-Reply-To: <Z0s3pDGGE0zXq0UE@penguin>
From: Andrew Strohman <andrew@andrewstrohman.com>
Date: Sat, 30 Nov 2024 14:28:34 -0800
Message-ID: <CAA8ajJmn-jWTweDMO48y7Dtk3XPEhnH0QbFj5J5RH4KgXog4ZQ@mail.gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Ido Schimmel <idosch@nvidia.com>, 
 Petr Machata <petrm@nvidia.com>, Vladimir Oltean <vladimir.oltean@nxp.com>, 
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 UNGLinuxDriver@microchip.com, Shahed Shaikh <shshaikh@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com, 
 Simon Horman <horms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
 Roopa Prabhu <roopa@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, 
 bridge@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 02 Dec 2024 16:19:01 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=andrewstrohman-com.20230601.gappssmtp.com; s=20230601; t=1733005725;
 x=1733610525; darn=lists.osuosl.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=7Wdetpt4bdjb03TKiWu74j2GUFJllbRsXuM68hzws7A=;
 b=oFrz8houyD/tk4ne5+el2bezoJhLCDZwPV/5NWfwGsANIRcfItGQwkItkAKENzbKsL
 mmkE3Kr2b3x8/IJjppFsVZxQGEIgahUYeaw2W9IwA0HVIAze+oJQ1Ic9O+eJ6j3HrBX5
 ONiNqUXQT9rXM4/xUJBWEZ0XOX1/PRe4FoqTD0RoPJKcKn2Qx8lkNZyTBUnxfwNTq+Hi
 7cXByxfYarzH7en0saqCwZur2Wc5sXd+6xvPQjsBH25iEuzIkzBEbMv/wIRz0Fx/90qQ
 Ztal/XA50zRDSxl19R4nqhWA5TnhotKQNEJoVPNCUcuwFJh85TyuaXH6gz0o4qI62BO+
 Z+GQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=andrewstrohman.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=andrewstrohman-com.20230601.gappssmtp.com
 header.i=@andrewstrohman-com.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=oFrz8hou
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

Hi Nik,

Thanks for the review.

> This patch makes fdb lookups slower for everybody, ruins the nice key alignment,
> increases the key memory usage

I could make the additional, inner_vid, fdb member variable's existence
depend on a compile time flag, so that these penalties would only affect
the users that want the feature.

> and adds more complexity for a corner case, especially
> having 2 different hosts with identical macs sounds weird.

I admit that the use case is rare. In this commit message,
I focused on the duplicate MAC scenario, because I thought that would
be the easiest way to describe it. If the problem is hosts with duplicate
MACs, that's probably best remedied by just assigning a different MAC, or
translating that MAC before it reaches the 802.1d bridge.

There might be a potential DoS opportunity, if an attacker knows
the MAC addresses on a different VLAN. Consider someone on a "guest" VLAN
transmitting a frame sourced with the MAC of a server on the "production"
VLAN.

My personal use case is about simulating ethernet connections and VLAN aware
bridges, so that I can test networking equipment that provides VLAN
functionality with IVL.
https://github.com/andrewstrohman/topology-sim/raw/refs/heads/main/docs/Topology%20Simulation%20for%20Mesh%20Testing.pdf?download=
describes it, if you're interested in more information about it.

https://docs.google.com/drawings/d/1FybJP3UyCPxVQRGxAqGztO4Qc5mgXclV4m-QEyfUFQ8
is a diagram that shows what I'm thinking about. This case is not about
duplicate macs, but rather a frame being bridged in a way, such that it passes
through the same bridge twice via different ports depending on the inner
VLAN. In the commit message, this is what I meant by the poorly worded:
"L2 hairpining where different VLANs are used for each side of the hairpin".

The diagram depicts a network where a layer 2 segment is partitioned by a
L2 (bridging) firewall. I admit that this is contrived and not a typical
way of constructing networks.

In this case, my testing system would use a 802.1ad bridge to simulate a
VLAN aware bridge between .1q #1 and .1q #2. The problem is that the .1ad
bridge would get confused about which ports hosts A and B are behind.
The bridge would see them behind different ports depending on whether the
packet was heading to, or returning from the bridge mode firewall.

If these nodes were connected with an IVL .1q bridge instead of the .1ad
bridge, this topology would work. So it's a scenario where connectivity
failure would be due to my testing system (topology-sim) instead of the
networking equipment being tested.

> Fdb matching on both tags isn't a feature I've heard of, I don't know if there are switches that support it.
> Could you point to anywhere in the specs that such support is mentioned?

I've never heard of this either. It's just an idea that I had. I don't
know of any
switches that support it.

> Also could you please give more details about the use case? Maybe we can help you solve
> your problem without impacting everyone. Perhaps we can mix vlan-aware bridge and tc
> to solve it.

Thanks. I tried to give the relevant details of my use case above. I think
that using tunnels instead of VLANs would fix this for me, because the
switches would not learn the inner MAC. But, the tunnel header has more
overhead compared to adding a tag.

> As it stands I'm against adding such matching

Fair enough. I also have concerns about complexity vs value, myself. I
just thought that I would give this a try in case others found it useful.
