Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDKDMsai1mlqGwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 20:47:34 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0915F3C18AF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 20:47:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A315741022;
	Wed,  8 Apr 2026 18:47:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E49e8u55aYl1; Wed,  8 Apr 2026 18:47:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B3CF4101B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775674052;
	bh=6BZRACkg6HCd8QTfUZiajdSXrt4t/7hWMQhstCE5isQ=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OqT3UsyvgGCgu/5ejyfZ3i9C0+XcKQSaJD6MNsrtMre0QeDba1ZDP7kP9URD2BZ8I
	 PARNECu1G//E+HKIrDEVaf8ufGKWFh1PlXhIMo3f/yDPK+/ZYkqxGcTQnZKSRzLj0x
	 Y7XCBXZOr3a3PeZZ/C329t/pTkK4g9GWBbpXBH6zYoXvyngx2Ny/8XnSIC38ysXWzi
	 Z8vUImNjR2I/X5KYejkCRn0fl+n5vFFENo1/vScet5JDXVZWeJ2oVERYU6wtJ9Camu
	 QtYRpIC1g8+bCLcIdCQ7OPzaVFkRAP06yvxaGLpiY7ogW5+xH6e17+Nm2HZ0YC4kxR
	 1TnMHbAsk4CCg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B3CF4101B;
	Wed,  8 Apr 2026 18:47:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 37BF91F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 18:47:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1D53440383
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 18:47:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uFf3FqzH2ssW for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 18:47:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5114140130
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5114140130
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5114140130
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 18:47:29 +0000 (UTC)
X-CSE-ConnectionGUID: sIgIqY7+SIOK0And13Xgkw==
X-CSE-MsgGUID: keuVBjXxQqCacXUzpXLv6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="75841382"
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="75841382"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 11:47:28 -0700
X-CSE-ConnectionGUID: 8hAv3SWVTB6eEHvfPYVAnA==
X-CSE-MsgGUID: clAReoAlSWaVf9ZvYM4epA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="230217570"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.109])
 ([10.166.28.109])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 11:47:27 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 08 Apr 2026 11:46:34 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260408-jk-even-more-e825c-fixes-v1-4-b959da91a81f@intel.com>
References: <20260408-jk-even-more-e825c-fixes-v1-0-b959da91a81f@intel.com>
In-Reply-To: <20260408-jk-even-more-e825c-fixes-v1-0-b959da91a81f@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, netdev@vger.kernel.org
X-Mailer: b4 0.16-dev-306a9
X-Developer-Signature: v=1; a=openpgp-sha256; l=1919;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=R6AxwX9GU8IMz9cc9hHesk4hswO49vClh2NXD0wCyaU=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhsxri/Y+bSrduCnDdYNNGJPPVBP12JaMpDUuKV9mhBSf5
 lS/e6Gmo5SFQYyLQVZMkUXBIWTldeMJYVpvnOVg5rAygQxh4OIUgIncn87wiyl3veh+2e1PH3JP
 NFr6wmrN072BHdc+fVv19YBH3oOvmr8YGd6s//mjPfNjgKXMGqG9XYfnMcSslPmd8VlFflkDC3N
 EECcA
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775674049; x=1807210049;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=R6AxwX9GU8IMz9cc9hHesk4hswO49vClh2NXD0wCyaU=;
 b=WmVl2axIpajhgQfl9wz3i1FqVVUGYT9/BFTpFFxnc0+MqZjXQyf9a0pe
 BIT6yDXNXn8HqkHn2TKKqSzbe/TITvRJXyg3vliGF1q4Sckz7UpSiihkt
 UZyZLIYeJldUA6kBjtgBjfgpsAFi9J0/8j2xtT/kwia6ZswpO/nngioGO
 MvnmdPqe2KrCDZrbR0JTFNyjQPuxRnQFysvjq/hdjA4kMm+Q+dXlQHimk
 xqaSA48QLaSjJL2Ny8sPveeG0jp2VNlYmn6Fegc9Xp5uMRI8yrwC04gsJ
 WawptFwkhbq53ryDWm+mj91vjhv/w3DX7tfoZAVrbv83co6eRzvoiFPV9
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WmVl2axI
Subject: [Intel-wired-lan] [PATCH iwl-net 4/4] ice: fix
 ice_ptp_read_tx_hwtstamp_status_eth56g
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Timothy Miskell <timothy.miskell@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [-0.61 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:timothy.miskell@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0915F3C18AF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The ice_ptp_read_tx_hwtstamp_status_eth56g function calls
ice_read_phy_eth56g with a PHY index. However the function actually expects
a port index. This causes the function to read the wrong PHY_PTP_INT_STATUS
registers, and effectively makes the status wrong for the second set of
ports from 4 to 7.

The ice_read_phy_eth56g function uses the provided port index to determine
which PHY device to read. We could refactor the entire chain to take a PHY
index, but this would impact many code sites. Instead, multiply the PHY
index by the number of ports, so that we read from the first port of each
PHY.

Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 64ad5ed5c688..672218e5d1f9 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2219,13 +2219,19 @@ int ice_ptp_read_tx_hwtstamp_status_eth56g(struct ice_hw *hw, u32 *ts_status)
 	*ts_status = 0;
 
 	for (phy = 0; phy < params->num_phys; phy++) {
+		u8 port;
 		int err;
 
-		err = ice_read_phy_eth56g(hw, phy, PHY_PTP_INT_STATUS, &status);
+		/* ice_read_phy_eth56g expects a port index, so use the first
+		 * port of the PHY
+		 */
+		port = phy * hw->ptp.ports_per_phy;
+
+		err = ice_read_phy_eth56g(hw, port, PHY_PTP_INT_STATUS, &status);
 		if (err)
 			return err;
 
-		*ts_status |= (status & mask) << (phy * hw->ptp.ports_per_phy);
+		*ts_status |= (status & mask) << port;
 	}
 
 	ice_debug(hw, ICE_DBG_PTP, "PHY interrupt err: %x\n", *ts_status);

-- 
2.53.0.1066.g1eceb487f285

