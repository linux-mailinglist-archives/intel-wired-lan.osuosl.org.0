Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDAA17A4119
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 08:28:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E1384149A;
	Mon, 18 Sep 2023 06:28:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E1384149A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695018536;
	bh=J+MdXngNmj6jALHTmBhbh8m/PjyY5trOa5wnZS8vWVg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DAnLFsH4NvyRC/aPT0aHgB16cAqHtsFVqb/NQKfyft5qsYwRhyft5ZK9twvo7WrDX
	 qDz9C94mkpLOtLoTKqLZl1+awDYqYAQ3+uqrYq+49gJdL8MXl14LgtyqA5xsHkLHfc
	 Y3l9o98zXQKvHazxEOGh302IJvI4kNsRR/pJ/3r1iZLEOH/t+omerPVhbWOMq7rAn5
	 GfBP1ZgceE/dNbwNZUAvBc6AllFnoc6saXU/Z6UVG5snWq+0MdZUoveqdNpcs8lx71
	 XKDeg7vWHqH5NTJs0SODK0CBZvMOzPSbUwb++LeKjmA56KIl5TMZtYzHXO6NM8mmDN
	 4c+S1xISwHO7g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MABykagjUNes; Mon, 18 Sep 2023 06:28:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7BE544144F;
	Mon, 18 Sep 2023 06:28:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BE544144F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 89F471BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4F8E0611C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F8E0611C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o2OipRhUdm_9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 06:28:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 977E3611BF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 977E3611BF
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="378488654"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="378488654"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 23:28:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="815893634"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="815893634"
Received: from dpdk-yahui-icx1.sh.intel.com ([10.67.111.186])
 by fmsmga004.fm.intel.com with ESMTP; 17 Sep 2023 23:28:41 -0700
From: Yahui Cao <yahui.cao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Sep 2023 06:25:44 +0000
Message-Id: <20230918062546.40419-12-yahui.cao@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230918062546.40419-1-yahui.cao@intel.com>
References: <20230918062546.40419-1-yahui.cao@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695018527; x=1726554527;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DGcxIaiFnxUS4K9bhSUlSz58353lNoPiha4ihUOVwcI=;
 b=UDadAcsleWFkoSO56i3AXwqkD9sQ31ISAWSFLFx0LqCuwBsdPLDEsEcA
 lY8lzcMKasUva42g1GfkwnTTvTneyjU+2McgGbwc/NKxb8csal5yZ3Kdq
 KsAqdPiDC92wjk7HBcSuZJ8GB2cqK6DuJyUZjeaeeObWTdgDylur3siMp
 8t1AxoaoA6sZVq+yRe5lIBmuj27zTs+E1bLu1b8fFKS+4TN5zQ94NZgoc
 INtf40KTDsFsyl7iIU63I480a4QIehhv8iaEjEIDu6XREwyRQTPx+nEE6
 waO9TV+Uhfuazilhxpf0IE2HAnrW83WJPvPLpOR2QM9LpVMM/uTd6x/Vj
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UDadAcsl
Subject: [Intel-wired-lan] [PATCH iwl-next v3 11/13] ice: Add device suspend
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
 kvm@vger.kernel.org, edumazet@google.com, shameerali.kolothum.thodi@huawei.com,
 jesse.brandeburg@intel.com, alex.williamson@redhat.com,
 madhu.chittim@intel.com, anthony.l.nguyen@intel.com, jgg@nvidia.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
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
 .../net/ethernet/intel/ice/ice_migration.c    | 70 +++++++++++++++++++
 include/linux/net/intel/ice_migration.h       |  5 ++
 2 files changed, 75 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
index 3b6bb6b975f7..7cf3a28a95b0 100644
--- a/drivers/net/ethernet/intel/ice/ice_migration.c
+++ b/drivers/net/ethernet/intel/ice/ice_migration.c
@@ -2,6 +2,8 @@
 /* Copyright (C) 2018-2023 Intel Corporation */
 
 #include "ice.h"
+#include "ice_lib.h"
+#include "ice_fltr.h"
 #include "ice_base.h"
 #include "ice_txrx_lib.h"
 
@@ -275,6 +277,74 @@ u32 ice_migration_supported_caps(void)
 	return VIRTCHNL_VF_MIGRATION_SUPPORT_FEATURE;
 }
 
+/**
+ * ice_migration_suspend_dev - suspend device on src
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
+		ice_put_vf(vf);
+		return 0;
+	}
+
+	dev = ice_pf_to_dev(pf);
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
index 57c0e60e21d4..494a9bd1f121 100644
--- a/include/linux/net/intel/ice_migration.h
+++ b/include/linux/net/intel/ice_migration.h
@@ -11,6 +11,7 @@ struct ice_pf;
 struct ice_pf *ice_migration_get_pf(struct pci_dev *pdev);
 int ice_migration_init_dev(struct ice_pf *pf, int vf_id);
 void ice_migration_uninit_dev(struct ice_pf *pf, int vf_id);
+int ice_migration_suspend_dev(struct ice_pf *pf, int vf_id);
 int ice_migration_save_devstate(struct ice_pf *pf, int vf_id, u8 *buf, u64 buf_sz);
 int ice_migration_restore_devstate(struct ice_pf *pf, int vf_id, const u8 *buf, u64 buf_sz);
 
@@ -22,6 +23,10 @@ static inline struct ice_pf *ice_migration_get_pf(struct pci_dev *pdev)
 
 static inline int ice_migration_init_dev(struct ice_pf *pf, int vf_id) { }
 static inline void ice_migration_uninit_dev(struct ice_pf *pf, int vf_id) { }
+static inline int ice_migration_suspend_dev(struct ice_pf *pf, int vf_id)
+{
+	return 0;
+}
 static inline int ice_migration_save_devstate(struct ice_pf *pf, int vf_id, u8 *buf, u64 buf_sz)
 {
 	return 0;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
