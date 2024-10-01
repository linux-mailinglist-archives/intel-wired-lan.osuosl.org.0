Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D7D98C434
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Oct 2024 19:09:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDD886085E;
	Tue,  1 Oct 2024 17:09:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e10BEODe2I3G; Tue,  1 Oct 2024 17:09:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38B9B6084F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727802558;
	bh=NnOax1GOU4CuVElfGT/WlJfs3gpEBkGlcCLVSjqkJiE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=RauHGkNiRLjH+H2Qme+p1kTgijhPRcky1UWlWCRs826IR0O0sO8CJXX9NvHZG1m9L
	 V+mgIYeAJU8Dd+O0PvFELfh6KWLgkvvEC4FQ9dNzrpIfeUWDsrNujKj9VUubGNloRr
	 ipn8eQ9kMLXfIMEPP+hQpRCGx+UiswL1klMqjNuebgTDkw70NEnXewwVihPvKc18bY
	 6W4g6V9gMYOlm/3FDA7e+9SVtU9M9CdlWev3PXXUCEyMg7zZEQIlBxf7ntdlsrmCkS
	 uAbeAItvgadYE2nxrRuCe7hIbJ7xPxlMdN4siJgjDzK1FHiusn1HUZ/sXmB3r6e9gv
	 bnNz43GGNUWoA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38B9B6084F;
	Tue,  1 Oct 2024 17:09:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C65801BF294
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 17:09:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C0083409DC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 17:09:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 46dEZQ3YSsg6 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Oct 2024 17:09:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1A18540339
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A18540339
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1A18540339
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 17:09:11 +0000 (UTC)
X-CSE-ConnectionGUID: ECFKjpTRRI29qKkAtNVknQ==
X-CSE-MsgGUID: 6awkjdX9TEyQKKgzkuvW8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="38083204"
X-IronPort-AV: E=Sophos;i="6.11,169,1725346800"; d="scan'208";a="38083204"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 10:09:01 -0700
X-CSE-ConnectionGUID: Z9dPbD2qSMGJ7rWCqeekBg==
X-CSE-MsgGUID: Q0WtKdBDT+KfdaBPOYqTJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,169,1725346800"; d="scan'208";a="74528567"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.51])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 10:09:00 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  1 Oct 2024 20:08:48 +0300
Message-Id: <20241001170848.1191876-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727802552; x=1759338552;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YYuhyC1WlmVM6HaggpdWK1O/qhvZv7RZGaUThFcZIMA=;
 b=eLi+YyHezwe7z9/wn+02ppwcLsOIV6OjcpXOemft8tR40ZQQPSXYaPjF
 Js291qrk6cqRTTNfwERTK3LwZyM2HA+yS4DIzJ5Dn9nWeX4Mga0a3WXOC
 97tMLVcQGRyvzrX3ENReNjangVjVsDZeEvpyzeYLvWKFXmm9ZTq74TsD/
 rp0daJtfkNGVkFIqzOoNYi3rNs3g5FlIvpExo/6JMWz9J52T1dOX+y4e9
 GobOSDKflly6rorclSxr2XA1srQKkL94ny0KCS5XNs2oOjWTZT9x4YXwB
 +1phpDGlkBitwTY34P5UDaKR6xAjGj/Tajp2A8odrdt/UO7n+DMACWo3p
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eLi+YyHe
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: Remove Meteor Lake
 SMBUS workarounds
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
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a partial revert to commit 76a0a3f9cc2f ("e1000e: fix force smbus
during suspend flow"). That commit fixed a sporadic PHY access issue but
introduced a regression in runtime suspend flows.
The original issue on Meteor Lake systems was rare in terms of the
reproduction rate and the number of the systems affected.

After the integration of commit 0a6ad4d9e169 ("e1000e: avoid failing the
system during pm_suspend"), PHY access loss can no longer cause a
system-level suspend failure. As it only occurs when the LAN cable is
disconnected, and is recovered during system resume flow. Therefore, its
functional impact is low, and the priority is given to stabilizing
runtime suspend.

Fixes: 76a0a3f9cc2f ("e1000e: fix force smbus during suspend flow")
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index ce227b56cf72..2f9655cf5dd9 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -1205,12 +1205,10 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
 	if (ret_val)
 		goto out;
 
-	if (hw->mac.type != e1000_pch_mtp) {
-		ret_val = e1000e_force_smbus(hw);
-		if (ret_val) {
-			e_dbg("Failed to force SMBUS: %d\n", ret_val);
-			goto release;
-		}
+	ret_val = e1000e_force_smbus(hw);
+	if (ret_val) {
+		e_dbg("Failed to force SMBUS: %d\n", ret_val);
+		goto release;
 	}
 
 	/* Si workaround for ULP entry flow on i127/rev6 h/w.  Enable
@@ -1273,13 +1271,6 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
 	}
 
 release:
-	if (hw->mac.type == e1000_pch_mtp) {
-		ret_val = e1000e_force_smbus(hw);
-		if (ret_val)
-			e_dbg("Failed to force SMBUS over MTL system: %d\n",
-			      ret_val);
-	}
-
 	hw->phy.ops.release(hw);
 out:
 	if (ret_val)
-- 
2.34.1

