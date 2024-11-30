Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FC89DF1E8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Nov 2024 17:05:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9452E6146E;
	Sat, 30 Nov 2024 16:05:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kLU6T1DkwcvB; Sat, 30 Nov 2024 16:05:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74A3D61470
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732982700;
	bh=CU8Ha8lvwzrUL3wklZxNnby9TbqM0AQPddb/sVDz+Hg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ynud8HohmJR+36snEtH6oENqvgjsFytcFVrEEZ9Nd0PTRNVgNJLIlNsV89+sNwTuD
	 YGZyvvB/fvooWExdnv/RCg8fVx4PFKc24BmfCxS79wq6PzfiVRgwhzICyiQFNT62tI
	 Xq6Ve3YDEF0Am6qJ/77+L7+2LqJfsbH+s5nU8xuPs9T6aQYsnNZ0KA6Pfd3OpOHdFO
	 0bSZzRCY43etYJ6RHvXTzOYOEAPRXryTDhfVdCgDJvdDEi9TLMMYXBacvLaLjI3MVt
	 nAzuEFW/4zSQOZxQA0EnWvvAXY1GLg3nzPaW3eyMVRY9ypMSY20BXU+Joo0qtFGCop
	 Kv/48bngknf8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74A3D61470;
	Sat, 30 Nov 2024 16:05:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 71267712
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Nov 2024 16:04:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F9728179D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Nov 2024 16:04:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dTpkjBUie8EA for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Nov 2024 16:04:57 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::134; helo=mail-lf1-x134.google.com;
 envelope-from=razor@blackwall.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9C7B68200C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C7B68200C
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9C7B68200C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Nov 2024 16:04:56 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id
 2adb3069b0e04-53dde4f0f23so2869717e87.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Nov 2024 08:04:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732982694; x=1733587494;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CU8Ha8lvwzrUL3wklZxNnby9TbqM0AQPddb/sVDz+Hg=;
 b=D3340Cf6PlIgTYvPt1g93eOo9XjsGqzJ5o3TmFPs6QszEZTWNUjwbj1bEHyj85UWjN
 8yt2j1HRfGSoBnIm9gv13KFQk2ndSgBg+1yCocSuJ6YLKIFfyNrSjC033zCIlY62DdZ5
 Kpq4rlFszWVqmcD9/4sGtYGxzlyalKsyI3K6E6BedXNRI6Pnbk6fYhJVxWbpLJlZMIl+
 FDE3IKm5X1E6884U81j7TfJbohvtts1vqDXlW3rup/tgDDnJ31OffPyg6QO8RzyHCozw
 3LMvK77mvQt7x4BfdsKpnT/tUdUekAInPuWXbKlvEhLKtHj+HOUXJJ/NZlyUtQlwIQ+C
 VI5A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXgqupdZGoypiKxYnb8d7rYWi/NHB+QuNCVVm9ZT2lwmr0qQWuFDDnVk6HIM/8mywJy+bVaXm3vwYnAku+X9Fc=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw3fv/reoLWzUYn1RUoZ8k3fwuubbSczbmKdl1pKSiUMYcinvc5
 OhYlT+XUDPQnQS+01KE9M2nnsrCNvTIan+verrd8AdkeIE65A2PqIx/LTVmKl+U=
X-Gm-Gg: ASbGnctfVWnlfh0iAkRgcE/8qSrmk08/8Bd5yXL+RjeXoOLvsYD8qMWqmlT3srEVH3y
 /yaeaWwXZVqHFlrnLfWVxN1T78FQUyOfNS96V+VpmEtGfjCepQGPPRN4hWZtSW56FEqptfoOHc1
 KSCaNpc8tr4+bXsf7w4KeFgj7W2mH5LvhgE/MK9B+Lh35ulbzoLumozroYXgN99ReHvSwxAknpz
 hpKN16E6F6ICKS2ytaJ/UXmC5adG7my05Z7z0i92kcPT1I=
X-Google-Smtp-Source: AGHT+IHL4oeMU03kLmQ2L0BR3qVJKTiAVIsSPE3HICpdb/3DuaV9c9TIe/hHbGxSndbZ9+FTqZL6rQ==
X-Received: by 2002:a05:6512:3990:b0:53d:eefc:2b48 with SMTP id
 2adb3069b0e04-53df00dc9bamr8384254e87.33.1732982694015; 
 Sat, 30 Nov 2024 08:04:54 -0800 (PST)
Received: from localhost ([217.199.122.82]) by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-53df646f2adsm808857e87.114.2024.11.30.08.04.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Nov 2024 08:04:53 -0800 (PST)
Date: Sat, 30 Nov 2024 18:04:52 +0200
From: Nikolay Aleksandrov <razor@blackwall.org>
To: Andy Strohman <andrew@andrewstrohman.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Ido Schimmel <idosch@nvidia.com>, Petr Machata <petrm@nvidia.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 UNGLinuxDriver@microchip.com, Shahed Shaikh <shshaikh@marvell.com>,
 Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Simon Horman <horms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Roopa Prabhu <roopa@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-trace-kernel@vger.kernel.org, bridge@lists.linux.dev
Message-ID: <Z0s3pDGGE0zXq0UE@penguin>
References: <20241130000802.2822146-1-andrew@andrewstrohman.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241130000802.2822146-1-andrew@andrewstrohman.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1732982694; x=1733587494;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=CU8Ha8lvwzrUL3wklZxNnby9TbqM0AQPddb/sVDz+Hg=;
 b=fQ/bLKZrPtfXFwskfQWe20iPhWQ4LUy1n98st5BD2NgR0/Dktt8vD47WSPyzI04AkP
 iailShxv4gF0m+OHYi0LTpoayz53HQqHER0bwxEyElZInnsqKGWu+kFZKujMs8/YnkIF
 MtB+H8jRE1e/8T8P4wElJ0XK/5CThAkiFangiJ7dTB0fJBSJ7zg9Cxze5ZpZUimU0sp6
 9RN7m8irX2LWfOW0EiWU2GADD+IkowEB7rNHlgWcn5c0d8Cjl30QA6/oWQLbHR+C4Hde
 ydon4jmp0TWL1zU14N3gvJ+kPAIhYTk1OLlP7BqDGuEOJJF74p45ip6sJkf8myPzZUCz
 5QuA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=blackwall.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=fQ/bLKZr
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

On Sat, Nov 30, 2024 at 12:07:57AM +0000, Andy Strohman wrote:
> 802.1q networks with IVL (independent VLAN learning) can
> tolerate duplicate MACs as long as the duplicates
> reside in different VLANs. Similarly, IVL networks
> allow for L2 hairpining where different VLANs are
> used for each side of the hairpin in order to not
> confuse the intermediate bridge's FDBs.
> 
> When these types of networks are inter-connected
> using 802.1ad or Q-in-Q, only the outer VLAN tag is
> considered by the 802.1ad bridge during FDB lookup.
> 
> While traffic segregation by inner and outer VID works as
> expected, the inner VLAN's independent VLAN learning can
> be defeated.
> 
> The following example describes the issue in terms of
> duplicate MACS in different VLANs. But, the same concept
> described in this example also applies L2 hairpining via
> different VLANs.
> 
>                  _______________________
>                 |  .1ad bridge          |
> 	        |_______________________|
>            PVID3|      PVID3|      PVID3|
>                 |           |           |
> TAGGED:        7|          8|          8|
>             ____|____  _____|___   _____|___
>            | .1q br 1| |.1q br 2|  |.1q br 3|
>            |_________| |________|  |________|
>          PVID7 |      PVID8 |      PVID8|
>              HOST A       HOST B      HOST C
> 
> The above diagram depicts a .1ad bridge that has "pvid 3
> untagged" configured for every member port. These member ports are
> connected to .1q bridges, named 1, 2 and 3. .1q br 1 allows VID 7 tagged
> on its port facing the .1ad bridge. .1q bridge 2 and 3 allow
> VID 8 tagged on their ports that face the .1ad bridge. Host A
> is connected to .1q br 1 via a port that is configured as "pvid 7
> untagged". Host B and C are connected to bridges via ports
> configured as "pvid 8 untagged".
> 
> Prior to this change, if host A has the same (duplicate) MAC
> address as host B, this can disrupt communication between
> host B and host C. This happens because the .1ad bridge
> will see the duplicate MAC behind two of its ports
> within the same VID (3). It's not examining the inner VLAN to
> know that the hosts are actually reside within in different
> L2 segments.
> 
> With this change, the .1ad bridge uses both the inner and outer VID
> when looking up the FDB. With this technique, host B and C are
> able to communicate without disruptions due to the duplicate MAC
> assigned to host A.
> 
> Here is an example FDB dump on a .1ad bridge that is configured like
> the above diagram:
> 
> root@OpenWrt:~# bridge fdb show dynamic
> f4:a4:54:80:93:2f dev lan3 vlan 3 inner vlan 8 master br-lan
> f4:a4:54:81:7a:90 dev lan1 vlan 3 inner vlan 7 master br-lan
> f4:a4:54:81:7a:90 dev lan2 vlan 3 inner vlan 8 master br-lan
> 
> Note how duplicate MAC f4:a4:54:81:7a:90 is behind both lan1 and
> lan2. This FDB dump shows two entries with the same MAC and
> the same 802.1ad VLAN, 3. Prior to this change, only one fdb entry
> per MAC/VID would be possible. As such, the bridge would have
> issues forwarding. After this change, these entries are understood
> to be distinct as they pertain to different inner vlans, and
> therefore separate L2 segments.
> 
> Signed-off-by: Andy Strohman <andrew@andrewstrohman.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c   |   4 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
>  drivers/net/ethernet/intel/igb/igb_main.c     |   4 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   4 +-
>  .../ethernet/mellanox/mlxsw/spectrum_router.c |   4 +-
>  .../ethernet/mellanox/mlxsw/spectrum_span.c   |   4 +-
>  .../mellanox/mlxsw/spectrum_switchdev.c       |   2 +-
>  drivers/net/ethernet/mscc/ocelot_net.c        |   4 +-
>  .../net/ethernet/qlogic/qlcnic/qlcnic_main.c  |   8 +-
>  drivers/net/macvlan.c                         |   4 +-
>  drivers/net/vxlan/vxlan_core.c                |   6 +-
>  include/linux/if_bridge.h                     |   4 +-
>  include/linux/netdevice.h                     |   6 +-
>  include/linux/rtnetlink.h                     |   4 +-
>  include/trace/events/bridge.h                 |  20 ++--
>  include/uapi/linux/if_link.h                  |   1 +
>  include/uapi/linux/neighbour.h                |   1 +
>  net/bridge/br_arp_nd_proxy.c                  |   8 +-
>  net/bridge/br_device.c                        |  11 +-
>  net/bridge/br_fdb.c                           | 107 ++++++++++--------
>  net/bridge/br_input.c                         |  22 ++--
>  net/bridge/br_netlink.c                       |  18 ++-
>  net/bridge/br_private.h                       |  25 ++--
>  net/bridge/br_vlan.c                          |  34 +++++-
>  net/core/neighbour.c                          |   1 +
>  net/core/rtnetlink.c                          |  58 ++++++----
>  26 files changed, 227 insertions(+), 143 deletions(-)
> 

Hi,
This patch makes fdb lookups slower for everybody, ruins the nice key alignment,
increases the key memory usage and adds more complexity for a corner case, especially
having 2 different hosts with identical macs sounds weird. Fdb matching on both tags
isn't a feature I've heard of, I don't know if there are switches that support it.
Could you point to anywhere in the specs that such support is mentioned?
Also could you please give more details about the use case? Maybe we can help you solve
your problem without impacting everyone. Perhaps we can mix vlan-aware bridge and tc
to solve it. As it stands I'm against adding such matching, but I'd love to hear what
other people think.

Cheers,
 Nik
