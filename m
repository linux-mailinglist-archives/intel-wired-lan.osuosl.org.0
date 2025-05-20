Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B8240ABDE89
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 17:13:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B07B409BF;
	Tue, 20 May 2025 15:13:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z3a8rON2x9Ib; Tue, 20 May 2025 15:13:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 717F040AE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747754001;
	bh=8Zo89Uh65y1W7p51jiseNB1QHRLEnuIdeBuM916/T1I=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=h/I/KhblTR2hb/bABLfx5nRUMCP7S+tJJDW2DxLwIt4yn2XRcfBu1pVIwhThLiweR
	 O6gsxQyBZRv3G2cAh9s+aJy62dXM2pJSld1cdy1mGdA32L5p1WYhuamv0teqNCCPA/
	 eoZIy4n2M4mXo4DEn4Y2VgtRmDV4LpUK37NtvGRu97jpAqpBz1kYxfYrGowEPP2GXI
	 gDUnTJN5tcSmtRrIg7T9hYzRwxQNJG/3jgAb3yAV8+P4oi6t6/tiGjssxn5nyEdFSW
	 WvOr470LsVoVJlI+H0QuxbA8AO4LF6fBS4XOsl8Xxl5goZI93frq3WyCWjAem3rAZe
	 BWZ/bX2ZWTbCg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 717F040AE2;
	Tue, 20 May 2025 15:13:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E3BA193
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 05:02:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8495C40022
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 05:02:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1DEJIuMdg7gq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 05:02:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::630; helo=mail-pl1-x630.google.com;
 envelope-from=krikku@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E9B0B40212
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E9B0B40212
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E9B0B40212
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 05:02:13 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id
 d9443c01a7336-2327aa24b25so4830715ad.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 22:02:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747717333; x=1748322133;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=8Zo89Uh65y1W7p51jiseNB1QHRLEnuIdeBuM916/T1I=;
 b=f7z/d3tTa4+ttYWPlWxgkgBDF2z53Y4ESV/+e5nMO0KkjBqyq0IfL8GUXUQ4new3Y2
 LvEk3e9bKEEZ6h9FvtYGxo69LcVeym8JdmNaEybgWRbO40lwO4f88JytXbSegL8mGPyb
 vaRtk0K4SJXUc/ER2Ioq4Iybdj11Mblwmdm8JDRN6E6R9vWAepieaupeS27EIA6jDrYL
 o5zsiarlq8uAdB5p91L4N/wjvrcI9Lro3rAMycnMFK57d4h0nxJeHefa7mSj3jMjNl8s
 5oTUOTJ3pVpu6Q4Db5B9oXikH7htTOlxoCbQDKFWmAMNgMKEnaaTo4l3GLoptZ2+5mk5
 ITKw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWDXg0BQH9TQqRTlpojxhIXTPMVRfKtuylGYiJVOExksJv35NA/aXUikzcog9kM74MZ5b/47rna3n3HVoKco/w=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz6MFZ8rs5wt66TA+Dwha+RpKRyYcbYtPgsFH8jz7xSRDcUcolO
 fQuJJF3Y61PxtJ680+7EMdwIDV/tAWMd5oibU2aLhwy89iy1/ksCUWVQ
X-Gm-Gg: ASbGncvTKvUt15LR6H0Td/iKEswlWGnlIRJtsI9gAiIRdflVG+NDLmZcXf1TkETAecm
 yClznYEhviF6ujtOu229661agP0CL2XVEN/5jLFX63vo2fcZKShqs8puq3Mz4GvQtYt1MrZIX2x
 d6JAnzRlATBk0w1KH9FDSTi0j2QasjobXNoLT8fQ6tCjJEjNoVmg/P4uhX8m2reXIhlEcC9EjCA
 x07V6grV7Vkcrs4GeSNXDww3u+cnXXiCMm4egN410PcA6Sd8svmDt2YCuugG6ncdeq0nganFiS0
 Sa0rP9hhOW5tg8etESqSeGM0NKl/9IVCnkWBS7qIYLfOkK5D3BOoAHd+Thcjfmxz
X-Google-Smtp-Source: AGHT+IESXd/dVWiym3PzXMePeQxsJl9U8pCh2WdoEQGkNtnGe2NW3PES8sb+ekfXIVADGkNjqgfurQ==
X-Received: by 2002:a17:902:ea0e:b0:227:ac2a:2472 with SMTP id
 d9443c01a7336-231d43c3e5emr249654225ad.28.1747717333166; 
 Mon, 19 May 2025 22:02:13 -0700 (PDT)
Received: from krishna-laptop.localdomain ([134.238.240.39])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-231d4ebb084sm68322245ad.201.2025.05.19.22.02.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 May 2025 22:02:12 -0700 (PDT)
From: Krishna Kumar <krikku@gmail.com>
To: netdev@vger.kernel.org
Cc: davem@davemloft.net, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch, kuba@kernel.org,
 pabeni@redhat.com, sridhar.samudrala@intel.com, ahmed.zaki@intel.com,
 krishna.ku@flipkart.com
Date: Tue, 20 May 2025 10:32:05 +0530
Message-ID: <20250520050205.2778391-1-krikku@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 20 May 2025 15:13:19 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1747717333; x=1748322133; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=8Zo89Uh65y1W7p51jiseNB1QHRLEnuIdeBuM916/T1I=;
 b=bDRnzTU0hARzB9upjekH/CHXJqEwj4BKB5z77M+rvR5g9V7srs0qRRpm4fAJbBAiM4
 +ukXWAYj9zN5AQy2GZd7B8x/wdoS33COiQP0rma35EnR6Te6hm0JuRgHjxc7JfPLiI4h
 +c5/ZgeGJHi6RYf9T4AQ63cDD9955bfb9R/SHJea68dm3TZgZI6Wltjr011LHguVvNQc
 CZp932Eprkd3/Dj+8pvn8FMBpLwiWKvenjlGifZNitjFhCwLjB4k8Gt35zgFmEiayHUP
 7KtxU6bb6J7RWLjB1GtQbvTGRUOXqqCpVDRvi2R9Ah8ZTa4XwYgDy8E4Df4hf+ypsjBf
 m7pA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=bDRnzTU0
Subject: [Intel-wired-lan] [PATCH] net: ice: Perform accurate aRFS flow match
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
and noisy neighbor effects when many connections collide on the same has
(some of our production servers have 20-30K connections).

set_rps_cpu() calls ndo_rx_flow_steer() with flow_id that is calculated by
hashing the skb sized by the per rx-queue table size. This results in
multiple connections (even across different rx-queues) getting the same
hash value. The driver steer function modifies the wrong flow to use this
rx-queue, e.g.:
    Flow#1 is first added:
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

- **rps_flow_cnt=512**
  - Ratio of packets on good vs bad queues: 214 vs 822,392
  - Avoid updating wrong aRFS filter: 0 vs 310,826
  - CPU: User: 216 vs 183, System: 1441 vs 1171, Softirq: 1245 vs 920
         Total: 29.02 22.74
  - aRFS Add: 6,078,551 vs 6,126,286 Update: 533,973 vs 59
         Skip: 82,219,629 vs 77,088,191, Del: 6,078,409 vs 6,126,139

- **rps_flow_cnt=1024**
  - Ratio of packets on good vs bad queues: 854 vs 1,003,176
  - Avoid updating wrong aRFS filter: 0 vs 50,363
  - CPU: User: 220 vs 206, System: 1460 vs 1322 Softirq: 1216 vs 1027
         Total: 28.96 vs 25.55
  - aRFS Add: 7,000,757 vs 7,499,586 Update: 504,371 vs 33
         Skip: 27,455,269 vs 21,752,043, Del: 7,000,610 vs 7,499,438

- **rps_flow_cnt=2048**
  - Ratio of packets on good vs bad queues: 1,173,756 vs 981,892
  - Avoid updating wrong aRFS filter: 0 vs 30,145
  - CPU: User: 216 vs 206, System: 1447 vs 1320, Softirq: 1238 vs 961
         Total: 29.01 vs 24.87
  - aRFS Add: 7,226,598 vs 6,960,991, Update: 521,264 vs 32
         Skip: 7,236,716 vs 4,584,043, Del: 722,6430 vs 696,0798

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

Signed-off-by: Krishna Kumar <krikku@gmail.com>
---
 drivers/net/ethernet/intel/ice/ice_arfs.c | 45 +++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.c b/drivers/net/ethernet/intel/ice/ice_arfs.c
index 2bc5c7f59844..b36bd189bd64 100644
--- a/drivers/net/ethernet/intel/ice/ice_arfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_arfs.c
@@ -377,6 +377,47 @@ ice_arfs_is_perfect_flow_set(struct ice_hw *hw, __be16 l3_proto, u8 l4_proto)
 	return false;
 }
 
+/**
+ * ice_arfs_cmp - Check if aRFS filter matches this flow.
+ * @fltr_info: filter info of the saved ARFS entry.
+ * @fk: flow dissector keys.
+ * n_proto:  One of htons(IPv4) or htons(IPv6).
+ * ip_proto: One of IPPROTO_TCP or IPPROTO_UDP.
+ *
+ * Since this function assumes limited values for n_proto and ip_proto, it
+ * is meant to be called only from ice_rx_flow_steer().
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
@@ -448,6 +489,10 @@ ice_rx_flow_steer(struct net_device *netdev, const struct sk_buff *skb,
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

