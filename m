Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF3195B2F4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2024 12:33:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10409605C5;
	Thu, 22 Aug 2024 10:33:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1r_aK3PgI-lx; Thu, 22 Aug 2024 10:33:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 604B060676
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724322811;
	bh=3+moksOzKUqUZbOqsKxIlWaWDSrhTeHdPTqwXvV8bRM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=NAzIadB6KW1ePFkWxoWp19RI2wnnVO1UZELKpQU/+QEmuytt87/LWiLQHLBKUirue
	 qJ56Uy2Jl2k2nrtAoC/RSIQ8Ky15o7C9TbixKfayBzg9v2/aUbfqp3HzxvpXjyV62F
	 qlYTTcRvU8x9LSwNyH6xQsCyMVgvr8ySqrkHh0daby+T5wSpYHxneWJG83DyAFS+ro
	 8skr1TNWJGrxU5vJd+EhViKdLVTcbbo0utxYI7hQ0aIG4+njm5Rs0UhACVfted1Ta1
	 7rTex+z1k877F6S/WMet086rfDc6vnFb2ofCDWC7+2NIu1rbKwJiDT82ZVQ7PpLZJB
	 Hl5oP6SvUm4wQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 604B060676;
	Thu, 22 Aug 2024 10:33:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5CEF21BF346
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 10:33:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4977040492
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 10:33:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iLhyS-A5v2_G for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 10:33:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4AAF9403E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AAF9403E6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4AAF9403E6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 10:33:27 +0000 (UTC)
X-CSE-ConnectionGUID: UyrHbRXmRjeSEBn87il2wQ==
X-CSE-MsgGUID: ohliDbdaTZyh8lHukmXVQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="22332254"
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="22332254"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 03:33:27 -0700
X-CSE-ConnectionGUID: 6NKOIE9ATqOF7RC7ezjXyg==
X-CSE-MsgGUID: IR4pEoCGS/66AXNCf0verQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="61429032"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.51])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 03:33:26 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 Aug 2024 13:33:20 +0300
Message-Id: <20240822103320.2302092-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724322808; x=1755858808;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qefD3+4LTJvv3L0eP6paM7cTZUU1XsuOOqKSKrdIOFQ=;
 b=eHYkKXzeXQBU1rse1LdxhT8QIUm5UU9vDPL1qydKiH3U/GIb8kxJ3808
 rBcNscRLKE7JqnFx56PwlKnG2ZwnthJR/77qF22Db78M40s0mcdaPtaAK
 obr7ox3108wIdN9BFacn91cBNgsT5wB0KCe1pyGJobUxbZ3Lz0F1434pn
 dARPCifR32TZDfPg/tmxZG38c4JS/t1og8M4Ca9bE6cTIoi7DT9cHdinH
 xB0BY+FMNo2d9ri4yYSiQTq51ED/2DPPhTyJyloSaEXJMrKQ0fFaD7Jcy
 qrs/T8YkDI2utaxBCn+yxi6otVP0J88+w34IJHBE13OcriWZKoINx7JU5
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eHYkKXze
Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: change I219 (19)
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

Sporadic issues have been observed on I219 (19) devices. It was found
that these devices have hardware more closely related to ADP than MTP
and the issues were caused by taking MTP-specific flows.

Change the MAC and board types of these devices from MTP to ADP to
correctly reflect the LAN hardware, and flows, of these devices.

Fixes: db2d737d63c5 ("e1000e: Separate MTP board type from ADP")
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
v2: elaborate on the meanings of this change
v1: initial version 
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

