Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4B2615D56
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Nov 2022 09:06:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 251E5401B2;
	Wed,  2 Nov 2022 08:06:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 251E5401B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667376397;
	bh=drqc4OyI+HQSLBTheTsuzJhK3/qZ0F+2cN7A34Veh6Q=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Q6J1OF240XIhYPhRdvVWQmL23WPr9db9MFkWjt8M8NXQX2g036PDXQzXZ0bSzjdWd
	 9snJkYxR0/FU7Gs1YeQpbNPZph/myIInn6Pv308fRHsNE+w0lwDpROanyi9tlP2m0m
	 ukTGGzP/4b7kIOTMNzWlBUQL7PaUuG/mTeUlmDcI0y+5AHCw3IEpObbnNLNIoetCwt
	 3zK1WcQcDXHkuUa/PLBkF1sP3qwEX1CGyUyOd13UEfEw9UKVxRxv4AcFqYoUI30luf
	 DR3Y0+I4z8DbduCbyMeP7oGt5/hY7Itx22zT4bpz+7KJMi4Q73qTN/ouZqJ/h5c6T8
	 PzANJza1PKZjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eWwoDtG6atGr; Wed,  2 Nov 2022 08:06:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB74940133;
	Wed,  2 Nov 2022 08:06:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB74940133
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D48DE1BF306
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 08:06:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A8D1040909
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 08:06:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8D1040909
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6aMbi5SUJOIc for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Nov 2022 08:06:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 301CA404E7
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 301CA404E7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 08:06:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="336018946"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="336018946"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 01:06:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="585307924"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="585307924"
Received: from propan.igk.intel.com ([10.123.220.122])
 by orsmga003.jf.intel.com with ESMTP; 02 Nov 2022 01:06:17 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  2 Nov 2022 09:06:10 +0100
Message-Id: <20221102080610.38265-1-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667376388; x=1698912388;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=47tW4T6nGMOrY4+P4rNqjPJCFVYd7w3Y902ztTOTGjI=;
 b=BnUfMHs57pMUBpceAGofGr/Q99QTeLxtKXWYOQMLgltVC0k24DhJG4K7
 C2Rckz9efoUq+1qZYpr2ga9enT5l7R4aKVLkIirwVqiZodLnLwYrw+jbD
 moFRWTki0N3+JZKVbLQXRsP6pK4614tH+w0AhsjVA2WLUtUA3UhImCBf1
 PcB9BPLBlwJuyME9utKjMI2cjcget+07scmecqrK7nHqIXS3Sj+Fb1Hrq
 OhJk5rBxiWHtDD5V5cArT0BApvTalnFEYAxFPfwIPupiGP9P81oChNHiY
 /5AxDHyPOmzPMwzbVikmmn2NdWH+0Q077bLdy8ZRrDIRIf0SNLKyrOgFz
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BnUfMHs5
Subject: [Intel-wired-lan] [PATCH net v2] ice: Create a separate kthread to
 handle ptp extts work
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
Cc: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ice_ptp_extts_work() and ice_ptp_periodic_work() are both scheduled on
the same kthread_worker pf.ptp.kworker. But, ice_ptp_periodic_work()
sends messages to AQ and waits for responses. This causes
ice_ptp_extts_work() to be blocked while waiting to be scheduled. This
causes problems with the reading of the incoming signal timestamps,
which disrupts a 100 Hz signal.

Create an additional kthread_worker pf.ptp.kworker_extts to service only
ice_ptp_extts_work() as soon as possible.

Fixes: 77a781155a65 ("ice: enable receive hardware timestamping")
Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
---
v2: Correct acronym for Admin Queue: ADQ --> AQ.
---
 drivers/net/ethernet/intel/ice/ice_main.c |  5 ++++-
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 15 ++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_ptp.h  |  2 ++
 3 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0f6718719453..1c48c28dfc9c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3106,7 +3106,10 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 						     GLTSYN_STAT_EVENT1_M |
 						     GLTSYN_STAT_EVENT2_M);
 		ena_mask &= ~PFINT_OICR_TSYN_EVNT_M;
-		kthread_queue_work(pf->ptp.kworker, &pf->ptp.extts_work);
+
+		if (pf->ptp.kworker_extts)
+			kthread_queue_work(pf->ptp.kworker_extts,
+					   &pf->ptp.extts_work);
 	}
 
 #define ICE_AUX_CRIT_ERR (PFINT_OICR_PE_CRITERR_M | PFINT_OICR_HMC_ERR_M | PFINT_OICR_PE_PUSH_M)
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 011b727ab190..acbac172c951 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2604,7 +2604,7 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
  */
 static int ice_ptp_init_work(struct ice_pf *pf, struct ice_ptp *ptp)
 {
-	struct kthread_worker *kworker;
+	struct kthread_worker *kworker, *kworker_extts;
 
 	/* Initialize work functions */
 	kthread_init_delayed_work(&ptp->work, ice_ptp_periodic_work);
@@ -2620,6 +2620,13 @@ static int ice_ptp_init_work(struct ice_pf *pf, struct ice_ptp *ptp)
 
 	ptp->kworker = kworker;
 
+	kworker_extts = kthread_create_worker(0, "ice-ptp-extts-%s",
+					      dev_name(ice_pf_to_dev(pf)));
+	if (IS_ERR(kworker_extts))
+		return PTR_ERR(kworker_extts);
+
+	ptp->kworker_extts = kworker_extts;
+
 	/* Start periodic work going */
 	kthread_queue_delayed_work(ptp->kworker, &ptp->work, 0);
 
@@ -2719,11 +2726,17 @@ void ice_ptp_release(struct ice_pf *pf)
 
 	ice_ptp_port_phy_stop(&pf->ptp.port);
 	mutex_destroy(&pf->ptp.port.ps_lock);
+
 	if (pf->ptp.kworker) {
 		kthread_destroy_worker(pf->ptp.kworker);
 		pf->ptp.kworker = NULL;
 	}
 
+	if (pf->ptp.kworker_extts) {
+		kthread_destroy_worker(pf->ptp.kworker_extts);
+		pf->ptp.kworker_extts = NULL;
+	}
+
 	if (!pf->ptp.clock)
 		return;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 028349295b71..c63ad2c9af4c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -165,6 +165,7 @@ struct ice_ptp_port {
  * @ext_ts_chan: the external timestamp channel in use
  * @ext_ts_irq: the external timestamp IRQ in use
  * @kworker: kwork thread for handling periodic work
+ * @kworker_extts: kworker thread for handling extts work
  * @perout_channels: periodic output data
  * @info: structure defining PTP hardware capabilities
  * @clock: pointer to registered PTP clock device
@@ -186,6 +187,7 @@ struct ice_ptp {
 	u8 ext_ts_chan;
 	u8 ext_ts_irq;
 	struct kthread_worker *kworker;
+	struct kthread_worker *kworker_extts;
 	struct ice_perout_channel perout_channels[GLTSYN_TGT_H_IDX_MAX];
 	struct ptp_clock_info info;
 	struct ptp_clock *clock;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
