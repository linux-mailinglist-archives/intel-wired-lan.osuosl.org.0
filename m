Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7B87368A3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 12:01:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81E98418EA;
	Tue, 20 Jun 2023 10:01:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81E98418EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687255306;
	bh=vlpe5TllCth+r1H+dDq9+8Hx0V/dHyhER0uoErhPz50=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GZomT/ZX3dI3080Rkh8RnOQDKaJ8PkBZWKsl8y+nRlqUUv6Hi2NiiHVItFnK9H37+
	 +IM2HyAFcAvR2Mmk8xthzbKFV0aMEcTa3ccSfzhUnD1KcoJ5sVE8LMlt79eOZcsnyA
	 HFh6N1SaJ6uBylfcYhwtEU6RFkQoXqiJM7lX34zdmwZVp20WWYpcX+cuy29AefIH1y
	 E+OiCfzyL98EUaMhgiD+HXS/NUJzMrJMuZMbfSUknr8B/ByHPLL5NRv4++F8Ggp5Jd
	 xorVQjieSGYUN1taugZezRnirnUdOYFQ3v301WegNZIJP/GPEl/c5nGVG8IkTVvQpi
	 D8xz0trZWqK1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ApHIa7UKKKJV; Tue, 20 Jun 2023 10:01:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F35F2417E4;
	Tue, 20 Jun 2023 10:01:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F35F2417E4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 715ED1BF39E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:01:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5862360E4F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:01:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5862360E4F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SUeKPHJv6cbf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 10:01:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 940EA60D59
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 940EA60D59
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:01:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="358688497"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="358688497"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 03:01:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="664227444"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="664227444"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga003.jf.intel.com with ESMTP; 20 Jun 2023 03:01:10 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Jun 2023 09:59:57 +0000
Message-Id: <20230620100001.5331-12-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230620100001.5331-1-lingyu.liu@intel.com>
References: <20230620100001.5331-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687255273; x=1718791273;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c+FBBT0dyZUQ3micu+dYcKU3vqU+ardYzB8VPAkl4RY=;
 b=RJu3VWmirCAxY27W5rXhiWCZ0A9ObK1wccGoBaSkafSBAqthh3lKz9Wk
 z0H1eu/lgfX9KTKBCb6135OkS4SNuKbpaR9k/P9Rx7vjG0Z7kAEc4ySmD
 vplU1mutuNFehbQ+6/DgbWqQMbbYyUe0NyczyT1mjZ8XuTM2iFwVDiW/y
 2wdmqatTdg/iGcnMNjaAGRGVCYDsvvT+EcDqYNZ5tpl37/OZrAK24NZAD
 UYr7UdRVWENeIolUGJZAXRPF74Qz62vThqXOx3kjSXBj3AJaZ1oglM3AA
 fKUn6nEMxJCdrajRgRijc11jpBnYn1f0Il4h5i+1c/w/aAIHQ6HB7KiNL
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RJu3VWmi
Subject: [Intel-wired-lan] [PATCH iwl-next V1 11/15] ice: stop device before
 saving device states
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

Stop device by disabling TX queue and RX queue.

ice_vfio_pci driver introduced in following patches from this
series needs this function when device state transits from
VFIO_DEVICE_STATE_RUNNING to VFIO_DEVICE_STATE_STOP.

Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
---
 .../net/ethernet/intel/ice/ice_migration.c    | 68 +++++++++++++++++++
 include/linux/net/intel/ice_migration.h       |  5 ++
 2 files changed, 73 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
index c2a83a97af05..c588738828ab 100644
--- a/drivers/net/ethernet/intel/ice/ice_migration.c
+++ b/drivers/net/ethernet/intel/ice/ice_migration.c
@@ -2,6 +2,8 @@
 /* Copyright (C) 2018-2023 Intel Corporation */
 
 #include "ice.h"
+#include "ice_lib.h"
+#include "ice_fltr.h"
 #include "ice_base.h"
 #include "ice_txrx_lib.h"
 
@@ -172,6 +174,72 @@ void ice_migration_save_vf_msg(struct ice_vf *vf,
 	}
 }
 
+/**
+ * ice_migration_suspend_vf - suspend device on src
+ * @opaque: pointer to VF handler in ice vdev
+ * @is_dst: false: migration src true: migration dst
+ *
+ * Return 0 for success, negative for error
+ */
+int ice_migration_suspend_vf(void *opaque, bool is_dst)
+{
+	struct ice_vf *vf = (struct ice_vf *)opaque;
+	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
+	struct ice_pf *pf = vf->pf;
+	struct device *dev;
+	int ret;
+
+	if (is_dst)
+		return 0;
+
+	dev = ice_pf_to_dev(pf);
+	if (vf->virtchnl_msg_num >= VIRTCHNL_MSG_MAX) {
+		dev_err(dev, "SR-IOV live migration disabled on VF %d. Migration buffer exceeded\n",
+			vf->vf_id);
+		return -EIO;
+	}
+
+	if (!vsi) {
+		dev_err(dev, "VF %d VSI is NULL\n", vf->vf_id);
+		return -EINVAL;
+	}
+	/* Prevent VSI from incoming packets by removing all filters before
+	 * stop rx ring and draining the traffic. There are possibilities that
+	 * rx ring head value jitters when rx ring is stopped with large amount
+	 * of packets incoming. In this case, HW mismatches SW on rx ring head
+	 * state. As a result, after restoring rx ring head on the destination
+	 * VM, the missing rx descriptors will never be written back, causing
+	 * packets receiving failure and dropped.
+	 */
+	ice_fltr_remove_all(vsi);
+	/* MAC based filter rule is disabled at this point. Set MAC to zero
+	 * to keep consistency when using ip link to display MAC address.
+	 */
+	eth_zero_addr(vf->hw_lan_addr);
+	eth_zero_addr(vf->dev_lan_addr);
+	/* For the tx side, there is possibility that some descriptors are
+	 * still pending to be transmitted by HW. Since VM is stopped now,
+	 * wait a while to make sure all the transmission is completed.
+	 * For the rx side, head value jittering may happen in case of high
+	 * packet rate. Since all forwarding filters are removed now, wait a
+	 * while to make sure all the reception is completed and rx head no
+	 * longer moves.
+	 */
+	usleep_range(1000, 2000);
+	ret = ice_vsi_stop_lan_tx_rings(vsi, ICE_NO_RESET, vf->vf_id);
+	if (ret) {
+		dev_err(dev, "VF %d failed to stop tx rings\n", vf->vf_id);
+		return -EIO;
+	}
+	ret = ice_vsi_stop_all_rx_rings(vsi);
+	if (ret) {
+		dev_err(dev, "VF %d failed to stop rx rings\n", vf->vf_id);
+		return -EIO;
+	}
+	return 0;
+}
+EXPORT_SYMBOL(ice_migration_suspend_vf);
+
 static int
 ice_migration_save_rx_head(struct ice_vf *vf,
 			   struct ice_migration_dev_state *devstate)
diff --git a/include/linux/net/intel/ice_migration.h b/include/linux/net/intel/ice_migration.h
index b59200a0a059..45c3469df55d 100644
--- a/include/linux/net/intel/ice_migration.h
+++ b/include/linux/net/intel/ice_migration.h
@@ -16,6 +16,7 @@ void *ice_migration_get_vf(struct pci_dev *vf_pdev);
 void ice_migration_put_vf(void *opaque);
 void ice_migration_init_vf(void *opaque);
 void ice_migration_uninit_vf(void *opaque);
+int ice_migration_suspend_vf(void *opaque, bool mig_dst);
 int ice_migration_save_devstate(void *opaque, u8 *buf, u64 buf_sz);
 int ice_migration_restore_devstate(void *opaque, const u8 *buf, u64 buf_sz,
 				   struct vfio_device *vdev);
@@ -31,6 +32,10 @@ static inline void ice_migration_put_vf(void *opaque)
 }
 static inline void ice_migration_init_vf(void *opaque) { }
 static inline void ice_migration_uninit_vf(void *opaque) { }
+static inline int ice_migration_suspend_vf(void *opaque, bool mig_dst)
+{
+	return 0;
+}
 static inline int ice_migration_save_devstate(void *opaque, u8 *buf, u64 buf_sz)
 {
 	return 0;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
