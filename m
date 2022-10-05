Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 480B25F5541
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Oct 2022 15:22:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03A9A60F58;
	Wed,  5 Oct 2022 13:22:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03A9A60F58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664976153;
	bh=qXQ/wRGS0IMCpgGwL+Eo9DqBbNWaCAZXlZpfVF3cHp8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=1sRgoFciR0aAvdgjcKtqjl73OF0MNVKssVuMYRIrfh2KNpK5JUDRt82n1bHyiZzBR
	 vFbmvbSd3+q2U6Lj9R/0ThoUKaMZLgeOl+LJx62wQ0nFujaV6rgE3cCNS0HocLpR5m
	 jE4YTOVADYa2uJrCG74Y+xgpQakAj4Epm7k62TLoWoSIOPmtAShoYkUzsd9DoLW1y1
	 9cdNHDjbud6L5ayULkDZI4K59GJsMs4geF+iC121boUsNqiRndd81WtUKw2y/xAMNw
	 KdmqTc1YAah0XS6wAd4qyDCgN1GiqRqycGoswH0ZZq7K1cfsnx24WZ37/h91Xkxtbq
	 kLeOeCEx0O0hQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hsL3MAKdJkwJ; Wed,  5 Oct 2022 13:22:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0BE660F9C;
	Wed,  5 Oct 2022 13:22:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0BE660F9C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 716FD1BF3BD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 13:22:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 49BA641752
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 13:22:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49BA641752
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8FR8dMfGJyEh for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Oct 2022 13:22:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B445240886
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B445240886
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 13:22:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="290400114"
X-IronPort-AV: E=Sophos;i="5.95,159,1661842800"; d="scan'208";a="290400114"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 06:22:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="692878712"
X-IronPort-AV: E=Sophos;i="5.95,159,1661842800"; d="scan'208";a="692878712"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga004.fm.intel.com with ESMTP; 05 Oct 2022 06:22:16 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  5 Oct 2022 15:22:09 +0200
Message-Id: <20221005132209.3599781-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664976145; x=1696512145;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NpZ9bi3fRWbK+xMZWI3e2Jywl1z0wQ3s/Lm29BnmU1k=;
 b=Wm7glRxo7+JMWr1df56rQk1eIVHOUM02cmuvnhRrUQgeM30qmWx7zBtA
 66sm85+gLD96fQCy0NtViVD6tvZVwOUYKqks41iWt0r7CbhAq9NEdsiHd
 +T0T44DFxV+eVgomrUQw5rYBy8r4HSPVB8A0wHjatI/ZalSeWRrXTiAGf
 dMgj4WadTs5BNQb2b7pOIJ76/iFq8NXiegf1US0SsyjWKYlfm0VfLnk2+
 HWJF7IhVghISmqNIQx5nKSYFrCCkXgIMdXtAzKCOj5nys5MPX3vm+nWxy
 u9junHFnvb5osf3uHa7nK24L+GYXceLkHvkXCBcIDwdPj3JcQFDaUvTO8
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Wm7glRxo
Subject: [Intel-wired-lan] [PATCH net v4] i40e: Fix not setting xps_cpus
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

During tx rings configuration __I40E_TX_XPS_INIT_DONE flag is locked
and default (based on active cpus) XPS queue config is set by calling
netif_set_xps_queue() from XPS API. XPS CPUs maps are cleared(set to 0)
in every interface reset by netdev_set_num_tc() regardless it was set
by user or driver. If reset with queues rebuild occurs
(i.e. after ethtool -L <interface> combined <number>)
__I40E_TX_XPS_INIT_DONE flag is removed and XPS mapping is set by the
driver to values based on active cpus again. But for every other reset
(i.e. by calling ethtool -t <interface>) __I40E_TX_XPS_INIT_DONE
flag is still set and XPS CPUs to queues mapping stays cleared.

Add code to preserve xps_cpus mapping as cpumask for every queue and
restore this mapping at the end of the interface reset in cases when
queues are not rebuild (reinit is false).

Fixes: 6f853d4f8e93 ("i40e: allow XPS with QoS enabled")
Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
---
v2: changed XPS and CPU to capital letters, removed some checks
v3: changed commit msg, changed goto end_unlock to goto end_core_reset
v4: one kfree added due to some problems
---
 drivers/net/ethernet/intel/i40e/i40e.h      |   6 ++
 drivers/net/ethernet/intel/i40e/i40e_main.c | 110 ++++++++++++++++++++
 2 files changed, 116 insertions(+)

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
index e3d9804aeb25..8b2b3c3c958d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -10793,6 +10793,83 @@ static int i40e_reset(struct i40e_pf *pf)
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
+			goto end_core_reset;
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
@@ -11073,6 +11169,17 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 
 	i40e_reset_all_vfs(pf, true);
 
+#ifdef CONFIG_XPS
+	if (!reinit) {
+		for (v = 0; v < pf->num_alloc_vsi; v++)
+			if (pf->vsi[v])
+				i40e_restore_xps_settings(pf->vsi[v], qr);
+	} else {
+		dev_info(&pf->pdev->dev, "XPS maps were reset to default after queue re-initialization");
+	}
+	kfree(qr);
+
+#endif /* CONFIG_XPS */
 	/* tell the firmware that we're starting */
 	i40e_send_version(pf);
 
@@ -11082,6 +11189,9 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
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
