Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFyTOpCr2GkmgwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 09:49:36 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D013D3905
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 09:49:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7019660B09;
	Fri, 10 Apr 2026 07:49:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AwyHohvVkXwF; Fri, 10 Apr 2026 07:49:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D6A7860B1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775807370;
	bh=X3CB25MK+kkcc/nONlvLcndRmgxZKhxv63XbXUXuRYE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TtWFPRBJR+nocXCK02qkvBp5bNn2+SosSoyKR66NM4/a5fSReQ/P6CJXBUdZ8+e1w
	 tZ6YqI9UWK2TJGlWfpLcp4owHpeMOiZS9sq5ee1UGItW/M19nzn5blKLG+CeN5AaWZ
	 ICBCw4YrEBMI3gQgFQr90ritzB3DXiGl6TZ60tArPz3DjhxdgGX1/wmZTmvSMAP2sE
	 lTUVNYedL+ecccP7+mj8Xyvbh/VlnEXPfh+RMCQwrMqyQ6ttE3lo0Bvggak24KtqTy
	 SHluUu8LPr4egBRauk9q7nXq/6wbvKtZEhc9POuvkJdIYtpNugUM9+EhNXRoRBjDxD
	 N6v3s/B0PvCew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D6A7860B1C;
	Fri, 10 Apr 2026 07:49:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CD4AD237
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AF7EB816EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uSCLsmurdC3Y for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Apr 2026 07:49:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B477181A81
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B477181A81
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B477181A81
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:27 +0000 (UTC)
X-CSE-ConnectionGUID: 59YgRRqXRM6UaZcyXfbgpg==
X-CSE-MsgGUID: V8ZnFX2mS6qzOjp04PzhPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="77007923"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="77007923"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 00:49:28 -0700
X-CSE-ConnectionGUID: BGghsdzWSX+egzL449Q2nw==
X-CSE-MsgGUID: aznF2ibFQ+6jUPvJqzkiFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="228941857"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa008.jf.intel.com with ESMTP; 10 Apr 2026 00:49:26 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Paul Greenwalt <paul.greenwalt@intel.com>
Date: Fri, 10 Apr 2026 09:49:13 +0200
Message-ID: <20260410074921.1254213-3-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775807368; x=1807343368;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=76l1DpkeYFYQbHgxmmAEoNFOKiq3yLo1D4+eNocGcQQ=;
 b=dUjPmbQKVwCk2D/e0JEdwAASFbMnGumxOZszoWHLtcLLyyCAnVrmCTFc
 qtNokuxjPN3B24hUrJM+vJgyVuA3wgK74NEOEb6ryejh+qzfXbmu+pPLF
 RgLaNDlGtbXBKtLAfBbXEmFjCIcsKSis5VVaqMc0SlsbOIyi09ZqIzRHZ
 OtNWf8yYVYi+5cz+GBGHpjFwG1uCpED9T83N0jYNw016N4+n3EP5SVD1T
 szOcO0Lp0WYUEOqsEZl5rWBhIHRWsNKCRp/vAVOHKVpW4zRIjtCcmxrIK
 80c/UhwhpDws+QA5iXVDpUTyrm+YJZ1NoTL6W33dzF/4ssGHsPHQJprhy
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dUjPmbQK
Subject: [Intel-wired-lan] [PATCH iwl-next 2/10] ice: allow setting
 advertised speed and duplex for all media types
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 86D013D3905
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Paul Greenwalt <paul.greenwalt@intel.com>

When AUI media type support was added, the set of media types that
support configuring speed and duplex via autonegotiation was not
updated. This results in AUI media types being rejected when the user
sets speed and duplex via ethtool.

Fix this by only refusing media type NONE or UNKNOWN (in strict mode);
all other media types should support setting speed and duplex.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 17 +++++++++++------
 drivers/net/ethernet/intel/ice/ice_type.h    |  2 ++
 2 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index b5a63b1..96ce6b3 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2217,6 +2217,7 @@ ice_set_link_ksettings(struct net_device *netdev,
 	u8 autoneg_changed = 0;
 	u64 phy_type_high = 0;
 	u64 phy_type_low = 0;
+	bool lenient_mode;
 	bool linkup;
 	int err;
 
@@ -2225,10 +2226,14 @@ ice_set_link_ksettings(struct net_device *netdev,
 	if (!pi)
 		return -EIO;
 
-	if (pi->phy.media_type != ICE_MEDIA_BASET &&
-	    pi->phy.media_type != ICE_MEDIA_FIBER &&
-	    pi->phy.media_type != ICE_MEDIA_BACKPLANE &&
-	    pi->phy.media_type != ICE_MEDIA_DA &&
+	lenient_mode = test_bit(ICE_FLAG_LINK_LENIENT_MODE_ENA, pf->flags);
+
+	/* Setting the speed and duplex advertised by autonegotiation is
+	 * supported for all media types, so only return unsupported for media
+	 * type none or unknown in strict mode.
+	 */
+	if ((pi->phy.media_type == ICE_MEDIA_NONE ||
+	     (pi->phy.media_type == ICE_MEDIA_UNKNOWN && !lenient_mode)) &&
 	    pi->phy.link_info.link_info & ICE_AQ_LINK_UP)
 		return -EOPNOTSUPP;
 
@@ -2258,7 +2263,7 @@ ice_set_link_ksettings(struct net_device *netdev,
 	if (!bitmap_subset(copy_ks.link_modes.advertising,
 			   safe_ks.link_modes.supported,
 			   __ETHTOOL_LINK_MODE_MASK_NBITS)) {
-		if (!test_bit(ICE_FLAG_LINK_LENIENT_MODE_ENA, pf->flags))
+		if (!lenient_mode)
 			netdev_info(netdev, "The selected speed is not supported by the current media. Please select a link speed that is supported by the current media.\n");
 		err = -EOPNOTSUPP;
 		goto done;
@@ -2359,7 +2364,7 @@ ice_set_link_ksettings(struct net_device *netdev,
 		 * intersect the requested advertised speed with NVM media type
 		 * PHY types.
 		 */
-		if (test_bit(ICE_FLAG_LINK_LENIENT_MODE_ENA, pf->flags)) {
+		if (lenient_mode) {
 			config.phy_type_high = cpu_to_le64(phy_type_high) &
 					       pf->nvm_phy_type_hi;
 			config.phy_type_low = cpu_to_le64(phy_type_low) &

diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -151,6 +151,8 @@ enum ice_media_type {
 	ICE_MEDIA_UNKNOWN = 0,
 	ICE_MEDIA_FIBER,
 	ICE_MEDIA_BASET,
 	ICE_MEDIA_BACKPLANE,
 	ICE_MEDIA_DA,
+	ICE_MEDIA_AUI,
+	ICE_MEDIA_NONE,
 };
-- 
2.52.0
