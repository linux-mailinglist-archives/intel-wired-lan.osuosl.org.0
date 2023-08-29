Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DC278C26B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Aug 2023 12:41:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1714D60F26;
	Tue, 29 Aug 2023 10:41:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1714D60F26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693305684;
	bh=bMyX65SDZ07PSGQdos3ewqLkxSLSQrPkThekrxNO+U0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YJpsfcLdzWRqLAi+oOh3zcV32MSeyPUxQOQQQN4rR9vCeuopMYAWW83a91bR2esSr
	 4sw6IkOmJ4fqani3f+zFA32XyL+3ctNouVxKpI+bHGVDLMqc6rSH7FQRQSrJpDsipO
	 TjVF7FTPrp0UIUCaAIzP7zZnLFuVwOn3J8toQI+jnHuwKPXRKTGMu0qmCa6rfk6AaW
	 67lbkbQJcLCNmJr0hIp13is/enuLf+AlVwvjgb2HV2RfRJxIu7NTEO7X7eiN05DPQw
	 0u/SjI3jSC1KbUWr6k0qnFwma44OpUHe3uMM3Tby1uCo8OksFVD6L48rxL81g1PUrz
	 e9El5+BcnJLtg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tIv1MibnnCSG; Tue, 29 Aug 2023 10:41:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DCB1A60803;
	Tue, 29 Aug 2023 10:41:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DCB1A60803
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14C241BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 10:41:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E23C981501
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 10:41:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E23C981501
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xmDwf-Qg-hbL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Aug 2023 10:41:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4293281419
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 10:41:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4293281419
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="461696891"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="461696891"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 03:41:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="853229790"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="853229790"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmsmga002.fm.intel.com with ESMTP; 29 Aug 2023 03:41:01 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 29 Aug 2023 12:40:35 +0200
Message-Id: <20230829104041.64131-6-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230829104041.64131-1-karol.kolacinski@intel.com>
References: <20230829104041.64131-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693305663; x=1724841663;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dvIQlIyW5/EHR6V294K7rz0uzdjKGiqNypRDnnMdsLI=;
 b=TrLKGRNsYcXA/puDKdljyM1q30qrtZNkSjF8pJ5o40iZ7kG4VGx0Flve
 WQO0hvGaFcho0JiZrPLPnsP3orvZs7gSs5D22X+CBDa/IYXh9EW/OCyQA
 s9M4qtyqw37GZBVF0J6VlSf2NLG5WH9uqWhgXWxpVak+kOKv+lfNwOLeK
 u9YuNssUrugD80L+bKznBhCmyklLkVzf30ozjRvN8f/XGdfLljqmZXal1
 vlETgrdutdzVb9gpDhfsJ4Bu2R65pa0Svt07/3C4qJmn49oSt7CYE4uOb
 SuTQPwIiVEtHUSqEUpCXHbFZSe3f7WKf3GVlumiFGPXikYXVcMUWzZbYS
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TrLKGRNs
Subject: [Intel-wired-lan] [PATCH v4 iwl-next 05/11] ice: rename
 ice_ptp_configure_tx_tstamp
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

The ice_ptp_configure_tx_tstamp function writes to PFINT_OICR_ENA to
configure it with the PFINT_OICR_TX_TSYN_M bit. The name of this
function is confusing because there are multiple other functions with
almost identical names.

Rename it to ice_ptp_cfg_tx_interrupt in order to make it more obvious
to the reader what action it performs.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index f513bbbba9f8..2899fc7f8deb 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -281,11 +281,11 @@ static const char *ice_ptp_state_str(enum ice_ptp_state state)
 }
 
 /**
- * ice_ptp_configure_tx_tstamp - Enable or disable Tx timestamp interrupt
- * @pf: The PF pointer to search in
+ * ice_ptp_cfg_tx_interrupt - Configure Tx timestamp interrupt for the device
+ * @pf: Board private structure
  * @on: bool value for whether timestamp interrupt is enabled or disabled
  */
-static void ice_ptp_configure_tx_tstamp(struct ice_pf *pf, bool on)
+static void ice_ptp_cfg_tx_interrupt(struct ice_pf *pf, bool on)
 {
 	u32 val;
 
@@ -320,7 +320,7 @@ static void ice_set_tx_tstamp(struct ice_pf *pf, bool on)
 	}
 
 	if (pf->ptp.tx_interrupt_mode == ICE_PTP_TX_INTERRUPT_SELF)
-		ice_ptp_configure_tx_tstamp(pf, on);
+		ice_ptp_cfg_tx_interrupt(pf, on);
 
 	pf->ptp.tstamp_config.tx_type = on ? HWTSTAMP_TX_ON : HWTSTAMP_TX_OFF;
 }
@@ -2850,7 +2850,7 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
 		/* The clock owner for this device type handles the timestamp
 		 * interrupt for all ports.
 		 */
-		ice_ptp_configure_tx_tstamp(pf, true);
+		ice_ptp_cfg_tx_interrupt(pf, true);
 
 		/* React on all quads interrupts for E82x */
 		wr32(hw, PFINT_TSYN_MSK + (0x4 * hw->pf_id), (u32)0x1f);
@@ -2928,7 +2928,7 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
 		 * neither on own quad nor on others
 		 */
 		if (!ice_ptp_pf_handles_tx_interrupt(pf)) {
-			ice_ptp_configure_tx_tstamp(pf, false);
+			ice_ptp_cfg_tx_interrupt(pf, false);
 			wr32(hw, PFINT_TSYN_MSK + (0x4 * hw->pf_id), (u32)0x0);
 		}
 		kthread_init_delayed_work(&ptp_port->ov_work,
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
