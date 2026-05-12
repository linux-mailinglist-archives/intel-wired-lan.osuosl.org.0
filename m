Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BnMHJM0A2oA1gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 16:09:23 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FFA521FEF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 16:09:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9640360DB9;
	Tue, 12 May 2026 14:09:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OLafxKL48NmE; Tue, 12 May 2026 14:09:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0898F60DB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778594961;
	bh=+0fybr1fJ6iEc+mEHPxMZGpvMrgJJ2PGWlWYG2MUpzE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6W1B4xX1ZP/4PaNuRHXWw88G791z2GlyDTpFXMxRZ/zIoYcuRtgiFAQd8oTJ9kKaS
	 iRWuvYbcwmjuDjf71yAvxILkPyXu1gAzxQGQwvaE8oeznw8WFaK/14EjFI0zAl4Rl7
	 p2F+f975+q3mkhPD/yzh4K+5Imk30I8/1SjKmRpP982TrA3WFwXaLnWRNPicoDNm7r
	 sBhMOhMM7yP9uwLhcmgQFpcDRPR+8dYas1bT8bOyf9vkmgdlTYSJxb7hyXv++dyxCK
	 Q1sebBgbLu3+eLh9WK5r1pi+CtC+CyiKNU3JwY2Q8yR8VWO4spIbU4kJe14Y3wdxvo
	 t09w8CC4hHmKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0898F60DB6;
	Tue, 12 May 2026 14:09:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 12CA539E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 14:09:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED67960DA6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 14:09:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T3WeWTPlsGoQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2026 14:09:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EE5C960DB2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE5C960DB2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EE5C960DB2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 14:09:17 +0000 (UTC)
X-CSE-ConnectionGUID: XznQ3/8PSqyq0cZKgV516g==
X-CSE-MsgGUID: BtSkL/RHTFyDb3n7vFMIAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="96929676"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="96929676"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 07:09:17 -0700
X-CSE-ConnectionGUID: h4UFlnXOQVyWH6DXkPGbCQ==
X-CSE-MsgGUID: Oq0Ng7a0SC+RBMo3bTQp7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="275892496"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa001.jf.intel.com with ESMTP; 12 May 2026 07:09:16 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Simon Horman <horms@kernel.org>
Date: Tue, 12 May 2026 16:09:02 +0200
Message-ID: <20260512140904.4105236-7-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260512140904.4105236-1-aleksandr.loktionov@intel.com>
References: <20260512140904.4105236-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778594958; x=1810130958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E1r8P5ey63ZjKki1ZUQSqtI+ewNnIapJvUrpRcchVL8=;
 b=f0/IOMUCqbsO2VmhZ1USaBc4eV3uUA1VNgMlaJeSj+1ovwwovTyLtOwT
 n87HZy3TmSyuCaSV5LaNgwrObpz+w/7l1LnGgQr4tpo4B17ux0V8Jzh3/
 APT8qFXbq5c5UV07KWRamJWBCsfQvvuP1lJl/J1sXwLy1DFFo1qs8Lved
 rmlIyN0KyrRwkW1ORaC92YDziK88+hiXfLkods+iXFWM6/lwdnsRWLek6
 GffnR/8hi6Tj5zhrJSGV86tpw4+DWCXkaNXx4k3Gqz/gbh2zyZaxcO6I6
 oH7nsAg5ZQa8eIsuTB82tRUx2xbKKrOBOaVTlqbZoU9Fsi0I/+LYgNJ3R
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f0/IOMUC
Subject: [Intel-wired-lan] [PATCH iwl-next v2 6/8] ixgbe: extract
 ixgbe_restart_auto_neg() to avoid code duplication
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
X-Rspamd-Queue-Id: 19FFA521FEF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

From: Jakub Chylkowski <jakubx.chylkowski@intel.com>

Both ixgbe_setup_phy_link_generic() and ixgbe_setup_phy_link_tnx()
end with the same three-line sequence that reads MDIO_CTRL1, sets
the MDIO_AN_CTRL1_RESTART bit, and writes MDIO_CTRL1 back.

Factor it out into a static helper ixgbe_restart_auto_neg() and call
it from both sites.

While at it, also check the return value of phy.ops.read_reg() in the
helper and skip the write on failure.  The original inlined code
ignored the read result and would OR MDIO_AN_CTRL1_RESTART into a
stale autoneg_reg value (left over from the prior MDIO_AN_ADVERTISE
write) and unconditionally write it back to MDIO_CTRL1 if the read
failed.  This is a small behavioral change: on read_reg() failure the
restart write is now skipped instead of being issued with a
potentially garbage value.

Signed-off-by: Jakub Chylkowski <jakubx.chylkowski@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c | 36 ++++++++++++--------
 1 file changed, 22 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
index de8f6c6..c7387a4 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
@@ -1089,6 +1089,26 @@ int ixgbe_mii_bus_init(struct ixgbe_hw *hw)
 	return mdiobus_register(bus);
 }
 
+/**
+ * ixgbe_restart_auto_neg - restart PHY autonegotiation
+ * @hw: pointer to hardware structure
+ *
+ * Sets the restart autoneg bit in MDIO_CTRL1 to trigger a new
+ * autonegotiation cycle.
+ **/
+static void ixgbe_restart_auto_neg(struct ixgbe_hw *hw)
+{
+	u16 autoneg_reg;
+	int status;
+
+	status = hw->phy.ops.read_reg(hw, MDIO_CTRL1, MDIO_MMD_AN,
+				      &autoneg_reg);
+	if (status)
+		return;
+	autoneg_reg |= MDIO_AN_CTRL1_RESTART;
+	hw->phy.ops.write_reg(hw, MDIO_CTRL1, MDIO_MMD_AN, autoneg_reg);
+}
+
 /**
  *  ixgbe_setup_phy_link_generic - Set and restart autoneg
  *  @hw: pointer to hardware structure
@@ -1156,13 +1176,7 @@ int ixgbe_setup_phy_link_generic(struct ixgbe_hw *hw)
 		return 0;
 
 	/* Restart PHY autonegotiation and wait for completion */
-	hw->phy.ops.read_reg(hw, MDIO_CTRL1,
-			     MDIO_MMD_AN, &autoneg_reg);
-
-	autoneg_reg |= MDIO_AN_CTRL1_RESTART;
-
-	hw->phy.ops.write_reg(hw, MDIO_CTRL1,
-			      MDIO_MMD_AN, autoneg_reg);
+	ixgbe_restart_auto_neg(hw);
 
 	return status;
 }
@@ -1386,13 +1400,7 @@ int ixgbe_setup_phy_link_tnx(struct ixgbe_hw *hw)
 		return 0;
 
 	/* Restart PHY autonegotiation and wait for completion */
-	hw->phy.ops.read_reg(hw, MDIO_CTRL1,
-			     MDIO_MMD_AN, &autoneg_reg);
-
-	autoneg_reg |= MDIO_AN_CTRL1_RESTART;
-
-	hw->phy.ops.write_reg(hw, MDIO_CTRL1,
-			      MDIO_MMD_AN, autoneg_reg);
+	ixgbe_restart_auto_neg(hw);
 	return 0;
 }
 
-- 
2.52.0

