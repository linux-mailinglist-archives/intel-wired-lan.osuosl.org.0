Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C063F61311B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Oct 2022 08:14:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 493EF40391;
	Mon, 31 Oct 2022 07:14:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 493EF40391
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667200481;
	bh=7POnQSQH9LIqfgGYen0Wn73YO2BGvw4vJeWiWiKlT3c=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=jtw2cX2NRDQh6t5jBJJol8WRYKAj3HI1gIpgfIN4PxMopHo1JQZ6Az3X6tX2HSYmt
	 GrtKXD+thWzPD+YvzPJ3R0QACiURtHPxo5gKzgIYzzA+B65sXSdFFGOafO1ZIA71sD
	 Nlbj8q8GsY1RKGvdaFY52xOkPs4h4xMv+u3CCidJwxvSjZj7kiwEUVtblXqjw3ZwxR
	 rCI5uijm+e5KCaBbunqkEJeerSfk1ZXWJUV23aBUkGjKPdR6rB1nB0oTh/Fhd2+hid
	 PIE/+OdRZyNPEmdII+XC+r0Eh/1g/JjuHOd8y9ECRHIjE6VAXzhc7s4qgoZECLv30m
	 zcBNEWk50JAfg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8WKJCO_oTe6u; Mon, 31 Oct 2022 07:14:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 01A67402F5;
	Mon, 31 Oct 2022 07:14:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01A67402F5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4ED181BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 07:14:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 297F6402F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 07:14:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 297F6402F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xegWw60_XAeF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Oct 2022 07:14:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 437344023B
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 437344023B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 07:14:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="310532650"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="310532650"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 00:14:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="628148558"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="628148558"
Received: from propan.igk.intel.com ([10.123.220.122])
 by orsmga007.jf.intel.com with ESMTP; 31 Oct 2022 00:14:32 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 31 Oct 2022 08:14:30 +0100
Message-Id: <20221031071430.5998-1-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667200474; x=1698736474;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FS1vck14RX+JwKY9dJI21jFVNxrQpSfBnGd0MwDdkCg=;
 b=Px5YS0Aa2dZHX4CA2OoMTAn7SEBHXXCZ+iAn6by3JkS1n5he3aKQSQM5
 s+enQYv9Hw9izBkEP1FyHUPjIZO3UxtT4iMAOV3SwHWBmUoD8BSqFNcRO
 rOjn1M7Qb3RSW9yTcKeQjIyhhx2w9cKlUGc2asxdpeHAgtynZlqXFdZj6
 6UFkp4s8F4AL9AjBrV3Pdv5HxVoi8hTLzuFgQp32cJqqqR+dM4aC49Ct9
 0bp8Uv5gcfcdPE0p3EWc0Rh7UrAaQgESo7zeTY8ZmQbOeW5Hk2g2CbZMO
 xfQgqs53OJlxK29iOW1uBVSEj6Sw2QLb/SdCn7McX+V9fidGSZH6dvL6T
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Px5YS0Aa
Subject: [Intel-wired-lan] [PATCH net v1] ice: Create a separate kthread to
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
sends messages to ADQ and waits for responses. This causes
ice_ptp_extts_work() to be blocked while waiting to be scheduled. This
causes problems with the reading of the incoming signal timestamps,
which disrupts a 100 Hz signal.

Create an additional kthread_worker pf.ptp.kworker_extts to service only
ice_ptp_extts_work() as soon as possible.

Fixes: 77a781155a65 ("ice: enable receive hardware timestamping")
Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
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
