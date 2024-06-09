Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 527049014BB
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Jun 2024 08:53:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1520D6066C;
	Sun,  9 Jun 2024 06:53:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I_mK60F2ovqK; Sun,  9 Jun 2024 06:53:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57A0860670
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717915996;
	bh=IILzNkV4OqqnNPTM0dvNM3BOjoc/471/8LtaHcB9MvU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=EdZ2nAWkBEk5JRfZV253kbnUCxpsvDOB2Sj2s24hLU8uyGPmA8tFwIIBv/P0LWc6J
	 R4oz1U4H8fwON5abnnJAfsRcIGFrgY1DHZEapm0N1JgjwBqnS784CIWwFIPRXyz60m
	 HJVjLnqRTpcbsIwYXHUB0QF+FurYpq5gE/IMAgZNqdeDNLNlb1PMZ2n0uj1yfGIDlI
	 eIQiri9IDnDmWu8JAO3tMdGVGQhkxqKmW7E1O6CenJ7jeH8YUU/5zdCcj8OkzclVfB
	 OMjI9x8s/H04YYop9PKgxUIxCsPvLK+5lSFfGJJVy1mIekgpFwESG+waQIMGqj8J1c
	 LCsD/kkKBYC0A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57A0860670;
	Sun,  9 Jun 2024 06:53:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 304C21BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 06:53:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 24BFC60665
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 06:53:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d6t9Ckbe1KX6 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jun 2024 06:53:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=sasha.neftin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2206060628
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2206060628
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2206060628
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 06:53:11 +0000 (UTC)
X-CSE-ConnectionGUID: GR9anpFYScqJONWsZLu6Sw==
X-CSE-MsgGUID: 7CIoenHTQTWpZxQ15WKszQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11097"; a="11982344"
X-IronPort-AV: E=Sophos;i="6.08,225,1712646000"; d="scan'208";a="11982344"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2024 23:53:11 -0700
X-CSE-ConnectionGUID: gyBO7rIxRmujWc9P/gy5Tg==
X-CSE-MsgGUID: hadHARGyRwSVgvTZuCuVWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,225,1712646000"; d="scan'208";a="39417690"
Received: from unknown (HELO ccdlinuxdev11.iil.intel.com) ([143.185.162.51])
 by orviesa007.jf.intel.com with ESMTP; 08 Jun 2024 23:53:11 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun,  9 Jun 2024 09:53:09 +0300
Message-Id: <20240609065309.2049754-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717915993; x=1749451993;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=86p5fNFEBptbakHo+aplP1GZW6k6M5vZxX0ILsmDHOI=;
 b=eiT5IEx28Bv+pze96ObjtAEyFSgip2Ql1AtjXoye+NkMOfSrA9/yEdWM
 X0i93X+GCNpntmlVBVinN0K52cTa4kes7g9ZiD6Mjfwscxoon2+x+sOSR
 UGCPig0gLr0XeYQE0+UGrMmnX8y3RgZ66PYVDfrMdbfEonS/wwnH+1Nd1
 u6c7hSN25fgoU/vG1rc7UDPa40zKUaXLj3AYhuKkcGgGKdbdcE27xQ2df
 j+9g8Plei32tW4NRcL8AxXHgSzjJ9kglgSBkZSfSLmgTLdV3HxL22T35l
 DkFOry7eYiHXeWY16LcW3OxtGr0+lkdZFpfRMtJQbUWUfAMYYRwbQFnRm
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eiT5IEx2
Subject: [Intel-wired-lan] [iwl-next v1 1/1] igc: Remove the internal
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

Since kernels 'ethtool_keee' structure is in use, the internal 'eee_advert'
a field becomes pointless and can be removed.

This patch comes to clean up this redundant code.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
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

