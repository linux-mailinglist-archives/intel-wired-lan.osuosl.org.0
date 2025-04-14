Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD17A88106
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 15:02:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E917E40289;
	Mon, 14 Apr 2025 13:02:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AqIyxq2DFQbx; Mon, 14 Apr 2025 13:02:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5640140C9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744635742;
	bh=jAsDZjSYk7mmtAuycW8BHuFmaCbarFw71GkVoprP+bI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Dw664d8a8VLMpwgkYN1ePdBfeyNQAleIAkEh62Tz+7Pmsv3LZPQzElNeP7eUw+tgV
	 /6FOxm4rHdW49y6rK++rUCW43gmLBKlZv9TetDXVFQBB2fwSFY8yp9I3hh5tV2SE6M
	 nUwWmg7u9QSnuj8WY8SVCFWms2fhPb/j9ZWM+bROk3j9qsgm2qQ9kv227+Jm1QQAGe
	 UexkZVtxm/fclQli9hrSnEhdnX1CJN/ZVdYhrEhVRkHTrSFkVurhmaEVG9tComUF/0
	 a31f9VluKzz9qSmCdmWBFuLYyo3zXTFXiji43NwmPH4cRFdGejxXFNJ9DBwA7CW/1e
	 kSbTnoaGfgDaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5640140C9C;
	Mon, 14 Apr 2025 13:02:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C4BBDE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:02:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 184A540BE5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:02:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o7Lc6KfkWsQr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 13:02:19 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 76DE540B89
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76DE540B89
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 76DE540B89
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:02:19 +0000 (UTC)
X-CSE-ConnectionGUID: ePfzW4G+QheaLl1Q1G63SA==
X-CSE-MsgGUID: hE0gINnITa+vWrcWW1BFrg==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="57469133"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="57469133"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 06:01:33 -0700
X-CSE-ConnectionGUID: pM6vjnfZTimu5us0Ooj86Q==
X-CSE-MsgGUID: 6hviZSSKQg2aYustRr5MjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="134967202"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by orviesa005.jf.intel.com with ESMTP; 14 Apr 2025 06:01:32 -0700
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Mon, 14 Apr 2025 15:00:09 +0200
Message-ID: <20250414130007.366132-5-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250414130007.366132-2-martyna.szapar-mudlaw@linux.intel.com>
References: <20250414130007.366132-2-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744635739; x=1776171739;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W7Z5xn5IPV8gDmNqoXJBFdpf5pRGqNSmYd8MjnkwpK4=;
 b=YO2PweWxyb7thYmucNXYV/KAGoRJvStOhMS5XcRrMdLuuNv6gDN5xR0r
 tyNFcJ4vZJBXVhF0KT3rF6LO0fFus7YA8Y/C2qARoLbnF4kczJcb+B19S
 WG6aLfieG+S0OuhiRIBIjR/5mAZcce9ClDgXtf+pdrQquIg2HiERls8eG
 sQRsS2uaV0HcP9q2Qp8wpxyUGv5lplEY2e+w7+gTpbcvOJds396YTZkgg
 YLLCz+qhDf94g1UytMVXLgaSUwGuZD0xsInlR2ciw69BAegiR3x2WHKRh
 Y8UAsQAZfyvGv30Z3TKehxCYcx7oFalzMFZt6+zPpiqohAmtQUPDeUIBP
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YO2PweWx
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ice: add link_down_events
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

Introduce a link_down_events counter to the ice driver, incremented
each time the link transitions from up to down.
This counter can help diagnose issues related to link stability,
such as port flapping or unexpected link drops.

The value is exposed via ethtool's get_link_ext_stats() interface.

Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 10 ++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c    |  3 +++
 3 files changed, 14 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 7200d6042590..6304104d1900 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -621,6 +621,7 @@ struct ice_pf {
 	u16 globr_count;	/* Global reset count */
 	u16 empr_count;		/* EMP reset count */
 	u16 pfr_count;		/* PF reset count */
+	u32 link_down_events;
 
 	u8 wol_ena : 1;		/* software state of WoL */
 	u32 wakeup_reason;	/* last wakeup reason */
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index b0805704834d..5738f3069efa 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -836,6 +836,15 @@ static void ice_set_msglevel(struct net_device *netdev, u32 data)
 #endif /* !CONFIG_DYNAMIC_DEBUG */
 }
 
+static void ice_get_link_ext_stats(struct net_device *netdev,
+				   struct ethtool_link_ext_stats *stats)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_pf *pf = np->vsi->back;
+
+	stats->link_down_events = pf->link_down_events;
+}
+
 static int ice_get_eeprom_len(struct net_device *netdev)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
@@ -4784,6 +4793,7 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.set_msglevel		= ice_set_msglevel,
 	.self_test		= ice_self_test,
 	.get_link		= ethtool_op_get_link,
+	.get_link_ext_stats	= ice_get_link_ext_stats,
 	.get_eeprom_len		= ice_get_eeprom_len,
 	.get_eeprom		= ice_get_eeprom,
 	.get_coalesce		= ice_get_coalesce,
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a03e1819e6d5..d68dd2a3f4a6 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1144,6 +1144,9 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
 	if (link_up == old_link && link_speed == old_link_speed)
 		return 0;
 
+	if (!link_up && old_link)
+		pf->link_down_events++;
+
 	ice_ptp_link_change(pf, link_up);
 
 	if (ice_is_dcb_active(pf)) {
-- 
2.47.0

