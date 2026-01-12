Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7BCD1310C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 15:18:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B119842855;
	Mon, 12 Jan 2026 14:18:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4YJbeAWqd46g; Mon, 12 Jan 2026 14:18:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12DCA42854
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768227524;
	bh=P1NkLvL1NpYOa3tCRxlnHINpomb06XydmuTgXrW7wh0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aWknefm5m0YY/KtXS6qTq7b75MFtUToT945Qv0CjuDoSFqhG7mAxPtRCZmlvGIXZ0
	 qx7ukss/ug8GooZAWPwdcroUUklI40mFqFvvQ0T/6tU4QtcPOtDtPO4sCR+sWq5eDn
	 g4/SDZjD9CoXlD3ZJC8jls3Cve+ZS0sbEw80UqxFT+LKNEz0PVL6CLR3hiX0EWtEQg
	 q/y5BNWMpRhDqgSgPCivvBkPD0uvulFkSxCZfFoLeU3bJ6oKLR14eU7N/jhrPX0jZN
	 lzbEHDBbIZQOVbwERNb1eemHCsO9k6ssE+SMTy3gtww5LRY5V8LfViTlCqQrdTzuom
	 EWE1OPEAbWLEQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12DCA42854;
	Mon, 12 Jan 2026 14:18:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5456012E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 46DF36F4F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MJidyWpzDDHj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 14:18:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BA98C6F4F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA98C6F4F6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BA98C6F4F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:41 +0000 (UTC)
X-CSE-ConnectionGUID: gMY9y1DhQhyvhOHy+Ri+9g==
X-CSE-MsgGUID: zytFKt7ZTCyS5aVryOETfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="73352287"
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="73352287"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 06:18:41 -0800
X-CSE-ConnectionGUID: DOaeo8ENQRS70DPRm9A2Jg==
X-CSE-MsgGUID: ANpCmzn4RWGSgBRyGYklJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="227355634"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa002.fm.intel.com with ESMTP; 12 Jan 2026 06:18:40 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 12 Jan 2026 15:01:04 +0100
Message-Id: <20260112140108.1173835-4-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
References: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768227522; x=1799763522;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nFJJYjWICI1M8ZrMgVJkDUTWu17fao6IyUHM3cWgSRM=;
 b=bH5wqie11d55zNqfuvJKGzSgURvW1JUbN2csyFPIKQKGwWcJDHcEpeNE
 +mMZAMuLuorKzNvtfekyArccWoeQgLwV7SsZKJ31rbIBL81Jn8Pcjv6jQ
 NCKR13mLbl5UD32MoJfPY11Myl/KSpxf2Pysqeb4SO7Nvxf3Pz5pg/oLS
 DDC21qGtzl1L4y8W5SD+m1sRS+ZoL1wy1P6tb6PUhbTqw4KlMl3tJnxHi
 /4aHMQuMOPNxUk4BztmMWWOrbfwgd7fU72+I2AQGmUcT6DKpRAUceJQ0F
 h8+EmVQdeveF5ushpltDUQnrTTWrCeoP7MJrFHgzNVe64qsHmdOda0S6M
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bH5wqie1
Subject: [Intel-wired-lan] [PATCH iwl-next v1 3/7] ixgbe: E610: update EEE
 supported speeds
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

Despite there was no EEE (Energy Efficient Ethernet) feature
support for E610 adapters, eee_speeds_supported variable was
defined and even initialized with some EEE speeds.

As E610 adapter supports EEE only for 10G, 5G and 2.5G speeds,
update hw.phy.eee_speeds_supported. Remove unsupported speeds -
10M, 100M and 1G.

Add also entry for 5G speed in EEE speeds mapping array used
by ethtool callbacks.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c    | 11 ++++++++---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c |  1 +
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 71409a0ac2fe..bd0345ae863a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -1998,9 +1998,14 @@ int ixgbe_identify_phy_e610(struct ixgbe_hw *hw)
 	/* Set PHY ID */
 	memcpy(&hw->phy.id, pcaps.phy_id_oui, sizeof(u32));
 
-	hw->phy.eee_speeds_supported = IXGBE_LINK_SPEED_10_FULL |
-				       IXGBE_LINK_SPEED_100_FULL |
-				       IXGBE_LINK_SPEED_1GB_FULL;
+	/* E610 supports EEE only for speeds above 1G */
+	if (hw->device_id == IXGBE_DEV_ID_E610_2_5G_T)
+		hw->phy.eee_speeds_supported = IXGBE_LINK_SPEED_2_5GB_FULL;
+	else
+		hw->phy.eee_speeds_supported = IXGBE_LINK_SPEED_2_5GB_FULL |
+					       IXGBE_LINK_SPEED_5GB_FULL |
+					       IXGBE_LINK_SPEED_10GB_FULL;
+
 	hw->phy.eee_speeds_advertised = hw->phy.eee_speeds_supported;
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 25c3a09ad7f1..5764530b9667 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -3535,6 +3535,7 @@ static const struct {
 	{ IXGBE_LINK_SPEED_100_FULL, ETHTOOL_LINK_MODE_100baseT_Full_BIT },
 	{ IXGBE_LINK_SPEED_1GB_FULL, ETHTOOL_LINK_MODE_1000baseT_Full_BIT },
 	{ IXGBE_LINK_SPEED_2_5GB_FULL, ETHTOOL_LINK_MODE_2500baseX_Full_BIT },
+	{ IXGBE_LINK_SPEED_5GB_FULL, ETHTOOL_LINK_MODE_5000baseT_Full_BIT },
 	{ IXGBE_LINK_SPEED_10GB_FULL, ETHTOOL_LINK_MODE_10000baseT_Full_BIT },
 };
 
-- 
2.31.1

