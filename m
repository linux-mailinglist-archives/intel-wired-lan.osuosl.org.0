Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 718F9650D02
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Dec 2022 15:07:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA8A84019D;
	Mon, 19 Dec 2022 14:07:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA8A84019D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671458834;
	bh=tBlfCgzzAwJVipG+A6fyoJpc6Hzx69+NFzlJ1J8ZubU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=WfVeoOXEg9jmExz3ZRvHzs8q9/8zMCFntnRvzEr2aEvsTd+0G7IY+tQPybgs8i2WY
	 uLUjM6BiCnPfkb01AZA6WH/aPHdrLnXVU8YdeoOBRpJChwr4/crrbXMoqE6BuOoawt
	 2bwImYbcajyy2vN+5hrNshKPF32wcEGJCRCiMnnSqsc/q6LS8hTseiwANMgrTkZRZX
	 zEa2jjl11vFItJMUNwisL0AGAjpPV/tDE0u8fp1wh9KuN4eMXHcKd8z80ZUa6W0HKu
	 Cz3n+fNhL657Ib3Ubniwz1pyZc3q8iHCnU1+5WsJ5YPcLdr7ELl3jF7tQlSi8YIhbX
	 i/cnv/7/yOTkQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SwfMMqZwUcmB; Mon, 19 Dec 2022 14:07:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A7E84016C;
	Mon, 19 Dec 2022 14:07:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A7E84016C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5DA7D1BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 14:07:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 431EA8144A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 14:07:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 431EA8144A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CSZpHpi0lK6A for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Dec 2022 14:07:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E82B81416
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1E82B81416
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 14:07:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="302779437"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="302779437"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 06:07:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="652703255"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="652703255"
Received: from unknown (HELO fedora.igk.intel.com) ([10.123.220.50])
 by fmsmga007.fm.intel.com with ESMTP; 19 Dec 2022 06:07:03 -0800
From: Kalyan Kodamagula <kalyan.kodamagula@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 19 Dec 2022 15:07:00 +0100
Message-Id: <20221219140700.26496-1-kalyan.kodamagula@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671458826; x=1702994826;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CORlX+336JBXQAeRVtu44KhUDSsh0218DitqUjoeVzg=;
 b=LOccJ2lJFDIWob3v24RIGvc0vaN/FdGKLWanSZRyAsP4hJ6Nz0bBexLQ
 GMIJLueTT+JI9U+AmP13cNsu0vqy+u6hK5K2JQe4QqffAMbLZtmuMrRP1
 soQsS3ww+66OyNI8+WCYapbX9hV8i8eeZ/7qgYRFC+7DKjfWzMiVzlxR9
 i3FPLdRenmPshFJIWReFUND5q/DeXylr9yKNBj1jxB4bBmYRT5h7Pdf/y
 oRc+AdOjCArwTZxll4FoYqEWRIws+RcfMFsxYvkPel1nRgAB0gT5Vvjme
 OxA49U1Cujugyugf5K94rjr41cXS4iZb7EW7JwvgT05Bx0+JdthLrUFwM
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LOccJ2lJ
Subject: [Intel-wired-lan] [PATCH net-next] ice-: Add MDD logging via
 devlink health
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
Cc: Ben Shelton <benjamin.h.shelton@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ben Shelton <benjamin.h.shelton@intel.com>

- Enable DEVLINK_SUPPORT for ice_sw build.

- Add a devlink health reporter for MDD events. The 'dump' handler will
  return the information captured in each call to
  ice_handle_mdd_event(). A device reset (CORER/PFR) will put the
  reporter back in healthy state.

Signed-off-by: Ben Shelton <benjamin.h.shelton@intel.com>
Signed-off-by: Kalyan Kodamagula <kalyan.kodamagula@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  24 +++
 drivers/net/ethernet/intel/ice/ice_devlink.c | 189 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_devlink.h |   6 +
 drivers/net/ethernet/intel/ice/ice_main.c    |  10 +
 4 files changed, 229 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 001500afc4a6..433c514e73fb 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -503,6 +503,29 @@ struct ice_agg_node {
 	u8 valid;
 };
 
+enum ice_mdd_src {
+	ICE_MDD_SRC_NONE = 0,
+	ICE_MDD_SRC_TX_PQM,
+	ICE_MDD_SRC_TX_TCLAN,
+	ICE_MDD_SRC_TX_TDPU,
+	ICE_MDD_SRC_RX
+};
+
+struct ice_mdd_event {
+	struct list_head list;
+	enum ice_mdd_src src;
+	u8 pf_num;
+	u16 vf_num;
+	u8 event;
+	u16 queue;
+};
+
+struct ice_mdd_reporter {
+	struct devlink_health_reporter *reporter;
+	u16 count;
+	struct list_head event_list;
+};
+
 struct ice_pf {
 	struct pci_dev *pdev;
 
@@ -512,6 +535,7 @@ struct ice_pf {
 
 	/* devlink port data */
 	struct devlink_port devlink_port;
+	struct ice_mdd_reporter mdd_reporter;
 
 	/* OS reserved IRQ details */
 	struct msix_entry *msix_entries;
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index e6ec20079ced..79a12cd94110 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -1364,3 +1364,192 @@ void ice_devlink_destroy_regions(struct ice_pf *pf)
 	if (pf->devcaps_region)
 		devlink_region_destroy(pf->devcaps_region);
 }
+
+#define ICE_MDD_SRC_TO_STR(_src) \
+	((_src) == ICE_MDD_SRC_NONE ? "none"            \
+	: (_src) == ICE_MDD_SRC_TX_PQM ? "tx_pqm"      \
+	: (_src) == ICE_MDD_SRC_TX_TCLAN ? "tx_tclan"  \
+	: (_src) == ICE_MDD_SRC_TX_TDPU ? "tx_tdpu"    \
+	: (_src) == ICE_MDD_SRC_RX ? "rx"              \
+	: "invalid")
+
+static int
+ice_mdd_reporter_dump(struct devlink_health_reporter *reporter,
+		      struct devlink_fmsg *fmsg, void *priv_ctx,
+		      struct netlink_ext_ack __always_unused *extack)
+{
+	struct ice_pf *pf = devlink_health_reporter_priv(reporter);
+	struct ice_mdd_reporter *mdd_reporter = &pf->mdd_reporter;
+	struct ice_mdd_event *mdd_event;
+	int err;
+
+	err = devlink_fmsg_u32_pair_put(fmsg, "count",
+					mdd_reporter->count);
+	if (err)
+		return err;
+
+	list_for_each_entry(mdd_event, &mdd_reporter->event_list, list) {
+		char *src;
+
+		err = devlink_fmsg_obj_nest_start(fmsg);
+		if (err)
+			return err;
+
+		src = ICE_MDD_SRC_TO_STR(mdd_event->src);
+
+		err = devlink_fmsg_string_pair_put(fmsg, "src", src);
+		if (err)
+			return err;
+
+		err = devlink_fmsg_u8_pair_put(fmsg, "pf_num",
+					       mdd_event->pf_num);
+		if (err)
+			return err;
+
+		err = devlink_fmsg_u32_pair_put(fmsg, "mdd_vf_num",
+						mdd_event->vf_num);
+		if (err)
+			return err;
+
+		err = devlink_fmsg_u8_pair_put(fmsg, "mdd_event",
+					       mdd_event->event);
+		if (err)
+			return err;
+
+		err = devlink_fmsg_u32_pair_put(fmsg, "mdd_queue",
+						mdd_event->queue);
+		if (err)
+			return err;
+
+		err = devlink_fmsg_obj_nest_end(fmsg);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+static const struct devlink_health_reporter_ops ice_mdd_reporter_ops = {
+	.name = "mdd",
+	.dump = ice_mdd_reporter_dump,
+};
+
+/**
+ * ice_devlink_init_mdd_reporter - Initialize MDD devlink health reporter
+ * @pf: the PF device structure
+ *
+ * Create devlink health reporter used to handle MDD events.
+ */
+void ice_devlink_init_mdd_reporter(struct ice_pf *pf)
+{
+	struct devlink *devlink = priv_to_devlink(pf);
+	struct device *dev = ice_pf_to_dev(pf);
+
+	INIT_LIST_HEAD(&pf->mdd_reporter.event_list);
+
+	pf->mdd_reporter.reporter =
+		devlink_health_reporter_create(devlink,
+					       &ice_mdd_reporter_ops,
+					       0, /* graceful period */
+					       pf); /* private data */
+
+	if (IS_ERR(pf->mdd_reporter.reporter)) {
+		dev_err(dev, "failed to create devlink MDD health reporter");
+	}
+}
+
+/**
+ * ice_devlink_destroy_mdd_reporter - Destroy MDD devlink health reporter
+ * @pf: the PF device structure
+ *
+ * Remove previously created MDD health reporter for this PF.
+ */
+void ice_devlink_destroy_mdd_reporter(struct ice_pf *pf)
+{
+	if (pf->mdd_reporter.reporter)
+		devlink_health_reporter_destroy(pf->mdd_reporter.reporter);
+}
+
+/**
+ * ice_devlink_report_mdd_event - Report an MDD event through devlink health
+ * @pf: the PF device structure
+ * @src: the HW block that was the source of this MDD event
+ * @pf_num: the pf_num on which the MDD event occurred
+ * @vf_num: the vf_num on which the MDD event occurred
+ * @event: the event type of the MDD event
+ * @queue: the queue on which the MDD event occurred
+ *
+ * Report an MDD event that has occurred on this PF.
+ */
+void
+ice_devlink_report_mdd_event(struct ice_pf *pf, enum ice_mdd_src src,
+			     u8 pf_num, u16 vf_num, u8 event, u16 queue)
+{
+	struct ice_mdd_reporter *mdd_reporter = &pf->mdd_reporter;
+	struct ice_mdd_event *mdd_event;
+	int err;
+
+	if (!mdd_reporter->reporter)
+		return;
+
+	mdd_reporter->count++;
+
+	mdd_event = devm_kzalloc(ice_pf_to_dev(pf), sizeof(*mdd_event),
+				 GFP_KERNEL);
+	if (!mdd_event)
+		return;
+
+	mdd_event->src = src;
+	mdd_event->pf_num = pf_num;
+	mdd_event->vf_num = vf_num;
+	mdd_event->event = event;
+	mdd_event->queue = queue;
+
+	list_add_tail(&mdd_event->list, &mdd_reporter->event_list);
+
+	mdd_event = devm_kzalloc(ice_pf_to_dev(pf), sizeof(*mdd_event),
+				 GFP_KERNEL);
+	if (!mdd_event)
+		return;
+
+	mdd_event->src = src;
+	mdd_event->pf_num = pf_num;
+	mdd_event->vf_num = vf_num;
+	mdd_event->event = event;
+	mdd_event->queue = queue;
+
+	list_add_tail(&mdd_event->list, &mdd_reporter->event_list);
+
+	err = devlink_health_report(mdd_reporter->reporter,
+				    "Malicious Driver Detection event\n",
+				    pf);
+	if (err)
+		dev_err(ice_pf_to_dev(pf),
+			"failed to report MDD via devlink health\n");
+}
+
+/**
+ * ice_devlink_clear_after_reset - clear devlink health issues after a reset
+ * @pf: the PF device structure
+ *
+ * Mark the PF in healthy state again after a reset has completed.
+ */
+void ice_devlink_clear_after_reset(struct ice_pf *pf)
+{
+	struct ice_mdd_reporter *mdd_reporter = &pf->mdd_reporter;
+	enum devlink_health_reporter_state new_state =
+		DEVLINK_HEALTH_REPORTER_STATE_HEALTHY;
+	struct ice_mdd_event *mdd_event, *tmp;
+
+	if (!mdd_reporter->reporter)
+		return;
+
+	devlink_health_reporter_state_update(mdd_reporter->reporter,
+					     new_state);
+	pf->mdd_reporter.count = 0;
+
+	list_for_each_entry_safe(mdd_event, tmp, &mdd_reporter->event_list,
+				 list) {
+	list_del(&mdd_event->list);
+	}
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.h b/drivers/net/ethernet/intel/ice/ice_devlink.h
index fe006d9946f8..5632d23b6518 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.h
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.h
@@ -18,4 +18,10 @@ void ice_devlink_destroy_vf_port(struct ice_vf *vf);
 void ice_devlink_init_regions(struct ice_pf *pf);
 void ice_devlink_destroy_regions(struct ice_pf *pf);
 
+void ice_devlink_init_mdd_reporter(struct ice_pf *pf);
+void ice_devlink_destroy_mdd_reporter(struct ice_pf *pf);
+void ice_devlink_report_mdd_event(struct ice_pf *pf, enum ice_mdd_src src,
+				  u8 pf_num, u16 vf_num, u8 event, u16 queue);
+void ice_devlink_clear_after_reset(struct ice_pf *pf);
+
 #endif /* _ICE_DEVLINK_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0f6718719453..a55ce7887c1b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1720,6 +1720,8 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 		if (netif_msg_tx_err(pf))
 			dev_info(dev, "Malicious Driver Detection event %d on TX queue %d PF# %d VF# %d\n",
 				 event, queue, pf_num, vf_num);
+		ice_devlink_report_mdd_event(pf, ICE_MDD_SRC_TX_PQM, pf_num,
+					     vf_num, event, queue);
 		wr32(hw, GL_MDET_TX_PQM, 0xffffffff);
 	}
 
@@ -1737,6 +1739,8 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 		if (netif_msg_tx_err(pf))
 			dev_info(dev, "Malicious Driver Detection event %d on TX queue %d PF# %d VF# %d\n",
 				 event, queue, pf_num, vf_num);
+		ice_devlink_report_mdd_event(pf, ICE_MDD_SRC_TX_TCLAN, pf_num,
+					     vf_num, event, queue);
 		wr32(hw, GL_MDET_TX_TCLAN, 0xffffffff);
 	}
 
@@ -1754,6 +1758,8 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 		if (netif_msg_rx_err(pf))
 			dev_info(dev, "Malicious Driver Detection event %d on RX queue %d PF# %d VF# %d\n",
 				 event, queue, pf_num, vf_num);
+		ice_devlink_report_mdd_event(pf, ICE_MDD_SRC_RX, pf_num,
+					     vf_num, event, queue);
 		wr32(hw, GL_MDET_RX, 0xffffffff);
 	}
 
@@ -4731,6 +4737,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	}
 
 	ice_devlink_init_regions(pf);
+	ice_devlink_init_mdd_reporter(pf);
 
 	pf->hw.udp_tunnel_nic.set_port = ice_udp_tunnel_set_port;
 	pf->hw.udp_tunnel_nic.unset_port = ice_udp_tunnel_unset_port;
@@ -4960,6 +4967,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	devm_kfree(dev, pf->vsi);
 err_init_pf_unroll:
 	ice_deinit_pf(pf);
+	ice_devlink_destroy_mdd_reporter(pf);
 	ice_devlink_destroy_regions(pf);
 	ice_deinit_hw(hw);
 err_exit_unroll:
@@ -5079,6 +5087,7 @@ static void ice_remove(struct pci_dev *pdev)
 		ice_vsi_free_q_vectors(pf->vsi[i]);
 	}
 	ice_deinit_pf(pf);
+	ice_devlink_destroy_mdd_reporter(pf);
 	ice_devlink_destroy_regions(pf);
 	ice_deinit_hw(&pf->hw);
 
@@ -7265,6 +7274,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	/* if we get here, reset flow is successful */
 	clear_bit(ICE_RESET_FAILED, pf->state);
+	ice_devlink_clear_after_reset(pf);
 
 	ice_plug_aux_dev(pf);
 	return;
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
