Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AE3737E18
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 11:12:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 038F241820;
	Wed, 21 Jun 2023 09:12:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 038F241820
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687338739;
	bh=vlpe5TllCth+r1H+dDq9+8Hx0V/dHyhER0uoErhPz50=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EI1IrLtwAver9vDIUwLsjBjhoTAw6ZsHJNSWR+m7mMkgFHwNbo8s1mfoCjK7fHfhh
	 Ivga53W5fGSe/r+0PE889+c9GVWpuekA0rErwZiOy88crw4Zyy2S7IKJ8RdcFXCYKR
	 e80FNFkciSNb2VFNyncDRXkMOHS83srmOFjCmThrcDoSIllL6J0okMxAPFIdKWerYN
	 n8sWvWpyrvJ9R5SITX+Hl+Pv7liM+m/kqlq4YZroGq+fPGSSgJev3CQtaQqrgdV14I
	 kDUxK68UtyDo63/OWCFsAUHSNYlNdl5rDPVM62z8fWV/aUdB0uMFbhfPjG3v2WV+Bh
	 KKgUJAE0/HpLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j6Y-zYAUutZe; Wed, 21 Jun 2023 09:12:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BDDBB417F8;
	Wed, 21 Jun 2023 09:12:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BDDBB417F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 81E7D1BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:12:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5BDE083276
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:12:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BDE083276
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b1NIbSiUeXWn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 09:12:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A5B1883280
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A5B1883280
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:12:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="357613759"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="357613759"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 02:12:05 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="748570935"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="748570935"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga001.jf.intel.com with ESMTP; 21 Jun 2023 02:12:02 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Jun 2023 09:11:08 +0000
Message-Id: <20230621091112.44945-12-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230621091112.44945-1-lingyu.liu@intel.com>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687338725; x=1718874725;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c+FBBT0dyZUQ3micu+dYcKU3vqU+ardYzB8VPAkl4RY=;
 b=PgeH44Y0eBo1icObaC4zRgqJrLwnxsA7dc5/GJ3PtutB4vIhSNnP8fUv
 9AGS4PKGxZwacPzHz+wCPup2xMLSFXyrGyWMvw/zRjceMtAUF4UTc57sm
 LhAPb5xYE16BhlQlDoV7l3wqglAVjGasvODsb2HcuxGkNrIVMsSqchBqL
 Ga6aCRQyafP1cnSi6s0RdAS7NV5ZwigCe6YYM4wLMKO7d70f6VK4ftg64
 g7jjGKD8QlDAP/P6OMtKKBayVMNrmrr2rv5ollVQMJIHevziBuVa8xcU5
 Y11Q0XcKvz/yNakHmqNxBuMEYdw81G8pHJE1qv9Hgmf2L4VgsCfUqy+UY
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PgeH44Y0
Subject: [Intel-wired-lan] [PATCH iwl-next V2 11/15] ice: stop device before
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
