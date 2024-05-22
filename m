Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B53E8CBDA0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 May 2024 11:19:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C9564063E;
	Wed, 22 May 2024 09:19:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ch3NWuAZft01; Wed, 22 May 2024 09:19:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D06E340645
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716369565;
	bh=thTO/wXr+uUvdWwmAOMxAdRTgGTkuYQ+xPCm3/3/BYY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=b7DBLnyo8qwUEHG+iuqQ2GgtITZtmPCn/FA4YTVCbSAkHiSn8/Au9Mhz3Bt6Gv7K/
	 o3x1G+uns/beGe8hPX2UHlD6RDB1tuN3Mv1vyhDOzaQBs2vFfBoPcfy1z0ntBpyCJU
	 ttyU+DYCCT4HUZjnXbu6hR0APl4++FM0fnITrD5QFgW/rOpvZlJAztT2b7vVodnd5I
	 5IbmKHmJdwVpt+1697CJeDb01AETl9Tu/58yeD8unZLA4Ye8ExjsmpOspGlXoTHuoW
	 GMo5XDiKU2E3M52LDaEyHT82nK1fUx36OFObG/DlX3DvGQb/A1Hf3VshJYt0ndR4co
	 LSkGhYZMZywLQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D06E340645;
	Wed, 22 May 2024 09:19:24 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 032B01BF284
 for <intel-wired-lan@osuosl.org>; Wed, 22 May 2024 09:19:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E1EF340338
 for <intel-wired-lan@osuosl.org>; Wed, 22 May 2024 09:19:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3lioyFNz7cq1 for <intel-wired-lan@osuosl.org>;
 Wed, 22 May 2024 09:19:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 94F0B40204
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 94F0B40204
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 94F0B40204
 for <intel-wired-lan@osuosl.org>; Wed, 22 May 2024 09:19:20 +0000 (UTC)
X-CSE-ConnectionGUID: 8VMfiUX/QByPuapA8uDX+A==
X-CSE-MsgGUID: qcm9wfclTbadJAQaanS5pQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="30110653"
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="30110653"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 02:19:20 -0700
X-CSE-ConnectionGUID: G9QeyXcURPWFji/wxnlY0Q==
X-CSE-MsgGUID: fvkJ+nSAQRihFhybMTPifA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="33277344"
Received: from unknown (HELO ccdlinuxdev11.iil.intel.com) ([143.185.162.51])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 02:19:17 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 22 May 2024 12:19:11 +0300
Message-Id: <20240522091911.2862403-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716369561; x=1747905561;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WVNWOHC2ICFf+n8Dxft3FNCfqWMu+MnIBuUh4y4Zqws=;
 b=C9p42qwn7RD+gnRWX+COPLtnd//8l2t5g8oU7BKoLHdCs9yMFRiqhSj4
 YA+iMLya+UF71hIfS+7S8Z01vX4yJBYT/v+g7n1fjdk7D+/v72IchN01h
 cgdv4JLo0oTFJ5G/uqSUM5ZxEgm+tlcH4n5xw3qQMju/TLA+IqtOYbABp
 rVY18BVJCpujvif0xjH/aCxYPQUJ7vDw6rjrD9NmELLhqGzammkU5gMbl
 0geSzm86o4u/EideZluSX1p0mbMRu5sX9ak7ydXYikthARDH2AS3iFkjr
 HkbrqDZc+C43fONm6kcUzFFFPOOBQnBhKglKjLYIo51IJASXJkGn275D1
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C9p42qwn
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/1] igc: add support for
 ethtool.set_phys_id
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
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>, kurt@linutronix.de,
 Menachem Fogel <menachem.fogel@intel.com>, lukas@wunner.de
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for ethtool.set_phys_id callback to initiate LED blinking
and stopping them by the ethtool interface.
This is done by storing the initial LEDCTL register value and restoring
it when LED blinking is terminated.

In addition, moved IGC_LEDCTL related defines from igc_leds.c to
igc_defines.h where they can be included by all of the igc module
files.

Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Signed-off-by: Menachem Fogel <menachem.fogel@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 22 ++++++++++++++
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 32 ++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_hw.h      |  2 ++
 drivers/net/ethernet/intel/igc/igc_leds.c    | 21 +------------
 drivers/net/ethernet/intel/igc/igc_main.c    |  2 ++
 5 files changed, 59 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 5f92b3c7c3d4..664d49f10427 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -686,4 +686,26 @@
 #define IGC_LTRMAXV_LSNP_REQ		0x00008000 /* LTR Snoop Requirement */
 #define IGC_LTRMAXV_SCALE_SHIFT		10
 
+/* LED ctrl defines */
+#define IGC_NUM_LEDS			3
+
+#define IGC_LEDCTL_GLOBAL_BLINK_MODE	BIT(5)
+#define IGC_LEDCTL_LED0_MODE_SHIFT	0
+#define IGC_LEDCTL_LED0_MODE_MASK	GENMASK(3, 0)
+#define IGC_LEDCTL_LED0_BLINK		BIT(7)
+#define IGC_LEDCTL_LED1_MODE_SHIFT	8
+#define IGC_LEDCTL_LED1_MODE_MASK	GENMASK(11, 8)
+#define IGC_LEDCTL_LED1_BLINK		BIT(15)
+#define IGC_LEDCTL_LED2_MODE_SHIFT	16
+#define IGC_LEDCTL_LED2_MODE_MASK	GENMASK(19, 16)
+#define IGC_LEDCTL_LED2_BLINK		BIT(23)
+
+#define IGC_LEDCTL_MODE_ON		0x00
+#define IGC_LEDCTL_MODE_OFF		0x01
+#define IGC_LEDCTL_MODE_LINK_10		0x05
+#define IGC_LEDCTL_MODE_LINK_100	0x06
+#define IGC_LEDCTL_MODE_LINK_1000	0x07
+#define IGC_LEDCTL_MODE_LINK_2500	0x08
+#define IGC_LEDCTL_MODE_ACTIVITY	0x0b
+
 #endif /* _IGC_DEFINES_H_ */
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index f2c4f1966bb0..82ece5f95f1e 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1975,6 +1975,37 @@ static void igc_ethtool_diag_test(struct net_device *netdev,
 	msleep_interruptible(4 * 1000);
 }
 
+static int igc_ethtool_set_phys_id(struct net_device *netdev,
+				   enum ethtool_phys_id_state state)
+{
+	struct igc_adapter *adapter = netdev_priv(netdev);
+	struct igc_hw *hw = &adapter->hw;
+	u32 ledctl;
+
+	switch (state) {
+	case ETHTOOL_ID_ACTIVE:
+		ledctl = rd32(IGC_LEDCTL);
+
+		/* initiate LED1 blinking */
+		ledctl &= ~(IGC_LEDCTL_GLOBAL_BLINK_MODE |
+			   IGC_LEDCTL_LED1_MODE_MASK |
+			   IGC_LEDCTL_LED2_MODE_MASK);
+		ledctl |= IGC_LEDCTL_LED1_BLINK;
+		wr32(IGC_LEDCTL, ledctl);
+		break;
+
+	case ETHTOOL_ID_INACTIVE:
+		/* restore LEDCTL default value */
+		wr32(IGC_LEDCTL, hw->mac.ledctl_default);
+		break;
+
+	default:
+		break;
+	}
+
+	return 0;
+}
+
 static const struct ethtool_ops igc_ethtool_ops = {
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS,
 	.get_drvinfo		= igc_ethtool_get_drvinfo,
@@ -2013,6 +2044,7 @@ static const struct ethtool_ops igc_ethtool_ops = {
 	.get_link_ksettings	= igc_ethtool_get_link_ksettings,
 	.set_link_ksettings	= igc_ethtool_set_link_ksettings,
 	.self_test		= igc_ethtool_diag_test,
+	.set_phys_id		= igc_ethtool_set_phys_id,
 };
 
 void igc_ethtool_set_ops(struct net_device *netdev)
diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index e1c572e0d4ef..45b68695bdb7 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -95,6 +95,8 @@ struct igc_mac_info {
 	bool autoneg;
 	bool autoneg_failed;
 	bool get_link_status;
+
+	u32 ledctl_default;
 };
 
 struct igc_nvm_operations {
diff --git a/drivers/net/ethernet/intel/igc/igc_leds.c b/drivers/net/ethernet/intel/igc/igc_leds.c
index 3929b25b6ae6..e5eeef240802 100644
--- a/drivers/net/ethernet/intel/igc/igc_leds.c
+++ b/drivers/net/ethernet/intel/igc/igc_leds.c
@@ -8,26 +8,7 @@
 #include <uapi/linux/uleds.h>
 
 #include "igc.h"
-
-#define IGC_NUM_LEDS			3
-
-#define IGC_LEDCTL_LED0_MODE_SHIFT	0
-#define IGC_LEDCTL_LED0_MODE_MASK	GENMASK(3, 0)
-#define IGC_LEDCTL_LED0_BLINK		BIT(7)
-#define IGC_LEDCTL_LED1_MODE_SHIFT	8
-#define IGC_LEDCTL_LED1_MODE_MASK	GENMASK(11, 8)
-#define IGC_LEDCTL_LED1_BLINK		BIT(15)
-#define IGC_LEDCTL_LED2_MODE_SHIFT	16
-#define IGC_LEDCTL_LED2_MODE_MASK	GENMASK(19, 16)
-#define IGC_LEDCTL_LED2_BLINK		BIT(23)
-
-#define IGC_LEDCTL_MODE_ON		0x00
-#define IGC_LEDCTL_MODE_OFF		0x01
-#define IGC_LEDCTL_MODE_LINK_10		0x05
-#define IGC_LEDCTL_MODE_LINK_100	0x06
-#define IGC_LEDCTL_MODE_LINK_1000	0x07
-#define IGC_LEDCTL_MODE_LINK_2500	0x08
-#define IGC_LEDCTL_MODE_ACTIVITY	0x0b
+#include "igc_defines.h"
 
 #define IGC_SUPPORTED_MODES						 \
 	(BIT(TRIGGER_NETDEV_LINK_2500) | BIT(TRIGGER_NETDEV_LINK_1000) | \
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index b5bcabab7a1d..97d195853818 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -7070,6 +7070,8 @@ static int igc_probe(struct pci_dev *pdev,
 			goto err_register;
 	}
 
+	hw->mac.ledctl_default = rd32(IGC_LEDCTL);
+
 	return 0;
 
 err_register:
-- 
2.34.1

