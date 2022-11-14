Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 158FA6280DF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Nov 2022 14:12:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12D6E4155E;
	Mon, 14 Nov 2022 13:12:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12D6E4155E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668431523;
	bh=47IxZYaVRBnKq1LoMssIGBlcurITiVdxEsFKOJxQBg4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ODbune5r5lfnbyjBDhmnJQxQ9KW1l13dM7ZU1DJG3Sf33szemn6rthKD2PypviILm
	 hlEeQttZrYY+oM/SKpEEjZPA3vhd6t5lACe1zdj6Z/O0YJyysgards536crjKauSDJ
	 pacFSCHLIwC9Bsb/Gbk0xVoBlToROt8YkYB9VKhya+IPtyHmz7pzzG/lR+tAXa/Ucc
	 7rl1Z4iY/thakVJeC0Jklbhh98r3Mp7lSe+jLsaYFpkEN/N/Sx1D0N7cQFZ1Oa6atm
	 ZHQKa904XHm3/sKL58nMfETZ40UP09z/F7MrIXMgjsyBofPGrk9SxD+104lypq46//
	 5BKeXloLoiKtw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dtmytANVpRCd; Mon, 14 Nov 2022 13:12:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97E9E4098B;
	Mon, 14 Nov 2022 13:12:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97E9E4098B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A09401BF379
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:11:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7BFCA8186B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:11:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BFCA8186B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OxDGdSxUsnNJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Nov 2022 13:11:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB17E817FF
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BB17E817FF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:11:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="309591017"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="309591017"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 05:11:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="616305842"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="616305842"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga006.jf.intel.com with ESMTP; 14 Nov 2022 05:11:50 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: netdev@vger.kernel.org, davem@davemloft.net, kuba@kernel.org,
 pabeni@redhat.com, edumazet@google.com
Date: Mon, 14 Nov 2022 13:57:43 +0100
Message-Id: <20221114125755.13659-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668431515; x=1699967515;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7Ce8aRJrwaIeECv3XGlXlz0W0+lnMTqEOS/2LgKL3XE=;
 b=TqAA9tW1ttO6qhRCXoV3NWjH5pCwfpKHdkpuhvBy68K2WbTWwRUYQHWw
 E6lj1kw9QZH+uzUGM1s2Yvx/QFXEsAV64QnnbDy6m8XxAjV6NBrhItyXz
 FVPFpT3AxKjMRjzs+V04uUPFHkcV6/pv/AqIGJ+ppjwOa3Xj9IKwHDi6G
 yd8zBY7NR2VJ2H1PtQY+SLpFiMG6vx/se8TU9rYnBrXpBUS49UPpe7VHq
 grP9QjGP6gEfA0/WeXl2m0csLruyqYIL+Q+GbPDNKHI2TaAU5Fm3TR/tj
 sKHITB06EJtM5fZgCrROHvyLHHcAJuPwoGVeLjxhwR6nCKDicmIjbItHz
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TqAA9tW1
Subject: [Intel-wired-lan] [PATCH net-next 01/13] ice: move RDMA init to
 ice_idc.c
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
Cc: mustafa.ismail@intel.com, leszek.kaliszczuk@intel.com, jiri@nvidia.com,
 intel-wired-lan@lists.osuosl.org, shiraz.saleem@intel.com,
 przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Simplify probe flow by moving all RDMA related code to ice_init_rdma().
Unroll irq allocation if RDMA initialization fails.

Implement ice_deinit_rdma() and use it in remove flow.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Acked-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |  1 +
 drivers/net/ethernet/intel/ice/ice_idc.c  | 52 ++++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_main.c | 29 +++----------
 3 files changed, 57 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index f88ee051e71c..c0079e88cda7 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -900,6 +900,7 @@ void ice_print_link_msg(struct ice_vsi *vsi, bool isup);
 int ice_plug_aux_dev(struct ice_pf *pf);
 void ice_unplug_aux_dev(struct ice_pf *pf);
 int ice_init_rdma(struct ice_pf *pf);
+void ice_deinit_rdma(struct ice_pf *pf);
 const char *ice_aq_str(enum ice_aq_err aq_err);
 bool ice_is_wol_supported(struct ice_hw *hw);
 void ice_fdir_del_all_fltrs(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index 895c32bcc8b5..579d2a433ea1 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -6,6 +6,8 @@
 #include "ice_lib.h"
 #include "ice_dcb_lib.h"
 
+static DEFINE_IDA(ice_aux_ida);
+
 /**
  * ice_get_auxiliary_drv - retrieve iidc_auxiliary_drv struct
  * @pf: pointer to PF struct
@@ -245,6 +247,17 @@ static int ice_reserve_rdma_qvector(struct ice_pf *pf)
 	return 0;
 }
 
+/**
+ * ice_free_rdma_qvector - free vector resources reserved for RDMA driver
+ * @pf: board private structure to initialize
+ */
+static void ice_free_rdma_qvector(struct ice_pf *pf)
+{
+	pf->num_avail_sw_msix -= pf->num_rdma_msix;
+	ice_free_res(pf->irq_tracker, pf->rdma_base_vector,
+		     ICE_RES_RDMA_VEC_ID);
+}
+
 /**
  * ice_adev_release - function to be mapped to AUX dev's release op
  * @dev: pointer to device to free
@@ -331,12 +344,47 @@ int ice_init_rdma(struct ice_pf *pf)
 	struct device *dev = &pf->pdev->dev;
 	int ret;
 
+	if (!ice_is_rdma_ena(pf)) {
+		dev_warn(dev, "RDMA is not supported on this device\n");
+		return 0;
+	}
+
+	pf->aux_idx = ida_alloc(&ice_aux_ida, GFP_KERNEL);
+	if (pf->aux_idx < 0) {
+		dev_err(dev, "Failed to allocate device ID for AUX driver\n");
+		return -ENOMEM;
+	}
+
 	/* Reserve vector resources */
 	ret = ice_reserve_rdma_qvector(pf);
 	if (ret < 0) {
 		dev_err(dev, "failed to reserve vectors for RDMA\n");
-		return ret;
+		goto err_reserve_rdma_qvector;
 	}
 	pf->rdma_mode |= IIDC_RDMA_PROTOCOL_ROCEV2;
-	return ice_plug_aux_dev(pf);
+	ret = ice_plug_aux_dev(pf);
+	if (ret)
+		goto err_plug_aux_dev;
+	return 0;
+
+err_plug_aux_dev:
+	ice_free_rdma_qvector(pf);
+err_reserve_rdma_qvector:
+	pf->adev = NULL;
+	ida_free(&ice_aux_ida, pf->aux_idx);
+	return ret;
+}
+
+/**
+ * ice_deinit_rdma - deinitialize RDMA on PF
+ * @pf: ptr to ice_pf
+ */
+void ice_deinit_rdma(struct ice_pf *pf)
+{
+	if (!ice_is_rdma_ena(pf))
+		return;
+
+	ice_unplug_aux_dev(pf);
+	ice_free_rdma_qvector(pf);
+	ida_free(&ice_aux_ida, pf->aux_idx);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a9fc89aebebe..d5bd56a213ae 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -44,7 +44,6 @@ MODULE_PARM_DESC(debug, "netif level (0=none,...,16=all), hw debug_mask (0x8XXXX
 MODULE_PARM_DESC(debug, "netif level (0=none,...,16=all)");
 #endif /* !CONFIG_DYNAMIC_DEBUG */
 
-static DEFINE_IDA(ice_aux_ida);
 DEFINE_STATIC_KEY_FALSE(ice_xdp_locking_key);
 EXPORT_SYMBOL(ice_xdp_locking_key);
 
@@ -4904,30 +4903,16 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 
 	/* ready to go, so clear down state bit */
 	clear_bit(ICE_DOWN, pf->state);
-	if (ice_is_rdma_ena(pf)) {
-		pf->aux_idx = ida_alloc(&ice_aux_ida, GFP_KERNEL);
-		if (pf->aux_idx < 0) {
-			dev_err(dev, "Failed to allocate device ID for AUX driver\n");
-			err = -ENOMEM;
-			goto err_devlink_reg_param;
-		}
-
-		err = ice_init_rdma(pf);
-		if (err) {
-			dev_err(dev, "Failed to initialize RDMA: %d\n", err);
-			err = -EIO;
-			goto err_init_aux_unroll;
-		}
-	} else {
-		dev_warn(dev, "RDMA is not supported on this device\n");
+	err = ice_init_rdma(pf);
+	if (err) {
+		dev_err(dev, "Failed to initialize RDMA: %d\n", err);
+		err = -EIO;
+		goto err_devlink_reg_param;
 	}
 
 	ice_devlink_register(pf);
 	return 0;
 
-err_init_aux_unroll:
-	pf->adev = NULL;
-	ida_free(&ice_aux_ida, pf->aux_idx);
 err_devlink_reg_param:
 	ice_devlink_unregister_params(pf);
 err_netdev_reg:
@@ -5040,9 +5025,7 @@ static void ice_remove(struct pci_dev *pdev)
 	ice_service_task_stop(pf);
 
 	ice_aq_cancel_waiting_tasks(pf);
-	ice_unplug_aux_dev(pf);
-	if (pf->aux_idx >= 0)
-		ida_free(&ice_aux_ida, pf->aux_idx);
+	ice_deinit_rdma(pf);
 	ice_devlink_unregister_params(pf);
 	set_bit(ICE_DOWN, pf->state);
 
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
