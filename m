Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA25ABE184
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 19:07:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 382CD6085A;
	Tue, 20 May 2025 17:07:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p1VMp855rNm2; Tue, 20 May 2025 17:07:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 42ACE6086C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747760828;
	bh=lFe5CRPmw2G3mler/gdvGoz6GknCu8ATHweIAPxKe4c=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FgPvkfNKzeGm3rKsCUjbzAMFreCSvBLMtzllLaRZepb3oN0jeB+ttGfwuyZRIJHb/
	 QjmkSk1M8H4u/ucRHBMuHuF0pmP8FDoPwO3YBkUsqvE9fK4Oa9KPRWA56WkVgv6WQo
	 UPgpHZXgK34c9PWdlnbdypIMSc/b+gDJVZz5ypcNOUSxF+kiEljP2brmW/n+SdpBnn
	 ltSRwHsDAhxxzXUnFfdKdOlzHtZp33IDIvYQPcNarrF3Ao2BzxVDf9rPrNCQvfgEUo
	 gijoi6rWbM2MmyTDO5gXSdy0Ko2sCtfr0UXeNqswpy7rq1PrfnzrbsCD+i7bIZvVUY
	 c7yJscn4DOOzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42ACE6086C;
	Tue, 20 May 2025 17:07:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id F3E76D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 17:07:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DA0C060787
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 17:07:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ts2BEKwES_N8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 17:07:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::430; helo=mail-pf1-x430.google.com;
 envelope-from=krikku@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0136560765
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0136560765
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0136560765
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 17:07:05 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id
 d2e1a72fcca58-7399838db7fso5560636b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 10:07:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747760825; x=1748365625;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=lFe5CRPmw2G3mler/gdvGoz6GknCu8ATHweIAPxKe4c=;
 b=sMxB0lAWwrlL5nm0ZlOkF+vmim5qmNdwidjlItJ+DOuw/G5zvbzHH25DwuqV5IBL/b
 Hr1Z8tW8yTqBTeOlDJIRxX6HYazwzcU08PbFtVwCQCqif+H1QrxeWVW0ZHlivIgrqd9u
 EvBj0P9eCnUnzFOHX0WNsJ4KqJAFMAFt6drPVNSxjIbndqvKOIUv+N7rJZb5AWRVr1I9
 Qzba3i6jzdyFWt7hiWTV4pjUFO4mZtNKJ4ZXQ4ZZYLz8zv50GjNSxvzCQOypbLk6vaYj
 qnx0XndZvYaEh/RHw4/WiCGdJ63BxxxM40Yk4J/iDHn/hEl4JJHW+vp+zwsLNGlnb7A7
 OEPg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV1x9eHIFn8dSgY5cFAgjm47cPY4oZgEU60QT0gkLWHheojdpGgb4RewT4mNWdhH3HB4jGLu2Yf2SPXFIskXI0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YytCWoW/HNYssVTr4bl15LSC8d8xg0nqm77aj/fUXHOrJXlvTzz
 ie95Cl54kt+h1O7MVkWkoRHY4FbtbLM0syzdlr1gxPyts6ocYR9sOH1F
X-Gm-Gg: ASbGncs4UOjNLNhxWgxYO0BGckpu24P7svD/772RRVA4ACq2gQfolyhW1YoETEH2wIX
 U5MZ5bjufSvUqf2cnk7JFeoCMt/Koy4m+C3/koXBfimDhEZL5gg0J82Z04KfEvFiUJHmaTWNas7
 IjQX5x1EDO4FeBfQ3rQiR/S55tN8CEsd3R5DWgbTvqBE+w9dKHA6WREcVOXHcEv87l7MPxo6nPC
 gtwmvWG5gtJlCatjMIlc2AZStLub2I4dikWH//Tg+dJ8Vi0j6KHFAsb3V/jdbrjc8KGdqX52ECM
 RmiSOBt2qWIkGnYc2vHsg3FGTPIegJ51oFVqxRnAjrFoltlBb7Jg+x2jPOmP6Q1J
X-Google-Smtp-Source: AGHT+IHgjcVaeBnCZoqq3puUxQXrL2nPm8ZKUDvBc5s5+4N3RXxIKz0JYFs6mRVTwuSqrbT42S4Ziw==
X-Received: by 2002:a05:6a00:4d9a:b0:742:aed4:3e1 with SMTP id
 d2e1a72fcca58-742aed4044fmr16451127b3a.2.1747760825066; 
 Tue, 20 May 2025 10:07:05 -0700 (PDT)
Received: from krishna-laptop.localdomain ([134.238.240.34])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-742a96e2765sm8466906b3a.19.2025.05.20.10.07.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 May 2025 10:07:04 -0700 (PDT)
From: Krishna Kumar <krikku@gmail.com>
To: netdev@vger.kernel.org
Cc: davem@davemloft.net, horms@kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch, kuba@kernel.org,
 pabeni@redhat.com, sridhar.samudrala@intel.com, ahmed.zaki@intel.com,
 krishna.ku@flipkart.com
Date: Tue, 20 May 2025 22:36:56 +0530
Message-ID: <20250520170656.2875753-1-krikku@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1747760825; x=1748365625; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=lFe5CRPmw2G3mler/gdvGoz6GknCu8ATHweIAPxKe4c=;
 b=CGMcnCMHYF0SuVcQxq/FnzyQcDpbIdbXVsTtblG3jEeMsQrLaR75VmNIiFax+S78pQ
 H1kGkJFqvUFIHEdsr8PzU0s46Ovh1DVJDvc83MyPLLWLcq7hDvy3AIcjiu4AY2uriAwd
 3Ko3jnBCt4C+88qt/sY7Cc5x7ddC30kIivL3Bz1wbmThO6gF64rhxQZ+MngZ1Rc/ELRj
 DQ5j2cvOjpurhg2gqRMQWQsHRFwyVMWGTulYFv/lpCiuvSwNg1O7ofW7snQPnRHbKsLc
 S/cp47NzCuI1SB/FQiHNLJnAZmkoq9N9zA1V8RRk34+MYP73X2W5okpcC/EaUn4FgM7/
 szTg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=CGMcnCMH
Subject: [Intel-wired-lan] [PATCH v2 net] net: ice: Perform accurate aRFS
 flow match
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

This patch fixes an issue seen in a large-scale deployment under heavy
incoming pkts where the aRFS flow wrongly matches a flow and reprograms the
NIC with wrong settings. That mis-steering causes RX-path latency spikes
and noisy neighbor effects when many connections collide on the same
hash (some of our production servers have 20-30K connections).

set_rps_cpu() calls ndo_rx_flow_steer() with flow_id that is calculated by
hashing the skb sized by the per rx-queue table size. This results in
multiple connections (even across different rx-queues) getting the same
hash value. The driver steer function modifies the wrong flow to use this
rx-queue, e.g.: Flow#1 is first added:
    Flow#1:  <ip1, port1, ip2, port2>, Hash 'h', q#10

Later when a new flow needs to be added:
	    Flow#2:  <ip3, port3, ip4, port4>, Hash 'h', q#20

The driver finds the hash 'h' from Flow#1 and updates it to use q#20. This
results in both flows getting un-optimized - packets for Flow#1 goes to
q#20, and then reprogrammed back to q#10 later and so on; and Flow #2
programming is never done as Flow#1 is matched first for all misses. Many
flows may wrongly share the same hash and reprogram rules of the original
flow each with their own q#.

Tested on two 144-core servers with 16K netperf sessions for 180s. Netperf
clients are pinned to cores 0-71 sequentially (so that wrong packets on q#s
72-143 can be measured). IRQs are set 1:1 for queues -> CPUs, enable XPS,
enable aRFS (global value is 144 * rps_flow_cnt).

Test notes about results from ice_rx_flow_steer():
---------------------------------------------------
1. "Skip:" counter increments here:
    if (fltr_info->q_index == rxq_idx ||
	arfs_entry->fltr_state != ICE_ARFS_ACTIVE)
	    goto out;
2. "Add:" counter increments here:
    ret = arfs_entry->fltr_info.fltr_id;
    INIT_HLIST_NODE(&arfs_entry->list_entry);
3. "Update:" counter increments here:
    /* update the queue to forward to on an already existing flow */

Runtime comparison: original code vs with the patch for different
rps_flow_cnt values.

+-------------------------------+--------------+--------------+
| rps_flow_cnt                  |      512     |    2048      |
+-------------------------------+--------------+--------------+
| Ratio of Pkts on Good:Bad q's | 214 vs 822K  | 1.1M vs 980K |
| Avoid wrong aRFS programming  | 0 vs 310K    | 0 vs 30K     |
| CPU User                      | 216 vs 183   | 216 vs 206   |
| CPU System                    | 1441 vs 1171 | 1447 vs 1320 |
| CPU Softirq                   | 1245 vs 920  | 1238 vs 961  |
| CPU Total                     | 29 vs 22.7   | 29 vs 24.9   |
| aRFS Update                   | 533K vs 59   | 521K vs 32   |
| aRFS Skip                     | 82M vs 77M   | 7.2M vs 4.5M |
+-------------------------------+--------------+--------------+

A separate TCP_STREAM and TCP_RR with 1,4,8,16,64,128,256,512 connections
showed no performance degradation.

Some points on the patch/aRFS behavior:
1. Enabling full tuple matching ensures flows are always correctly matched,
   even with smaller hash sizes.
2. 5-6% drop in CPU utilization as the packets arrive at the correct CPUs
   and fewer calls to driver for programming on misses.
3. Larger hash tables reduces mis-steering due to more unique flow hashes,
   but still has clashes. However, with larger per-device rps_flow_cnt, old
   flows take more time to expire and new aRFS flows cannot be added if h/w
   limits are reached (rps_may_expire_flow() succeeds when 10*rps_flow_cnt
   pkts have been processed by this cpu that are not part of the flow).

Changes since v1:
  - Added "Fixes:" tag and documented return values.
  - Added @ for function parameters.
  - Updated subject line to denote target tree (net)

Fixes: 28bf26724fdb0 ("ice: Implement aRFS")
Signed-off-by: Krishna Kumar <krikku@gmail.com>
---
 drivers/net/ethernet/intel/ice/ice_arfs.c | 49 +++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.c b/drivers/net/ethernet/intel/ice/ice_arfs.c
index 2bc5c7f59844..c957d0a62d25 100644
--- a/drivers/net/ethernet/intel/ice/ice_arfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_arfs.c
@@ -377,6 +377,51 @@ ice_arfs_is_perfect_flow_set(struct ice_hw *hw, __be16 l3_proto, u8 l4_proto)
 	return false;
 }
 
+/**
+ * ice_arfs_cmp - Check if aRFS filter matches this flow.
+ * @fltr_info: filter info of the saved ARFS entry.
+ * @fk: flow dissector keys.
+ * @n_proto:  One of htons(ETH_P_IP) or htons(ETH_P_IPV6).
+ * @ip_proto: One of IPPROTO_TCP or IPPROTO_UDP.
+ *
+ * Since this function assumes limited values for n_proto and ip_proto, it
+ * is meant to be called only from ice_rx_flow_steer().
+ *
+ * Return:
+ * * true	- fltr_info refers to the same flow as fk.
+ * * false	- fltr_info and fk refer to different flows.
+ */
+static bool
+ice_arfs_cmp(const struct ice_fdir_fltr *fltr_info, const struct flow_keys *fk,
+	     __be16 n_proto, u8 ip_proto)
+{
+	/*
+	 * Determine if the filter is for IPv4 or IPv6 based on flow_type,
+	 * which is one of ICE_FLTR_PTYPE_NONF_IPV{4,6}_{TCP,UDP}.
+	 */
+	bool is_v4 = fltr_info->flow_type == ICE_FLTR_PTYPE_NONF_IPV4_TCP ||
+		     fltr_info->flow_type == ICE_FLTR_PTYPE_NONF_IPV4_UDP;
+
+	/* Following checks are arranged in the quickest and most discriminative
+	 * fields first for early failure.
+	 */
+	if (is_v4)
+		return n_proto == htons(ETH_P_IP) &&
+			fltr_info->ip.v4.src_port == fk->ports.src &&
+			fltr_info->ip.v4.dst_port == fk->ports.dst &&
+			fltr_info->ip.v4.src_ip == fk->addrs.v4addrs.src &&
+			fltr_info->ip.v4.dst_ip == fk->addrs.v4addrs.dst &&
+			fltr_info->ip.v4.proto == ip_proto;
+
+	return fltr_info->ip.v6.src_port == fk->ports.src &&
+		fltr_info->ip.v6.dst_port == fk->ports.dst &&
+		fltr_info->ip.v6.proto == ip_proto &&
+		!memcmp(&fltr_info->ip.v6.src_ip, &fk->addrs.v6addrs.src,
+			sizeof(struct in6_addr)) &&
+		!memcmp(&fltr_info->ip.v6.dst_ip, &fk->addrs.v6addrs.dst,
+			sizeof(struct in6_addr));
+}
+
 /**
  * ice_rx_flow_steer - steer the Rx flow to where application is being run
  * @netdev: ptr to the netdev being adjusted
@@ -448,6 +493,10 @@ ice_rx_flow_steer(struct net_device *netdev, const struct sk_buff *skb,
 			continue;
 
 		fltr_info = &arfs_entry->fltr_info;
+
+		if (!ice_arfs_cmp(fltr_info, &fk, n_proto, ip_proto))
+			continue;
+
 		ret = fltr_info->fltr_id;
 
 		if (fltr_info->q_index == rxq_idx ||
-- 
2.39.5

