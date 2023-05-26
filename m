Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A3E712FFE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 May 2023 00:23:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B19484DC2;
	Fri, 26 May 2023 22:23:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B19484DC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685139798;
	bh=cE0twRmMyfvlCEKQkzGhSbZMsJDtaGiIwE5oyJvuW5w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jhO2R61amHAfMbR6pDXXRKDfOohnTEQYeGzLzsXbSFBAbaByihYq2iQgssbvg6pOM
	 j1bNqhLOtjK0Q0+Q9arHt1qlQ6D7lzyisYew4ZWjcmsY1MIBVYgMSTBO/ERiY0lg5k
	 XN0sQWQBPa2fr0zLE7Do0qYN4Fn+4L/xdLUkEHmltOAxtfVnOCTClp/m0BUvifN+JN
	 vkfEy4COeULRXi36YnKiBfukiOBwDf9LDlzyvSnuZO1fS29G7HCu6vnWdkNpY6U6ca
	 zqhvlSNW4VzEhj8MewRfRf5sFoW4sLIvPQUQGqZSN+krRrazWvlhdSWvXlWMmQi5AF
	 mq0IobTdFDQhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B5UZ9nqxk39z; Fri, 26 May 2023 22:23:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E257184D9E;
	Fri, 26 May 2023 22:23:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E257184D9E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B9A221BF33D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 22:22:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1157A42A99
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 22:22:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1157A42A99
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SRfQHqPsYU9Z for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 May 2023 22:22:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13EE342A96
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 13EE342A96
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 22:22:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="338912481"
X-IronPort-AV: E=Sophos;i="6.00,195,1681196400"; d="scan'208";a="338912481"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 15:22:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="1035510114"
X-IronPort-AV: E=Sophos;i="6.00,195,1681196400"; d="scan'208";a="1035510114"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 15:22:04 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 26 May 2023 15:21:55 -0700
Message-ID: <20230526222158.2685796-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.40.0.471.gbd7f14d9353b
In-Reply-To: <20230526222158.2685796-1-jacob.e.keller@intel.com>
References: <20230526222158.2685796-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685139774; x=1716675774;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L0UuBNTgAOi93CyN9tZhW2ZvyE5yIYyTkv5UvBAXmSg=;
 b=Gu4MdxeGcz055H16VLs7Z8KG6sCcOQOvUtBpBu/68yZMJMIgugdsh03i
 ZaSOi5rJNI/gPecxhw7ER6gRkFBhTCcWs1lv2mEFgoiuKo3IpP33MuLYW
 XF9GN062szptyf5mS9AuNe43Pnve2brNw9zoZ1g7wALz9XgEGyC8zgYY9
 vX9vuw+Vk/Gvzu75fQSziTpY4I/JxW9b16Uw+o1NO0S/31Xe1MGjhXTkm
 DrCyLIdTZ2unqE0qo2pYqt3v1/cvfKsv++JxjHq0t/E7v6HwVf3fEaeQY
 jhWO0eLlW2enORdQzoeFjIMe9H4qTlwOFc1uLkt/1ErxUQ/6pWa9uTH0d
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Gu4MdxeG
Subject: [Intel-wired-lan] [PATCH iwl-next 2/5] ice: schedule service task
 in IRQ thread_fn
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>

If the kernel is configured with CONFIG_PREEMPT_RT, scheduling the service
task in interrupt context can result in a kernel panic. This is a result of
ice_service_task_schedule calling queue_work.

Move the ice_service_task_schedule() call into the miscellaneous IRQ thread
that functions as the interrupt bottom half.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 9e4d7d884115..8b59632ec6b1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3058,7 +3058,6 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 {
 	struct ice_pf *pf = (struct ice_pf *)data;
 	struct ice_hw *hw = &pf->hw;
-	irqreturn_t ret = IRQ_NONE;
 	struct device *dev;
 	u32 oicr, ena_mask;
 
@@ -3139,10 +3138,8 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 
 	if (oicr & PFINT_OICR_TSYN_TX_M) {
 		ena_mask &= ~PFINT_OICR_TSYN_TX_M;
-		if (!hw->reset_ongoing) {
+		if (!hw->reset_ongoing)
 			pf->oicr_misc |= PFINT_OICR_TSYN_TX_M;
-			ret = IRQ_WAKE_THREAD;
-		}
 	}
 
 	if (oicr & PFINT_OICR_TSYN_EVNT_M) {
@@ -3159,7 +3156,6 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 					       GLTSYN_STAT_EVENT2_M);
 
 			pf->oicr_misc |= PFINT_OICR_TSYN_EVNT_M;
-			ret = IRQ_WAKE_THREAD;
 		}
 	}
 
@@ -3180,16 +3176,12 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 		if (oicr & (PFINT_OICR_PCI_EXCEPTION_M |
 			    PFINT_OICR_ECC_ERR_M)) {
 			set_bit(ICE_PFR_REQ, pf->state);
-			ice_service_task_schedule(pf);
 		}
 	}
-	if (!ret)
-		ret = IRQ_HANDLED;
 
-	ice_service_task_schedule(pf);
 	ice_irq_dynamic_ena(hw, NULL, NULL);
 
-	return ret;
+	return IRQ_WAKE_THREAD;
 }
 
 /**
@@ -3204,6 +3196,8 @@ static irqreturn_t ice_misc_intr_thread_fn(int __always_unused irq, void *data)
 	if (ice_is_reset_in_progress(pf->state))
 		return IRQ_HANDLED;
 
+	ice_service_task_schedule(pf);
+
 	if (pf->oicr_misc & PFINT_OICR_TSYN_EVNT_M) {
 		ice_ptp_extts_event(pf);
 		pf->oicr_misc &= ~PFINT_OICR_TSYN_EVNT_M;
-- 
2.40.0.471.gbd7f14d9353b

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
