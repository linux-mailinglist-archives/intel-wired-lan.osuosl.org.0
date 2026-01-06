Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F6CCF8B5C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 06 Jan 2026 15:14:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 630FE810B3;
	Tue,  6 Jan 2026 14:14:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rBw3TmzUkQG5; Tue,  6 Jan 2026 14:14:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF8BD811D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767708874;
	bh=VoNWbxce1YsS6P3Mrh/sOsMwTdrVmsyKtnuZ3Sg4t7M=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WjSY8WCRjG+ZEuHpAzLvYUXi2uOPAyD7d7Sludordq6h3uuqRRySrWUXr8aTJ425Z
	 U9NQ5OQCyFXOdSjxfdn5IqbFt9yxUwe+G1rNUffvODuh47oLt6xXWQpNTTfxeCJ3va
	 MTm/neWSsteVDZ/bKYyh3aFxs9uZCU7el9lfc4m77txWyh57au6Ls9Bo57E5GtWAd5
	 FS7Z/i2kqHkSmjwZZ4k5aLueB9H3PNxb5jT5PqzX/gML6xdkIA4+9GjrK6B2qLVQXv
	 Ri4SasE42DSpA+Fcu5sWNkVyePaJg+iP30AEHl1+1x5q4hEQJHS3e/vXlMnsxVl6zH
	 c3WXCsjFJpuhA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF8BD811D8;
	Tue,  6 Jan 2026 14:14:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E464249
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 14:14:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 85C3840881
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 14:14:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2o_ooDnsZY_f for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jan 2026 14:14:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 84BF5401EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 84BF5401EC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 84BF5401EC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 14:14:31 +0000 (UTC)
X-CSE-ConnectionGUID: FUfs9Q0US0ObWASw8DMweg==
X-CSE-MsgGUID: L0KH1jn+Swq664nNgWR2YA==
X-IronPort-AV: E=McAfee;i="6800,10657,11663"; a="86491214"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="86491214"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 06:14:31 -0800
X-CSE-ConnectionGUID: JhlzpY96TCi71XFk2Y4bcw==
X-CSE-MsgGUID: BODGjNFcTjimq3lxntkLhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="226199286"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.70])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 06:14:30 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Tue,  6 Jan 2026 16:14:20 +0200
Message-Id: <20260106141420.1585948-3-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260106141420.1585948-1-vitaly.lifshits@intel.com>
References: <20260106141420.1585948-1-vitaly.lifshits@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767708871; x=1799244871;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hFobxG8+WPHaXyQwWSZ/n8vBY+GsXQWSpgZlNw55wsA=;
 b=NYAJ5SsvtmuiQATvOPoBIVyHL6gEVvSUHYXp2BSHKJ0Vg/hoGcVdheN0
 lqff6KTEAPJIN9Eo+7rGUVcIQeeRgz83tDpzGZhQPPkMACjbwJj4AefOw
 oowt+Uv19vk4WrIJnRFiYS50HkbiDXliTquBE10dyqUOYtNVLEtFomjJ8
 MtwB5w6ONrOOUozTMNHAY6loSASm5QblRlJ4wa9clbM7zgEYkh/E2wTsG
 bInPKWCq9isT1tCANUL7gGEoVr/HBVKQmdHFW6J6D3k/Pdjz/Y84XqYoO
 AuzYMUnQMqfbj3R7U8dcRWryNDVVK2cBpvPo8Yoc/zlmRJ0NU2/83ZorP
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NYAJ5Ssv
Subject: [Intel-wired-lan] [PATCH iwl-net v4 2/2] e1000e: clear DPG_EN after
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
v4: fix commit message
v3: rephrase a comment in the code
v2: fix a typo in a macro
v1: initial version
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 10 ++++++++++
 2 files changed, 11 insertions(+)

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
index eead80bba6f4..13841daba399 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -4932,6 +4932,16 @@ static s32 e1000_reset_hw_ich8lan(struct e1000_hw *hw)
 	reg |= E1000_KABGTXD_BGSQLBIAS;
 	ew32(KABGTXD, reg);
 
+	/*
+	 * The hardware reset value of the DPG_EN bit is 1.
+	 * Clear DPG_EN to prevent unexpected autonomous power gating.
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

