Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 342E181EE39
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Dec 2023 11:32:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 07D8281E80;
	Wed, 27 Dec 2023 10:32:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07D8281E80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703673145;
	bh=8+crs5HRBFPvVlo3piSkG1FoLqXMiwwxk30Y9QBW8JU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=K0BtdleKPdsjXyXWe5LHWN8ZMiwviVFiXSxkA2PN4fmqqZyMZO1HjKaRVowrTNo9l
	 D30sQ0ktCYEJ67vH61+mdg7chcgYf9z231jJuhR0cCmgnBCvhM076OhRKhOAxOvIeA
	 Pp76PoNwjARlXGT2z/te31vFGGDJ8P1MEGcCwgZhR9WTI3FEB9l9cUvxPpAkNVEmQO
	 gWGTW5G/ahChWedRsfcp7UzCX7EXqNVLO3lOM9eSZpwBsiMkxJqKWfVewun35beDxe
	 inuhahquSjLftfWEsBfG0P93CzsXb9UtX/NobTGKpYhtGC9VGGbWBoAQC9dguug34d
	 iBRZU57f2AVJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BLpwoURe--JC; Wed, 27 Dec 2023 10:32:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B11481E7F;
	Wed, 27 Dec 2023 10:32:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B11481E7F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D2541BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 10:32:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1183E8124F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 10:32:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1183E8124F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZfYrS1_AAlRP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Dec 2023 10:32:16 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A19E881E7F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 10:32:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A19E881E7F
X-IronPort-AV: E=McAfee;i="6600,9927,10935"; a="376579575"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="376579575"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2023 02:32:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10935"; a="1109610378"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="1109610378"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.160.232])
 by fmsmga005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2023 02:31:59 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Dec 2023 12:31:54 +0200
Message-Id: <20231227103154.177094-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703673136; x=1735209136;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IBwR+Rv+z0bHiBoZ44cYjJeQgdkS96VAKiV7Eow4Eys=;
 b=DddZgWS+c2dEBEZv0lRBpVoKkMjRdbT6H9r9qVoLoNHrILMAJzbJZPt7
 rMwhl8yJUynhIqe/wt/QRiJrHaeFQXsq/u6ttghL3aBKyvsVUYaWzhKSQ
 6rn0cVhHYLq7t2T6xcbYg5bx4m42GJEFl0FLp+Jj+3z6qaosBhvxuIeDk
 gwaFSI+FVZAVgoPGSl4O1sPNN4BlnLYasIuz+jFYoLlCAqIBv+lsPtHsm
 Ydc7PUe4KY8APLbHRR7cg9hzc25qWPygtjViBR2m/IaVuHIWqiUxAcQZ8
 T6zpdMmzRfhXtalS2qXGsc85njUDu1//koUAvDNv9FnhLk6raEI2TxIig
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DddZgWS+
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: remove force SMBUS
 from ULP enable flow to avoid PHY loss issue
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
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Forcing SMBUS in enable ULP flow causes sporadically PHY loss on
MTL systems. This is a legacy configuration that is no longer
required on newer PHYs.
Therefore we remove it for MTL systems and above.

Fixes: 6607c99e7034 ("e1000e: i219 - fix to enable both ULP and EEE in Sx state")
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Co-developed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Signed-off-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 25 ++++++++++++---------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 39e9fc601bf5..816195e2f2f9 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -1147,18 +1147,21 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
 	ret_val = hw->phy.ops.acquire(hw);
 	if (ret_val)
 		goto out;
+	/* Forcing SMBUS on MTL and above is not required */
+	if (hw->mac.type < e1000_pch_mtp) {
+		/* Force SMBus mode in PHY */
+		ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL,
+						       &phy_reg);
+		if (ret_val)
+			goto release;
+		phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
+		e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
 
-	/* Force SMBus mode in PHY */
-	ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
-	if (ret_val)
-		goto release;
-	phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
-	e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
-
-	/* Force SMBus mode in MAC */
-	mac_reg = er32(CTRL_EXT);
-	mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
-	ew32(CTRL_EXT, mac_reg);
+		/* Force SMBus mode in MAC */
+		mac_reg = er32(CTRL_EXT);
+		mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
+		ew32(CTRL_EXT, mac_reg);
+	}
 
 	/* Si workaround for ULP entry flow on i127/rev6 h/w.  Enable
 	 * LPLU and disable Gig speed when entering ULP
-- 
2.34.1

