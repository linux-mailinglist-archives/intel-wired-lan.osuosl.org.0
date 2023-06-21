Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D576737E16
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 11:12:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ECB684180B;
	Wed, 21 Jun 2023 09:12:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ECB684180B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687338730;
	bh=j++gF+8xiJyDjMY1bcsaF0LOUZNJkzAne9fkoeEMP2Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=l64ToTPPSrM+dL0du+vXljFw27djW1Dg54e/T0ykK7crCPzUbLmbMkAnkgtuIS6FS
	 zcdXEwSuuBMwa34DQn4dWhpFPiAQfqizsvAWYQnOKqo/W7ifNvlI1ELkGzbVuF3gYc
	 0j1+miCc1a+K+zMqJpdkNG9RQp4RqUWow3Z62Bzzmeumn9WkOnpHKGoRWzWXmYDK8W
	 iOKo2Hcahn68NqxWT+rZNwzBu2gI/7jraK980wQlkk1uyzSlRzdMgwDk9STHCdoZ5f
	 2dWuQIDnFrflJIcOZMetEgHuDvIQRKW7UIaq5sH7HdD6+9Pq3qe9mko7K3lzegku2w
	 C0YEEf23/CCqQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aEZPOaJx7HM3; Wed, 21 Jun 2023 09:12:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72C54417F0;
	Wed, 21 Jun 2023 09:12:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72C54417F0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 86D7C1BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6D1CD83276
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D1CD83276
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jaM96gMPYQPc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 09:11:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ABAFA83281
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ABAFA83281
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="357613728"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="357613728"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 02:11:57 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="748570895"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="748570895"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga001.jf.intel.com with ESMTP; 21 Jun 2023 02:11:54 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Jun 2023 09:11:06 +0000
Message-Id: <20230621091112.44945-10-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230621091112.44945-1-lingyu.liu@intel.com>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687338717; x=1718874717;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8HgpRScVJjnF9verjylbpQNhiCle/CHPqxnMyaXWlM0=;
 b=VD7RpMWhKAaD+U8Elk2Gei+5lxXsuXrtVwFe0Vq7vHgVGX5Z4W2soep1
 vSMBDLB+cKu2dnf04Tt+DbKV5KH5SdSSkgbBcK7l4jRhvb4QsvZfTBGiD
 PX9W76jEgPpq6gAGPm2GntxMvBlgWYrUf2KOCmkrzWGDyguFWIAJKvbp8
 keoRFFfnfCl5g4ESwVhJF4JR+Ujpzkm8puldacxp3G+DQKKMeJsjVP/uD
 aB9Zqq6vQIJnXuvZmprOIj5dSBMvFAxtKYvsyXhy/mAN4dqaOvHWhoMIG
 1YWOCfNPu6DUFimUYz0/Vgvv1NPItJUgxpyItZ1J07s7bgr5dc96fzDae
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VD7RpMWh
Subject: [Intel-wired-lan] [PATCH iwl-next V2 09/15] ice: save and restore
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
