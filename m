Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BB560CE4D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Oct 2022 16:05:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9B26400BA;
	Tue, 25 Oct 2022 14:05:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9B26400BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666706703;
	bh=kg7Mmj+gz0V7cN0m2ZcReaLy81rUOGkv6l4lscB7B6c=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=aCj62qsFYgsxhrg0zRd0+14rsYn39ake5dFTJ+9250XLH06ZCGX6nSgZ+arq3Bisa
	 n+VjPeDlKgk4XNjYGWwIvNrlkHOLy5sHsB4xWSAXyQ+tDABg0i8dcoXu1I5UgXLD24
	 Xz4g0HSu3d4Wjstb9fBDF4Np4sX8IprmMpsxPLUZBrP+UVhZizzfcpZcCoF5GMLNVX
	 UNuuwqBcJt08EMMYfftVU4mOncqXjPnKO31OEraR5oumNfVZ4nDzAkGHID2q8v/+Ei
	 8u15oaEU6Mp+WMMiEPGeOYJKIWWytTVYcYn7bcDcy59a2E3IsmmfuJ251IO5gs3PQH
	 +lZtEAuepm1mw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Aku7_lPy-CfZ; Tue, 25 Oct 2022 14:05:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF43D40067;
	Tue, 25 Oct 2022 14:05:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF43D40067
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E81B1BF5E6
 for <intel-wired-lan@osuosl.org>; Tue, 25 Oct 2022 14:04:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 380DF400B4
 for <intel-wired-lan@osuosl.org>; Tue, 25 Oct 2022 14:04:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 380DF400B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gAJR8qMmXNv9 for <intel-wired-lan@osuosl.org>;
 Tue, 25 Oct 2022 14:04:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F59E40067
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5F59E40067
 for <intel-wired-lan@osuosl.org>; Tue, 25 Oct 2022 14:04:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="305294970"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="305294970"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 07:04:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="664917445"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="664917445"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by orsmga001.jf.intel.com with ESMTP; 25 Oct 2022 07:04:46 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 25 Oct 2022 22:03:07 +0800
Message-Id: <20221025140307.2330-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666706693; x=1698242693;
 h=from:to:cc:subject:date:message-id;
 bh=vZLSkJVvaMu6IyY7LCp7l+dxLo4G8RCCcaWC/QaezZ0=;
 b=ZCsEu7ELUTtcQUYDIncnjA+h42ZaXQuyDVCP+orCZ6v6UuQMSY9JcQZY
 unJNxOZXoJQDOKAehNkXwRb73vnUFETDgriYQuhB4461fvN2YqZqgTKym
 xhHG8QTQepkeWlmjtzN0RoxwSs6G9ffbptMrg9MV0MMDNCgrTCV32VjIV
 xeTHJTQ4eADvJNfoI5A+fw9X9G3b5b6BD7cjKSzU8wZIUPjDbp2uYOzbc
 3ck3CnMjJZgTYMy76LjLg96EwguyPrhNbAGlq3kT/GDeDVqmPMRB7sMz1
 45qBN7goBU9JhUTs0zfAdIJiQSamKKRKnN9IyLH4EfWnR+LLhVQn3UGHD
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZCsEu7EL
Subject: [Intel-wired-lan] [PATCH v2] igc: Enhance Qbv scheduling by using
 first flag bit
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
Cc: pmenzel@molgen.mpg.de, muhammad.husaini.zulkifli@intel.com,
 mallikarjuna.chilakala@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Vinicius Costa Gomes <vinicius.gomes@intel.com>

The I225 hardware has a limitation that packets can only be scheduled
in the [0, cycle-time] interval. So, scheduling a packet to the start
of the next cycle doesn't usually work.

To overcome this, we use the Transmit Descriptor first flag to indicates
that a packet should be the first packet (from a queue) in a cycle
according to the section 7.5.2.9.3.4 The First Packet on Each QBV Cycle
in Intel Discrete I225/6 User Manual.

But this only works if there was any packet from that queue during the
current cycle, to avoid this issue, we issue an empty packet if that's
not the case. Also require one more descriptor to be available, to take
into account the empty packet that might be issued.

Test Setup:

Talker: Use l2_tai to generate the launchtime into packet load.

Listener: Use timedump.c to compute the delta between packet arrival
and LaunchTime packet payload.

Test Result:

Before:

1666000610127300000,1666000610127300096,96,621273
1666000610127400000,1666000610127400192,192,621274
1666000610127500000,1666000610127500032,32,621275
1666000610127600000,1666000610127600128,128,621276
1666000610127700000,1666000610127700224,224,621277
1666000610127800000,1666000610127800064,64,621278
1666000610127900000,1666000610127900160,160,621279
1666000610128000000,1666000610128000000,0,621280
1666000610128100000,1666000610128100096,96,621281
1666000610128200000,1666000610128200192,192,621282
1666000610128300000,1666000610128300032,32,621283
1666000610128400000,1666000610128301056,-98944,621284
1666000610128500000,1666000610128302080,-197920,621285
1666000610128600000,1666000610128302848,-297152,621286
1666000610128700000,1666000610128303872,-396128,621287
1666000610128800000,1666000610128304896,-495104,621288
1666000610128900000,1666000610128305664,-594336,621289
1666000610129000000,1666000610128306688,-693312,621290
1666000610129100000,1666000610128307712,-792288,621291
1666000610129200000,1666000610128308480,-891520,621292
1666000610129300000,1666000610128309504,-990496,621293
1666000610129400000,1666000610128310528,-1089472,621294
1666000610129500000,1666000610128311296,-1188704,621295
1666000610129600000,1666000610128312320,-1287680,621296
1666000610129700000,1666000610128313344,-1386656,621297
1666000610129800000,1666000610128314112,-1485888,621298
1666000610129900000,1666000610128315136,-1584864,621299
1666000610130000000,1666000610128316160,-1683840,621300
1666000610130100000,1666000610128316928,-1783072,621301
1666000610130200000,1666000610128317952,-1882048,621302
1666000610130300000,1666000610128318976,-1981024,621303
1666000610130400000,1666000610128319744,-2080256,621304
1666000610130500000,1666000610128320768,-2179232,621305
1666000610130600000,1666000610128321792,-2278208,621306
1666000610130700000,1666000610128322816,-2377184,621307
1666000610130800000,1666000610128323584,-2476416,621308
1666000610130900000,1666000610128324608,-2575392,621309
1666000610131000000,1666000610128325632,-2674368,621310
1666000610131100000,1666000610128326400,-2773600,621311
1666000610131200000,1666000610128327424,-2872576,621312
1666000610131300000,1666000610128328448,-2971552,621313
1666000610131400000,1666000610128329216,-3070784,621314
1666000610131500000,1666000610131500032,32,621315
1666000610131600000,1666000610131600128,128,621316
1666000610131700000,1666000610131700224,224,621317

After:

1666073510646200000,1666073510646200064,64,2676462
1666073510646300000,1666073510646300160,160,2676463
1666073510646400000,1666073510646400256,256,2676464
1666073510646500000,1666073510646500096,96,2676465
1666073510646600000,1666073510646600192,192,2676466
1666073510646700000,1666073510646700032,32,2676467
1666073510646800000,1666073510646800128,128,2676468
1666073510646900000,1666073510646900224,224,2676469
1666073510647000000,1666073510647000064,64,2676470
1666073510647100000,1666073510647100160,160,2676471
1666073510647200000,1666073510647200256,256,2676472
1666073510647300000,1666073510647300096,96,2676473
1666073510647400000,1666073510647400192,192,2676474
1666073510647500000,1666073510647500032,32,2676475
1666073510647600000,1666073510647600128,128,2676476
1666073510647700000,1666073510647700224,224,2676477
1666073510647800000,1666073510647800064,64,2676478
1666073510647900000,1666073510647900160,160,2676479
1666073510648000000,1666073510648000000,0,2676480
1666073510648100000,1666073510648100096,96,2676481
1666073510648200000,1666073510648200192,192,2676482
1666073510648300000,1666073510648300032,32,2676483
1666073510648400000,1666073510648400128,128,2676484
1666073510648500000,1666073510648500224,224,2676485
1666073510648600000,1666073510648600064,64,2676486
1666073510648700000,1666073510648700160,160,2676487
1666073510648800000,1666073510648800000,0,2676488
1666073510648900000,1666073510648900096,96,2676489
1666073510649000000,1666073510649000192,192,2676490
1666073510649100000,1666073510649100032,32,2676491
1666073510649200000,1666073510649200128,128,2676492
1666073510649300000,1666073510649300224,224,2676493
1666073510649400000,1666073510649400064,64,2676494
1666073510649500000,1666073510649500160,160,2676495
1666073510649600000,1666073510649600000,0,2676496
1666073510649700000,1666073510649700096,96,2676497
1666073510649800000,1666073510649800192,192,2676498
1666073510649900000,1666073510649900032,32,2676499
1666073510650000000,1666073510650000128,128,2676500

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Co-developed-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
Signed-off-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
Co-developed-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Signed-off-by: Malli C <mallikarjuna.chilakala@intel.com>
Reported-by: kernel test robot <lkp@intel.com>

---
V1 -> V2: Fix error when compile with W=1 and rename the title/summary
---
---
 drivers/net/ethernet/intel/igc/igc.h         |   2 +
 drivers/net/ethernet/intel/igc/igc_defines.h |   2 +
 drivers/net/ethernet/intel/igc/igc_main.c    | 185 ++++++++++++++++---
 3 files changed, 161 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 1e7e7071f64d..66a57636d329 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -94,6 +94,8 @@ struct igc_ring {
 	u8 queue_index;                 /* logical index of the ring*/
 	u8 reg_idx;                     /* physical index of the ring */
 	bool launchtime_enable;         /* true if LaunchTime is enabled */
+	ktime_t last_tx_cycle;          /* end of the cycle with a launchtime transmission */
+	ktime_t last_ff_cycle;          /* Last cycle with an active first flag */

 	u32 start_time;
 	u32 end_time;
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index f7311aeb293b..a7b22639cfcd 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -321,6 +321,8 @@
 #define IGC_ADVTXD_L4LEN_SHIFT	8  /* Adv ctxt L4LEN shift */
 #define IGC_ADVTXD_MSS_SHIFT	16 /* Adv ctxt MSS shift */

+#define IGC_ADVTXD_TSN_CNTX_FIRST	0x00000080
+
 /* Transmit Control */
 #define IGC_TCTL_EN		0x00000002 /* enable Tx */
 #define IGC_TCTL_PSP		0x00000008 /* pad short packets */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 671255edf3c2..4c3beb425ae1 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1000,31 +1000,126 @@ static int igc_write_mc_addr_list(struct net_device *netdev)
 	return netdev_mc_count(netdev);
 }

-static __le32 igc_tx_launchtime(struct igc_adapter *adapter, ktime_t txtime)
+static __le32 igc_tx_launchtime(struct igc_ring *ring, ktime_t txtime,
+				bool *first_flag, bool *insert_empty)
 {
+	struct igc_adapter *adapter = netdev_priv(ring->netdev);
 	ktime_t cycle_time = adapter->cycle_time;
 	ktime_t base_time = adapter->base_time;
+	ktime_t now = ktime_get_clocktai();
+	ktime_t baset_est, end_of_cycle;
 	u32 launchtime;
+	s64 n;

-	/* FIXME: when using ETF together with taprio, we may have a
-	 * case where 'delta' is larger than the cycle_time, this may
-	 * cause problems if we don't read the current value of
-	 * IGC_BASET, as the value writen into the launchtime
-	 * descriptor field may be misinterpreted.
+	n = div64_s64(ktime_sub_ns(now, base_time), cycle_time);
+
+	baset_est = ktime_add_ns(base_time, cycle_time * (n));
+	end_of_cycle = ktime_add_ns(baset_est, cycle_time);
+
+	if (ktime_compare(txtime, end_of_cycle) >= 0) {
+		if (baset_est != ring->last_ff_cycle) {
+			*first_flag = true;
+			ring->last_ff_cycle = baset_est;
+
+			if (ktime_compare(txtime, ring->last_tx_cycle) > 0)
+				*insert_empty = true;
+		}
+	}
+
+	/* Introducing a window at end of cycle on which packets
+	 * potentially not honor launchtime. Window of 5us chosen
+	 * considering software update the tail pointer and packets
+	 * are dma'ed to packet buffer.
 	 */
-	div_s64_rem(ktime_sub_ns(txtime, base_time), cycle_time, &launchtime);
+	if ((ktime_sub_ns(end_of_cycle, now) < 5 * NSEC_PER_USEC)) {
+		netdev_warn(ring->netdev, "Packet with txtime=%llu may not be honoured\n",
+			    txtime);
+	}
+
+	ring->last_tx_cycle = end_of_cycle;
+
+	launchtime = ktime_sub_ns(txtime, baset_est);
+	if (launchtime > 0)
+		div_s64_rem(launchtime, cycle_time, &launchtime);
+	else
+		launchtime = 0;

 	return cpu_to_le32(launchtime);
 }

+static int igc_init_empty_frame(struct igc_ring *ring,
+				struct igc_tx_buffer *buffer,
+				struct sk_buff *skb)
+{
+	dma_addr_t dma;
+	unsigned int size;
+
+	size = skb_headlen(skb);
+
+	dma = dma_map_single(ring->dev, skb->data, size, DMA_TO_DEVICE);
+	if (dma_mapping_error(ring->dev, dma)) {
+		netdev_err_once(ring->netdev, "Failed to map DMA for TX\n");
+		return -ENOMEM;
+	}
+
+	buffer->skb = skb;
+	buffer->protocol = 0;
+	buffer->bytecount = skb->len;
+	buffer->gso_segs = 1;
+	buffer->time_stamp = jiffies;
+	dma_unmap_len_set(buffer, len, skb->len);
+	dma_unmap_addr_set(buffer, dma, dma);
+
+	return 0;
+}
+
+static int igc_init_tx_empty_descriptor(struct igc_ring *ring,
+					struct sk_buff *skb,
+					struct igc_tx_buffer *first)
+{
+	union igc_adv_tx_desc *desc;
+	u32 cmd_type, olinfo_status;
+	int err;
+
+	if (!igc_desc_unused(ring))
+		return -EBUSY;
+
+	err = igc_init_empty_frame(ring, first, skb);
+	if (err)
+		return err;
+
+	cmd_type = IGC_ADVTXD_DTYP_DATA | IGC_ADVTXD_DCMD_DEXT |
+		   IGC_ADVTXD_DCMD_IFCS | IGC_TXD_DCMD |
+		   first->bytecount;
+	olinfo_status = first->bytecount << IGC_ADVTXD_PAYLEN_SHIFT;
+
+	desc = IGC_TX_DESC(ring, ring->next_to_use);
+	desc->read.cmd_type_len = cpu_to_le32(cmd_type);
+	desc->read.olinfo_status = cpu_to_le32(olinfo_status);
+	desc->read.buffer_addr = cpu_to_le64(dma_unmap_addr(first, dma));
+
+	netdev_tx_sent_queue(txring_txq(ring), skb->len);
+
+	first->next_to_watch = desc;
+
+	ring->next_to_use++;
+	if (ring->next_to_use == ring->count)
+		ring->next_to_use = 0;
+
+	return 0;
+}
+
+#define IGC_EMPTY_FRAME_SIZE 60
+
 static void igc_tx_ctxtdesc(struct igc_ring *tx_ring,
-			    struct igc_tx_buffer *first,
+			    __le32 launch_time, bool first_flag,
 			    u32 vlan_macip_lens, u32 type_tucmd,
 			    u32 mss_l4len_idx)
 {
 	struct igc_adv_tx_context_desc *context_desc;
-	u16 i = tx_ring->next_to_use;
+	u16 i;

+	i = tx_ring->next_to_use;
 	context_desc = IGC_TX_CTXTDESC(tx_ring, i);

 	i++;
@@ -1037,26 +1132,26 @@ static void igc_tx_ctxtdesc(struct igc_ring *tx_ring,
 	if (test_bit(IGC_RING_FLAG_TX_CTX_IDX, &tx_ring->flags))
 		mss_l4len_idx |= tx_ring->reg_idx << 4;

+	if (first_flag)
+		mss_l4len_idx |= IGC_ADVTXD_TSN_CNTX_FIRST;
+
 	context_desc->vlan_macip_lens	= cpu_to_le32(vlan_macip_lens);
 	context_desc->type_tucmd_mlhl	= cpu_to_le32(type_tucmd);
 	context_desc->mss_l4len_idx	= cpu_to_le32(mss_l4len_idx);
+	context_desc->launch_time	= launch_time;
+}

-	/* We assume there is always a valid Tx time available. Invalid times
-	 * should have been handled by the upper layers.
-	 */
-	if (tx_ring->launchtime_enable) {
-		struct igc_adapter *adapter = netdev_priv(tx_ring->netdev);
-		ktime_t txtime = first->skb->tstamp;
+static inline bool igc_ipv6_csum_is_sctp(struct sk_buff *skb)
+{
+	unsigned int offset = 0;

-		skb_txtime_consumed(first->skb);
-		context_desc->launch_time = igc_tx_launchtime(adapter,
-							      txtime);
-	} else {
-		context_desc->launch_time = 0;
-	}
+	ipv6_find_hdr(skb, &offset, IPPROTO_SCTP, NULL, NULL);
+
+	return offset == skb_checksum_start_offset(skb);
 }

-static void igc_tx_csum(struct igc_ring *tx_ring, struct igc_tx_buffer *first)
+static void igc_tx_csum(struct igc_ring *tx_ring, struct igc_tx_buffer *first,
+			__le32 launch_time, bool first_flag)
 {
 	struct sk_buff *skb = first->skb;
 	u32 vlan_macip_lens = 0;
@@ -1096,7 +1191,8 @@ static void igc_tx_csum(struct igc_ring *tx_ring, struct igc_tx_buffer *first)
 	vlan_macip_lens |= skb_network_offset(skb) << IGC_ADVTXD_MACLEN_SHIFT;
 	vlan_macip_lens |= first->tx_flags & IGC_TX_FLAGS_VLAN_MASK;

-	igc_tx_ctxtdesc(tx_ring, first, vlan_macip_lens, type_tucmd, 0);
+	igc_tx_ctxtdesc(tx_ring, launch_time, first_flag,
+			vlan_macip_lens, type_tucmd, 0);
 }

 static int __igc_maybe_stop_tx(struct igc_ring *tx_ring, const u16 size)
@@ -1320,6 +1416,7 @@ static int igc_tx_map(struct igc_ring *tx_ring,

 static int igc_tso(struct igc_ring *tx_ring,
 		   struct igc_tx_buffer *first,
+		   __le32 launch_time, bool first_flag,
 		   u8 *hdr_len)
 {
 	u32 vlan_macip_lens, type_tucmd, mss_l4len_idx;
@@ -1406,8 +1503,8 @@ static int igc_tso(struct igc_ring *tx_ring,
 	vlan_macip_lens |= (ip.hdr - skb->data) << IGC_ADVTXD_MACLEN_SHIFT;
 	vlan_macip_lens |= first->tx_flags & IGC_TX_FLAGS_VLAN_MASK;

-	igc_tx_ctxtdesc(tx_ring, first, vlan_macip_lens,
-			type_tucmd, mss_l4len_idx);
+	igc_tx_ctxtdesc(tx_ring, launch_time, first_flag,
+			vlan_macip_lens, type_tucmd, mss_l4len_idx);

 	return 1;
 }
@@ -1415,11 +1512,14 @@ static int igc_tso(struct igc_ring *tx_ring,
 static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 				       struct igc_ring *tx_ring)
 {
+	bool first_flag = false, insert_empty = false;
 	u16 count = TXD_USE_COUNT(skb_headlen(skb));
 	__be16 protocol = vlan_get_protocol(skb);
 	struct igc_tx_buffer *first;
+	__le32 launch_time = 0;
 	u32 tx_flags = 0;
 	unsigned short f;
+	ktime_t txtime;
 	u8 hdr_len = 0;
 	int tso = 0;

@@ -1433,11 +1533,40 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 		count += TXD_USE_COUNT(skb_frag_size(
 						&skb_shinfo(skb)->frags[f]));

-	if (igc_maybe_stop_tx(tx_ring, count + 3)) {
+	if (igc_maybe_stop_tx(tx_ring, count + 5)) {
 		/* this is a hard error */
 		return NETDEV_TX_BUSY;
 	}

+	if (!tx_ring->launchtime_enable)
+		goto done;
+
+	txtime = skb->tstamp;
+	skb->tstamp = ktime_set(0, 0);
+	launch_time = igc_tx_launchtime(tx_ring, txtime, &first_flag, &insert_empty);
+
+	if (insert_empty) {
+		struct igc_tx_buffer *empty_info;
+		struct sk_buff *empty;
+		void *data;
+
+		empty_info = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
+		empty = alloc_skb(IGC_EMPTY_FRAME_SIZE, GFP_ATOMIC);
+		if (!empty)
+			goto done;
+
+		data = skb_put(empty, IGC_EMPTY_FRAME_SIZE);
+		memset(data, 0, IGC_EMPTY_FRAME_SIZE);
+
+		igc_tx_ctxtdesc(tx_ring, 0, false, 0, 0, 0);
+
+		if (igc_init_tx_empty_descriptor(tx_ring,
+						 empty,
+						 empty_info) < 0)
+			dev_kfree_skb_any(empty);
+	}
+
+done:
 	/* record the location of the first descriptor for this packet */
 	first = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
 	first->type = IGC_TX_BUFFER_TYPE_SKB;
@@ -1474,11 +1603,11 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 	first->tx_flags = tx_flags;
 	first->protocol = protocol;

-	tso = igc_tso(tx_ring, first, &hdr_len);
+	tso = igc_tso(tx_ring, first, launch_time, first_flag, &hdr_len);
 	if (tso < 0)
 		goto out_drop;
 	else if (!tso)
-		igc_tx_csum(tx_ring, first);
+		igc_tx_csum(tx_ring, first, launch_time, first_flag);

 	igc_tx_map(tx_ring, first, hdr_len);

--
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
