Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UP6SKFqBhGl/3AMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 12:39:06 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E06F1F65
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 12:39:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21659608F2;
	Thu,  5 Feb 2026 11:39:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hcRtQU6wmNW3; Thu,  5 Feb 2026 11:39:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D32D60AE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770291543;
	bh=PzMaxnUcwxEIutXybD8zLxORazquuXFw1Mdx+RxXKWU=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=i0CiIKjMjZJXNotpAyfCo/rW3e5emqX7V6aHZ/Tm/l1P6AbjiSGfl6Oe6OX6WQSDl
	 4DK16NQDmDNfhLTqvttl/0+c5XFyM78cOj8eBCNmCO/ILDBL5dzRg9hpzXrpP0uOQE
	 FGZD8SShQcGyiKEQBbotqd+4vLDX6utT2tcI8o3fLz0io1OChqaAKCUhNgt5Qsmqpk
	 TYeaqEAjLDbUmYrIe9eZpqxQo1O6Bhl+0GjDtqnSctJHepSW007lCqHJFyauAGnoie
	 opk80EHqBz2yUVlewOxGabqGDWPztV83QYf8naycacnuOjbXBPMT2lPaGOug220xe+
	 QtxN6H45O1y2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D32D60AE4;
	Thu,  5 Feb 2026 11:39:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9BD88F5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 11:39:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7DF3040CEA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 11:39:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RHoHXiMAOgF5 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 11:38:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::f34; helo=mail-qv1-xf34.google.com;
 envelope-from=patrakov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8CC0740CE9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8CC0740CE9
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com
 [IPv6:2607:f8b0:4864:20::f34])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8CC0740CE9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 11:38:59 +0000 (UTC)
Received: by mail-qv1-xf34.google.com with SMTP id
 6a1803df08f44-8948273f5d0so16787166d6.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Feb 2026 03:38:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770291538; cv=none;
 d=google.com; s=arc-20240605;
 b=Ni4wtmsXVsoLW8CXJjlMxNOInhwUGbkB6DhDkGsze4Mc8oXovTUUpDlUuYs87nIJk/
 XtQxZz8ajWYeVuvgPJWrDuVjaaLq/lMnf9OOHj4ARAZE6S0zVJ+MzXR2QIR01WJo8NC6
 B9z8mhQB357elKCOh6uGYdfAyXlHnHX5F2rFPeyfY/0A27wpWvMUYLH1F9WCMhaReG8q
 oefisSAB80S1qw9w7LvhJmNI+dUVySCTeyY8wgkEqMx0iJ/oo68w+XYCUV6JjQogw8P6
 yvkak6uDxCdNBrcM70NCCHNonyrAQn9GcO61bksXr09cWyCu8EYFJ/Oew+lHhemZNmhS
 ECtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=to:subject:message-id:date:from:mime-version:dkim-signature;
 bh=PzMaxnUcwxEIutXybD8zLxORazquuXFw1Mdx+RxXKWU=;
 fh=mAuzMYCbbkaddVg2nOq+iROZ+comP1USDt7tfyzIRJc=;
 b=fed12tsxYlDFDtskxzXJKfpfhvaKDCCOsjx5NE6V7WpZ5CWxzDZ/8r45t950fzo9W8
 Dh0f8580yTCnM3HxCtLHa/WlQkPf7h0tRayag2Qo+SdHY4mvQz6jZQ30jjvxKbyhK/Ns
 iB0x/KGS/XFZDWktk+xee7aaWBEA5+XvKswXsIRBncRMYzWIuslqZ9fNSD1N9PmMNFE1
 z2y3ulhPSzfnT+MJRejB4L6qWM/AZHG6SgvTSsbrlC35wgSEDA8G/BsGcBmYkVWY0lJ9
 N0x6tKad5wFa10AgRntbQP9oB7GhZS/CaEKF7yZgXYnIpHwSI50QbiJioiS4TA3hxA9l
 P04Q==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770291538; x=1770896338;
 h=to:subject:message-id:date:from:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PzMaxnUcwxEIutXybD8zLxORazquuXFw1Mdx+RxXKWU=;
 b=AC2Afhw9HK399z4TeBdLtqCw5OT7/D2StYd34XY7ix1mVdQ7HnqD5wbwERnDz2/+cM
 tOf3wOinVL6n24w+fa6yBtWpDbiSzT+ixeLPnxAAmeMDeGZQIAB4qoV38e8By5fLlFsY
 q7HVhV942ih3JvQRJ7IcTM8vrmv2M7vH+wLYCJuIjO7BVoO1BkMtI7Ti/7B76z5gMs2E
 95Nm6s/Wr7eWNK3irQZVacKORlUtvMPBuuovzl4WBRHFP6MMkpkkGuv74IHUySnbUmaP
 JmBDtUcDNaV5rlBqeU2McVCHVlAKBaOmBYu08gbkZIeGGxS4qD3osn8s0T9q4PFbUthT
 ce4w==
X-Gm-Message-State: AOJu0Yzc4eU6Ieohn3DQOmgzKzdPMcgxB3ICbsiGAhGNtAYLSRxCTQBs
 G50u8VmMV3FgCKRdAbTV6/Ew4i/ui46HYiNaLHHAFengTAGavNPcChgCD19yO+yRcufklbe/RfS
 UiouRcYUrjDlnPlXQymG0sKNd1F2pro+Yzg0y
X-Gm-Gg: AZuq6aIx3xinC2ZWfEG01RdOjLG7l6Qpf8fVt+Kw+4Ig2RrU+mkNl0kkcctYXrFhxyD
 DY0/egxPHelaj94kyP93lsddH9McwSQZZUmRj6rMXRqmF8pdNHI4srWpz8F6KPOR3hLRPhNtcAn
 0cE1vmTUBHTQCInNXeiVZH9k5eTm0+sl7vy3zcSHgHQvjcJpPGVg46AzKzWMNZlvTheIz2QS59m
 GTZxdZYTzUWJM5+QNJL52tJubLlxQACrayRr5k4JasYbO1B8hPPrJy1YBJ7S4D4o/ocTFCVpoJ+
 M736+Cf0tAuHnBf8XDOtaAM8WQpUCKA2klxsdRxAs9Tro93y57nPrIZcK1F5VeugufNULdP5Tu8
 hrj4dwgjWQfwX
X-Received: by 2002:a05:6214:e4b:b0:894:5b77:ca26 with SMTP id
 6a1803df08f44-895302bb01cmr33137766d6.14.1770291537702; Thu, 05 Feb 2026
 03:38:57 -0800 (PST)
MIME-Version: 1.0
From: Alexander Patrakov <patrakov@gmail.com>
Date: Thu, 5 Feb 2026 19:38:30 +0800
X-Gm-Features: AZwV_Qhp08fZ2mBuVn2F1xLVdG5kyZlGpCibxDHTf7UZb74LBimm0-KemZcZdD4
Message-ID: <CAN_LGv1KVdRrgJzrsZUSx7JnDvJAQiOxJXjkF8_AYYaidSKHrQ@mail.gmail.com>
To: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770291538; x=1770896338; darn=lists.osuosl.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=PzMaxnUcwxEIutXybD8zLxORazquuXFw1Mdx+RxXKWU=;
 b=TXn1QiSkNdb3GB2GwT7rd+fa2TlIj36uHsk0QZAdvD/oP1NaZIsQ7x85ZMK6jTz7r9
 0Uphj4h+k4kREH3i1oCYW+7h9KO75Knlvh3GcnuIrVC967OdxiGTXFXfuKTEF9FfHYJb
 WKPGkVpWEhEK4PVVBzEy3yq0Qy5fbrO0BGlukpAbOtdueRHDjXR8tljQHyNO7AUaCJNM
 AgwGdaYf3v/TS0DSAEAu4NQrpEs8+qO9DC0z2rAbeE5s45f0pfu6BrLCq4xv0Kp4XdUY
 /oIM1B2H1D8Oon7zIXRiM+mknigpoUlC+48XBdALREf83PbhO5yBonyzSittr0TVqhOO
 jmlw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=TXn1QiSk
Subject: [Intel-wired-lan] Kernel panic related to tcp_try_coalesce and ice
 driver
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,mail.gmail.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patrakov@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: A7E06F1F65
X-Rspamd-Action: no action

Dear ice driver developers,

A customer running Proxmox VE (kernel version 6.17.4-2-pve) has this
card in their servers:

11:00.0 Ethernet controller [0200]: Intel Corporation Ethernet
Controller E810-C for QSFP [8086:1592] (rev 02)
    Subsystem: Intel Corporation Ethernet Network Adapter E810-C-Q2
for OCP3.0 [8086:0006]
    Kernel driver in use: ice
    Kernel modules: ice
11:00.1 Ethernet controller [0200]: Intel Corporation Ethernet
Controller E810-C for QSFP [8086:1592] (rev 02)
    Subsystem: Intel Corporation Ethernet Network Adapter E810-C-Q2
for OCP3.0 [8086:0006]
    Kernel driver in use: ice
    Kernel modules: ice

Here is what ethtool reports:

# ethtool -i nic1
driver: ice
version: 6.17.4-2-pve
firmware-version: 4.30 0x8001bcf7 1.3429.0
expansion-rom-version:
bus-info: 0000:11:00.0
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes

They recently hit this kernel oops and a subsequent panic. Is this
oops/panic something known or addressed in later kernels? Is there
anything I should tell Proxmox developers to backport to their kernel?
Or is the ice driver only a victim here?

<6>[427644.375157] perf: interrupt took too long (4052 > 3126),
lowering kernel.perf_event_max_sample_rate to 49000
<4>[430567.601669] ------------[ cut here ]------------
<2>[430567.601827] kernel BUG at mm/slub.c:563!
<4>[430567.601954] Oops: invalid opcode: 0000 [#1] SMP NOPTI
<4>[430567.602052] CPU: 8 UID: 0 PID: 0 Comm: swapper/8 Tainted: P
      O        6.17.4-2-pve #1 PREEMPT(voluntary)
<4>[430567.602145] Tainted: [P]=PROPRIETARY_MODULE, [O]=OOT_MODULE
<4>[430567.602231] Hardware name: ASUSTeK COMPUTER INC.
RS720A-E13-RS12U/K15PP-D24 Series, BIOS 1002 10/14/2025
<4>[430567.602315] RIP: 0010:kmem_cache_free+0x3c9/0x470
<4>[430567.602404] Code: ff ff 4d 89 f9 41 b8 01 00 00 00 48 89 d9 48
89 da 4c 89 ee 4c 89 f7 e8 55 dc ff ff e9 bf fd ff ff 4c 8d 68 ff e9
24 fd ff ff <0f> 0b 89 c8 4c 8d 04 03 40 f6 c6 80 0f 84 3d ff ff ff 83
e6 08 0f
<4>[430567.602573] RSP: 0018:ff5e1a6c409fc5c0 EFLAGS: 00010246
<4>[430567.602662] RAX: ff25e5be31c0cf00 RBX: ff25e5be31c0cf00 RCX:
ff25e5be31c0cf70
<4>[430567.602750] RDX: 0000005ea6026008 RSI: ff25e5be31c0cf00 RDI:
ff25e599005db700
<4>[430567.602837] RBP: ff5e1a6c409fc610 R08: 0000000000000000 R09:
0000000000000000
<4>[430567.602926] R10: 0000000000000000 R11: 0000000000000000 R12:
fff27af8d8c70300
<4>[430567.603015] R13: fff27af8d8c70300 R14: ff25e599005db700 R15:
ffffffff8cb9f276
<4>[430567.603105] FS:  0000000000000000(0000)
GS:ff25e655c0186000(0000) knlGS:0000000000000000
<4>[430567.603195] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4>[430567.603286] CR2: 000062752fae2000 CR3: 0000000399305212 CR4:
0000000000f71ef0
<4>[430567.603378] PKRU: 55555554
<4>[430567.603468] Call Trace:
<4>[430567.603559]  <IRQ>
<4>[430567.603648]  ? tcp_try_coalesce+0x10e/0x1d0
<4>[430567.603745]  kfree_skb_partial+0x26/0x70
<4>[430567.603836]  tcp_data_queue+0xa59/0x1030
<4>[430567.603926]  tcp_rcv_established+0x24a/0x7d0
<4>[430567.604015]  tcp_v4_do_rcv+0x17d/0x2d0
<4>[430567.604104]  tcp_v4_rcv+0xeda/0x1630
<4>[430567.604193]  ? raw_local_deliver+0xd3/0x270
<4>[430567.604280]  ip_protocol_deliver_rcu+0x33/0x1d0
<4>[430567.604368]  ip_local_deliver_finish+0x86/0x110
<4>[430567.604454]  ip_local_deliver+0x68/0x100
<4>[430567.604540]  ? __pfx_ip_local_deliver_finish+0x10/0x10
<4>[430567.604626]  ip_rcv+0x186/0x1a0
<4>[430567.604712]  ? __pfx_ip_rcv_finish+0x10/0x10
<4>[430567.604797]  __netif_receive_skb_one_core+0x8d/0xa0
<4>[430567.604884]  __netif_receive_skb+0x15/0x60
<4>[430567.604969]  netif_receive_skb+0x127/0x180
<4>[430567.605054]  br_pass_frame_up+0xf1/0x1e0
<4>[430567.605140]  ? __pfx_br_netif_receive_skb+0x10/0x10
<4>[430567.605226]  br_handle_frame_finish+0x570/0x690
<4>[430567.605312]  br_handle_frame+0x32b/0x450
<4>[430567.605397]  ? __pfx_br_handle_frame_finish+0x10/0x10
<4>[430567.605483]  __netif_receive_skb_core.constprop.0+0x620/0x1400
<4>[430567.605570]  ? skb_gro_receive+0x430/0x530
<4>[430567.605657]  ? tcp_gro_receive+0x20f/0x560
<4>[430567.605742]  __netif_receive_skb_list_core+0x10b/0x270
<4>[430567.605828]  netif_receive_skb_list_internal+0x197/0x2c0
<4>[430567.605913]  napi_complete_done+0x7c/0x1c0
<4>[430567.605997]  ice_napi_poll+0x708/0x12d0 [ice]
<4>[430567.606116]  ? kmem_cache_free_bulk+0x13/0x30
<4>[430567.606199]  ? kfree_skb_list_reason+0x21b/0x230
<4>[430567.606281]  __napi_poll+0x30/0x1d0
<4>[430567.606359]  net_rx_action+0x20d/0x400
<4>[430567.606437]  handle_softirqs+0xd6/0x2a0
<4>[430567.606514]  __irq_exit_rcu+0x104/0x120
<4>[430567.606587]  irq_exit_rcu+0xe/0x20
<4>[430567.606656]  common_interrupt+0xb6/0xe0
<4>[430567.606725]  </IRQ>
<4>[430567.606790]  <TASK>
<4>[430567.606854]  asm_common_interrupt+0x27/0x40
<4>[430567.606920] RIP: 0010:mwait_idle+0x43/0x80
<4>[430567.606985] Code: 6f 13 00 f0 41 80 48 02 20 49 8b 00 a8 08 75
20 4c 89 c0 0f 1f 00 31 c9 89 ca 0f 01 c8 49 8b 00 a8 08 75 0c 89 c8
fb 0f 01 c9 <fa> 0f 1f 44 00 00 f0 41 80 60 02 df 5d 31 c0 31 d2 31 c9
31 f6 31
<4>[430567.607123] RSP: 0018:ff5e1a6c402cfe90 EFLAGS: 00000246
<4>[430567.607192] RAX: 0000000000000000 RBX: ff25e5990d273040 RCX:
0000000000000000
<4>[430567.607261] RDX: 0000000000000000 RSI: 0000000000000000 RDI:
0000000000000000
<4>[430567.607328] RBP: ff5e1a6c402cfe90 R08: ff25e5990d273040 R09:
0000000000000000
<4>[430567.607396] R10: 0000000000000000 R11: 0000000000000000 R12:
0000000000000008
<4>[430567.607466] R13: 0000000000000000 R14: 0000000000000000 R15:
0000000000000000
<4>[430567.607537]  arch_cpu_idle+0x9/0x10
<4>[430567.607607]  default_idle_call+0x29/0x100
<4>[430567.607676]  do_idle+0x1f3/0x230
<4>[430567.607747]  cpu_startup_entry+0x29/0x30
<4>[430567.607816]  start_secondary+0x118/0x140
<4>[430567.607888]  common_startup_64+0x13e/0x141
<4>[430567.607959]  </TASK>
<4>[430567.608028] Modules linked in: tcp_diag inet_diag veth ceph
libceph netfs ebtable_filter ebtables ip_set ip6table_raw iptable_raw
ip6table_filter ip6_tables iptable_filter sctp ip6_udp_tunnel
udp_tunnel nf_tables 8021q garp mrp softdog sunrpc binfmt_misc bonding
tls nfnetlink_log ipmi_ssif amd_atl intel_rapl_msr intel_rapl_common
amd64_edac edac_mce_amd kvm_amd kvm irdma dax_hmem irqbypass cxl_acpi
polyval_clmulni cxl_port i40e ghash_clmulni_intel aesni_intel cxl_core
ib_uverbs acpi_ipmi ast fwctl rapl joydev input_leds wmi_bmof einj
pcspkr i2c_algo_bit ipmi_si ib_core ipmi_devintf hsmp_acpi ccp
ipmi_msghandler spd5118 k10temp hsmp_common mac_hid sch_fq_codel msr
vhost_net vhost vhost_iotlb tap nvme_fabrics efi_pstore nfnetlink
dmi_sysfs ip_tables x_tables autofs4 zfs(PO) spl(O) btrfs
blake2b_generic xor raid6_pq hid_generic usbmouse usbkbd usbhid
cdc_ether usbnet hid mii ice nvme xhci_pci ahci nvme_core gnss libahci
nvme_keyring libie xhci_hcd i2c_piix4 libie_adminq nvme_auth i2c_smbus
wmi
<4>[430567.608742] ---[ end trace 0000000000000000 ]---
<4>[430567.821396] RIP: 0010:kmem_cache_free+0x3c9/0x470
<4>[430567.821581] Code: ff ff 4d 89 f9 41 b8 01 00 00 00 48 89 d9 48
89 da 4c 89 ee 4c 89 f7 e8 55 dc ff ff e9 bf fd ff ff 4c 8d 68 ff e9
24 fd ff ff <0f> 0b 89 c8 4c 8d 04 03 40 f6 c6 80 0f 84 3d ff ff ff 83
e6 08 0f
<4>[430567.821822] RSP: 0018:ff5e1a6c409fc5c0 EFLAGS: 00010246
<4>[430567.821953] RAX: ff25e5be31c0cf00 RBX: ff25e5be31c0cf00 RCX:
ff25e5be31c0cf70
<4>[430567.822069] RDX: 0000005ea6026008 RSI: ff25e5be31c0cf00 RDI:
ff25e599005db700
<4>[430567.822176] RBP: ff5e1a6c409fc610 R08: 0000000000000000 R09:
0000000000000000
<4>[430567.822283] R10: 0000000000000000 R11: 0000000000000000 R12:
fff27af8d8c70300
<4>[430567.822390] R13: fff27af8d8c70300 R14: ff25e599005db700 R15:
ffffffff8cb9f276
<4>[430567.822497] FS:  0000000000000000(0000)
GS:ff25e655c0186000(0000) knlGS:0000000000000000
<4>[430567.822606] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4>[430567.822713] CR2: 000062752fae2000 CR3: 0000000399305212 CR4:
0000000000f71ef0
<4>[430567.822822] PKRU: 55555554
<0>[430567.822932] Kernel panic - not syncing: Fatal exception in interrupt
<0>[430567.824427] Kernel Offset: 0xaa00000 from 0xffffffff81000000
(relocation range: 0xffffffff80000000-0xffffffffbfffffff)


-- 
Alexander Patrakov
