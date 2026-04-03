Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNH/KOhSz2kCvQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 07:40:56 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67259391234
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 07:40:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B77B40FB2;
	Fri,  3 Apr 2026 05:40:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 42C_ViGESAB0; Fri,  3 Apr 2026 05:40:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BFC940EFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775194842;
	bh=DpemvsT70sAaGYlYNkZG+Jcy/8NyoMr2kgA29TuiAz4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oa/CkmCiYjxS/tfAFrlSXm69xheZyDjY/g4t3GwpZwLThGuy9yUtlW5mlhdWA/jyG
	 vz7prtJI4FeXH/5ae2fur2BLkFTIQ2I54swrfMPl7i0qM74FqrD6a37bxOXmCzTTqi
	 1WvPHdbXtTJcwyJQG9WU3EIJSFSLJrK5wQDfVQvX7QzUU4OPucR9J5aAUtbRsIsdS+
	 WBglh4w0OY2H36N19xBUQUFnT15G36Xfy+8/wF84WG+K0N6E6l6ZNihGZzmOnJTBtY
	 buF3gu1Irh/8X43xA1s+zSOE7sQqiRuAxuNkvc1G+ljQkb1yfQcSHlQBnaIBUNdDpV
	 Ka4dm+VWi8kaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BFC940EFC;
	Fri,  3 Apr 2026 05:40:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1CE102CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:40:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 02ACD4008E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:40:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Le1sfjgdmwix for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 05:40:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 00E8940071
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 00E8940071
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 00E8940071
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:40:39 +0000 (UTC)
X-CSE-ConnectionGUID: h3ZeczMxSn2eKYLI5X+e1w==
X-CSE-MsgGUID: UqoT2SCTR5CJU/EHGGXu5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="75981749"
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="75981749"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 22:40:40 -0700
X-CSE-ConnectionGUID: 2HBAAWu1T9GmzwNZScerbQ==
X-CSE-MsgGUID: e+GfxgQrTcmdfKlqDKVJug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="223904939"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2026 22:40:38 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Jan Glaza <jan.glaza@intel.com>
Date: Fri,  3 Apr 2026 07:40:24 +0200
Message-ID: <20260403054029.3789616-7-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260403054029.3789616-1-aleksandr.loktionov@intel.com>
References: <20260403054029.3789616-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775194840; x=1806730840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jK3wjtpXszUhk9dYiDSEL6WygtA0YLoAGsaq2N23/UE=;
 b=V/kKrThwPaavvtanlMOPFGyiSdKjSZcrZP32slYXN+/AqrZ5ARwv1Jbg
 XtPkzUtG4qO54Tesyioh7Y04KNXGSN/zXDHBM6+Ud46H8VjtWTnyF/Sy7
 f0MwHaE6zsMcOar4ixRpmj5G1DptQl9MK3QxlKf/5ls+TxIfOGZO1w40l
 LSnhiz/GLNJuqAdDqX+UY4Lq5KKRzgY1nHYMXLg5bhUgbo+NboZSTfHgA
 vQ0NxCTwUlyHNBBC7AZUslOaxon+lw2dOSdeiX5msaaDGiij1YvHJW7Bj
 j+lcJBA9LEw9hOUQ8Vcv5E7VMIz1HaBx+8aWuYolOSN02sGsvLgF/GExd
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V/kKrThw
Subject: [Intel-wired-lan] [PATCH iwl-net 6/10] ice: check PHY autoneg
 capability before rejecting ethtool autoneg setting
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 67259391234
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

ice_set_link_ksettings() rejects autoneg requests by comparing
user settings against safe_ks which is populated by
ice_phy_type_to_ethtool(). The Autoneg bit in safe_ks is set
only if the current PHY configuration reports it supported,
but this misses PHYs that support autoneg and have it available
through PHY capabilities. Pull the autoneg flag from the actual
PHY capabilities (already fetched earlier in the function) to
ensure the user can toggle autoneg on any capable PHY.

Fixes: 5cd349c349d6 ("ice: report supported and advertised autoneg using PHY capabilities")
Cc: stable@vger.kernel.org
Signed-off-by: Jan Glaza <jan.glaza@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 49b9376..44483bc 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2654,6 +2654,14 @@ ice_set_link_ksettings(struct net_device *netdev,
 	/* Get link modes supported by hardware.*/
 	ice_phy_type_to_ethtool(netdev, &safe_ks);
 
+	/* Pull the value of autoneg from phy caps to ensure we allow
+	 * toggling it on all PHYs that support it.
+	 */
+	if (ice_is_phy_caps_an_enabled(phy_caps)) {
+		ethtool_link_ksettings_add_link_mode(&safe_ks, supported, Autoneg);
+		set_bit(ETHTOOL_LINK_MODE_FEC_NONE_BIT, safe_ks.link_modes.supported);
+	}
+
 	/* and check against modes requested by user.
 	 * Return an error if unsupported mode was set.
 	 */
-- 
2.52.0

