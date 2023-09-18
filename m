Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D737A4184
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 08:48:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8753E414BA;
	Mon, 18 Sep 2023 06:48:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8753E414BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695019707;
	bh=FcM6vfUTv6jWn9lo5dw2vhO0o5wp5UbVjxphjgeDhZU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6q5ifJUkJ6Xec25eDNbsTOWGveya/K0cXCDNQRVlfEmOF8/1kkU5Pbu+GrfKP5juB
	 7rWtpuq6Rbj+LxDjbSaCUXlHHZucoAIG0R3ILWii6Of6K1waVhvotQKHt8wtCub1ni
	 hx45am6zYwcTS2KBXL1HR2etiDmwBriKcrl/MfEJyjNEHwjHjWYzstNbAzEfEyHIIk
	 Y0iDqUcR+jmLJ129o01eKCed+4Sz6cPVKpPimTGCA7HMJ8SONW9OmIiC4B+dcCYD53
	 y7JoOpvxTGJT1D4uq72+4dBxaDcaI/WQesZ3l9qNj1M/7kpXtB0dQlm0lFdYa2hbI6
	 bxLp1vCG8jrPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5n-R9omXm_L9; Mon, 18 Sep 2023 06:48:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 614C040446;
	Mon, 18 Sep 2023 06:48:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 614C040446
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A0ADD1BF40F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:48:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 869C74148E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:48:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 869C74148E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id blprkM0cM0dN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 06:48:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A5D6F411A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:48:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5D6F411A1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="369907554"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="369907554"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 23:48:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="869452252"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="869452252"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga004.jf.intel.com with ESMTP; 17 Sep 2023 23:48:11 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Sep 2023 08:24:05 +0200
Message-ID: <20230918062406.90359-4-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230918062406.90359-1-michal.swiatkowski@linux.intel.com>
References: <20230918062406.90359-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695019693; x=1726555693;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=plfIQL/2azstt84v8XmF5dAmDePM5u9fxmeTQNfLtP8=;
 b=TvSgYcULnfcwlfGfWJudJAPIpZCr6nvh5S3SP1YIAC0BZpZcxtz4R/6R
 rRFLqKOZHVEu6CSBO03Fsk4xFEqiNmtTD4mbHNndUfXJR5w9XIOO5wa6o
 rp+9PsXa/1PI0ob6uKA2xGvjDtob46Znpjpjx4HMGrxS0HfGMiV37FeOk
 BVSOYHO76xs87BGbCYyI5xrfvCKDjigX+9jKAoDDjS8KHgK2RhmTJoFnZ
 CpA4Xu5Cafl7wrmiSWCvVRGd6Q5BMwDXD7CgxKbFg0LC+X7JFXPCM+emC
 VVqDSdnKXIJYty9GUcs+3xJXwhzH9gFeLjOrDE1CZ6WXofViseTOzs2xR
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TvSgYcUL
Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/4] ice: set MSI-X vector
 count on VF
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
Cc: netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 maciej.fijalkowski@intel.com, przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement ops needed to set MSI-X vector count on VF.

sriov_get_vf_total_msix() should return total number of MSI-X that can
be used by the VFs. Return the value set by devlink resources API
(pf->req_msix.vf).

sriov_set_msix_vec_count() will set number of MSI-X on particular VF.
Disable VF register mapping, rebuild VSI with new MSI-X and queues
values and enable new VF register mapping.

For best performance set number of queues equal to number of MSI-X.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c  |  2 +
 drivers/net/ethernet/intel/ice/ice_sriov.c | 69 ++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_sriov.h | 13 ++++
 3 files changed, 84 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 38adffbe0edf..c301ab1d6610 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5655,6 +5655,8 @@ static struct pci_driver ice_driver = {
 #endif /* CONFIG_PM */
 	.shutdown = ice_shutdown,
 	.sriov_configure = ice_sriov_configure,
+	.sriov_get_vf_total_msix = ice_sriov_get_vf_total_msix,
+	.sriov_set_msix_vec_count = ice_sriov_set_msix_vec_count,
 	.err_handler = &ice_pci_err_handler
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 49adb0b05817..679bf63fd17a 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -987,6 +987,75 @@ static int ice_check_sriov_allowed(struct ice_pf *pf)
 	return 0;
 }
 
+/**
+ * ice_sriov_get_vf_total_msix - return number of MSI-X used by VFs
+ * @pdev: pointer to pci_dev struct
+ *
+ * The function is called via sysfs ops
+ */
+u32 ice_sriov_get_vf_total_msix(struct pci_dev *pdev)
+{
+	struct ice_pf *pf = pci_get_drvdata(pdev);
+
+	return pf->sriov_irq_size - ice_get_max_used_msix_vector(pf);
+}
+
+/**
+ * ice_sriov_set_msix_vec_count
+ * @vf_dev: pointer to pci_dev struct of VF device
+ * @msix_vec_count: new value for MSI-X amount on this VF
+ *
+ * Set requested MSI-X, queues and registers for @vf_dev.
+ *
+ * First do some sanity checks like if there are any VFs, if the new value
+ * is correct etc. Then disable old mapping (MSI-X and queues registers), change
+ * MSI-X and queues, rebuild VSI and enable new mapping.
+ *
+ * If it is possible (driver not binded to VF) try to remap also other VFs to
+ * linearize irqs register usage.
+ */
+int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
+{
+	struct pci_dev *pdev = pci_physfn(vf_dev);
+	struct ice_pf *pf = pci_get_drvdata(pdev);
+	struct ice_vf *vf;
+	u16 queues;
+	int id;
+
+	if (!ice_get_num_vfs(pf))
+		return -ENOENT;
+
+	if (!msix_vec_count)
+		return 0;
+
+	queues = msix_vec_count;
+	/* add 1 MSI-X for OICR */
+	msix_vec_count += 1;
+
+	/* Transition of PCI VF function number to function_id */
+	for (id = 0; id < pci_num_vf(pdev); id++) {
+		if (vf_dev->devfn == pci_iov_virtfn_devfn(pdev, id))
+			break;
+	}
+
+	if (id == pci_num_vf(pdev))
+		return -ENOENT;
+
+	vf = ice_get_vf_by_id(pf, id);
+
+	if (!vf)
+		return -ENOENT;
+
+	ice_dis_vf_mappings(vf);
+	vf->num_msix = msix_vec_count;
+	vf->num_vf_qs = queues;
+	ice_vsi_rebuild(ice_get_vf_vsi(vf), ICE_VSI_FLAG_NO_INIT);
+	ice_ena_vf_mappings(vf);
+	ice_put_vf(vf);
+
+	return 0;
+}
+
 /**
  * ice_sriov_configure - Enable or change number of VFs via sysfs
  * @pdev: pointer to a pci_dev structure
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
index 06829443d540..8488df38b586 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
@@ -60,6 +60,8 @@ void ice_print_vfs_mdd_events(struct ice_pf *pf);
 void ice_print_vf_rx_mdd_event(struct ice_vf *vf);
 bool
 ice_vc_validate_pattern(struct ice_vf *vf, struct virtchnl_proto_hdrs *proto);
+u32 ice_sriov_get_vf_total_msix(struct pci_dev *pdev);
+int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count);
 #else /* CONFIG_PCI_IOV */
 static inline void ice_process_vflr_event(struct ice_pf *pf) { }
 static inline void ice_free_vfs(struct ice_pf *pf) { }
@@ -142,5 +144,16 @@ ice_get_vf_stats(struct net_device __always_unused *netdev,
 {
 	return -EOPNOTSUPP;
 }
+
+static inline u32 ice_sriov_get_vf_total_msix(struct pci_dev *pdev)
+{
+	return 0;
+}
+
+static inline int
+ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
+{
+	return -EOPNOTSUPP;
+}
 #endif /* CONFIG_PCI_IOV */
 #endif /* _ICE_SRIOV_H_ */
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
