Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6E65B3417
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Sep 2022 11:37:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50AD982951;
	Fri,  9 Sep 2022 09:37:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 50AD982951
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662716261;
	bh=q4AJwadOwroQxrS2mM9LYhPKASVISOcnkAj3J9p4GTo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=F36U1OrTCVvD+opWsUINFrMQD1sHBqhYldBvlKh0J7gD2TtFA6slxV3ENXtECOjtZ
	 qcjpQ2VpE93Q0a55OP2A6v5u8haPhJEBPF9+YDTslgw6RJOT0tLqQIlWMBUv5jGvos
	 3hZdpk5DgMQ/Y2n95GDyMz/7SUw+F+S7Sbc1WhvWDWy00ew/+oE+kBAgRVZ8/HA2Dh
	 u9XEU3nLGiSCFJHHadetmx09xOww/AkxbwZNKJI68NcvkhSA7R7i/KZNRILEaItvH6
	 dtdKy3uF2wf3Ic61kjrLsWz29BZ93EylcpVNKXTLerR01SGbDMWWgioL21BZH2nFTi
	 LYWIVhp2BDKMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4eQSdU6sc4lx; Fri,  9 Sep 2022 09:37:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC5218291C;
	Fri,  9 Sep 2022 09:37:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC5218291C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A03581BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 09:37:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7A09260881
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 09:37:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A09260881
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Do0cxtnMsgW2 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Sep 2022 09:37:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 705B0607CE
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 705B0607CE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Sep 2022 09:37:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="361394595"
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="361394595"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 02:37:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="677094014"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga008.fm.intel.com with ESMTP; 09 Sep 2022 02:37:32 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  9 Sep 2022 11:36:53 +0200
Message-Id: <20220909093653.915968-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662716254; x=1694252254;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2YhqIHfHQQ+2gW9pInd4x2z2dAkUEgXT990keSTyJBo=;
 b=JQvGil/uWOYvPgORisX2rTY83pCaAR8nTwd/GNAtCjVTRRvqwSgF2ASi
 cibMaRD/u9mv+bYeLUw6A1oJAzmlP97lVAu2DjgCtNdQqvf/CWap0OXaC
 qJEbN1t3TyVT4kxcMm/WKE97b6zjkC0jqQmYduH6ZsyDU3d6SyVMfINsu
 vCim7yGFi7pCID/o6Tm5c85G8KDd1eHdZcjxfnNt5QyWEWO2oLLNx1hBe
 tZmbyQnK3g7dTKJhougzXI+SNh+3sMcEEosV7esPRhV1NQxav42Pb4FvB
 YRameTeQMDPZwjC/ZkR80Rn9Uujmi9P79xv53bXRyKDg/nNJx5kJP6jFT
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JQvGil/u
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix not setting xps_cpus
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

During tx rings configuration default xps queue config is set and
__I40E_TX_XPS_INIT_DONE is locked. Xps cpus maps are cleared in
every reset by netdev_set_num_tc() call regardless it was set by
user or driver. If reset with reinit occurs __I40E_TX_XPS_INIT_DONE
flag is removed and xps mapping is set to default again but after
reset without reinit this flag is still set and xps cpus to queues
mapping stays cleared.

Add code to preserve xps_cpus mapping as cpumask for every queue
and restore those mapping at the end of reset.

Fixes: 6f853d4f8e93 ("i40e: allow XPS with QoS enabled")
Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h      |   6 +
 drivers/net/ethernet/intel/i40e/i40e_main.c | 117 ++++++++++++++++++++
 2 files changed, 123 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index d86b6d349ea9..e01af5943bfe 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -1306,4 +1306,10 @@ static inline u32 i40e_is_tc_mqprio_enabled(struct i40e_pf *pf)
 	return pf->flags & I40E_FLAG_TC_MQPRIO;
 }
 
+/* reverse xps cpus to tx queues map */
+struct i40e_qmap_rev {
+	struct cpumask cpus;
+	int vsi_id;
+};
+
 #endif /* _I40E_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 9f1d5de7bf16..19a1cd0aa4f0 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -10770,6 +10770,89 @@ static int i40e_reset(struct i40e_pf *pf)
 	return ret;
 }
 
+#ifdef CONFIG_XPS
+/**
+ * i40e_preserve_xps_settings - preserve xps maps before reset
+ * @vsi: pointer to the targeted VSI
+ * @qr: pointer to the structure with xps mapping
+ *
+ * Read queues mapping from every cpu and save it as a cpu mask for every
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
+	if (!IS_ENABLED(CONFIG_XPS))
+		return;
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
+ * i40e_restore_xps_settings - restore xps maps after reset
+ * @vsi: pointer to the targeted VSI
+ * @qr: pointer to the structure with xps mapping
+ *
+ * Set previously preserved xps cpus to queues mapping.
+ **/
+static void
+i40e_restore_xps_settings(struct i40e_vsi *vsi, struct i40e_qmap_rev *qr)
+{
+	struct net_device *netdev = vsi->netdev;
+	int q_count, q;
+
+	if (!IS_ENABLED(CONFIG_XPS))
+		return;
+
+	q_count = min_t(unsigned int, num_online_cpus(), vsi->num_queue_pairs);
+
+	if (!qr || vsi->type != I40E_VSI_MAIN)
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
@@ -10781,6 +10864,9 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 {
 	const bool is_recovery_mode_reported = i40e_check_recovery_mode(pf);
 	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
+#ifdef CONFIG_XPS
+	struct i40e_qmap_rev *qr = NULL;
+#endif /* CONFIG_XPS */
 	struct i40e_hw *hw = &pf->hw;
 	i40e_status ret;
 	u32 val;
@@ -10896,6 +10982,23 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 	}
 
 #endif /* CONFIG_I40E_DCB */
+#ifdef CONFIG_XPS
+	if (!reinit) {
+		int cpus = num_possible_cpus();
+
+		qr = kcalloc(cpus, sizeof(struct i40e_qmap_rev), GFP_KERNEL);
+
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
@@ -11050,6 +11153,16 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 
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
 
@@ -11059,6 +11172,10 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 end_unlock:
 	if (!lock_acquired)
 		rtnl_unlock();
+#ifdef CONFIG_XPS
+	if (!reinit)
+		kfree(qr);
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
