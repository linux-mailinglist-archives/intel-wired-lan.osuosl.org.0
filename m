Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE7D906365
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 07:18:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1347040BDE;
	Thu, 13 Jun 2024 05:17:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uxthOZ9VPinp; Thu, 13 Jun 2024 05:17:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C8EC40BB9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718255876;
	bh=T6MJQ8u1wfhd8cQVO3fCcB5xygB+2YUj8Qsu1L0tsRc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=SnAqp0PRzsZdGUJV38DxAWVahWWTDWd086G7f3v5/5MYCHr+DcqVDo2dwzuLcqSqo
	 +bbID7wTpBuHALy53DrWM8KV0Pfif889r6Sgwq4c/GjVvOxupJfv4n316gJ5KQZ85a
	 hB+oNWEwbvEVFscvbcbogwo0rrKy2BjO2aqBgkr9+P586V241e95jRRYuLa6vzIGBV
	 rsk2+C+u4E5yCbQdIOYBppFsDbVxDUgsN2t5ouzCu9LdZ8nw3bQ8XH5iCrDao9C454
	 UZ35p47r+8ZKjgOmUglQfTdnJuuPB6Luv1BqOLYq0stDnAOFUpP3DLEa7qs9i8TbKy
	 5vQ9xcRUTrD4A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C8EC40BB9;
	Thu, 13 Jun 2024 05:17:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D96191BF35D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 05:17:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C0BF26072C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 05:17:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EToxuqGAocNN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2024 05:17:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=sasha.neftin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 79FEE60726
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79FEE60726
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 79FEE60726
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 05:17:52 +0000 (UTC)
X-CSE-ConnectionGUID: 422WkvuyRtGvkN8nA+YCYw==
X-CSE-MsgGUID: 0BQ1oKfVRviXQqIMBvmKCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14884519"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14884519"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 22:17:52 -0700
X-CSE-ConnectionGUID: qmJSb9XCR1qijABEIdHThw==
X-CSE-MsgGUID: rQ6egfp4TJeM6jpyDGriKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="44971060"
Received: from unknown (HELO ccdlinuxdev11.iil.intel.com) ([143.185.162.51])
 by orviesa005.jf.intel.com with ESMTP; 12 Jun 2024 22:17:51 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 13 Jun 2024 08:17:49 +0300
Message-Id: <20240613051749.3341996-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718255874; x=1749791874;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PuAgsMMyUa1LL/mcz2NQ7zIrkDC8zmOykJOYxsZ8Doc=;
 b=mShRlx6I0GRgYtBtXf2LZcNZlY1s8vwAJnEwpJUz95QQprk+RARPlaBo
 AEKrTMqlgqGdYrMXIlUwjvnk10cNpQLNFN1NaRxHvM4zWcXtJonyHA/eU
 QdccqihFggfk81axBypO8QOGhOr5fDA0SakX+nEF+MhyUBMZh9Vi23eCV
 t8zjfFmzMQnu4oTi1NjpR8540kIP/BmfSbiGxSZAZFqa6OuNkgg3leda1
 UEUPqiIeAVR3+n3xuuj9Vl7hqdFr893FWzIFFUHRjlMxFHdfE5UMmaprp
 GvaUp5fbMvhKZafoaDu16LTJCeroTPttypPCQFmSSPipBpT8w8FSjBRtE
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mShRlx6I
Subject: [Intel-wired-lan] [iwl-next v2 1/1] igc: Remove the internal
 'eee_advert' field
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
Cc: Sasha Neftin <sasha.neftin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Since the kernel's 'ethtool_keee' structure is in use, the internal
'eee_advert' field becomes pointless and can be removed.

This patch comes to clean up this redundant code.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
v2: Fixed grammar in the commit message
---
 drivers/net/ethernet/intel/igc/igc.h         | 1 -
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 6 ------
 drivers/net/ethernet/intel/igc/igc_main.c    | 3 ---
 3 files changed, 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 8b14c029eda1..c38b4d0f00ce 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -202,7 +202,6 @@ struct igc_adapter {
 	struct net_device *netdev;
 
 	struct ethtool_keee eee;
-	u16 eee_advert;
 
 	unsigned long state;
 	unsigned int flags;
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index a80ac148b402..1e9241103aa9 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1636,10 +1636,6 @@ static int igc_ethtool_get_eee(struct net_device *netdev,
 	linkmode_set_bit(ETHTOOL_LINK_MODE_100baseT_Full_BIT,
 			 edata->supported);
 
-	if (hw->dev_spec._base.eee_enable)
-		mii_eee_cap1_mod_linkmode_t(edata->advertised,
-					    adapter->eee_advert);
-
 	eeer = rd32(IGC_EEER);
 
 	/* EEE status on negotiated link */
@@ -1700,8 +1696,6 @@ static int igc_ethtool_set_eee(struct net_device *netdev,
 		return -EINVAL;
 	}
 
-	adapter->eee_advert = linkmode_to_mii_eee_cap1_t(edata->advertised);
-
 	if (hw->dev_spec._base.eee_enable != edata->eee_enabled) {
 		hw->dev_spec._base.eee_enable = edata->eee_enabled;
 		adapter->flags |= IGC_FLAG_EEE;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index c057d0afaf9a..772f425b1a24 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4976,9 +4976,6 @@ void igc_up(struct igc_adapter *adapter)
 	/* start the watchdog. */
 	hw->mac.get_link_status = true;
 	schedule_work(&adapter->watchdog_task);
-
-	adapter->eee_advert = MDIO_EEE_100TX | MDIO_EEE_1000T |
-			      MDIO_EEE_2_5GT;
 }
 
 /**
-- 
2.34.1

