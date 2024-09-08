Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B76D4970544
	for <lists+intel-wired-lan@lfdr.de>; Sun,  8 Sep 2024 08:49:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E8656406C3;
	Sun,  8 Sep 2024 06:49:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2Rc6QysRfdhW; Sun,  8 Sep 2024 06:49:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDBDA406BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725778168;
	bh=3oPsASufQ7ZkB216CgRrpq8/HlOqt3Xqre/9zzDTxmc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=971Ud2LKL6fP9JCCEZn+i900GGK+TiFsTGIHPZKDw0rg4+wfjzJ6npJCBXpBfu1Sh
	 sLDhUvSoulrWM9KMlzQb0kO0uncw5coLnatNz4KYLXWXoO9fNEGF9yQKGBLtz97sF7
	 +uaAT4McVYgVvpJjgCdqB6IUAqtjg8oMA8T/fVSMvszGKBP7EQ2zZzvLzq6GhvtcQo
	 u7gsK/mKfOxZYp3Yi1KI+/RlmP311s/xsz+5b3AiC9z2Vr+xsbjyYL2Rrxau0u9d2e
	 K+xui0cI+4UsQ3NI5pTTw9NRzSlaWMkfCIKmr/I9S+F8P5KgKyaiAgdYn0tCQvMn6X
	 GD0XEU5QyZeFg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EDBDA406BE;
	Sun,  8 Sep 2024 06:49:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C39D1BF39F
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Sep 2024 06:49:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2646A406AE
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Sep 2024 06:49:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z_9niZSdamAr for <intel-wired-lan@lists.osuosl.org>;
 Sun,  8 Sep 2024 06:49:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 35E5E40661
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 35E5E40661
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 35E5E40661
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Sep 2024 06:49:24 +0000 (UTC)
X-CSE-ConnectionGUID: oVN9oAy8TGiq8UYurG2gmQ==
X-CSE-MsgGUID: ZyT7MmQRStWOdq6WrqYa1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11188"; a="24362939"
X-IronPort-AV: E=Sophos;i="6.10,212,1719903600"; d="scan'208";a="24362939"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2024 23:49:23 -0700
X-CSE-ConnectionGUID: c0/4vz6CRzqWaF7Pm1DKSA==
X-CSE-MsgGUID: rMIl3bNuQAKuISC+5c4b4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,212,1719903600"; d="scan'208";a="70938759"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.51])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2024 23:49:22 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun,  8 Sep 2024 09:49:17 +0300
Message-Id: <20240908064917.3941680-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725778165; x=1757314165;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k3Ujd/vKeR6lRC6/ATskaXSD5F4ohis2V3gvnzQjdwU=;
 b=bqv2V0xXnCnhTYBQ//JzS08plrICEjXmMLdq6XFmC1qnI836+iq1UpTo
 MHbnXBkWo1NWPAXKtzbVFDc4wFn/Dg13Au6aHvoOLdfDG9dvR1KJou9wW
 rh3oTe0TMUBeOU6XiQ7IK6Tw06V14DwA7Lz6J85upMf1qNrAPTkmyhjrO
 KIQPntH4IDZ4JYTOKUMZKGBuc5VsKgWYC+J+tRNADPjGz2Fo63UQIFyP6
 /pSGqZwihPhIZvr21rK4y6wqM0L1rApjy46QwgYeQJgrEptPAc4PKOINi
 CcP5W3Zxev8ogDuOhmhHzQWGBPNhQqCF3un0o1xDKYBLXGDLrK9OOydnm
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bqv2V0xX
Subject: [Intel-wired-lan] [PATCH iwl-net v3 1/1] e1000e: change I219 (19)
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

Sporadic issues, such as PHY access loss, have been observed on I219 (19)
devices. It was found that these devices have hardware more closely
related to ADP than MTP and the issues were caused by taking MTP-specific
flows.

Change the MAC and board types of these devices from MTP to ADP to
correctly reflect the LAN hardware, and flows, of these devices.

Fixes: db2d737d63c5 ("e1000e: Separate MTP board type from ADP")
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
v3: add an example to affected flows
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

