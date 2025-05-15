Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E913AB8454
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 May 2025 12:50:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2BDF410E4;
	Thu, 15 May 2025 10:50:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZLpHNNsHCwv3; Thu, 15 May 2025 10:50:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 255374130C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747306249;
	bh=jjmMGGeW+iXu0UcywIgubmt2MpSnuIEtWM8qPKIhLss=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=f/gQsiQ32zLKykY65wrW/Q3KogsrJnvVPl8RXGpQvha7gmMeB3YNmZnYjo6dGEmrI
	 1jSZt/rRgg6pUzNseWIlohfMktkKnsDSNE8xN+hp6oo6UG0GGM6F7Ecl+vuebEzdrd
	 HQmQKdsjMQaoFaQQG/8aXH2ZNShfjckrOpifprqObn5qkGYDAVYP4szr3lRJbNYI+7
	 hLaG0GgBpyr/OEFJo+VmrKOxtnDz761flhlg9KZRJ5v/DCGYPLOCpUJ7bWld8LMwrI
	 gQKIZGE1t9SfryBCxtRj1FtJ8pEoh20gfsrifkrEMh7RqUKIpE2Fv7OqlGwARDJmL2
	 fbo+BWr0tu/vw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 255374130C;
	Thu, 15 May 2025 10:50:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3C1E5153
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 10:50:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 210FA40E52
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 10:50:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TpmSrZ735Icl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 May 2025 10:50:46 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7D92240E2D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D92240E2D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7D92240E2D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 10:50:46 +0000 (UTC)
X-CSE-ConnectionGUID: sbj2pDtsTKGQJSOpePnq/Q==
X-CSE-MsgGUID: AhOMdz5nT4q82BiY2B0vaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="66786975"
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="66786975"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 03:50:46 -0700
X-CSE-ConnectionGUID: 7dKUWLZMRhmavTIXzpWivQ==
X-CSE-MsgGUID: lCrao+o2RNSHBEAS8BWx3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="138873966"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by orviesa007.jf.intel.com with ESMTP; 15 May 2025 03:50:44 -0700
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, kuba@kernel.org, dawid.osuchowski@linux.intel.com,
 pmenzel@molgen.mpg.de,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 Kory Maincent <kory.maincent@bootlin.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu, 15 May 2025 12:50:10 +0200
Message-ID: <20250515105011.1310692-3-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250515105011.1310692-1-martyna.szapar-mudlaw@linux.intel.com>
References: <20250515105011.1310692-1-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747306246; x=1778842246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fnKe0Y9oLUlJLRR2AxHq3OTfP7glGHmX2LeMJdSBU0E=;
 b=fgaQofa+5Ovx/cxkrKj43N85Qj1EUjcLjgB2SiAyMxE554etaDu8pJbd
 fhnX6sdY/Cid7slY1SduE+p1azPjb9YmSQd56lA1WYEKk7VBWATftf7wT
 6PFTqDjgTfm1wN+aOAEVR9CgGvlmyeqAR2Ouoi/IuUNuErDrI1RneIIJ2
 zxMggCPGsCdkqYN0TLM+Asy96FmLuHTsZf8s4F3dkGQBmUJxw/5IihXJc
 dSw+gM97T+yHgYso+CdWFmFraqkbbsSGe9OWT/nJ4dzbC7GMqKNFh9mBE
 T2efrGpRIjD+WMVtHgNmxtgASoKo80ibgkpZeMcYFwzZWWFIKXslWpscX
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fgaQofa+
Subject: [Intel-wired-lan] [PATCH iwl-next v4 2/2] ixgbe: add
 link_down_events statistic
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

Introduce a link_down_events counter to the ixgbe driver, incremented
each time the link transitions from up to down.
This counter can help diagnose issues related to link stability,
such as port flapping or unexpected link drops.

The value is exposed via ethtool's get_link_ext_stats() interface.

Reviewed-by: Kory Maincent <kory.maincent@bootlin.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h         |  1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 10 ++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c    |  2 ++
 3 files changed, 13 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 47311b134a7a..c6772cd2d802 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -752,6 +752,7 @@ struct ixgbe_adapter {
 	bool link_up;
 	unsigned long sfp_poll_time;
 	unsigned long link_check_timeout;
+	u32 link_down_events;
 
 	struct timer_list service_timer;
 	struct work_struct service_task;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index d8a919ab7027..1dc1c6e611a4 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -1033,6 +1033,14 @@ static void ixgbe_get_regs(struct net_device *netdev,
 	regs_buff[1144] = IXGBE_READ_REG(hw, IXGBE_SECRXSTAT);
 }
 
+static void ixgbe_get_link_ext_stats(struct net_device *netdev,
+				     struct ethtool_link_ext_stats *stats)
+{
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
+
+	stats->link_down_events = adapter->link_down_events;
+}
+
 static int ixgbe_get_eeprom_len(struct net_device *netdev)
 {
 	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
@@ -3719,6 +3727,7 @@ static const struct ethtool_ops ixgbe_ethtool_ops = {
 	.set_wol                = ixgbe_set_wol,
 	.nway_reset             = ixgbe_nway_reset,
 	.get_link               = ethtool_op_get_link,
+	.get_link_ext_stats	= ixgbe_get_link_ext_stats,
 	.get_eeprom_len         = ixgbe_get_eeprom_len,
 	.get_eeprom             = ixgbe_get_eeprom,
 	.set_eeprom             = ixgbe_set_eeprom,
@@ -3764,6 +3773,7 @@ static const struct ethtool_ops ixgbe_ethtool_ops_e610 = {
 	.set_wol                = ixgbe_set_wol_e610,
 	.nway_reset             = ixgbe_nway_reset,
 	.get_link               = ethtool_op_get_link,
+	.get_link_ext_stats	= ixgbe_get_link_ext_stats,
 	.get_eeprom_len         = ixgbe_get_eeprom_len,
 	.get_eeprom             = ixgbe_get_eeprom,
 	.set_eeprom             = ixgbe_set_eeprom,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 03d31e5b131d..1982314aaf3c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -7991,6 +7991,8 @@ static void ixgbe_watchdog_link_is_down(struct ixgbe_adapter *adapter)
 	if (!netif_carrier_ok(netdev))
 		return;
 
+	adapter->link_down_events++;
+
 	/* poll for SFP+ cable when link is down */
 	if (ixgbe_is_sfp(hw) && hw->mac.type == ixgbe_mac_82598EB)
 		adapter->flags2 |= IXGBE_FLAG2_SEARCH_FOR_SFP;
-- 
2.47.0

