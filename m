Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B20D96FB06D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 May 2023 14:43:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F3158427A;
	Mon,  8 May 2023 12:43:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F3158427A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683549832;
	bh=q2Bp38i7sM/S4gbzjqOavHPuuRPSunc5xuZDvNpPzME=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jdzYPoaju+YEKxyTRR04cywg2tKuEI0TR5BrjOpNNy3JuoM4C6gEZwdUMr36ZxCQr
	 811gQ/33edFJR0/8WVvPNtQYG3juQ3Z6NSzfrw1EAWxKXSTzW6WytBi0mkYOTJqfY6
	 uPRtve9eofaXKANNZegalp2MWqM6LJvagkXdcIRlS+o8LJhQPfLngymF3OkzIlxQTS
	 z0y8VdAXG7UKTdQfN4AyxbWCF+iLQv5+mcQ/q6N4QkQRzBnGW12qpbBPf+vyEGJCRw
	 Rx6dMQrsmOyMpWCZQNkCxakR0bTfmJ4acM5l3hVZIKGD6I+KN2YG/tQCiS120neK8R
	 gnuXNi6LQrHeg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4GvZqMJg8zhC; Mon,  8 May 2023 12:43:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25B7F813CF;
	Mon,  8 May 2023 12:43:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 25B7F813CF
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C3C751BF364
 for <intel-wired-lan@osuosl.org>; Mon,  8 May 2023 12:43:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9C23441D7E
 for <intel-wired-lan@osuosl.org>; Mon,  8 May 2023 12:43:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C23441D7E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4y9Z-JInhXjE for <intel-wired-lan@osuosl.org>;
 Mon,  8 May 2023 12:43:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 922FB402A8
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 922FB402A8
 for <intel-wired-lan@osuosl.org>; Mon,  8 May 2023 12:43:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="349665102"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="349665102"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 05:43:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="676047943"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="676047943"
Received: from nimitz.igk.intel.com ([10.102.21.231])
 by orsmga006.jf.intel.com with ESMTP; 08 May 2023 05:43:32 -0700
From: Piotr Raczynski <piotr.raczynski@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon,  8 May 2023 14:43:16 +0200
Message-Id: <20230508124321.2927867-4-piotr.raczynski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230508124321.2927867-1-piotr.raczynski@intel.com>
References: <20230508124321.2927867-1-piotr.raczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683549815; x=1715085815;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WkkrgtIyaU0FuH2AiKUiQ10wQSPEv8OMAVH74ROnYNc=;
 b=SDOFFOYlRP3wTy+Xb15xxcHrkzU20+POxCMDM6me0qVIjU6gLFJ1e54S
 nPcZLEPc8UNI+EkVXs1BP63zxtEbH6j3m2k6d+Osa2yudieMU+/jKCLxm
 Ya72G3rd4uECIreytMNgGkx5ERVs6F/An799VJRgkvVu+TKUUbTWKrsae
 YVI16cDdy1PXSP5n0bqgeY9JAXHqLolW4OAyLPabbDwzTUtxCeeoC5OBG
 2lK0Wo3GizBASdYtLbu5x8bY7mCJi3hPcnHhg3sHrFw2nL2CNBQ+H83Mc
 Zkh6LndHI2NiJy3AotGkudppSDRs6AG73Eizk+uOM033enyDLmmOGS1Z2
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SDOFFOYl
Subject: [Intel-wired-lan] [PATCH net-next v4 3/8] ice: use preferred MSIX
 allocation api
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
Cc: michal.swiatkowski@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, simon.horman@corigine.com, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Move away from using pci_enable_msix_range/pci_disable_msix and use
pci_alloc_irq_vectors/pci_free_irq_vectors instead.

As a result stop tracking msix_entries since with newer API entries are
handled by MSIX core. However, due to current design of communication
with RDMA driver which accesses ice_pf::msix_entries directly, keep
using the array just for RDMA driver use.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Simon Horman <simon.horman@corigine.com>
Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_idc.c  | 29 ++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_irq.c  | 40 +++++------------------
 drivers/net/ethernet/intel/ice/ice_main.c |  6 ++--
 3 files changed, 37 insertions(+), 38 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index e6bc2285071e..1000759505d7 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -235,14 +235,33 @@ EXPORT_SYMBOL_GPL(ice_get_qos_params);
 static int ice_reserve_rdma_qvector(struct ice_pf *pf)
 {
 	if (ice_is_rdma_ena(pf)) {
-		int index;
+		int index, i;
 
 		index = ice_get_res(pf, pf->irq_tracker, pf->num_rdma_msix,
 				    ICE_RES_RDMA_VEC_ID);
 		if (index < 0)
 			return index;
+
+		pf->msix_entries = kcalloc(pf->num_rdma_msix,
+					   sizeof(*pf->msix_entries),
+						  GFP_KERNEL);
+		if (!pf->msix_entries) {
+			ice_free_res(pf->irq_tracker, pf->rdma_base_vector,
+				     ICE_RES_RDMA_VEC_ID);
+			return -ENOMEM;
+		}
+
 		pf->num_avail_sw_msix -= pf->num_rdma_msix;
-		pf->rdma_base_vector = (u16)index;
+
+		/* RDMA is the only user of pf->msix_entries array */
+		pf->rdma_base_vector = 0;
+
+		for (i = 0; i < pf->num_rdma_msix; i++, index++) {
+			struct msix_entry *entry = &pf->msix_entries[i];
+
+			entry->entry = index;
+			entry->vector = pci_irq_vector(pf->pdev, index);
+		}
 	}
 	return 0;
 }
@@ -253,6 +272,12 @@ static int ice_reserve_rdma_qvector(struct ice_pf *pf)
  */
 static void ice_free_rdma_qvector(struct ice_pf *pf)
 {
+	if (!pf->msix_entries)
+		return;
+
+	kfree(pf->msix_entries);
+	pf->msix_entries = NULL;
+
 	pf->num_avail_sw_msix -= pf->num_rdma_msix;
 	ice_free_res(pf->irq_tracker, pf->rdma_base_vector,
 		     ICE_RES_RDMA_VEC_ID);
diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
index 1fc7daec9732..f61be5d76373 100644
--- a/drivers/net/ethernet/intel/ice/ice_irq.c
+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
@@ -59,7 +59,7 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 {
 	int num_cpus, hw_num_msix, v_other, v_wanted, v_actual;
 	struct device *dev = ice_pf_to_dev(pf);
-	int err, i;
+	int err;
 
 	hw_num_msix = pf->hw.func_caps.common_cap.num_msix_vectors;
 	num_cpus = num_online_cpus();
@@ -113,23 +113,13 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 				   pf->num_rdma_msix);
 	}
 
-	pf->msix_entries = devm_kcalloc(dev, v_wanted,
-					sizeof(*pf->msix_entries), GFP_KERNEL);
-	if (!pf->msix_entries) {
-		err = -ENOMEM;
-		goto exit_err;
-	}
-
-	for (i = 0; i < v_wanted; i++)
-		pf->msix_entries[i].entry = i;
-
 	/* actually reserve the vectors */
-	v_actual = pci_enable_msix_range(pf->pdev, pf->msix_entries,
-					 ICE_MIN_MSIX, v_wanted);
+	v_actual = pci_alloc_irq_vectors(pf->pdev, ICE_MIN_MSIX, v_wanted,
+					 PCI_IRQ_MSIX);
 	if (v_actual < 0) {
 		dev_err(dev, "unable to reserve MSI-X vectors\n");
 		err = v_actual;
-		goto msix_err;
+		goto exit_err;
 	}
 
 	if (v_actual < v_wanted) {
@@ -138,9 +128,9 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 
 		if (v_actual < ICE_MIN_MSIX) {
 			/* error if we can't get minimum vectors */
-			pci_disable_msix(pf->pdev);
+			pci_free_irq_vectors(pf->pdev);
 			err = -ERANGE;
-			goto msix_err;
+			goto exit_err;
 		} else {
 			int v_remain = v_actual - v_other;
 
@@ -160,33 +150,19 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 
 	return v_actual;
 
-msix_err:
-	devm_kfree(dev, pf->msix_entries);
-
 exit_err:
 	pf->num_rdma_msix = 0;
 	pf->num_lan_msix = 0;
 	return err;
 }
 
-/**
- * ice_dis_msix - Disable MSI-X interrupt setup in OS
- * @pf: board private structure
- */
-static void ice_dis_msix(struct ice_pf *pf)
-{
-	pci_disable_msix(pf->pdev);
-	devm_kfree(ice_pf_to_dev(pf), pf->msix_entries);
-	pf->msix_entries = NULL;
-}
-
 /**
  * ice_clear_interrupt_scheme - Undo things done by ice_init_interrupt_scheme
  * @pf: board private structure
  */
 void ice_clear_interrupt_scheme(struct ice_pf *pf)
 {
-	ice_dis_msix(pf);
+	pci_free_irq_vectors(pf->pdev);
 
 	if (pf->irq_tracker) {
 		devm_kfree(ice_pf_to_dev(pf), pf->irq_tracker);
@@ -213,7 +189,7 @@ int ice_init_interrupt_scheme(struct ice_pf *pf)
 						   vectors),
 				       GFP_KERNEL);
 	if (!pf->irq_tracker) {
-		ice_dis_msix(pf);
+		pci_free_irq_vectors(pf->pdev);
 		return -ENOMEM;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1a32befcfb7f..31d9cc0bf080 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3243,10 +3243,8 @@ static void ice_free_irq_msix_misc(struct ice_pf *pf)
 	wr32(hw, PFINT_OICR_ENA, 0);
 	ice_flush(hw);
 
-	if (pf->msix_entries) {
-		synchronize_irq(misc_irq_num);
-		devm_free_irq(ice_pf_to_dev(pf), misc_irq_num, pf);
-	}
+	synchronize_irq(misc_irq_num);
+	devm_free_irq(ice_pf_to_dev(pf), misc_irq_num, pf);
 
 	pf->num_avail_sw_msix += 1;
 	ice_free_res(pf->irq_tracker, pf->oicr_idx, ICE_RES_MISC_VEC_ID);
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
