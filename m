Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A21B731968
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 14:59:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEC6441F11;
	Thu, 15 Jun 2023 12:59:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEC6441F11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686833988;
	bh=yr3D5qTGwRCp3w8P1zVlZMD1tnsNTM852bogcj7Zgd0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tHjG8sRYlSx/32nrun0LBC2Qz8Kg2J3841lto9MPiKfCdYqjI43C265BJDAgAq6AB
	 LDDyBLDXMBn4EhkEX6Dv/Rb3he4qGC9rHvk8M6huxe4eImG9gr+w6Dk4N6whfavp84
	 pXepBgtmNkayQ2zUz0JdEF6/O2FdzCVHoacTG9xypyZjiAsEIeVA8T+IDe4Vz+Bhno
	 qu8lakEHUCZlhwQZ0e7+VynvfYy1SqT6guwKhbWCs83a0dUoJUm2S6Mif1LOjmpWKp
	 yQlkA1gVvS7R/82b+y5LOf2BMUs0Z2ldT8jcp2M+LC/ve8Cvk8dMVSOJsO+BOXnZdX
	 O2UA86ozjgrFg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rKi2_IWY0HwM; Thu, 15 Jun 2023 12:59:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 53A4641EF6;
	Thu, 15 Jun 2023 12:59:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 53A4641EF6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 46BC11BF275
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 12:59:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 20D61404E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 12:59:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 20D61404E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lJwFSSPTqXJV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 12:59:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DB0F400D8
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5DB0F400D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 12:59:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="424794834"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="424794834"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 05:59:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="825259751"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="825259751"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga002.fm.intel.com with ESMTP; 15 Jun 2023 05:59:27 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 15 Jun 2023 14:38:29 +0200
Message-Id: <20230615123830.155927-4-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230615123830.155927-1-michal.swiatkowski@linux.intel.com>
References: <20230615123830.155927-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686833969; x=1718369969;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JcrYUR58qpMheWpFgQE00BiitNYzYFa+Njs0RKuYuiM=;
 b=fdygXoVZVTa6I9alQrfNGCUfEo0PjoxKddHUeRyPbeAPKEFUqJ72Ped9
 uoQkupzbHiXTsVToLHwpCXjiVJHvD7pfxZupNPhNm5yrmTj5ZXyXOR/7k
 19fV2nHU6U2Gi+pW1ehZWp1TtM3ypkd1qsTkBofrsdyopc+lU63f1mrBv
 y90eTAPhTJlB25PpE8h4aQt4nUq0ny8OOflkpcv64lfWAc10UrFXZxbfJ
 oVPbV7rbjeTW/+Dvp2IOyl6koZhMfElfrPFSXoWOHFQtSpiUR+jH2ZCS+
 rnV2qJoVzS3Nb4AxnRvIzkpHykK5fXY+vWZlpXa80PVwIXdGZyhjQpD91
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fdygXoVZ
Subject: [Intel-wired-lan] [PATCH iwl-next v1 3/4] ice: set MSI-X vector
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
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com
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
index 9d55290b6dcc..1061161ec737 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5545,6 +5545,8 @@ static struct pci_driver ice_driver = {
 #endif /* CONFIG_PM */
 	.shutdown = ice_shutdown,
 	.sriov_configure = ice_sriov_configure,
+	.sriov_get_vf_total_msix = ice_sriov_get_vf_total_msix,
+	.sriov_set_msix_vec_count = ice_sriov_set_msix_vec_count,
 	.err_handler = &ice_pci_err_handler
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index da0f1deef89b..e20ef1924fae 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -971,6 +971,75 @@ static int ice_check_sriov_allowed(struct ice_pf *pf)
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
index 346cb2666f3a..77e3dc5feefd 100644
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
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
