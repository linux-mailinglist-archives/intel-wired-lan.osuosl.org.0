Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E01ADABF7BD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 May 2025 16:23:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60ACA83AEF;
	Wed, 21 May 2025 14:23:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vo6U-SRRolAo; Wed, 21 May 2025 14:23:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DA6583AF2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747837436;
	bh=u9ffq0pWBGpO7eR+5xkFFo9aW3N22A/dMNXcVpw7mZ8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=dFdWtrNxHO15DnbIatHHBOVS6+zHnMFBFM21ORhmid+x+p0llfOp/LK88rN+ZNDKy
	 fmweOqfi4VxTE3mt19bFmGXlQYvaOBMOhS8JGl75fwscomSe/HRML46hXJxy7X00I8
	 HMSyS6IAofy+UsR1Y0E/rfF0TlwdiGYcEVwVWLFs5ptLhs/f7Xca45L4g1nrttLjep
	 f9ZyTV81Y7s7eQydxM+OxNMWIrxdKREf6KAoXjBg5liXlxxpApzXIIxoNUxlO5rK1m
	 rqHqUyBiUIJd2F6deSBNucvaCxZ9X1yNnGShFrp4f2utP7cAhH6rhdp204xKuzg5o5
	 n9bXOMEKX+4uA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5DA6583AF2;
	Wed, 21 May 2025 14:23:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B76A261
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 14:23:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A9C016071F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 14:23:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xufpOOtw0loO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 May 2025 14:23:54 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C6F80606E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6F80606E7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C6F80606E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 14:23:53 +0000 (UTC)
X-CSE-ConnectionGUID: GP1io6BBQruZBfn4M5bi5w==
X-CSE-MsgGUID: isHcgt02QmGGJ42C8zVuBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="53627262"
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="53627262"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 07:23:54 -0700
X-CSE-ConnectionGUID: tsejvJ3ZQz2SyGRCTkvlyA==
X-CSE-MsgGUID: 5VUxIBPFQHmxZ+YtD1+DmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="139943813"
Received: from pae-dbg-x10sri-f_n1_f_263.igk.intel.com (HELO
 localhost.igk.intel.com) ([172.28.191.222])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 07:23:52 -0700
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Dawid Osuchowski <dawid.osuchowski@linux.intel.com>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Wed, 21 May 2025 16:23:32 +0200
Message-ID: <20250521142332.449045-1-dawid.osuchowski@linux.intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747837434; x=1779373434;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1NlA7Lajb+p5gKLZ4hdgRlVo+SU6VX1Ll7WgBh1g5DE=;
 b=kSbehpNahOgGjqUew/hGXbVTySLqxRMxxEntGg3p8QtJfEy1wRWe4klS
 1ZSS6FlVJ0MPW7b7M2TOgcNAOhC7EntU9ku1xgekXWm9zaSdrMfEu5vLD
 WSidsujrC+mY45ONLr4RXvV5cqmfXKlMxyeM9PhFTg4Kc1BvSDvlPxi32
 OnC4WMVKJftNYtcIn/MiwWnQvmrzUNVbD/yEIUYVLZFN+P6URo6GynoGo
 5saYQMJnsdfaA5Qzcv30ofcWUaZtKmtPRbyBN+Ny0nix0xBN0pMO0vHIK
 Wvn1f1VqNcV7MuahpIq/B6/+wbsxkuu19N2e76kvfOngGZhvXMxWw8PSO
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kSbehpNa
Subject: [Intel-wired-lan] [PATCH iwl-next] i40e: add link_down_events
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

Introduce a link_down_events counter to the i40e driver, incremented
each time the link transitions from up to down.
This counter can help diagnose issues related to link stability,
such as port flapping or unexpected link drops.

The value is exposed via ethtool's get_link_ext_stats() interface.

Co-developed-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
---
Based on series [1] from Martyna where this was implemented for ixgbe
and ice drivers.

[1] https://lore.kernel.org/netdev/20250515105011.1310692-1-martyna.szapar-mudlaw@linux.intel.com/
---
 drivers/net/ethernet/intel/i40e/i40e.h         |  1 +
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 10 ++++++++++
 drivers/net/ethernet/intel/i40e/i40e_main.c    |  3 +++
 3 files changed, 14 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index c67963bfe14e..54d5fdc303ca 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -548,6 +548,7 @@ struct i40e_pf {
 	u16 empr_count; /* EMP reset count */
 	u16 pfr_count; /* PF reset count */
 	u16 sw_int_count; /* SW interrupt count */
+	u32 link_down_events;
 
 	struct mutex switch_mutex;
 	u16 lan_vsi;       /* our default LAN VSI */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 21dd70125a16..adcf068202b0 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -2749,6 +2749,15 @@ static void i40e_diag_test(struct net_device *netdev,
 	netif_info(pf, drv, netdev, "testing failed\n");
 }
 
+static void i40e_get_link_ext_stats(struct net_device *netdev,
+				    struct ethtool_link_ext_stats *stats)
+{
+	struct i40e_netdev_priv *np = netdev_priv(netdev);
+	struct i40e_pf *pf = np->vsi->back;
+
+	stats->link_down_events = pf->link_down_events;
+}
+
 static void i40e_get_wol(struct net_device *netdev,
 			 struct ethtool_wolinfo *wol)
 {
@@ -5807,6 +5816,7 @@ static const struct ethtool_ops i40e_ethtool_ops = {
 	.get_regs		= i40e_get_regs,
 	.nway_reset		= i40e_nway_reset,
 	.get_link		= ethtool_op_get_link,
+	.get_link_ext_stats	= i40e_get_link_ext_stats,
 	.get_wol		= i40e_get_wol,
 	.set_wol		= i40e_set_wol,
 	.set_eeprom		= i40e_set_eeprom,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index e421156717a4..d7368fa31ec8 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -9933,6 +9933,9 @@ static void i40e_link_event(struct i40e_pf *pf)
 	     new_link == netif_carrier_ok(vsi->netdev)))
 		return;
 
+	if (!new_link && old_link)
+		pf->link_down_events++;
+
 	i40e_print_link_message(vsi, new_link);
 
 	/* Notify the base of the switch tree connected to
-- 
2.47.0

