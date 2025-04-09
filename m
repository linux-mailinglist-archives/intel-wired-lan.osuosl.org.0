Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AB0A823AC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 13:36:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE44640596;
	Wed,  9 Apr 2025 11:36:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DQNqgUIT4hV0; Wed,  9 Apr 2025 11:36:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 37BB3405D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744198615;
	bh=YJF2J2qAnJvwsJ6+BIQWkiFGBm0EPAQhn7k2oVYjNi0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IYdryvlNm7/qXBxrLKgj5e6jJi1UEJa9RUJA2SonLhZ736L9RLIznrJCpSb3fPiua
	 HtVp2DJajYtuWWmBL9H+zn2ZnynI3tku9NzKNXU9ltcNwjVDyzi3+fFPDR4FO5c7Ov
	 2jhGj/uI3bCVuGlhSauWIidMqy/ya4vAyLpUP/QikasUjaocxzDoB6DN7F8aJGGy0A
	 jncI8NDW0hxjSFxAqneQ57Tm4AkqlWpboRJKNYUos6A2pEJoGhLSWOma9nUA+np9hn
	 n6kTUTISwQBj6OidYj3McntlZGlKUheadhz1//mUxpxjDK6JCTDlDqkMjX51CBaHnw
	 G/6aLdE1d3kww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37BB3405D0;
	Wed,  9 Apr 2025 11:36:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0B817108
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 11:36:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E5DEA40BCB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 11:36:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J2ZdwVcHIrUL for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 11:36:52 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4195640640
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4195640640
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4195640640
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 11:36:52 +0000 (UTC)
X-CSE-ConnectionGUID: 6IOkrLYCSumZlKSe1BA3sg==
X-CSE-MsgGUID: F6ZEz/o7R3qPIlghboZB/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45799656"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="45799656"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 04:36:52 -0700
X-CSE-ConnectionGUID: GWE1NCiXSoi7xhEK7oeMgw==
X-CSE-MsgGUID: RWMfSsPYQe65BKOSwYTRFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="159536710"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by fmviesa001.fm.intel.com with ESMTP; 09 Apr 2025 04:36:50 -0700
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Wed,  9 Apr 2025 13:36:25 +0200
Message-ID: <20250409113622.161379-6-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250409113622.161379-2-martyna.szapar-mudlaw@linux.intel.com>
References: <20250409113622.161379-2-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744198613; x=1775734613;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3gSFU8etlJ2ALK3wJLM+1gui3Fu9Z+tNavH9MANx/0w=;
 b=EyW35lmZNwCfmWSOGqyCHrFPNJBaXzMOFdKquRJ0jXcvZnlHYqDOLdcL
 PSUbLBHZ0N+qgN+tMlve6v+Zyothcp/Fl4lfDicJA0hyzEJaOKkHd/mio
 1IKGhjb21SMZbkTxFzT54YvFFA/86wvXw0DNby9jIpJhhZLqLWS6WMRpD
 YLSK7wln/dMmUlPFaYAg3yR81A3cKxLvnl3/sZ9IwcydqW5twTg2MmEru
 GwyEcwfYT/8lAcNMt0G6H7GLzTiq4lDaiCtWfmygvtc99Zfk883XNCp2l
 mRBFsvHSMLhoyHXSlYH3Cb7YCeYR/Zt7FBEpZrIzx3zhHUWcr4o1Vq8La
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EyW35lmZ
Subject: [Intel-wired-lan] [PATCH iwl-next 2/2] ixgbe: add link_down_events
 statistic
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

Introduce a new ethtool statistic to ixgbe driver, `link_down_events`,
to track the number of times the link transitions from up to down.
This counter can help diagnose issues related to link stability,
such as port flapping or unexpected link drops.

The counter increments when a link-down event occurs and is exposed
via ethtool stats as `link_down_events`.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h         | 1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c    | 2 ++
 3 files changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index e6a380d4929b..7a8b4b6053c7 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -743,6 +743,7 @@ struct ixgbe_adapter {
 	bool link_up;
 	unsigned long sfp_poll_time;
 	unsigned long link_check_timeout;
+	u32 link_down_events;
 
 	struct timer_list service_timer;
 	struct work_struct service_task;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index f03925c1f521..ea1d2c2390f1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -91,6 +91,7 @@ static const struct ixgbe_stats ixgbe_gstrings_stats[] = {
 	{"rx_hwtstamp_cleared", IXGBE_STAT(rx_hwtstamp_cleared)},
 	{"tx_ipsec", IXGBE_STAT(tx_ipsec)},
 	{"rx_ipsec", IXGBE_STAT(rx_ipsec)},
+	{"link_down_events", IXGBE_STAT(link_down_events)},
 #ifdef IXGBE_FCOE
 	{"fcoe_bad_fccrc", IXGBE_STAT(stats.fccrc)},
 	{"rx_fcoe_dropped", IXGBE_STAT(stats.fcoerpdc)},
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 467f81239e12..cb5c782817fa 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -7986,6 +7986,8 @@ static void ixgbe_watchdog_link_is_down(struct ixgbe_adapter *adapter)
 	if (!netif_carrier_ok(netdev))
 		return;
 
+	adapter->link_down_events++;
+
 	/* poll for SFP+ cable when link is down */
 	if (ixgbe_is_sfp(hw) && hw->mac.type == ixgbe_mac_82598EB)
 		adapter->flags2 |= IXGBE_FLAG2_SEARCH_FOR_SFP;
-- 
2.47.0

