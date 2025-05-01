Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 58907AA6679
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 May 2025 00:54:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9895D611EB;
	Thu,  1 May 2025 22:54:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lEXCx5YHLMKw; Thu,  1 May 2025 22:54:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E766461113
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746140084;
	bh=K56kRLJauvFK9hK+XUjLjJvrRvcoMjxzox4VWQMZ1gA=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5s5Hm26vIOKCAINDBrReDZscW2B34iQYc3ZQbOi3E79CjYtN3LWZy/GA9WizW1i2+
	 uZGxGn2nNUIphh/+K8N/0hp3jh9N+j/PZVs769G3ZNZ4eneUjcyBLpckaoERG01UoI
	 ukWOj7VTBG67GArfPGQ51QQ7SD4zNMRNRjRIRQCn7/Y1DmbaQr5LDMbXbkjjNfjDL6
	 TekFttmYjEHzJJ6Lildjos1dJm+Bjbtsfm9JzNG22AQFyWWW2kfzBWwapnrxINjn1E
	 wBX0yS9sibhQEnBCxsl3zX5b0o9eFQL6br4VdMn7zYjcmMOpnFCkrxsIOw1LlpWTsV
	 tUJNM216dCrTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E766461113;
	Thu,  1 May 2025 22:54:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 63BC1E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9B3D941A19
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tpSSs0NemM7f for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 May 2025 22:54:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0352C417B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0352C417B1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0352C417B1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:34 +0000 (UTC)
X-CSE-ConnectionGUID: m8aItlUpS86BsWWixs5nhw==
X-CSE-MsgGUID: LQ2LEPo5Sx2xjkpLXxR/4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="58811729"
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="58811729"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 15:54:35 -0700
X-CSE-ConnectionGUID: XOZrdu4/SbKb7PyJMwEjbA==
X-CSE-MsgGUID: 4GZuejl/Rf+Pk4WTcNSU4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="138514294"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 15:54:34 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 01 May 2025 15:54:19 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250501-kk-tspll-improvements-alignment-v4-8-24c83d0ce7a8@intel.com>
References: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
In-Reply-To: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 netdev <netdev@vger.kernel.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Michal Kubiak <michal.kubiak@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Karol Kolacinski <karol.kolacinski@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Milena Olech <milena.olech@intel.com>, Paul Menzel <pmenzel@molgen.mpg.de>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746140075; x=1777676075;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=i6yz9gUqfNMOsLuVXEHqI35HTlMqcDcrJcOqHz69YgQ=;
 b=kVchI3dfJnjbOyi1aOfLgyn3DlhScLb/3AvUVrWfEUZVXlltblZp2xkR
 I+u62uGwCWn+8T4kd0cY6pI9/qkJKetAnL6MsolwgAAAboKUVBVqxRdEt
 M6I9U8kEqOUT51/7odJ8CLu7sPB3gPfh7KAog3uog8vEUqH79G1zBHCDC
 24O55yRiW2cut6r7P9NQ9wJOKpxupJ0rY6n/gqw9QNII7Ls2gt1wr5I32
 kuq/65/Na3yG+Cy1/gW72+yEmAt8o2jotM2V5XHMy52bnspJAmhwk5mQd
 FJTbEqasesT6VTzQmEN2e7dtDKuf5HPFFbOpZeAjZ9offLvBe7hmE/UIS
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kVchI3df
Subject: [Intel-wired-lan] [PATCH v4 08/15] ice: clear time_sync_en field
 for E825-C during reprogramming
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

When programming the Clock Generation Unit for E285-C hardware, we need
to clear the time_sync_en bit of the DWORD 9 before we set the
frequency.

Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tspll.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index 2cc728c2b67897940af75cb0bc3bfaf5fd8e6869..8de1ad1da8346d4be4224b923de3baeffc954198 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -285,6 +285,11 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 		ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R23, dw23.val);
 	}
 
+	if (dw9.time_sync_en) {
+		dw9.time_sync_en = 0;
+		ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R9, dw9.val);
+	}
+
 	/* Set the frequency */
 	dw9.time_ref_freq_sel = clk_freq;
 
@@ -296,6 +301,7 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 		dw9.time_ref_en = 1;
 		dw9.clk_eref0_en = 0;
 	}
+	dw9.time_sync_en = 1;
 	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R9, dw9.val);
 
 	/* Choose the referenced frequency */

-- 
2.48.1.397.gec9d649cc640

