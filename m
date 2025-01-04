Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69552A0115C
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Jan 2025 01:44:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9461740910;
	Sat,  4 Jan 2025 00:43:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UfHoeqgavUgb; Sat,  4 Jan 2025 00:43:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71C15408C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735951437;
	bh=HeVlgROd6x4uMrWoibL20hDy58u8yPxBTwt1UOgrfuI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nE1UpalFy39QPgZVwQodEkkeCswdfqRFXyOs+uyQh0gR6XmQ+X9GXcDdS2Mykna3X
	 Zv1SX/YGxmblUD4lhA5hOj154ftECI1eSVGLDnMN7x6T+2DCflGK1XhS1hCSoVlRD9
	 zOKivpJm+tqTZbmlMUEn139NPIl/nlJ2Wulm0X/0qxRgFtz7jmx8cYU3AmZqacrIXU
	 onOEH61NcvrmVLXW8Fe4qGsD+xhTOLDSM3NxCz1NPZShy/JOMrdtk1fQYs6mTab/no
	 7nOunE23t4hK2aQwlD1037GGWSnU4Gl2NXhyFxOgqtzZAoMlGSYWtPPeTOed6Zmc1H
	 GmR13K0uI6Duw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71C15408C0;
	Sat,  4 Jan 2025 00:43:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 64423AF0
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 00:43:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 458358125F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 00:43:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7DZSFJGKeSuu for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Jan 2025 00:43:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 706F981263
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 706F981263
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 706F981263
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 00:43:54 +0000 (UTC)
X-CSE-ConnectionGUID: 3LYlDHykSzGnXljP4V/LqA==
X-CSE-MsgGUID: /KinyKPwQiyDYBuNj9kwlQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36076003"
X-IronPort-AV: E=Sophos;i="6.12,287,1728975600"; d="scan'208";a="36076003"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 16:43:54 -0800
X-CSE-ConnectionGUID: yOTCkW0WTiG0DlxJ+S3Yhw==
X-CSE-MsgGUID: sxOAX9U1R4C3hPn1xGeksg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,287,1728975600"; d="scan'208";a="106879754"
Received: from spandruv-desk1.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.110.48])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 16:43:49 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Fri,  3 Jan 2025 17:43:13 -0700
Message-ID: <20250104004314.208259-6-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250104004314.208259-1-ahmed.zaki@intel.com>
References: <20250104004314.208259-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735951435; x=1767487435;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jWErJz+EQDOaRYTwARq8kmAaWWmMLuEYTCWS+F+YS5U=;
 b=mohEjyAaNYsIkfmbwZGOTyHtUPHF1HqDIvbWdfDPOPDQvnvGMHaw9N/6
 VzjbY+pu+TlvgBXdSDR3QzopQEOsEcF79tbviHx9avVx6Hyk+sQCWICBG
 +DkQEeEGaO2DZpjTjFhuFwtggVs1aGFnK2bwFm2POYoOtyHakwkffrqlw
 NzGA2XVsgSRClrETaio5j1Xkbr5FjHwwV2yDkivvouMbBO8cJwxJiraL6
 4MROt+yXV/AdaFdx/WM/cvDr55nUB8SWpa1ok0krx3rwx1i/gYKoZwEfM
 jj++FEsnSHYssb1eV75XK3NdWB6EqWQX1pMi/eMjTyETwP8FjOSsfaYdH
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mohEjyAa
Subject: [Intel-wired-lan] [PATCH net-next v3 5/6] ice: use napi's irq
 affinity
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Delete the driver CPU affinity info and use the core's napi config
instead.

Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |  3 --
 drivers/net/ethernet/intel/ice/ice_base.c |  7 +---
 drivers/net/ethernet/intel/ice/ice_lib.c  |  6 ---
 drivers/net/ethernet/intel/ice/ice_main.c | 47 ++---------------------
 4 files changed, 5 insertions(+), 58 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 71e05d30f0fd..a6e6c9e1edc1 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -478,9 +478,6 @@ struct ice_q_vector {
 	struct ice_ring_container rx;
 	struct ice_ring_container tx;
 
-	cpumask_t affinity_mask;
-	struct irq_affinity_notify affinity_notify;
-
 	struct ice_channel *ch;
 
 	char name[ICE_INT_NAME_STR_LEN];
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index b2af8e3586f7..86cf715de00f 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -147,10 +147,6 @@ static int ice_vsi_alloc_q_vector(struct ice_vsi *vsi, u16 v_idx)
 	q_vector->reg_idx = q_vector->irq.index;
 	q_vector->vf_reg_idx = q_vector->irq.index;
 
-	/* only set affinity_mask if the CPU is online */
-	if (cpu_online(v_idx))
-		cpumask_set_cpu(v_idx, &q_vector->affinity_mask);
-
 	/* This will not be called in the driver load path because the netdev
 	 * will not be created yet. All other cases with register the NAPI
 	 * handler here (i.e. resume, reset/rebuild, etc.)
@@ -276,7 +272,8 @@ static void ice_cfg_xps_tx_ring(struct ice_tx_ring *ring)
 	if (test_and_set_bit(ICE_TX_XPS_INIT_DONE, ring->xps_state))
 		return;
 
-	netif_set_xps_queue(ring->netdev, &ring->q_vector->affinity_mask,
+	netif_set_xps_queue(ring->netdev,
+			    &ring->q_vector->napi.config->affinity_mask,
 			    ring->q_index);
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index a7d45a8ce7ac..b5b93a426933 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2589,12 +2589,6 @@ void ice_vsi_free_irq(struct ice_vsi *vsi)
 		      vsi->q_vectors[i]->num_ring_rx))
 			continue;
 
-		/* clear the affinity notifier in the IRQ descriptor */
-		if (!IS_ENABLED(CONFIG_RFS_ACCEL))
-			irq_set_affinity_notifier(irq_num, NULL);
-
-		/* clear the affinity_hint in the IRQ descriptor */
-		irq_update_affinity_hint(irq_num, NULL);
 		synchronize_irq(irq_num);
 		devm_free_irq(ice_pf_to_dev(pf), irq_num, vsi->q_vectors[i]);
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1701f7143f24..8df7332fcbbb 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2512,34 +2512,6 @@ int ice_schedule_reset(struct ice_pf *pf, enum ice_reset_req reset)
 	return 0;
 }
 
-/**
- * ice_irq_affinity_notify - Callback for affinity changes
- * @notify: context as to what irq was changed
- * @mask: the new affinity mask
- *
- * This is a callback function used by the irq_set_affinity_notifier function
- * so that we may register to receive changes to the irq affinity masks.
- */
-static void
-ice_irq_affinity_notify(struct irq_affinity_notify *notify,
-			const cpumask_t *mask)
-{
-	struct ice_q_vector *q_vector =
-		container_of(notify, struct ice_q_vector, affinity_notify);
-
-	cpumask_copy(&q_vector->affinity_mask, mask);
-}
-
-/**
- * ice_irq_affinity_release - Callback for affinity notifier release
- * @ref: internal core kernel usage
- *
- * This is a callback function used by the irq_set_affinity_notifier function
- * to inform the current notification subscriber that they will no longer
- * receive notifications.
- */
-static void ice_irq_affinity_release(struct kref __always_unused *ref) {}
-
 /**
  * ice_vsi_ena_irq - Enable IRQ for the given VSI
  * @vsi: the VSI being configured
@@ -2603,19 +2575,6 @@ static int ice_vsi_req_irq_msix(struct ice_vsi *vsi, char *basename)
 				   err);
 			goto free_q_irqs;
 		}
-
-		/* register for affinity change notifications */
-		if (!IS_ENABLED(CONFIG_RFS_ACCEL)) {
-			struct irq_affinity_notify *affinity_notify;
-
-			affinity_notify = &q_vector->affinity_notify;
-			affinity_notify->notify = ice_irq_affinity_notify;
-			affinity_notify->release = ice_irq_affinity_release;
-			irq_set_affinity_notifier(irq_num, affinity_notify);
-		}
-
-		/* assign the mask for this irq */
-		irq_update_affinity_hint(irq_num, &q_vector->affinity_mask);
 	}
 
 	err = ice_set_cpu_rx_rmap(vsi);
@@ -2631,9 +2590,6 @@ static int ice_vsi_req_irq_msix(struct ice_vsi *vsi, char *basename)
 free_q_irqs:
 	while (vector--) {
 		irq_num = vsi->q_vectors[vector]->irq.virq;
-		if (!IS_ENABLED(CONFIG_RFS_ACCEL))
-			irq_set_affinity_notifier(irq_num, NULL);
-		irq_update_affinity_hint(irq_num, NULL);
 		devm_free_irq(dev, irq_num, &vsi->q_vectors[vector]);
 	}
 	return err;
@@ -3674,6 +3630,9 @@ void ice_set_netdev_features(struct net_device *netdev)
 	 */
 	netdev->hw_features |= NETIF_F_RXFCS;
 
+	/* Allow core to manage IRQs affinity */
+	netif_enable_irq_affinity(netdev);
+
 	netif_set_tso_max_size(netdev, ICE_MAX_TSO_SIZE);
 }
 
-- 
2.43.0

