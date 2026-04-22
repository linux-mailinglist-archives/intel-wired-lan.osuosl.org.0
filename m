Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4IhoAU/16GncSAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2026 18:20:31 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC8B4487A0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2026 18:20:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09B0342635;
	Wed, 22 Apr 2026 16:20:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k6c9sd8lQbmR; Wed, 22 Apr 2026 16:20:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 110E34264C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776874828;
	bh=cxvoRp5zvbXU7qSt2RCE0+4PhKBDVQbPjqEplRFlUGY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iV4wLPelWtxlqBiX+nTNiw6eQV3yYgiBikxhgZKyLviANW0ClNBBzIoad1Ee6iQoQ
	 frqtgPzgji/0tUeBMdHFj+tY583h/DlbVCj12059QehOra7x0139UsBaPynl3Z4bNf
	 eLDZtLDGz/kwp9h6dxDKBEwzGozPlpAcqVhG0Kl/80a5y4wrgvzl0wwgKzY7Us4Kbe
	 Zjd4VoboT355rR+t5LOqLmSA6pp7SMbtSbjitoBBXTJ854y0RUZHQGBGfaQalfCM+2
	 1tByZvXvsM+R4OhJ8NrifCtIhJnIFWGFEKrTvOccmyR2GZCwDdg25iad8Ux+oR3pk4
	 EJESzC8O559xA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 110E34264C;
	Wed, 22 Apr 2026 16:20:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 39F4624D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 16:20:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2BA4960DB0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 16:20:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uYt_CrY3RFKn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Apr 2026 16:20:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=khai.wen.tan@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E5E74616E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5E74616E2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E5E74616E2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 16:20:24 +0000 (UTC)
X-CSE-ConnectionGUID: Nz2Jqq4GRi2UL6dQIcSpeg==
X-CSE-MsgGUID: MYmQwANMS/248CQLJOle/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="88134502"
X-IronPort-AV: E=Sophos;i="6.23,193,1770624000"; d="scan'208";a="88134502"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 09:20:24 -0700
X-CSE-ConnectionGUID: QU2MldFqQwC3tR5L7VNMQg==
X-CSE-MsgGUID: NOUj1n7zRyeAMLXEKe1rZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,193,1770624000"; d="scan'208";a="228052478"
Received: from unknown (HELO localhost.png.intel.com) ([10.107.255.61])
 by fmviesa010.fm.intel.com with ESMTP; 22 Apr 2026 09:20:20 -0700
From: KhaiWenTan <khai.wen.tan@linux.intel.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, faizal.abdul.rahim@intel.com,
 hong.aun.looi@intel.com, khai.wen.tan@intel.com,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>, Looi,
 KhaiWenTan <khai.wen.tan@linux.intel.com>
Date: Wed, 22 Apr 2026 23:57:01 +0800
Message-ID: <20260422155701.7420-4-khai.wen.tan@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260422155701.7420-1-khai.wen.tan@linux.intel.com>
References: <20260422155701.7420-1-khai.wen.tan@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776874825; x=1808410825;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NK/Lc/lfCPmYBX4q+H8oO4NAENdkDcREsNw+NUz/Brg=;
 b=PXe09iLLAdIobjrTG8SNMY/sDSvzFaxCUrgP5MQhZIEA1bQD27/tMmkf
 WbTDaMMV20sAp3U1IPvdpCISZ2t73z6FPcB6i7SDmCDFDgSgFKiSNFg6S
 tutkazY8oRLLnufGv1jsaKrCgWWPDIBgjGaXCe5LHWnM9vMynBz6xwsmn
 Ilmp87OInBjpk2kcr1CYEuTrmfERx/gUjV+Esdfq1X9kvouOgEJUEvSPI
 t/yHW2U5W31i9k+dF4KERlMTeOujoTzQvQQNJJT3bXmVKZl58s1nb9nz/
 yQrKwHo6I6xphTGOWKn/s75Zob0T4kFdMpxiq8uyMOLh0rwgcSAP0A6Gu
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PXe09iLL
Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/3] igc: add support for
 forcing link speed without autonegotiation
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[khai.wen.tan@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:khai.wen.tan@intel.com,m:faizal.abdul.rahim@linux.intel.com,m:khai.wen.tan@linux.intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,linux.intel.com:mid,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[khai.wen.tan@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5BC8B4487A0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

Allow users to force 10/100 Mb/s link speed and duplex via ethtool
when autonegotiation is disabled. Previously, the driver rejected
these requests with "Force mode currently not supported.".

Forcing at 1000 Mb/s and 2500 Mb/s is not supported.

Reviewed-by: Looi, Hong Aun <hong.aun.looi@intel.com>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Signed-off-by: KhaiWenTan <khai.wen.tan@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_base.c    |  35 ++++-
 drivers/net/ethernet/intel/igc/igc_defines.h |   9 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 131 +++++++++++++------
 drivers/net/ethernet/intel/igc/igc_hw.h      |   9 ++
 drivers/net/ethernet/intel/igc/igc_mac.c     |  10 ++
 drivers/net/ethernet/intel/igc/igc_main.c    |   2 +-
 drivers/net/ethernet/intel/igc/igc_phy.c     |  65 ++++++++-
 drivers/net/ethernet/intel/igc/igc_phy.h     |   1 +
 8 files changed, 211 insertions(+), 51 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
index 1613b562d17c..ab9120a3127f 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.c
+++ b/drivers/net/ethernet/intel/igc/igc_base.c
@@ -114,11 +114,35 @@ static s32 igc_setup_copper_link_base(struct igc_hw *hw)
 	u32 ctrl;
 
 	ctrl = rd32(IGC_CTRL);
-	ctrl |= IGC_CTRL_SLU;
-	ctrl &= ~(IGC_CTRL_FRCSPD | IGC_CTRL_FRCDPX);
-	wr32(IGC_CTRL, ctrl);
-
-	ret_val = igc_setup_copper_link(hw);
+	ctrl &= ~(IGC_CTRL_FRCSPD | IGC_CTRL_FRCDPX |
+		  IGC_CTRL_SPEED_MASK | IGC_CTRL_FD);
+
+	if (hw->mac.autoneg_enabled) {
+		ctrl |= IGC_CTRL_SLU;
+		wr32(IGC_CTRL, ctrl);
+		ret_val = igc_setup_copper_link(hw);
+	} else {
+		ctrl |= IGC_CTRL_SLU | IGC_CTRL_FRCSPD | IGC_CTRL_FRCDPX;
+
+		switch (hw->mac.forced_speed_duplex) {
+		case IGC_FORCED_10H:
+			ctrl |= IGC_CTRL_SPEED_10;
+			break;
+		case IGC_FORCED_10F:
+			ctrl |= IGC_CTRL_SPEED_10 | IGC_CTRL_FD;
+			break;
+		case IGC_FORCED_100H:
+			ctrl |= IGC_CTRL_SPEED_100;
+			break;
+		case IGC_FORCED_100F:
+			ctrl |= IGC_CTRL_SPEED_100 | IGC_CTRL_FD;
+			break;
+		default:
+			return -IGC_ERR_CONFIG;
+		}
+		wr32(IGC_CTRL, ctrl);
+		ret_val = igc_setup_copper_link(hw);
+	}
 
 	return ret_val;
 }
@@ -443,6 +467,7 @@ static const struct igc_phy_operations igc_phy_ops_base = {
 	.reset			= igc_phy_hw_reset,
 	.read_reg		= igc_read_phy_reg_gpy,
 	.write_reg		= igc_write_phy_reg_gpy,
+	.force_speed_duplex	= igc_force_speed_duplex,
 };
 
 const struct igc_info igc_base_info = {
diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 9482ab11f050..3f504751c2d9 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -129,10 +129,13 @@
 #define IGC_ERR_SWFW_SYNC		13
 
 /* Device Control */
+#define IGC_CTRL_FD		BIT(0)  /* Full Duplex */
 #define IGC_CTRL_RST		0x04000000  /* Global reset */
-
 #define IGC_CTRL_PHY_RST	0x80000000  /* PHY Reset */
 #define IGC_CTRL_SLU		0x00000040  /* Set link up (Force Link) */
+#define IGC_CTRL_SPEED_MASK	GENMASK(10, 8)
+#define IGC_CTRL_SPEED_10	FIELD_PREP(IGC_CTRL_SPEED_MASK, 0)
+#define IGC_CTRL_SPEED_100	FIELD_PREP(IGC_CTRL_SPEED_MASK, 1)
 #define IGC_CTRL_FRCSPD		0x00000800  /* Force Speed */
 #define IGC_CTRL_FRCDPX		0x00001000  /* Force Duplex */
 #define IGC_CTRL_VME		0x40000000  /* IEEE VLAN mode enable */
@@ -673,6 +676,10 @@
 #define IGC_GEN_POLL_TIMEOUT	1920
 
 /* PHY Control Register */
+#define MII_CR_SPEED_MASK	(BIT(6) | BIT(13))
+#define MII_CR_SPEED_10		0x0000	/* SSM=0, SSL=0: 10 Mb/s */
+#define MII_CR_SPEED_100	BIT(13)	/* SSM=0, SSL=1: 100 Mb/s */
+#define MII_CR_DUPLEX_EN	BIT(8)	/* 0 = Half Duplex, 1 = Full Duplex */
 #define MII_CR_RESTART_AUTO_NEG	0x0200  /* Restart auto negotiation */
 #define MII_CR_POWER_DOWN	0x0800  /* Power down */
 #define MII_CR_AUTO_NEG_EN	0x1000  /* Auto Neg Enable */
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index cfcbf2fdad6e..6a54c7a98f39 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1914,44 +1914,58 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
 	ethtool_link_ksettings_add_link_mode(cmd, supported, TP);
 	ethtool_link_ksettings_add_link_mode(cmd, advertising, TP);
 
-	/* advertising link modes */
-	if (hw->phy.autoneg_advertised & ADVERTISE_10_HALF)
-		ethtool_link_ksettings_add_link_mode(cmd, advertising, 10baseT_Half);
-	if (hw->phy.autoneg_advertised & ADVERTISE_10_FULL)
-		ethtool_link_ksettings_add_link_mode(cmd, advertising, 10baseT_Full);
-	if (hw->phy.autoneg_advertised & ADVERTISE_100_HALF)
-		ethtool_link_ksettings_add_link_mode(cmd, advertising, 100baseT_Half);
-	if (hw->phy.autoneg_advertised & ADVERTISE_100_FULL)
-		ethtool_link_ksettings_add_link_mode(cmd, advertising, 100baseT_Full);
-	if (hw->phy.autoneg_advertised & ADVERTISE_1000_FULL)
-		ethtool_link_ksettings_add_link_mode(cmd, advertising, 1000baseT_Full);
-	if (hw->phy.autoneg_advertised & ADVERTISE_2500_FULL)
-		ethtool_link_ksettings_add_link_mode(cmd, advertising, 2500baseT_Full);
-
 	/* set autoneg settings */
 	ethtool_link_ksettings_add_link_mode(cmd, supported, Autoneg);
-	ethtool_link_ksettings_add_link_mode(cmd, advertising, Autoneg);
+	if (hw->mac.autoneg_enabled) {
+		ethtool_link_ksettings_add_link_mode(cmd, advertising, Autoneg);
+		cmd->base.autoneg = AUTONEG_ENABLE;
+
+		/* advertising link modes only apply when autoneg is on */
+		if (hw->phy.autoneg_advertised & ADVERTISE_10_HALF)
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     10baseT_Half);
+		if (hw->phy.autoneg_advertised & ADVERTISE_10_FULL)
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     10baseT_Full);
+		if (hw->phy.autoneg_advertised & ADVERTISE_100_HALF)
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     100baseT_Half);
+		if (hw->phy.autoneg_advertised & ADVERTISE_100_FULL)
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     100baseT_Full);
+		if (hw->phy.autoneg_advertised & ADVERTISE_1000_FULL)
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     1000baseT_Full);
+		if (hw->phy.autoneg_advertised & ADVERTISE_2500_FULL)
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     2500baseT_Full);
+
+		/* Set pause flow control advertising */
+		switch (hw->fc.requested_mode) {
+		case igc_fc_full:
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     Pause);
+			break;
+		case igc_fc_rx_pause:
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     Pause);
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     Asym_Pause);
+			break;
+		case igc_fc_tx_pause:
+			ethtool_link_ksettings_add_link_mode(cmd, advertising,
+							     Asym_Pause);
+			break;
+		default:
+			break;
+		}
+	} else {
+		cmd->base.autoneg = AUTONEG_DISABLE;
+	}
 
-	/* Set pause flow control settings */
+	/* Pause is always supported */
 	ethtool_link_ksettings_add_link_mode(cmd, supported, Pause);
 
-	switch (hw->fc.requested_mode) {
-	case igc_fc_full:
-		ethtool_link_ksettings_add_link_mode(cmd, advertising, Pause);
-		break;
-	case igc_fc_rx_pause:
-		ethtool_link_ksettings_add_link_mode(cmd, advertising, Pause);
-		ethtool_link_ksettings_add_link_mode(cmd, advertising,
-						     Asym_Pause);
-		break;
-	case igc_fc_tx_pause:
-		ethtool_link_ksettings_add_link_mode(cmd, advertising,
-						     Asym_Pause);
-		break;
-	default:
-		break;
-	}
-
 	status = pm_runtime_suspended(&adapter->pdev->dev) ?
 		 0 : rd32(IGC_STATUS);
 
@@ -1983,7 +1997,6 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
 		cmd->base.duplex = DUPLEX_UNKNOWN;
 	}
 	cmd->base.speed = speed;
-	cmd->base.autoneg = AUTONEG_ENABLE;
 
 	/* MDI-X => 2; MDI =>1; Invalid =>0 */
 	if (hw->phy.media_type == igc_media_type_copper)
@@ -2000,6 +2013,41 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
 	return 0;
 }
 
+/**
+ * igc_handle_autoneg_disabled - Configure forced speed/duplex settings
+ * @adapter: private driver structure
+ * @speed: requested speed (must be SPEED_10 or SPEED_100)
+ * @duplex: requested duplex
+ *
+ * Records forced speed/duplex when autoneg is disabled.
+ * Caller must validate speed before calling this function.
+ */
+static void igc_handle_autoneg_disabled(struct igc_adapter *adapter, u32 speed,
+					u8 duplex)
+{
+	struct igc_mac_info *mac = &adapter->hw.mac;
+
+	switch (speed) {
+	case SPEED_10:
+		mac->forced_speed_duplex = (duplex == DUPLEX_FULL) ?
+			IGC_FORCED_10F : IGC_FORCED_10H;
+		break;
+	case SPEED_100:
+		mac->forced_speed_duplex = (duplex == DUPLEX_FULL) ?
+			IGC_FORCED_100F : IGC_FORCED_100H;
+		break;
+	default:
+		WARN_ONCE(1, "Unsupported speed %u\n", speed);
+		return;
+	}
+
+	mac->autoneg_enabled = false;
+
+	/* Half-duplex cannot support flow control per IEEE 802.3 */
+	if (duplex != DUPLEX_FULL)
+		adapter->hw.fc.requested_mode = igc_fc_none;
+}
+
 /**
  * igc_handle_autoneg_enabled - Configure autonegotiation advertisement
  * @adapter: private driver structure
@@ -2038,6 +2086,7 @@ static void igc_handle_autoneg_enabled(struct igc_adapter *adapter,
 						  10baseT_Half))
 		advertised |= ADVERTISE_10_HALF;
 
+	hw->mac.autoneg_enabled = true;
 	hw->phy.autoneg_advertised = advertised;
 	if (adapter->fc_autoneg)
 		hw->fc.requested_mode = igc_fc_default;
@@ -2071,14 +2120,20 @@ igc_ethtool_set_link_ksettings(struct net_device *netdev,
 		}
 	}
 
+	if (cmd->base.autoneg == AUTONEG_DISABLE &&
+	    cmd->base.speed != SPEED_10 && cmd->base.speed != SPEED_100) {
+		netdev_info(dev, "Unsupported speed for forced link\n");
+		return -EINVAL;
+	}
+
 	while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
 		usleep_range(1000, 2000);
 
-	if (cmd->base.autoneg == AUTONEG_ENABLE) {
+	if (cmd->base.autoneg == AUTONEG_ENABLE)
 		igc_handle_autoneg_enabled(adapter, cmd);
-	} else {
-		netdev_info(dev, "Force mode currently not supported\n");
-	}
+	else
+		igc_handle_autoneg_disabled(adapter, cmd->base.speed,
+					    cmd->base.duplex);
 
 	/* MDI-X => 2; MDI => 1; Auto => 3 */
 	if (cmd->base.eth_tp_mdix_ctrl) {
diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index 86ab8f566f44..62aaee55668a 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -73,6 +73,13 @@ struct igc_info {
 
 extern const struct igc_info igc_base_info;
 
+enum igc_forced_speed_duplex {
+	IGC_FORCED_10H,
+	IGC_FORCED_10F,
+	IGC_FORCED_100H,
+	IGC_FORCED_100F,
+};
+
 struct igc_mac_info {
 	struct igc_mac_operations ops;
 
@@ -93,6 +100,8 @@ struct igc_mac_info {
 	bool arc_subsystem_valid;
 
 	bool get_link_status;
+	bool autoneg_enabled;
+	enum igc_forced_speed_duplex forced_speed_duplex;
 };
 
 struct igc_nvm_operations {
diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
index 142beb9ae557..8bbb6d5581c7 100644
--- a/drivers/net/ethernet/intel/igc/igc_mac.c
+++ b/drivers/net/ethernet/intel/igc/igc_mac.c
@@ -446,6 +446,16 @@ s32 igc_config_fc_after_link_up(struct igc_hw *hw)
 	u16 speed, duplex;
 	s32 ret_val = 0;
 
+	/* When autoneg is disabled, force the MAC flow control settings
+	 * to match the "fc" parameter.
+	 */
+	if (!hw->mac.autoneg_enabled) {
+		ret_val = igc_force_mac_fc(hw);
+		if (ret_val)
+			hw_dbg("Error forcing flow control settings\n");
+		goto out;
+	}
+
 	/* In auto-neg, we need to check and see if Auto-Neg has completed,
 	 * and if so, how the PHY and link partner has flow control
 	 * configured.
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 72bc5128d8b8..437e1d1ef1e4 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -7298,7 +7298,7 @@ static int igc_probe(struct pci_dev *pdev,
 	/* Initialize link properties that are user-changeable */
 	adapter->fc_autoneg = true;
 	hw->phy.autoneg_advertised = 0xaf;
-
+	hw->mac.autoneg_enabled = true;
 	hw->fc.requested_mode = igc_fc_default;
 	hw->fc.current_mode = igc_fc_default;
 
diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
index 6c4d204aecfa..4cf737fb3b21 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.c
+++ b/drivers/net/ethernet/intel/igc/igc_phy.c
@@ -494,12 +494,20 @@ s32 igc_setup_copper_link(struct igc_hw *hw)
 	s32 ret_val = 0;
 	bool link;
 
-	/* Setup autoneg and flow control advertisement and perform
-	 * autonegotiation.
-	 */
-	ret_val = igc_copper_link_autoneg(hw);
-	if (ret_val)
-		goto out;
+	if (hw->mac.autoneg_enabled) {
+		/* Setup autoneg and flow control advertisement and perform
+		 * autonegotiation.
+		 */
+		ret_val = igc_copper_link_autoneg(hw);
+		if (ret_val)
+			goto out;
+	} else {
+		ret_val = hw->phy.ops.force_speed_duplex(hw);
+		if (ret_val) {
+			hw_dbg("Error Forcing Speed/Duplex\n");
+			goto out;
+		}
+	}
 
 	/* Check link status. Wait up to 100 microseconds for link to become
 	 * valid.
@@ -778,3 +786,48 @@ u16 igc_read_phy_fw_version(struct igc_hw *hw)
 
 	return gphy_version;
 }
+
+/**
+ * igc_force_speed_duplex - Force PHY speed and duplex settings
+ * @hw: pointer to the HW structure
+ *
+ * Programs the GPY PHY control register to disable autonegotiation
+ * and force the speed/duplex indicated by hw->mac.forced_speed_duplex.
+ */
+s32 igc_force_speed_duplex(struct igc_hw *hw)
+{
+	struct igc_phy_info *phy = &hw->phy;
+	u16 phy_ctrl;
+	s32 ret_val;
+
+	ret_val = phy->ops.read_reg(hw, PHY_CONTROL, &phy_ctrl);
+	if (ret_val)
+		return ret_val;
+
+	phy_ctrl &= ~(MII_CR_SPEED_MASK | MII_CR_DUPLEX_EN |
+		      MII_CR_AUTO_NEG_EN | MII_CR_RESTART_AUTO_NEG);
+
+	switch (hw->mac.forced_speed_duplex) {
+	case IGC_FORCED_10H:
+		phy_ctrl |= MII_CR_SPEED_10;
+		break;
+	case IGC_FORCED_10F:
+		phy_ctrl |= MII_CR_SPEED_10 | MII_CR_DUPLEX_EN;
+		break;
+	case IGC_FORCED_100H:
+		phy_ctrl |= MII_CR_SPEED_100;
+		break;
+	case IGC_FORCED_100F:
+		phy_ctrl |= MII_CR_SPEED_100 | MII_CR_DUPLEX_EN;
+		break;
+	default:
+		return -IGC_ERR_CONFIG;
+	}
+
+	ret_val = phy->ops.write_reg(hw, PHY_CONTROL, phy_ctrl);
+	if (ret_val)
+		return ret_val;
+
+	hw->mac.get_link_status = true;
+	return 0;
+}
diff --git a/drivers/net/ethernet/intel/igc/igc_phy.h b/drivers/net/ethernet/intel/igc/igc_phy.h
index 832a7e359f18..d37a89174826 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.h
+++ b/drivers/net/ethernet/intel/igc/igc_phy.h
@@ -18,5 +18,6 @@ void igc_power_down_phy_copper(struct igc_hw *hw);
 s32 igc_write_phy_reg_gpy(struct igc_hw *hw, u32 offset, u16 data);
 s32 igc_read_phy_reg_gpy(struct igc_hw *hw, u32 offset, u16 *data);
 u16 igc_read_phy_fw_version(struct igc_hw *hw);
+s32 igc_force_speed_duplex(struct igc_hw *hw);
 
 #endif
-- 
2.43.0

