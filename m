Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D99807F2453
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 03:51:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6986A81DE5;
	Tue, 21 Nov 2023 02:51:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6986A81DE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700535061;
	bh=fMZiFaWz6lEOSpPwtyLomJbeXSfDTIubYJIcb3PaGIE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QuvJ8KqU1orl4pVWdHb8xgGGYD6MSwi5Vm/88xgM01aucqP5+GzCwR9LrSZNi/h9e
	 llXbrQuizr+BiU90dtIngZ1rqXUg215tnitDjQ2lwZX70gJzNl5Yg4KA1TVqmkr8nU
	 TQjAjWjlh0c65cgW/ZmbRF+SPyz6NfHGYXRvAeg/iHmOdyV+03oTSO2JMOKFVSVeWR
	 IVvv8Zd+FIK4Q6cOkICUItwat8cnaT2TaErX0a7NESfmKRNyUVcVeLcCuMylPWkbUH
	 DweDq7H2rEiHSUPYQz42aX+yS6RyF7zKrMWLea0Qpp00sszw74QaJo5LIMMlULzP+N
	 FDOgFCzR2ErEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FJkFFyH4s7f4; Tue, 21 Nov 2023 02:51:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 262258139D;
	Tue, 21 Nov 2023 02:51:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 262258139D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0EC3E1BF33D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 02:50:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9336E813BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 02:50:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9336E813BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f-FelateRDXU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 02:50:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CA373817A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 02:50:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA373817A5
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="458246140"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="458246140"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 18:50:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="832488585"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="832488585"
Received: from dpdk-yahui-icx1.sh.intel.com ([10.67.111.85])
 by fmsmga008.fm.intel.com with ESMTP; 20 Nov 2023 18:50:25 -0800
From: Yahui Cao <yahui.cao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Nov 2023 02:51:09 +0000
Message-Id: <20231121025111.257597-11-yahui.cao@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231121025111.257597-1-yahui.cao@intel.com>
References: <20231121025111.257597-1-yahui.cao@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700535034; x=1732071034;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sGKE6kuIb+hb0CTMJZeKnZPATK+YHZfkRj39W2TIkQA=;
 b=lmhP7iJ1ZEdjAYVUDhaPKuV1WBgcnSK9hzLWfbTOZgiKd+yd2RwREz6h
 GJsmAFPQcZlth6jghutO4eJtDraTlF4tsAdNcaT06Ipwxcfda9DlUqMDq
 pph2IHyIqdAQTrGX/AJFjb6MtrovHHqpu6nWiAnEQop8J8fYCnEf51qJ9
 qWLaVzOm3vp2MHGzXMj95Stl6gKmXmJUDIGS0lAKq9ZdxiZByWcgUfqre
 2IRCK3pfUk47lk77uSWP4CsV0+1++wxX4S3YznbhriAlAjsHg2JNZKSQF
 tgklsPJK8TZYeF0zvXmnIPf1P4lLGk4CCywLQCxYr8p2N++En7hcyypEy
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lmhP7iJ1
Subject: [Intel-wired-lan] [PATCH iwl-next v4 10/12] ice: Add device suspend
 function for migration
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
Cc: kevin.tian@intel.com, yishaih@nvidia.com, brett.creeley@amd.com,
 kvm@vger.kernel.org, sridhar.samudrala@intel.com, edumazet@google.com,
 shameerali.kolothum.thodi@huawei.com, alex.williamson@redhat.com,
 madhu.chittim@intel.com, jgg@nvidia.com, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lingyu Liu <lingyu.liu@intel.com>

Device suspend handler is called by vfio driver before saving device
state. Typical operation includes stopping TX/RX queue.

Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
---
 .../net/ethernet/intel/ice/ice_migration.c    | 69 +++++++++++++++++++
 include/linux/net/intel/ice_migration.h       |  6 ++
 2 files changed, 75 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
index 082ae2b79f60..a11cd0d3ad3d 100644
--- a/drivers/net/ethernet/intel/ice/ice_migration.c
+++ b/drivers/net/ethernet/intel/ice/ice_migration.c
@@ -2,6 +2,8 @@
 /* Copyright (C) 2018-2023 Intel Corporation */
 
 #include "ice.h"
+#include "ice_lib.h"
+#include "ice_fltr.h"
 #include "ice_base.h"
 #include "ice_txrx_lib.h"
 
@@ -274,6 +276,73 @@ u32 ice_migration_supported_caps(void)
 	return VIRTCHNL_VF_MIGRATION_SUPPORT_FEATURE;
 }
 
+/**
+ * ice_migration_suspend_dev - suspend device
+ * @pf: pointer to PF of migration device
+ * @vf_id: VF index of migration device
+ *
+ * Return 0 for success, negative for error
+ */
+int ice_migration_suspend_dev(struct ice_pf *pf, int vf_id)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_vsi *vsi;
+	struct ice_vf *vf;
+	int ret;
+
+	vf = ice_get_vf_by_id(pf, vf_id);
+	if (!vf) {
+		dev_err(dev, "Unable to locate VF from VF ID%d\n", vf_id);
+		return -EINVAL;
+	}
+
+	if (!test_bit(ICE_VF_STATE_QS_ENA, vf->vf_states)) {
+		ret = 0;
+		goto out_put_vf;
+	}
+
+	if (vf->virtchnl_msg_num > VIRTCHNL_MSG_MAX) {
+		dev_err(dev, "SR-IOV live migration disabled on VF %d. Migration buffer exceeded\n",
+			vf->vf_id);
+		ret = -EIO;
+		goto out_put_vf;
+	}
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		dev_err(dev, "VF %d VSI is NULL\n", vf->vf_id);
+		ret = -EINVAL;
+		goto out_put_vf;
+	}
+
+	/* Prevent VSI from queuing incoming packets by removing all filters */
+	ice_fltr_remove_all(vsi);
+
+	/* MAC based filter rule is disabled at this point. Set MAC to zero
+	 * to keep consistency with VF mac address info shown by ip link
+	 */
+	eth_zero_addr(vf->hw_lan_addr);
+	eth_zero_addr(vf->dev_lan_addr);
+
+	ret = ice_vsi_stop_lan_tx_rings(vsi, ICE_NO_RESET, vf->vf_id);
+	if (ret) {
+		dev_err(dev, "VF %d failed to stop tx rings\n", vf->vf_id);
+		ret = -EIO;
+		goto out_put_vf;
+	}
+	ret = ice_vsi_stop_all_rx_rings(vsi);
+	if (ret) {
+		dev_err(dev, "VF %d failed to stop rx rings\n", vf->vf_id);
+		ret = -EIO;
+		goto out_put_vf;
+	}
+
+out_put_vf:
+	ice_put_vf(vf);
+	return ret;
+}
+EXPORT_SYMBOL(ice_migration_suspend_dev);
+
 /**
  * ice_migration_save_rx_head - save rx head into device state buffer
  * @vf: pointer to VF structure
diff --git a/include/linux/net/intel/ice_migration.h b/include/linux/net/intel/ice_migration.h
index a142b78283a8..47f46dca07ae 100644
--- a/include/linux/net/intel/ice_migration.h
+++ b/include/linux/net/intel/ice_migration.h
@@ -14,6 +14,7 @@ int ice_migration_save_devstate(struct ice_pf *pf, int vf_id,
 				u8 *buf, u64 buf_sz);
 int ice_migration_load_devstate(struct ice_pf *pf, int vf_id,
 				const u8 *buf, u64 buf_sz);
+int ice_migration_suspend_dev(struct ice_pf *pf, int vf_id);
 #else
 static inline struct ice_pf *ice_migration_get_pf(struct pci_dev *pdev)
 {
@@ -37,6 +38,11 @@ static inline int ice_migration_load_devstate(struct ice_pf *pf, int vf_id,
 {
 	return 0;
 }
+
+static inline int ice_migration_suspend_dev(struct ice_pf *pf, int vf_id)
+{
+	return 0;
+}
 #endif /* CONFIG_ICE_VFIO_PCI */
 
 #endif /* _ICE_MIGRATION_H_ */
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
