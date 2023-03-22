Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EA23F6C508C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 17:26:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7EE5583EFC;
	Wed, 22 Mar 2023 16:26:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7EE5583EFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679502363;
	bh=Wnb4IYrXfxDFg03rEZq6DhW0aRWUvGtM5CgCg7H/Lno=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pa/MoiNAP/VFgPI8bbR2fClfBkxczrpbAc4hXs1m15YTel/mCTbXmE1DpU5xrst/Z
	 h2WbEV2Ub8oqWAkbTtsr4HNvvaPCsWCMhIR8lepYiCu5DflghYwf6SenfThLqArJPx
	 v2XjUIEzwQJZjZfBvzkSU+/bCOlqK8uNWpMQIYnjJfJDSztYdvCQuqruHEXIQTnmxl
	 mM81eQxiDuGSA/u767Ulpsp58+hP8DTxVA/ITYJwI4jQU3OxGPzdGWBpS8QbmClzDc
	 ahtFu4HnALxvSVo3KWbeZH0i/4q/JHTVVY6JWbNl6rDr+cBhoYEuu/YyTJ8RgnaLli
	 iWzduTx2MFvFA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2PajpgDdO0dt; Wed, 22 Mar 2023 16:26:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7689280EAB;
	Wed, 22 Mar 2023 16:26:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7689280EAB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 59C6D1BF35F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:25:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3E81941D7F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:25:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E81941D7F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z1f5PhoyoqLG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 16:25:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1DDD941D83
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1DDD941D83
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:25:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="404151289"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="404151289"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 09:25:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="825462725"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="825462725"
Received: from nimitz.igk.intel.com ([10.102.21.231])
 by fmsmga001.fm.intel.com with ESMTP; 22 Mar 2023 09:25:33 -0700
From: Piotr Raczynski <piotr.raczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Mar 2023 17:25:24 +0100
Message-Id: <20230322162530.3317238-3-piotr.raczynski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230322162530.3317238-1-piotr.raczynski@intel.com>
References: <20230322162530.3317238-1-piotr.raczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679502336; x=1711038336;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gAsQzJ59pmnWmAAC6QxZVDz8YEgx+tQPfsfxFYHtWdE=;
 b=JWH+5SE6CsQv8TPSeCgy8p+JSeURWGJ3mtWZiinnYeC900fGJPLKVD7F
 DggOItpLQvEzk5YlcBH0qGZyXHCNXD7b8iMKxXU7az6QERqpich8kcIIo
 7hMc7H/wItQH33MU2WCK3+Q41Zw1sKQfmSXpPtatlF2wV+inAam1P1CcM
 OS08sOKr/7epSOZSuAEk4e6+aAj3p21GNvExCkROIK72pbSPEX97RC2G0
 TZNkSjfZrwXG5HPNOTZspG435AiOYLd/djqJh78EMniC+uKoqhXnEmOB9
 zW3ZePazyunVRL+vvnDaMihGYOgF0SD7P8Js1zzyKuse23FA+XUiCzmGr
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JWH+5SE6
Subject: [Intel-wired-lan] [PATCH net-next v2 2/8] ice: use pci_irq_vector
 helper function
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
 jesse.brandeburg@intel.com, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, driver gets interrupt number directly from ice_pf::msix_entries
array. Use helper function dedicated to do just that.

While at it use a variable to store interrupt number in
ice_free_irq_msix_misc instead of calling the helper function twice.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_arfs.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c  |  4 ++--
 drivers/net/ethernet/intel/ice/ice_main.c | 12 ++++++------
 drivers/net/ethernet/intel/ice/ice_ptp.c  |  2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c  |  2 +-
 5 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.c b/drivers/net/ethernet/intel/ice/ice_arfs.c
index b38710b2540f..59146e4bdf3b 100644
--- a/drivers/net/ethernet/intel/ice/ice_arfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_arfs.c
@@ -654,7 +654,7 @@ int ice_set_cpu_rx_rmap(struct ice_vsi *vsi)
 	base_idx = vsi->base_vector;
 	ice_for_each_q_vector(vsi, i)
 		if (irq_cpu_rmap_add(netdev->rx_cpu_rmap,
-				     pf->msix_entries[base_idx + i].vector)) {
+				     pci_irq_vector(pf->pdev, base_idx + i))) {
 			ice_free_cpu_rx_rmap(vsi);
 			return -EINVAL;
 		}
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 8d229011ffc3..a707c0f7ae29 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3058,7 +3058,7 @@ void ice_vsi_free_irq(struct ice_vsi *vsi)
 		u16 vector = i + base;
 		int irq_num;
 
-		irq_num = pf->msix_entries[vector].vector;
+		irq_num = pci_irq_vector(pf->pdev, vector);
 
 		/* free only the irqs that were actually requested */
 		if (!vsi->q_vectors[i] ||
@@ -3237,7 +3237,7 @@ void ice_vsi_dis_irq(struct ice_vsi *vsi)
 		return;
 
 	ice_for_each_q_vector(vsi, i)
-		synchronize_irq(pf->msix_entries[i + base].vector);
+		synchronize_irq(pci_irq_vector(pf->pdev, i + base));
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 6ed5a7a68653..f3032096e5dd 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2539,7 +2539,7 @@ static int ice_vsi_req_irq_msix(struct ice_vsi *vsi, char *basename)
 	for (vector = 0; vector < q_vectors; vector++) {
 		struct ice_q_vector *q_vector = vsi->q_vectors[vector];
 
-		irq_num = pf->msix_entries[base + vector].vector;
+		irq_num = pci_irq_vector(pf->pdev, base + vector);
 
 		if (q_vector->tx.tx_ring && q_vector->rx.rx_ring) {
 			snprintf(q_vector->name, sizeof(q_vector->name) - 1,
@@ -2595,7 +2595,7 @@ static int ice_vsi_req_irq_msix(struct ice_vsi *vsi, char *basename)
 free_q_irqs:
 	while (vector) {
 		vector--;
-		irq_num = pf->msix_entries[base + vector].vector;
+		irq_num = pci_irq_vector(pf->pdev, base + vector);
 		if (!IS_ENABLED(CONFIG_RFS_ACCEL))
 			irq_set_affinity_notifier(irq_num, NULL);
 		irq_set_affinity_hint(irq_num, NULL);
@@ -3272,6 +3272,7 @@ static void ice_dis_ctrlq_interrupts(struct ice_hw *hw)
  */
 static void ice_free_irq_msix_misc(struct ice_pf *pf)
 {
+	int misc_irq_num = pci_irq_vector(pf->pdev, pf->oicr_idx);
 	struct ice_hw *hw = &pf->hw;
 
 	ice_dis_ctrlq_interrupts(hw);
@@ -3281,9 +3282,8 @@ static void ice_free_irq_msix_misc(struct ice_pf *pf)
 	ice_flush(hw);
 
 	if (pf->msix_entries) {
-		synchronize_irq(pf->msix_entries[pf->oicr_idx].vector);
-		devm_free_irq(ice_pf_to_dev(pf),
-			      pf->msix_entries[pf->oicr_idx].vector, pf);
+		synchronize_irq(misc_irq_num);
+		devm_free_irq(ice_pf_to_dev(pf), misc_irq_num, pf);
 	}
 
 	pf->num_avail_sw_msix += 1;
@@ -3355,7 +3355,7 @@ static int ice_req_irq_msix_misc(struct ice_pf *pf)
 	pf->oicr_idx = (u16)oicr_idx;
 
 	err = devm_request_threaded_irq(dev,
-					pf->msix_entries[pf->oicr_idx].vector,
+					pci_irq_vector(pf->pdev, pf->oicr_idx),
 					ice_misc_intr, ice_misc_intr_thread_fn,
 					0, pf->int_name, pf);
 	if (err) {
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index ac6f06f9a2ed..972d4f6fd615 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -911,7 +911,7 @@ ice_ptp_release_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 	spin_unlock(&tx->lock);
 
 	/* wait for potentially outstanding interrupt to complete */
-	synchronize_irq(pf->msix_entries[pf->oicr_idx].vector);
+	synchronize_irq(pci_irq_vector(pf->pdev, pf->oicr_idx));
 
 	ice_ptp_flush_tx_tracker(pf, tx);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index d1e489da7363..4102416d7a41 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -107,7 +107,7 @@ ice_qvec_dis_irq(struct ice_vsi *vsi, struct ice_rx_ring *rx_ring,
 
 		wr32(hw, GLINT_DYN_CTL(q_vector->reg_idx), 0);
 		ice_flush(hw);
-		synchronize_irq(pf->msix_entries[v_idx + base].vector);
+		synchronize_irq(pci_irq_vector(pf->pdev, v_idx + base));
 	}
 }
 
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
