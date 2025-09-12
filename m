Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1BEB54F1D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 15:17:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97B5A4085D;
	Fri, 12 Sep 2025 13:17:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 54w1ou4JtUWe; Fri, 12 Sep 2025 13:17:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C061B408A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757683040;
	bh=UlPf7BHbr68Ycxi63qRNeaPS00l9Wr5CGGlafLyNS20=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OHxpkpn6uHcm5J+q3nlltUO3DCBhYau1DNWPU1C/WdtdbpB1LvfwFh/5z/p/aALRX
	 gvcK9QLCC56O+GMUw9fsq1CVqd+6Wa9DTfGIbsUQN3PDksCL4MYnMtDqDoXr/mhz7R
	 IeL4biNgk39cX5rRZ1+Xjo4qY1uUcWiEm2LQL9VrfJDnGk637RDGuSncvTk9nRpyTI
	 tWzRYv+vO/NVW06fotiLvPW8aU66cKXT0z/nZUExJqt379r2q/Lt92hEbG4eb+IcrY
	 5rhENVuodt6TCbYZaA96T+5WvlWoUCIWGAk401Nge7K6ItQM3r+YA+drbu7fa4rbVG
	 SIs5KkODyw+yQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C061B408A1;
	Fri, 12 Sep 2025 13:17:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id EE00512D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A3930405EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xbaAq0gAoWYo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 13:17:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 07C8D40604
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07C8D40604
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 07C8D40604
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:13 +0000 (UTC)
X-CSE-ConnectionGUID: z5kxfZDNQiimvn+QsCISBQ==
X-CSE-MsgGUID: dod5PqSsRZ2W1/LT0d4ujg==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="85461408"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="85461408"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:17:13 -0700
X-CSE-ConnectionGUID: Ek1tYyg+R/ykV9jdCynt/g==
X-CSE-MsgGUID: oEto6l+IRc+75bxBuWhD3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="173131212"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa006.jf.intel.com with ESMTP; 12 Sep 2025 06:17:11 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id DDEE92FC70;
 Fri, 12 Sep 2025 14:17:09 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 12 Sep 2025 15:06:20 +0200
Message-Id: <20250912130627.5015-3-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757683034; x=1789219034;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V/mQSwS8gXXPUzTsZ7IwM2FLorQBirXchMY7nkdp8Rs=;
 b=NOr4NCA8TtwQQ4uhn7qpS/PvVFPagyLV0iO/pW42ts2ZXKdSP9RL0aLP
 ILkfdIoQsioNwAn6G7ErbY8C/dPUiVlkVuxQwWH9yKb3k1jDL38Uewd4L
 O1ntta1B406gWIW/FBwrYixKaH4uzJhgVa1hlQES7KBwPZLbt5cfY0ztT
 Yg/3nAk+ANwKkR/xXu1Qc2xEicnEy0sD3cmACbJYdLrECuYPr+5frhMfB
 2NrmJ10Vcqoor4O94oQh9njRtd5Q+s6ogj1jU/SNhN5Dx+P2CDp9z0XCi
 0SeRTPEGRWHh363+YgKXDJelv7Ch+UKkJRzyv5sbkRjpdVth9e9exuzIf
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NOr4NCA8
Subject: [Intel-wired-lan] [PATCH iwl-next 2/9] ice: move service task start
 out of ice_init_pf()
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
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Move service task start out of ice_init_pf(). Do analogous with deinit.
Service task is needed up to the very end of driver removal, later commit
of the series will move it later on execution timeline.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |  1 +
 drivers/net/ethernet/intel/ice/ice_main.c | 18 +++++++++++-------
 2 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index e952d67388bf..184aab6221c2 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -1002,6 +1002,7 @@ int ice_open(struct net_device *netdev);
 int ice_open_internal(struct net_device *netdev);
 int ice_stop(struct net_device *netdev);
 void ice_service_task_schedule(struct ice_pf *pf);
+void ice_start_service_task(struct ice_pf *pf);
 int ice_load(struct ice_pf *pf);
 void ice_unload(struct ice_pf *pf);
 void ice_adv_lnk_speed_maps_init(void);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 92b95d92d599..53a535c76bd3 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3975,7 +3975,6 @@ u16 ice_get_avail_rxq_count(struct ice_pf *pf)
  */
 static void ice_deinit_pf(struct ice_pf *pf)
 {
-	ice_service_task_stop(pf);
 	mutex_destroy(&pf->lag_mutex);
 	mutex_destroy(&pf->adev_mutex);
 	mutex_destroy(&pf->sw_mutex);
@@ -4049,6 +4048,14 @@ static void ice_set_pf_caps(struct ice_pf *pf)
 	pf->max_pf_rxqs = func_caps->common_cap.num_rxq;
 }
 
+void ice_start_service_task(struct ice_pf *pf)
+{
+	timer_setup(&pf->serv_tmr, ice_service_timer, 0);
+	pf->serv_tmr_period = HZ;
+	INIT_WORK(&pf->serv_task, ice_service_task);
+	clear_bit(ICE_SERVICE_SCHED, pf->state);
+}
+
 /**
  * ice_init_pf - Initialize general software structures (struct ice_pf)
  * @pf: board private structure to initialize
@@ -4068,12 +4075,6 @@ static int ice_init_pf(struct ice_pf *pf)
 
 	init_waitqueue_head(&pf->reset_wait_queue);
 
-	/* setup service timer and periodic service task */
-	timer_setup(&pf->serv_tmr, ice_service_timer, 0);
-	pf->serv_tmr_period = HZ;
-	INIT_WORK(&pf->serv_task, ice_service_task);
-	clear_bit(ICE_SERVICE_SCHED, pf->state);
-
 	mutex_init(&pf->avail_q_mutex);
 	pf->avail_txqs = bitmap_zalloc(pf->max_pf_txqs, GFP_KERNEL);
 	if (!pf->avail_txqs)
@@ -4768,6 +4769,7 @@ int ice_init_dev(struct ice_pf *pf)
 		ice_set_safe_mode_caps(hw);
 	}
 
+	ice_start_service_task(pf);
 	err = ice_init_pf(pf);
 	if (err) {
 		dev_err(dev, "ice_init_pf failed: %d\n", err);
@@ -4814,14 +4816,16 @@ int ice_init_dev(struct ice_pf *pf)
 	ice_clear_interrupt_scheme(pf);
 unroll_pf_init:
 	ice_deinit_pf(pf);
+	ice_service_task_stop(pf);
 	return err;
 }
 
 void ice_deinit_dev(struct ice_pf *pf)
 {
 	ice_free_irq_msix_misc(pf);
 	ice_deinit_pf(pf);
 	ice_deinit_hw(&pf->hw);
+	ice_service_task_stop(pf);
 
 	/* Service task is already stopped, so call reset directly. */
 	ice_reset(&pf->hw, ICE_RESET_PFR);
-- 
2.39.3

