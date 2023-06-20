Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 583C77368A1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 12:01:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E1538418E8;
	Tue, 20 Jun 2023 10:01:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E1538418E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687255296;
	bh=j++gF+8xiJyDjMY1bcsaF0LOUZNJkzAne9fkoeEMP2Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JZExDHlQmO1SNt5cKNumTQLFNQBpxcWHQWxWMp7rNSfdWEDx8RBfg9nAEiVHNJV4P
	 fiyT5GtvULZXenTZQaXoaIPx2GrSRxhh4QZJOQ1uF5ePog5TaWDfRcbOBLLiEi2L1Q
	 xMe3N1ko/8BYErS8hKgIUPf7qL9EaQ5oqycoS5qKuhWH/MSsGQ2mIAAX8HLx2wr7e7
	 hebssERekiperqYAPJh2uQnJp/649XBa0S5OAxENrc4ek522RebMWRmKfMX3B234TM
	 5IqY6auq7NO3ZYogmHzeHj2kGk/7H3Z7/b6orPDXqYmtSTEkAahSOdPGtrE9uxco+/
	 NgzFAy6UQrYCQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s1JqRHtYt6_i; Tue, 20 Jun 2023 10:01:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A76D4099D;
	Tue, 20 Jun 2023 10:01:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A76D4099D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D724D1BF39E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:01:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B02AA6125C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:01:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B02AA6125C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4UJF_1IEBe6T for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 10:01:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDFEF60D59
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EDFEF60D59
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:01:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="358688460"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="358688460"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 03:01:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="664227358"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="664227358"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga003.jf.intel.com with ESMTP; 20 Jun 2023 03:01:02 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Jun 2023 09:59:55 +0000
Message-Id: <20230620100001.5331-10-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230620100001.5331-1-lingyu.liu@intel.com>
References: <20230620100001.5331-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687255265; x=1718791265;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8HgpRScVJjnF9verjylbpQNhiCle/CHPqxnMyaXWlM0=;
 b=Vp3IgzH3hhWfp7HwHmthAOb0xdPvWeRUtgFipsBCqovTEsxZy7ET9slR
 kDLDCUxgfQmzgOG+bnqRtmEfjS4Ihzf4xO37bHidEBdB5AJLpjhdWJfCP
 wt+IGoTUIanrNbsHrD+1DpBXjfuFaQtTRY11fEZmINOYewmKYC7oc1kTW
 6R48EthGFscK0J/63eOOn2oGwX5cDco+ieqY2O4XoVgGKwWPY2T5J82+8
 yHLFSYDEOmXvfBpDL5SHu1NCIViFrqm6xy1OUB/aK6HnL0+L/IzvzOmkc
 m5r4+QpmGELRDuNh6hf0G7LO+ablRBlz600OvjywTi2BpslvJKE5jHl3y
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vp3IgzH3
Subject: [Intel-wired-lan] [PATCH iwl-next V1 09/15] ice: save and restore
 RX queue head
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, phani.r.burra@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Save RX queue head in device migration region and
restore RX queue head at migration dst by writing RX queue context
after replaying virtual channel command VIRTCHNL_OP_CONFIG_VSI_QUEUES.

Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
---
 .../net/ethernet/intel/ice/ice_migration.c    | 98 +++++++++++++++++++
 include/linux/net/intel/ice_migration.h       |  3 +
 2 files changed, 101 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
index 68f9ff843d12..2579bc0bd193 100644
--- a/drivers/net/ethernet/intel/ice/ice_migration.c
+++ b/drivers/net/ethernet/intel/ice/ice_migration.c
@@ -2,6 +2,7 @@
 /* Copyright (C) 2018-2023 Intel Corporation */
 
 #include "ice.h"
+#include "ice_base.h"
 
 struct ice_migration_virtchnl_msg_slot {
 	u32 opcode;
@@ -16,6 +17,8 @@ struct ice_migration_virtchnl_msg_listnode {
 
 struct ice_migration_dev_state {
 	u16 vsi_id;
+	/* next RX desc index to be processed by the device */
+	u16 rx_head[IAVF_QRX_TAIL_MAX];
 } __aligned(8);
 
 /**
@@ -166,6 +169,44 @@ void ice_migration_save_vf_msg(struct ice_vf *vf,
 	}
 }
 
+static int
+ice_migration_save_rx_head(struct ice_vf *vf,
+			   struct ice_migration_dev_state *devstate)
+{
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+	struct ice_pf *pf = vf->pf;
+	struct device *dev;
+	struct ice_hw *hw;
+	int i;
+
+	dev = ice_pf_to_dev(pf);
+	hw = &pf->hw;
+
+	if (!vsi) {
+		dev_err(dev, "VF %d VSI is NULL\n", vf->vf_id);
+		return -EINVAL;
+	}
+	ice_for_each_rxq(vsi, i) {
+		struct ice_rx_ring *rx_ring = vsi->rx_rings[i];
+		struct ice_rlan_ctx rlan_ctx = {0};
+		int status;
+		u16 pf_q;
+
+		if (!test_bit(i, vf->rxq_ena))
+			continue;
+
+		pf_q = rx_ring->reg_idx;
+		status = ice_read_rxq_ctx(hw, &rlan_ctx, pf_q);
+		if (status) {
+			dev_err(dev, "Failed to read RXQ[%d] context, err=%d\n",
+				rx_ring->q_index, status);
+			return -EIO;
+		}
+		devstate->rx_head[i] = rlan_ctx.head;
+	}
+	return 0;
+}
+
 /**
  * ice_migration_save_devstate - save VF msg to migration buffer
  * @opaque: pointer to VF handler in ice vdev
@@ -182,6 +223,7 @@ int ice_migration_save_devstate(void *opaque, u8 *buf, u64 buf_sz)
 	struct device *dev = ice_pf_to_dev(vf->pf);
 	struct ice_migration_dev_state *devstate;
 	u64 total_sz = 0;
+	int ret;
 
 	if (vf == NULL)
 		return -EINVAL;
@@ -196,6 +238,11 @@ int ice_migration_save_devstate(void *opaque, u8 *buf, u64 buf_sz)
 
 	devstate = (struct ice_migration_dev_state *)buf;
 	devstate->vsi_id = vf->vm_vsi_num;
+	ret = ice_migration_save_rx_head(vf, devstate);
+	if (ret) {
+		dev_err(dev, "VF %d failed to save rxq head\n", vf->vf_id);
+		return ret;
+	}
 	buf += sizeof(*devstate);
 
 	list_for_each_entry(msg_listnode, &vf->virtchnl_msg_list, node) {
@@ -231,6 +278,48 @@ int ice_migration_save_devstate(void *opaque, u8 *buf, u64 buf_sz)
 }
 EXPORT_SYMBOL(ice_migration_save_devstate);
 
+static int
+ice_migration_restore_rx_head(struct ice_vf *vf,
+			      struct ice_migration_dev_state *devstate)
+{
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+	struct ice_pf *pf = vf->pf;
+	struct device *dev;
+	int i;
+
+	dev = ice_pf_to_dev(pf);
+
+	if (!vsi) {
+		dev_err(dev, "VF %d VSI is NULL\n", vf->vf_id);
+		return -EINVAL;
+	}
+	ice_for_each_rxq(vsi, i) {
+		struct ice_rx_ring *rx_ring = vsi->rx_rings[i];
+		struct ice_rlan_ctx rlan_ctx = {0};
+		int status;
+		u16 pf_q;
+
+		if (!rx_ring)
+			return -EINVAL;
+		pf_q = rx_ring->reg_idx;
+		status = ice_read_rxq_ctx(&pf->hw, &rlan_ctx, pf_q);
+		if (status) {
+			dev_err(dev, "Failed to read RXQ[%d] context, err=%d\n",
+				rx_ring->q_index, status);
+			return -EIO;
+		}
+
+		rlan_ctx.head = devstate->rx_head[i];
+		status = ice_write_rxq_ctx(&pf->hw, &rlan_ctx, pf_q);
+		if (status) {
+			dev_err(dev, "Failed to set LAN RXQ[%d] context, err=%d\n",
+				rx_ring->q_index, status);
+			return -EIO;
+		}
+	}
+	return 0;
+}
+
 /**
  * ice_migration_restore_devstate - restore device state at dst
  * @opaque: pointer to VF handler in ice vdev
@@ -299,6 +388,15 @@ int ice_migration_restore_devstate(void *opaque, const u8 *buf, u64 buf_sz)
 				msg_slot->opcode);
 			break;
 		}
+		if (msg_slot->opcode == VIRTCHNL_OP_CONFIG_VSI_QUEUES) {
+			ret = ice_migration_restore_rx_head(vf, devstate);
+			if (ret) {
+				dev_err(dev, "VF %d failed to restore rx head\n",
+					vf->vf_id);
+				break;
+			}
+		}
+
 		event.msg_buf = NULL;
 		msg_slot = (struct ice_migration_virtchnl_msg_slot *)
 					((char *)msg_slot + slot_sz);
diff --git a/include/linux/net/intel/ice_migration.h b/include/linux/net/intel/ice_migration.h
index 741a242558a1..68e567791b5c 100644
--- a/include/linux/net/intel/ice_migration.h
+++ b/include/linux/net/intel/ice_migration.h
@@ -5,6 +5,9 @@
 #define _ICE_MIGRATION_H_
 
 #if IS_ENABLED(CONFIG_ICE_VFIO_PCI)
+
+#define IAVF_QRX_TAIL_MAX 256
+
 void *ice_migration_get_vf(struct pci_dev *vf_pdev);
 void ice_migration_put_vf(void *opaque);
 void ice_migration_init_vf(void *opaque);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
