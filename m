Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C77C8CBBE7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 May 2024 09:24:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4402580E6B;
	Wed, 22 May 2024 07:24:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yotjSa9Lb1-F; Wed, 22 May 2024 07:23:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FD7580E62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716362639;
	bh=effTmlv6OYIXFK4jb7dpE3kfz4ntmlfr4G/D7kL8PK8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=MvjA2YfDnIxV7FNbKTyi8BZ65DMKK+XeyebupUwjIlWsFR0nxyFrkyEKUgiD3fGtz
	 fTMmraVeuuvCvBZsLOmouhyqAlvfll4Gs04q7Z4TkZTJv4ylPYQtYgZG4XxxptD3v1
	 AA9rWryVnxDUCa3wWwFTSOgbSFa9FRJtrnIqHbmbIRppbNOjjkhS1QjKKRzXe+qY1k
	 0ha8eJELFeC07+skY9AdijcD5qoUimW9z4mOZbhT/lSqlQw3uJemkjzqXEIgmmVc3U
	 LmPY1I/2dDZdAobl08u4Ec/1CNbWzOTKZiXWlR+czB88nsF3zduY2Z2FzheMxFdT4M
	 vemsNi7P3qQFQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5FD7580E62;
	Wed, 22 May 2024 07:23:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A3101C58D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 07:23:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 62B076059E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 07:23:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X0UkowabH70F for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 May 2024 07:23:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=sasha.neftin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6530B605A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6530B605A0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6530B605A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 07:23:56 +0000 (UTC)
X-CSE-ConnectionGUID: PeSD1lsLTdyRtYGQL8ys5A==
X-CSE-MsgGUID: eOndKqtESz2Bqw3qKeomKw==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="16384983"
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="16384983"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 00:23:55 -0700
X-CSE-ConnectionGUID: sTHqdvhHRz2l0Y5DkmMUIw==
X-CSE-MsgGUID: JrAX7rzMR5yTn03o67h8Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="38147428"
Received: from unknown (HELO ccdlinuxdev11.iil.intel.com) ([143.185.162.51])
 by orviesa004.jf.intel.com with ESMTP; 22 May 2024 00:23:55 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 May 2024 10:23:52 +0300
Message-Id: <20240522072352.2618613-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716362636; x=1747898636;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=T00pniFeEq1CmZ6ABiVP986TcJeRB7SM1rohBiHB4Vk=;
 b=Kezif6AoUPqWLif/0qJodj1UN9G89Q/5i55yoO8hkFTVeIczfOjAd7e2
 Gxp4PRr1zdtTsSvre9pwr9kqAuzQW6KseJmQIHvDDsUhHQP+s+bgKYbrE
 X7RfYiLVTk9aooaXU8oxdeA7C8r4heI3gb7WCKakSpolvo2snEVez639+
 1YZ7JY6OgxHtcvCYpXvav9IAnXXU0QSgydxKNo5o2LUVtJ2aKKz1n68cJ
 7/eNfisKx6/3McLT6benzNoJxJrqFmTaeJMxiL88lZaMv8oV7U6XAA107
 eSKeR9nk5gDNFtJhBoNI20hp3vJaSKToPhurG4tRa9P66cE1m/5G8CHO0
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Kezif6Ao
Subject: [Intel-wired-lan] [iwl-net v1 1/1] igc: Fix Energy Efficient
 Ethernet support declaration
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

The commit 01cf893bf0f4 ("net: intel: i40e/igc: Remove setting Autoneg in
EEE capabilities") removed SUPPORTED_Autoneg field but left inappropriate
ethtool_keee structure initialization. When "ethtool --show <device>"
(get_eee) invoke, the 'ethtool_keee' structure was accidentally overridden.
Remove the 'ethtool_keee' overriding and add EEE declaration as per IEEE
specification that allows reporting Energy Efficient Ethernet capabilities.

Examples:
Before fix:
ethtool --show-eee enp174s0
EEE settings for enp174s0:
	EEE status: not supported

After fix:
EEE settings for enp174s0:
	EEE status: disabled
	Tx LPI: disabled
	Supported EEE link modes:  100baseT/Full
	                           1000baseT/Full
	                           2500baseT/Full

Fixes: 01cf893bf0f4 ("net: intel: i40e/igc: Remove setting Autoneg in EEE capabilities")
Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 9 +++++++--
 drivers/net/ethernet/intel/igc/igc_main.c    | 4 ++++
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index f2c4f1966bb0..0cd2bd695db1 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1629,12 +1629,17 @@ static int igc_ethtool_get_eee(struct net_device *netdev,
 	struct igc_hw *hw = &adapter->hw;
 	u32 eeer;
 
+	linkmode_set_bit(ETHTOOL_LINK_MODE_2500baseT_Full_BIT,
+			 edata->supported);
+	linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
+			 edata->supported);
+	linkmode_set_bit(ETHTOOL_LINK_MODE_100baseT_Full_BIT,
+			 edata->supported);
+
 	if (hw->dev_spec._base.eee_enable)
 		mii_eee_cap1_mod_linkmode_t(edata->advertised,
 					    adapter->eee_advert);
 
-	*edata = adapter->eee;
-
 	eeer = rd32(IGC_EEER);
 
 	/* EEE status on negotiated link */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index b5bcabab7a1d..ba154097d7b0 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -12,6 +12,7 @@
 #include <linux/bpf_trace.h>
 #include <net/xdp_sock_drv.h>
 #include <linux/pci.h>
+#include <linux/mdio.h>
 
 #include <net/ipv6.h>
 
@@ -4975,6 +4976,9 @@ void igc_up(struct igc_adapter *adapter)
 	/* start the watchdog. */
 	hw->mac.get_link_status = true;
 	schedule_work(&adapter->watchdog_task);
+
+	adapter->eee_advert = MDIO_EEE_100TX | MDIO_EEE_1000T |
+			      MDIO_EEE_2_5GT;
 }
 
 /**
-- 
2.34.1

