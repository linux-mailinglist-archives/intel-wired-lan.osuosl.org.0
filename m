Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0APnJqtU/WnZagAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 05:12:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 698DC4F1053
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 05:12:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 12E2C61240;
	Fri,  8 May 2026 03:12:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dh-EUFA2204R; Fri,  8 May 2026 03:12:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 861926123A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778209961;
	bh=SAOYT0OoA1NaaPxM6Nxp+tb5sC47gUPUICbsr2lxfGM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CZAP4pqkwGnphBTjRdA5b9tRk5ID4mFW4Q6S1q/wx5IMFZZe2vg1r1UrjkxYik6YN
	 KRCAbFRTkAdUSzNiyoHH3EiJ/P9OMlUPblvAypUrE3oA13+DUUHZsux1gDpqMTFWdb
	 r3jhUoCzKGT5KzaAALw/3jQTCeLS74ssW7FgmgIMhrBIkCXLfXLPhNtIbH07cXxuRm
	 EF1BDhGCz77AycT38am3bppmG5UULv2b6i4HEOsEbpZh9sH929xIMgj4tl7GFny4mm
	 TW/70FSRRoGjn5AncmtijYE0FDRuEU3GHqBvGLcg/u4Vw6GGW//hcWFGHmEn9tMDNp
	 mFdTWiq901jRQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 861926123A;
	Fri,  8 May 2026 03:12:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4F4D9317
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 03:12:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 34DB6409B3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 03:12:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Oyg_YCY0vEHz for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 03:12:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 37BF84030E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 37BF84030E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 37BF84030E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 03:12:38 +0000 (UTC)
X-CSE-ConnectionGUID: Q6UezhgQTWO5+c8KCUanaA==
X-CSE-MsgGUID: mb7U+6/gT4yZeWg+7PiS5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79027513"
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="79027513"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 20:12:38 -0700
X-CSE-ConnectionGUID: nofhen9zRsOgobpEuWrsaA==
X-CSE-MsgGUID: 3ivrJew4TH2fPViGhX0S6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="241623210"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa005.fm.intel.com with ESMTP; 07 May 2026 20:12:37 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Fri,  8 May 2026 05:12:24 +0200
Message-ID: <20260508031226.3601800-7-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260508031226.3601800-1-aleksandr.loktionov@intel.com>
References: <20260508031226.3601800-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778209958; x=1809745958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CBKMlV60ZbulVgXwKgQt5VEkfWvqAFPvIP4/ufqNnDs=;
 b=evlOix4mZg6gHUbKPjnct0qj0QT6mjo+3gexqkFR3tMgbt0sJRCXb2dL
 ww7bOkRuiiJu704MdCCKnCYILpfvbZN0BjQEgnnUU0pe1UooxW1yQf7vo
 Sr7GbrZryBGugoga0HLX5nHEZa8wG2i6DIQhoYMGVrDOnTOfojBQ8CmI6
 r37qEf+BFnqNC4JLxMrYV4AWB04t3pH7XjixwzZSKCW489qhvqZknHP5x
 bEyX2nZRqpdGh6sHIJaDNsOcN0hLtHkeaVP9L07Z63+mi226vmaDOtlW7
 4XMafA0qoKdTxHFjsWulw0HtTLXCnGrSPtIeygWFUd8j5GjJO+7r7OYz3
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=evlOix4m
Subject: [Intel-wired-lan] [PATCH iwl-next 6/8] ixgbe: extract
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
X-Rspamd-Queue-Id: 698DC4F1053
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
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

