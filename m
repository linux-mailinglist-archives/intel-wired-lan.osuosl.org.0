Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 230ECCDCA84
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Dec 2025 16:17:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C8498120D;
	Wed, 24 Dec 2025 15:17:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nFvFokLrntkk; Wed, 24 Dec 2025 15:17:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D91E081244
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766589454;
	bh=E7cwBgjOe4hsb6iPUnveC3jehW/fSxTIkGWQ1j+v+7s=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xjb8y95lXD8Pc96NgseFPkKVikNAi/EKxNxPB0odv98+bsoqqu9WX/Alo2h61X6hB
	 XrBrECI3W7dwKZuRqWUoDtpBLxSjJCp7EXNQs28BBQC/isNTasRAsNtPtxIJqaEooK
	 Lefw285CMiHmsv1YG7beilM2Ee+H8kmM1wlfGsN1r+JJvln2Ei6nXgFdHdW+GRhHnL
	 /sqMC9riWbktiYsMjaG5tAsx7R7hqk/pl6B0PQUNJWU4N7Ihg7nmQwnEkJYNb7WfPY
	 E8566l8AzVIdDo7t0sPObebNsw2Gv1qra1YKQ2Zqf85ZDI7NqkuQP8g0wtPLoQwYQh
	 4tGkEWyeyIZvA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D91E081244;
	Wed, 24 Dec 2025 15:17:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 81AE0B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Dec 2025 15:17:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 73E2D608BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Dec 2025 15:17:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TcuvOhf1Fr2u for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Dec 2025 15:17:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 70A4F60652
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70A4F60652
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 70A4F60652
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Dec 2025 15:17:31 +0000 (UTC)
X-CSE-ConnectionGUID: mXeAD62KQ3mCI2h3lSFSyg==
X-CSE-MsgGUID: j/p91vttRBaEdJNBASOM3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11652"; a="68583285"
X-IronPort-AV: E=Sophos;i="6.21,174,1763452800"; d="scan'208";a="68583285"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2025 07:17:31 -0800
X-CSE-ConnectionGUID: 1+Mxfla7R1WKoysFxfKNBQ==
X-CSE-MsgGUID: haxLmZXXRkGcNF4d78zbuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,174,1763452800"; d="scan'208";a="204574578"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.70])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2025 07:17:31 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Wed, 24 Dec 2025 17:17:20 +0200
Message-Id: <20251224151720.1427716-3-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251224151720.1427716-1-vitaly.lifshits@intel.com>
References: <20251224151720.1427716-1-vitaly.lifshits@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766589452; x=1798125452;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B6I1J9kgbIY13ChUrEDekKAqsCPODDEiOah0XGX/+nk=;
 b=HVmBdiGw/xF1da0AY3PD+UrZ/SBC1FeFUl4Am1VkrcxxSSjx3z2BVnNy
 TUsUwsu/GstK91yZ+3tJI50LL4TgbrlP+hMDwf/Grt94o7zAqWQS8rBzG
 9rrLAXX+qzxXs8iZs/5IRLO0ZTUueOJ/VjgnSJJvy+mkQwnnWy+x0FpyR
 1LcC8b7289oAleMDqjuwHCWLEaL9T072fLdOn3GRNKx9yF64qiNZaXEGl
 OE9BHju11BvowqBXKRNU5vBZI/qdWyxfqUwIjbgBbzjssZlKN8LKApEPH
 vZ4xdfHVqJZ3L2UEuYEc8FTU0CxzTfOHrx/X+bkubvCkkO/aiYJfUHoSh
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HVmBdiGw
Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/2] e1000e: clear DPG_EN after
 reset to avoid autonomous power-gating
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

Panther Lake systems introduced an autonomous power gating feature for
the integrated Gigabit Ethernet in shutdown state (S5) state. As part of
it, the reset value of DPG_EN bit was changed to 1. Clear this bit after
performing hardware reset to avoid errors such as Tx/Rx hangs, or packet
loss/corruption.

Fixes: 0c9183ce61bc ("e1000e: Add support for the next LOM generation")
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
v2: fix a typo in a macro
v1: initial version
---
 drivers/net/ethernet/intel/e1000e/defines.h | 1 +
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 9 +++++++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/defines.h b/drivers/net/ethernet/intel/e1000e/defines.h
index ba331899d186..d4a1041e456d 100644
--- a/drivers/net/ethernet/intel/e1000e/defines.h
+++ b/drivers/net/ethernet/intel/e1000e/defines.h
@@ -33,6 +33,7 @@
 
 /* Extended Device Control */
 #define E1000_CTRL_EXT_LPCD  0x00000004     /* LCD Power Cycle Done */
+#define E1000_CTRL_EXT_DPG_EN	0x00000008 /* Dynamic Power Gating Enable */
 #define E1000_CTRL_EXT_SDP3_DATA 0x00000080 /* Value of SW Definable Pin 3 */
 #define E1000_CTRL_EXT_FORCE_SMBUS 0x00000800 /* Force SMBus mode */
 #define E1000_CTRL_EXT_EE_RST    0x00002000 /* Reinitialize from EEPROM */
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index eead80bba6f4..7e277811702d 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -4932,6 +4932,15 @@ static s32 e1000_reset_hw_ich8lan(struct e1000_hw *hw)
 	reg |= E1000_KABGTXD_BGSQLBIAS;
 	ew32(KABGTXD, reg);
 
+	/* The reset value of DPG_EN bit was changed to 1
+	 * clear it to avoid unexpected autonomous power-gating
+	 */
+	if (hw->mac.type >= e1000_pch_ptp) {
+		reg = er32(CTRL_EXT);
+		reg &= ~E1000_CTRL_EXT_DPG_EN;
+		ew32(CTRL_EXT, reg);
+	}
+
 	return 0;
 }
 
-- 
2.34.1

