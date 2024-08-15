Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C725952ED6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2024 15:11:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43189401BD;
	Thu, 15 Aug 2024 13:11:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hu1-_jEQTJ9b; Thu, 15 Aug 2024 13:11:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44F93401F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723727514;
	bh=GpLYMXZli6Ie4xirX1juGlRfZoh6Pq353rxsWqCBpVI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=UwDNKmP77HETnf4caQewKwv+QjLQ5te84FBboRnfW9iQ4lTw/TgDvTykuhzK9rrPW
	 5n0mnPEIlv/8Ltuu1REuNDSFI0hI04c2eD+nkAAxawwtX/xtv7azIY0kiQ/8Ksli2D
	 a49kf1zwfj1vQJTnf9Qky1ABpcLRnTdMnMZdQuSsZK81WCLDeFjbXscxOpqq1ziXaF
	 UjlRSGIvUhZQQTFEXUkZB9HLEs2FQWL2GFDE5sXVxsXyJ9eEX4fZ9AnV6DKuCkcOSj
	 pa2t6l5V2pOM7CyCbVKBOax2S1ts7voIF5BLvx+jsSjb87dewjL+wZVgQiEBMtljq1
	 jF+YN+1GfJqVg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44F93401F7;
	Thu, 15 Aug 2024 13:11:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2F5E81BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 13:11:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1B11E60765
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 13:11:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x86K2crC39aN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2024 13:11:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3ED996070D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3ED996070D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3ED996070D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2024 13:11:50 +0000 (UTC)
X-CSE-ConnectionGUID: jzMZYttIS+yQtHU34sJZCA==
X-CSE-MsgGUID: 241gQphNSx2qqNIPeSOnpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="22122433"
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="22122433"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 06:11:49 -0700
X-CSE-ConnectionGUID: JLpXT7m5SICPqoqTKgS+RA==
X-CSE-MsgGUID: 89PNHZa6QnSTd9l4aQhYmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,148,1719903600"; d="scan'208";a="59008994"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.51])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 06:11:48 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 15 Aug 2024 16:11:44 +0300
Message-Id: <20240815131144.2953402-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723727511; x=1755263511;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DpukXEPWi6sJiFOZViOyQ7rKssvwz0X9rrMFK+gMgXs=;
 b=FRjFsCjrjsQWB33WFyZXt6zj29rLciXyYyaSnA2NVLgZeO9Nw/g4vSZY
 A96OQjokiN5x5oD27ro7jyRG7Or0Gow10qL0maEMK9/nB0Dl1EmXNqrad
 yNmQblHLjbBDTIAPo7FOTLbuH99aU1+ZOPgb51iVhWz+QZZMmfVE3Lwio
 ZjDY/QpCrBoXsWhCcS8+wlK5jJRr8RFZvmI7GMaCWxYE5aG0MyPyh3lmJ
 OpjNhnMQo9qG7ZFIAyzrQXaD0wMvgk62qJRYJrzf1wutPlo6YVW89zQ2V
 1W1X/A8q5PLOWvs0OXQn36HnBojQBA/J5vZskR/hQBaLk4VNSUlI/kRvP
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FRjFsCjr
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: change I219 (19)
 devices to ADP
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

Change the MAC and board types of I219 (19) devices from MTP to ADP.
These devices have hardware more closely related to ADP than MTP.

Fixes: db2d737d63c5 ("e1000e: Separate MTP board type from ADP")
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
 drivers/net/ethernet/intel/e1000e/hw.h     | 4 ++--
 drivers/net/ethernet/intel/e1000e/netdev.c | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/hw.h b/drivers/net/ethernet/intel/e1000e/hw.h
index 4b6e7536170a..fc8ed38aa095 100644
--- a/drivers/net/ethernet/intel/e1000e/hw.h
+++ b/drivers/net/ethernet/intel/e1000e/hw.h
@@ -108,8 +108,8 @@ struct e1000_hw;
 #define E1000_DEV_ID_PCH_RPL_I219_V22		0x0DC8
 #define E1000_DEV_ID_PCH_MTP_I219_LM18		0x550A
 #define E1000_DEV_ID_PCH_MTP_I219_V18		0x550B
-#define E1000_DEV_ID_PCH_MTP_I219_LM19		0x550C
-#define E1000_DEV_ID_PCH_MTP_I219_V19		0x550D
+#define E1000_DEV_ID_PCH_ADP_I219_LM19		0x550C
+#define E1000_DEV_ID_PCH_ADP_I219_V19		0x550D
 #define E1000_DEV_ID_PCH_LNP_I219_LM20		0x550E
 #define E1000_DEV_ID_PCH_LNP_I219_V20		0x550F
 #define E1000_DEV_ID_PCH_LNP_I219_LM21		0x5510
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 360ee26557f7..80f8e23bc4f5 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -7896,10 +7896,10 @@ static const struct pci_device_id e1000_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_V17), board_pch_adp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_RPL_I219_LM22), board_pch_adp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_RPL_I219_V22), board_pch_adp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_LM19), board_pch_adp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_V19), board_pch_adp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_LM18), board_pch_mtp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_V18), board_pch_mtp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_LM19), board_pch_mtp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_V19), board_pch_mtp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_LM20), board_pch_mtp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_V20), board_pch_mtp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_LM21), board_pch_mtp },
-- 
2.34.1

