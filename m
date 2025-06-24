Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB17AE5891
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 02:30:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAAF082CD4;
	Tue, 24 Jun 2025 00:30:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fSri-05A1DoR; Tue, 24 Jun 2025 00:30:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A0C282BD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750725016;
	bh=XhmKtuH2a1esDtTMsgo9ljdTbwB+8xhGbUXzLIhT4Io=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tIBq0GXiI1pdxyGhf/yClBgiFMZx9hYzrVfb9GYKbEYA/3mGL25TnPCUB4OHH4Tzy
	 SdyN/JgIuXTO4ZXo1D5UCLh3CF4x6e+Gt9gLeVDH+cV6mAz/Eo7KmYG0tDCnyxqgck
	 8m1/S7KhkcPQy3eJ/DeujgTArRNMSC/SOQ4+ozS/+zGK8Y0hkQn6wTq1P2CSxo7vNK
	 qgdmpQA3aqYTwpBZRZNH5IrEbIKOZ6mnIyN/8E77uJV+wy5gpLRQeSP73LGz0bESyc
	 QfAfYYy+RMWUR8ggz2vV7oSlH6wej2qG59m0nndrwejdum3yGLXNkYokJqPYSFFmb5
	 EUDKpOH2NW1Aw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A0C282BD6;
	Tue, 24 Jun 2025 00:30:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 438F012C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 00:30:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0B968610A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 00:30:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gb6ky1gFQltI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 00:30:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7B148610AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B148610AC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7B148610AC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 00:30:08 +0000 (UTC)
X-CSE-ConnectionGUID: LlGb/2foTSGE1kqgKmGnoQ==
X-CSE-MsgGUID: 2m25MsfkTLyRM5ed5W9COg==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="52067922"
X-IronPort-AV: E=Sophos;i="6.16,260,1744095600"; d="scan'208";a="52067922"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 17:30:07 -0700
X-CSE-ConnectionGUID: ucq3/5DaQYKC2ivB8+EpMw==
X-CSE-MsgGUID: KB1hCkS7TqCfrDvXElPSIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,260,1744095600"; d="scan'208";a="157534051"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 17:30:06 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 23 Jun 2025 17:30:02 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250623-kk-tspll-improvements-alignment-v1-6-fe9a50620700@intel.com>
References: <20250623-kk-tspll-improvements-alignment-v1-0-fe9a50620700@intel.com>
In-Reply-To: <20250623-kk-tspll-improvements-alignment-v1-0-fe9a50620700@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org, 
 Karol Kolacinski <karol.kolacinski@intel.com>, 
 Milena Olech <milena.olech@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750725008; x=1782261008;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=o4hj3F9sT37zdvuAQpgExiaMoeCQnU2Bj09aX+sXwAM=;
 b=f5Y445DV9jCcuzYJM1uF/QS98kAFnkHHUK8Bw2bN/GjWClRiVrTbCqzO
 k4x/hpLIttbMXiKkc6cLayIteZhCWQInR1GmukJjfzgxHlsn+ip3ZhXcn
 DA+mEiUFTXMMV/s1XNgW61BcJTtohzNcJVKmDn7t4UjukX2/hBIpLmAFC
 RUoVlrYRSJDzluKj646F6ZDcD21sxRb+PKWN0/xhAR4LIR3NjBn0S8uAB
 mJ0gEn2xa07l7+UehQr7ldj69oD3luLeAAG6tmyZq98VMU3+PRBOynFZV
 c68a50sVVZeKBDtQgYvK2zfAxTXD61EGlkcsIp5cAkJSA/LZpMoYsw2E9
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f5Y445DV
Subject: [Intel-wired-lan] [PATCH 6/8] ice: fall back to TCXO on TSPLL lock
 fail
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

From: Karol Kolacinski <karol.kolacinski@intel.com>

TSPLL can fail when trying to lock to TIME_REF as a clock source, e.g.
when the external clock source is not stable or connected to the board.
To continue operation after failure, try to lock again to internal TCXO
and inform user about this.

Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tspll.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index abd9f4ff2f5563e35dd8e8fa551eb944d8f5802a..886a18b2e65fa03860f8907552f2a57b0717fdf7 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -605,5 +605,17 @@ int ice_tspll_init(struct ice_hw *hw)
 	/* Configure the TSPLL using the parameters from the function
 	 * capabilities.
 	 */
-	return ice_tspll_cfg(hw, tspll_freq, clk_src);
+	err = ice_tspll_cfg(hw, tspll_freq, clk_src);
+	if (err) {
+		dev_warn(ice_hw_to_dev(hw), "Failed to lock TSPLL to predefined frequency. Retrying with fallback frequency.\n");
+
+		/* Try to lock to internal TCXO as a fallback. */
+		tspll_freq = ice_tspll_default_freq(hw->mac_type);
+		clk_src = ICE_CLK_SRC_TCXO;
+		err = ice_tspll_cfg(hw, tspll_freq, clk_src);
+		if (err)
+			dev_warn(ice_hw_to_dev(hw), "Failed to lock TSPLL to fallback frequency.\n");
+	}
+
+	return err;
 }

-- 
2.48.1.397.gec9d649cc640

