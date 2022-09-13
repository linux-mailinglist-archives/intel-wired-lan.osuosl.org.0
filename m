Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B205B6EC6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Sep 2022 16:02:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C667409ED;
	Tue, 13 Sep 2022 14:02:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C667409ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663077743;
	bh=gFPbE+FtxiRe7WBhSQ5mqBoHk2o45+6qpegxQX1gZ7g=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=txeRPtRYEL7MvAocCUZ+DmPIzIixIGICMcC2/bo2SzQ1+pi+NlYGX1kv6qQIDvkXd
	 I3JLoz+5LdyGGkD2MJ2/BrT6Cg97rD/0H0BWXoFphttMGnzykVxHVqD4NMnwsuD8fO
	 vNiMd5k2JBqMBTapYyydy03BVrHxLPTqai/T93zjAIgDSAQiK5Bd+ZE97EGajiAX9R
	 XdH5uatf9b1nnOAPNGfPkEkjynTbESEB247KpCPsubBzPZZPl41i8R2oG0WFrqgRph
	 mG/8m1OGuwufM+nTjoOBN3LK5jdZksKS58GZsyAK00qXU7ns2AJ7kQRz7WGXNuw3hI
	 Ig6Y8KSSNKIew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zLQlElQo5spL; Tue, 13 Sep 2022 14:02:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7FA3040868;
	Tue, 13 Sep 2022 14:02:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7FA3040868
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 03CB11BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 14:02:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D63D24050C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 14:02:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D63D24050C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iKCKFxWSTbDH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Sep 2022 14:02:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ECB4C40490
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ECB4C40490
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 14:02:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="296877259"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="296877259"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 07:02:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="678580351"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga008.fm.intel.com with ESMTP; 13 Sep 2022 07:02:09 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Sep 2022 16:02:06 +0200
Message-Id: <20220913140206.64330-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663077734; x=1694613734;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ulcgx2Wh1HAVMMRm+puFftMo8ZjA8zj9XmZ14B3/f8A=;
 b=XEV4LsYMnUpIi3ZUlWw42d0lv9ckjNfL7qg3eaS33B+Pew57bXRvVBKD
 nnvkAfW7MBL098hseLGHizChDJxnDvtivmyigrt2LmXDZP4Y9wT/ElJBz
 TBnxHnddD9TSPGM55ZxKWFzwqy3tZJaxZ+Xzw/7Mu23wsXbm1aRc6ruGT
 A+S9mao/bdbe+nHjbtZuNoROXpxTUZ0QuzWbRcnGetcl+ewI8bAsmpN7x
 hQPrrhookUSGsGdLqCc83WZg/q0F/RtdEEALpD6j+U4NGnRimc7xY59t3
 cQprN2baOT1G711vFUalef7FEyhCbYl1O9M5u37y/U6LsGeHNnFruL1SX
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XEV4LsYM
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix not setting xps_cpus
 after reset
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
Cc: Michal Jaron <michalx.jaron@intel.com>,
 Kamil Maziarz <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Jaron <michalx.jaron@intel.com>

During tx rings configuration default XPS queue config is set and
__I40E_TX_XPS_INIT_DONE is locked. XPS CPUs maps are cleared in
every reset by netdev_set_num_tc() call regardless it was set by
user or driver. If reset with reinit occurs __I40E_TX_XPS_INIT_DONE
flag is removed and XPS mapping is set to default again but after
reset without reinit this flag is still set and XPS CPUs to queues
mapping stays cleared.

Add code to preserve xps_cpus mapping as cpumask for every queue
and restore those mapping at the end of reset.

Fixes: 6f853d4f8e93 ("i40e: allow XPS with QoS enabled")
Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h      |   6 ++
 drivers/net/ethernet/intel/i40e/i40e_main.c | 109 ++++++++++++++++++++
 2 files changed, 115 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index d86b6d349ea9..e01af5943bfe 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -1306,4 +1306,10 @@ static inline u32 i40e_is_tc_mqprio_enabled(struct i40e_pf *pf)
 	return pf->flags & I40E_FLAG_TC_MQPRIO;
 }
 
+/* reverse XPS CPUs to tx queues map */
+struct i40e_qmap_rev {
+	struct cpumask cpus;
+	int vsi_id;
+};
+
 #endif /* _I40E_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index e3d9804aeb25..14e29580ebed 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -10793,6 +10793,83 @@ static int i40e_reset(struct i40e_pf *pf)
 	return ret;
 }
 
+#ifdef CONFIG_XPS
+/**
+ * i40e_preserve_xps_settings - preserve XPS maps before reset
+ * @vsi: pointer to the targeted VSI
+ * @qr: pointer to the structure with XPS mapping
+ *
+ * Read queues mapping from every CPU and save it as a CPU mask for every
+ * queue.
+ **/
+static void
+i40e_preserve_xps_settings(struct i40e_vsi *vsi, struct i40e_qmap_rev *qr)
+{
+	int cpu, q_idx, cpu_idx, cpus = num_online_cpus();
+	struct net_device *netdev = vsi->netdev;
+	struct xps_dev_maps *dev_maps;
+	struct xps_map *map;
+	u64 bitmap_arr;
+
+	if (!netdev || vsi->type != I40E_VSI_MAIN)
+		return;
+
+	if (cpus < vsi->num_queue_pairs) {
+		dev_warn(&vsi->back->pdev->dev,
+			 "There are more queues than cpus. To set xps maps properly reinitialize queues.\n");
+		return;
+	}
+
+	rcu_read_lock();
+
+	if (!netdev->xps_maps[XPS_CPUS])
+		goto out;
+
+	dev_maps = rcu_dereference(netdev->xps_maps[XPS_CPUS]);
+
+	for (cpu = 0; cpu < cpus; cpu++) {
+		cpu_idx = cpumask_local_spread(cpu, -1);
+		if (!dev_maps->attr_map[cpu_idx])
+			continue;
+
+		map = rcu_dereference(dev_maps->attr_map[cpu_idx]);
+		bitmap_arr = cpu_idx;
+		do_div(bitmap_arr, BITS_PER_LONG);
+		for (q_idx = 0; q_idx < map->len; q_idx++) {
+			qr[map->queues[q_idx]].vsi_id = vsi->id;
+			qr[map->queues[q_idx]].cpus.bits[bitmap_arr] |=
+				BIT(cpu_idx);
+		}
+	}
+
+out:
+	rcu_read_unlock();
+}
+
+/**
+ * i40e_restore_xps_settings - restore XPS maps after reset
+ * @vsi: pointer to the targeted VSI
+ * @qr: pointer to the structure with XPS mapping
+ *
+ * Set previously preserved XPS CPUs to queues mapping.
+ **/
+static void
+i40e_restore_xps_settings(struct i40e_vsi *vsi, struct i40e_qmap_rev *qr)
+{
+	struct net_device *netdev = vsi->netdev;
+	int q_count, q;
+
+	q_count = min_t(unsigned int, num_online_cpus(), vsi->num_queue_pairs);
+
+	if (vsi->type != I40E_VSI_MAIN)
+		return;
+
+	for (q = 0; q < q_count; q++)
+		if (qr[q].vsi_id == vsi->id)
+			netif_set_xps_queue(netdev, &qr[q].cpus, q);
+}
+
+#endif /* CONFIG_XPS */
 /**
  * i40e_rebuild - rebuild using a saved config
  * @pf: board private structure
@@ -10804,6 +10881,9 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 {
 	const bool is_recovery_mode_reported = i40e_check_recovery_mode(pf);
 	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
+#ifdef CONFIG_XPS
+	struct i40e_qmap_rev *qr = NULL;
+#endif /* CONFIG_XPS */
 	struct i40e_hw *hw = &pf->hw;
 	i40e_status ret;
 	u32 val;
@@ -10919,6 +10999,22 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 	}
 
 #endif /* CONFIG_I40E_DCB */
+#ifdef CONFIG_XPS
+	if (!reinit) {
+		int cpus = num_possible_cpus();
+
+		qr = kcalloc(cpus, sizeof(struct i40e_qmap_rev), GFP_KERNEL);
+		if (!qr) {
+			ret = -ENOMEM;
+			goto end_unlock;
+		}
+
+		for (v = 0; v < pf->num_alloc_vsi; v++)
+			if (pf->vsi[v])
+				i40e_preserve_xps_settings(pf->vsi[v], qr);
+	}
+
+#endif /* CONFIG_XPS */
 	if (!lock_acquired)
 		rtnl_lock();
 	ret = i40e_setup_pf_switch(pf, reinit, true);
@@ -11073,6 +11169,16 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 
 	i40e_reset_all_vfs(pf, true);
 
+#ifdef CONFIG_XPS
+	if (!reinit) {
+		for (v = 0; v < pf->num_alloc_vsi; v++)
+			if (pf->vsi[v])
+				i40e_restore_xps_settings(pf->vsi[v], qr);
+	} else {
+		dev_info(&pf->pdev->dev, "XPS maps were reset to default after queue re-initialization");
+	}
+
+#endif /* CONFIG_XPS */
 	/* tell the firmware that we're starting */
 	i40e_send_version(pf);
 
@@ -11082,6 +11188,9 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 end_unlock:
 	if (!lock_acquired)
 		rtnl_unlock();
+#ifdef CONFIG_XPS
+	kfree(qr);
+#endif /* CONFIG_XPS */
 end_core_reset:
 	clear_bit(__I40E_RESET_FAILED, pf->state);
 clear_recovery:
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
