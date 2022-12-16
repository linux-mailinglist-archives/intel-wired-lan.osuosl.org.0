Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 249C464ED73
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Dec 2022 16:06:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 977B6610F1;
	Fri, 16 Dec 2022 15:06:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 977B6610F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671203216;
	bh=s5ZtZ1N6PqgTdQeFhbNXeq5lG6blkU33vN4M7UYlRNQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=LcPoNnFxKOziAoIO43Q0ullVlSFC/H7wRxZywNJhp98hEs1z4m5gIU9+eUAFFfdov
	 5If93hf/86Y8CN40T2RbxRS1NN71gXEhB8dkeKKVyGqtStIxPAJXMg03fEnp5KX3f1
	 Y6W/xPBR4UYxEnkAa72scYai3CZHO/zCb6txv2S5gFLioLUFVwyuEjoKsw64uDz3QW
	 xtiO6diGi4ZmS15Og+Ev85n9zpsItfWyKPLUhkdaBB8OFgTHkR9SOHMW6/62sekB20
	 8yvH5ewUjdvm7jr1qOfiEVidMFK7fH0ZnjhvgyAnVZKPmWwIPDk0OwqKd22Kkm11Iw
	 h+Ca7dAcN9IsQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UEgkCceu-8oh; Fri, 16 Dec 2022 15:06:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B07D60BD9;
	Fri, 16 Dec 2022 15:06:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B07D60BD9
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3030D1BF342
 for <intel-wired-lan@osuosl.org>; Fri, 16 Dec 2022 15:06:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 173B8404FE
 for <intel-wired-lan@osuosl.org>; Fri, 16 Dec 2022 15:06:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 173B8404FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ig1vJL9x2W2m for <intel-wired-lan@osuosl.org>;
 Fri, 16 Dec 2022 15:06:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 647FA40106
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 647FA40106
 for <intel-wired-lan@osuosl.org>; Fri, 16 Dec 2022 15:06:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="405241077"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="405241077"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 07:06:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="599979417"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="599979417"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by orsmga003.jf.intel.com with ESMTP; 16 Dec 2022 07:06:45 -0800
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org,
	vinicius.gomes@intel.com
Date: Fri, 16 Dec 2022 23:03:57 +0800
Message-Id: <20221216150357.12721-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671203209; x=1702739209;
 h=from:to:cc:subject:date:message-id;
 bh=OeXMTLxw0wWGtT6lAWeksKRNAiSkK/9syol4Gnzq8G8=;
 b=Vi/NYMMPXvzLOhsNohTxCkn7dFceU3dTY1B+8CzTB3OSWvcTHzT1JMSD
 8Grr+fpkl3irStRmr52ostDbeg3dOxiF/PaeT/WpHCPKio+0S/AFPcfAF
 yO1D2BJ/767fAAqxP/LhQE9XF1OGGuO5U9iOlZq/1manFsxzL+XrvO78R
 u5p+J1ukFHJSu8oM4TRDDp9qWZWtXPTmFoh2J/6UbX4TKKagRP56rmo9R
 /CcEgNBjyU7QRr7dWa7bNysRmUqoCgVwMjDRsnvtemUTSLmC4HxZoZKia
 yo3QfdCt8qBdrWPZHelI2+i/EvD+5Qj26E3c1x9FRZQ3rleROfarjFZoz
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vi/NYMMP
Subject: [Intel-wired-lan] [PATCH net-next v2] igc: offload queue max SDU
 from tc-taprio
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, kuba@kernel.org,
 muhammad.husaini.zulkifli@intel.com, davem@davemloft.net,
 tee.min.tan@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tan Tee Min <tee.min.tan@linux.intel.com>

Add support for configuring the max SDU for each Tx queue.
If not specified, keep the default.

All link speeds have been tested with this implementation.
No performance issue observed.

How to test:

1) Configure the tc with max-sdu

tc qdisc replace dev $IFACE parent root handle 100 taprio \
    num_tc 4 \
    map 0 1 2 3 3 3 3 3 3 3 3 3 3 3 3 3 \
    queues 1@0 1@1 1@2 1@3 \
    base-time $BASE \
    sched-entry S 0xF 1000000 \
    max-sdu 1500 1498 0 0 0 0 0 0 0 0 0 0 0 0 0 0 \
    flags 0x2 \
    txtime-delay 0

2) Use network statistic to watch the tx queue packet to see if
packet able to go out or drop.

Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>

---
V1 -> V2: Rework based on Vinicius's comment.
---
---
 drivers/net/ethernet/intel/igc/igc.h      |  1 +
 drivers/net/ethernet/intel/igc/igc_main.c | 44 +++++++++++++++++++++++
 2 files changed, 45 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 5da8d162cd38..ce9e88687d8c 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -99,6 +99,7 @@ struct igc_ring {
 
 	u32 start_time;
 	u32 end_time;
+	u32 max_sdu;
 
 	/* CBS parameters */
 	bool cbs_enable;                /* indicates if CBS is enabled */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index fdb7f0b26ed0..741c938313cf 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1508,6 +1508,7 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 	__le32 launch_time = 0;
 	u32 tx_flags = 0;
 	unsigned short f;
+	u32 max_sdu = 0;
 	ktime_t txtime;
 	u8 hdr_len = 0;
 	int tso = 0;
@@ -1527,6 +1528,14 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 		return NETDEV_TX_BUSY;
 	}
 
+	if (tx_ring->max_sdu > 0) {
+		max_sdu = tx_ring->max_sdu +
+			  (skb_vlan_tagged(skb) ? VLAN_HLEN : 0);
+
+		if (skb->len > max_sdu)
+			goto skb_drop;
+	}
+
 	if (!tx_ring->launchtime_enable)
 		goto done;
 
@@ -1606,6 +1615,12 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 	dev_kfree_skb_any(first->skb);
 	first->skb = NULL;
 
+	return NETDEV_TX_OK;
+
+skb_drop:
+	dev_kfree_skb_any(skb);
+	skb = NULL;
+
 	return NETDEV_TX_OK;
 }
 
@@ -6018,6 +6033,7 @@ static int igc_tsn_clear_schedule(struct igc_adapter *adapter)
 
 		ring->start_time = 0;
 		ring->end_time = NSEC_PER_SEC;
+		ring->max_sdu = 0;
 	}
 
 	return 0;
@@ -6101,6 +6117,16 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 		}
 	}
 
+	for (i = 0; i < adapter->num_tx_queues; i++) {
+		struct igc_ring *ring = adapter->tx_ring[i];
+		struct net_device *dev = adapter->netdev;
+
+		if (qopt->max_sdu[i])
+			ring->max_sdu = qopt->max_sdu[i] + dev->hard_header_len;
+		else
+			ring->max_sdu = 0;
+	}
+
 	return 0;
 }
 
@@ -6188,12 +6214,30 @@ static int igc_tsn_enable_cbs(struct igc_adapter *adapter,
 	return igc_tsn_offload_apply(adapter);
 }
 
+static int igc_tsn_query_caps(struct tc_query_caps_base *base)
+{
+	switch (base->type) {
+	case TC_SETUP_QDISC_TAPRIO: {
+		struct tc_taprio_caps *caps = base->caps;
+
+		caps->supports_queue_max_sdu = true;
+
+		return 0;
+	}
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
 static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
 			void *type_data)
 {
 	struct igc_adapter *adapter = netdev_priv(dev);
 
 	switch (type) {
+	case TC_QUERY_CAPS:
+		return igc_tsn_query_caps(type_data);
+
 	case TC_SETUP_QDISC_TAPRIO:
 		return igc_tsn_enable_qbv_scheduling(adapter, type_data);
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
