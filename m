Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MOF1KFavwmmRkwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 16:35:50 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3DE31826F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 16:35:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC75183638;
	Tue, 24 Mar 2026 15:35:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QVWn9g4haklD; Tue, 24 Mar 2026 15:35:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE9C9836A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774366548;
	bh=sIEws3Ux8omyl7dMWstqjuTvYeoa6J+vH/W2RfXwoVw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ooJxfRPUbw4GnT4VH1c+TX8ERT51jzu0iYYWCylr3TH4TIrd/Zrlb+oFEYVBOJ1vt
	 toYs8DSTVcjv5Lj7EQ9MZLIk3KIFuPj2kyc9j0DA2hIC85HR6jXPK0W9VFTC7pjara
	 xVQX72Jj2xy4plu/zAvLf41Ik7+qKtNS3mE0ht8cpKNKk4OpyIfeOJHQjTIiw6FbHw
	 RFUset1rswaleVDr+gAzmbfVxkJxHEwoNqR2hZkKSfThSc3mrmqFhshk2iJJRx2yf7
	 A1R6VnG8PzJ1gyOvaLI96kifpYxlM9MyF94kFfHmSF2j+BK0EUVm0OfgXNarnR+23h
	 8qM8KYqm+oBog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE9C9836A5;
	Tue, 24 Mar 2026 15:35:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DEDE61D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 15:35:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C1D1483638
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 15:35:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FpvGJKbXPdO0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 15:35:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E9C50835EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9C50835EF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E9C50835EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 15:35:45 +0000 (UTC)
X-CSE-ConnectionGUID: HdR6/3cMQGiNIGK8whr4Fw==
X-CSE-MsgGUID: 9SMwn7HCQauahg4IrJASdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="85699281"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="85699281"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 08:35:46 -0700
X-CSE-ConnectionGUID: wnJiH5l9T0KEbp5KFSPNfQ==
X-CSE-MsgGUID: 7RsC7h6VS1an6FVceyfVmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="262316423"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa001.jf.intel.com with ESMTP; 24 Mar 2026 08:35:44 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org, Paul Greenwalt <paul.greenwalt@intel.com>,
 Simon Horman <horms@kernel.org>, Paul Menzel <pmenzel@molgen.mpg.de>
Date: Tue, 24 Mar 2026 16:35:42 +0100
Message-ID: <20260324153542.674859-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774366546; x=1805902546;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5pG6qL+qH5cMyGmxtdL+xaxp+WIPMwnR4xxdBctIYnc=;
 b=OrcoPhrWgQJ2+1E3LnZYOzEDonGmU42EbGbUpsq4vqNreKL3dvFRYelT
 WyV4P1wCsZMWFm7DM2nb88i908TxhiGuYEElSEi1uFQOFnGbR6chk6DTc
 01ZvRkjIBygoUVa27t2Auogv5nFWuoakN+Z36WkCOpnPmQ6dSAmBo1LDW
 ahCE8j1LqU7iPHEwSU63muiQPpPPzXWopAjf57EW0bzV0hWjlGXIZ3i9F
 YZgF/sTnMzdNf8iDYsbLHfEd3jaaJgaoe8fOByWSH4xAKqfXJNxDOE8Pt
 JszMALQds7MePT7wgbzrsWJew5vnw+82w2OZQKcyoyzghvEK1NBbu38rw
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OrcoPhrW
Subject: [Intel-wired-lan] [PATCH iwl-next v3] ice: add 200G_AUI8 PHY type
 definitions and wire them up
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:email,intel.com:mid,osuosl.org:dkim,mpg.de:email];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0A3DE31826F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

ice_link_mode_str_high[] lacks entries for phy_type_high bits 5-14
(all 200G PHY types on E825C); ice_dump_phy_type() prints nothing for
them when ICE_DBG_LINK is set (e.g. 'ethtool -s ethX msglvl 0x10').
The loop also iterates all 64 bits against a 5-entry array - undefined
behaviour for any matched bit beyond the end.  Add strings for bits
5-14 and guard the loop with ARRAY_SIZE(), falling back to "unknown"
for unrecognised bits.

ICE_PHY_TYPE_HIGH_200G_AUI8_AOC_ACC (bit 13) and 200G_AUI8 (bit 14)
were absent from ice_adminq_cmd.h; ICE_PHY_TYPE_HIGH_MAX_INDEX capped
at 12 caused ice_update_phy_type() to skip them entirely, leaving both
invisible to 200G speed requests.  Add the definitions and bump
MAX_INDEX to 14.

Wire the two new types throughout the driver:
- ice_get_media_type(): handle all ten 200G phy_type_high values so
  E825C ports no longer return ICE_MEDIA_UNKNOWN.  AOC_ACC interfaces
  map to FIBER; bare AUI4/AUI8 to DA with cage, else BACKPLANE
  (matching existing AUI2/CAUI2 logic); CR4_PAM4 to DA; SR4/FR4/LR4/
  DR4 to FIBER; KR4_PAM4 to BACKPLANE.
- ice_get_link_speed_based_on_phy_type(): return ICE_AQ_LINK_SPEED_200GB
  for both new types so ice_update_phy_type() enables them correctly.
- phy_type_high_lkup[13,14]: AUI8 is 8-lane 25G-per-lane; no
  200000baseSR8/CR8 ethtool modes exist yet, so approximate with
  SR4_Full/CR4_Full - matching AUI4 at indices 11-12.  FIXME once
  those link modes land upstream.
- ICE_PHY_TYPE_HIGH_MASK_200G: add bits 13-14 for the minimum-speed
  floor in ice_mask_min_supported_speeds().

Suggested-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: Simon Horman <horms@kernel.org>
Cc: Paul Menzel <pmenzel@molgen.mpg.de>
---
v3 -> v4: add ARRAY_SIZE() OOB guard in ice_dump_phy_type(); cover all
          ten 200G phy_type_high values in ice_get_media_type(); add FIXME
          to lkup[13..14] for missing SR8/CR8 modes; rename subject
          fix subject; fix debug enable example (ethtool, not modprobe);
          add AUI8 speed mapping, lkup[13-14], MASK_200G bits 13-14,
          and AUI8->SR4/CR4 approximation comment
v1 -> v2: add ICE_PHY_TYPE_HIGH_MAX_INDEX update
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  4 ++-
 drivers/net/ethernet/intel/ice/ice_common.c   | 31 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  4 ++-
 drivers/net/ethernet/intel/ice/ice_ethtool.h  |  8 +++++
 4 files changed, 44 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 859e9c6..efe985c 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1044,7 +1044,9 @@ struct ice_aqc_get_phy_caps {
 #define ICE_PHY_TYPE_HIGH_200G_KR4_PAM4		BIT_ULL(10)
 #define ICE_PHY_TYPE_HIGH_200G_AUI4_AOC_ACC	BIT_ULL(11)
 #define ICE_PHY_TYPE_HIGH_200G_AUI4		BIT_ULL(12)
-#define ICE_PHY_TYPE_HIGH_MAX_INDEX		12
+#define ICE_PHY_TYPE_HIGH_200G_AUI8_AOC_ACC	BIT_ULL(13)
+#define ICE_PHY_TYPE_HIGH_200G_AUI8		BIT_ULL(14)
+#define ICE_PHY_TYPE_HIGH_MAX_INDEX		14
 
 struct ice_aqc_get_phy_caps_data {
 	__le64 phy_type_low; /* Use values from ICE_PHY_TYPE_LOW_* */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index ce11fea..2f3a268 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -84,6 +84,16 @@ static const char * const ice_link_mode_str_high[] = {
 	[2] = "100G_CAUI2",
 	[3] = "100G_AUI2_AOC_ACC",
 	[4] = "100G_AUI2",
+	[5] = "200G_CR4_PAM4",
+	[6] = "200G_SR4",
+	[7] = "200G_FR4",
+	[8] = "200G_LR4",
+	[9] = "200G_DR4",
+	[10] = "200G_KR4_PAM4",
+	[11] = "200G_AUI4_AOC_ACC",
+	[12] = "200G_AUI4",
+	[13] = "200G_AUI8_AOC_ACC",
+	[14] = "200G_AUI8",
 };
 
 /**
@@ -107,9 +117,14 @@ ice_dump_phy_type(struct ice_hw *hw, u64 low, u64 high, const char *prefix)
 	ice_debug(hw, ICE_DBG_PHY, "%s: phy_type_high: 0x%016llx\n", prefix, high);
 
 	for (u32 i = 0; i < BITS_PER_TYPE(typeof(high)); i++) {
-		if (high & BIT_ULL(i))
+		if (!(high & BIT_ULL(i)))
+			continue;
+		if (i < ARRAY_SIZE(ice_link_mode_str_high))
 			ice_debug(hw, ICE_DBG_PHY, "%s:   bit(%d): %s\n",
 				  prefix, i, ice_link_mode_str_high[i]);
+		else
+			ice_debug(hw, ICE_DBG_PHY, "%s:   bit(%d): unknown\n",
+				  prefix, i);
 	}
 }
 
@@ -605,13 +620,25 @@ static enum ice_media_type ice_get_media_type(struct ice_port_info *pi)
 		switch (hw_link_info->phy_type_high) {
 		case ICE_PHY_TYPE_HIGH_100G_AUI2:
 		case ICE_PHY_TYPE_HIGH_100G_CAUI2:
+		case ICE_PHY_TYPE_HIGH_200G_AUI4:
+		case ICE_PHY_TYPE_HIGH_200G_AUI8:
 			if (ice_is_media_cage_present(pi))
 				return ICE_MEDIA_DA;
 			fallthrough;
 		case ICE_PHY_TYPE_HIGH_100GBASE_KR2_PAM4:
+		case ICE_PHY_TYPE_HIGH_200G_KR4_PAM4:
 			return ICE_MEDIA_BACKPLANE;
 		case ICE_PHY_TYPE_HIGH_100G_CAUI2_AOC_ACC:
 		case ICE_PHY_TYPE_HIGH_100G_AUI2_AOC_ACC:
+		case ICE_PHY_TYPE_HIGH_200G_AUI4_AOC_ACC:
+		case ICE_PHY_TYPE_HIGH_200G_AUI8_AOC_ACC:
+			return ICE_MEDIA_FIBER;
+		case ICE_PHY_TYPE_HIGH_200G_CR4_PAM4:
+			return ICE_MEDIA_DA;
+		case ICE_PHY_TYPE_HIGH_200G_SR4:
+		case ICE_PHY_TYPE_HIGH_200G_FR4:
+		case ICE_PHY_TYPE_HIGH_200G_LR4:
+		case ICE_PHY_TYPE_HIGH_200G_DR4:
 			return ICE_MEDIA_FIBER;
 		}
 	}
@@ -3493,6 +3520,8 @@ u16 ice_get_link_speed_based_on_phy_type(u64 phy_type_low, u64 phy_type_high)
 	case ICE_PHY_TYPE_HIGH_200G_KR4_PAM4:
 	case ICE_PHY_TYPE_HIGH_200G_AUI4_AOC_ACC:
 	case ICE_PHY_TYPE_HIGH_200G_AUI4:
+	case ICE_PHY_TYPE_HIGH_200G_AUI8_AOC_ACC:
+	case ICE_PHY_TYPE_HIGH_200G_AUI8:
 		speed_phy_type_high = ICE_AQ_LINK_SPEED_200GB;
 		break;
 	default:
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 301947d..beb638c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2057,7 +2057,9 @@ ice_get_ethtool_stats(struct net_device *netdev,
 					 ICE_PHY_TYPE_HIGH_200G_DR4 | \
 					 ICE_PHY_TYPE_HIGH_200G_KR4_PAM4 | \
 					 ICE_PHY_TYPE_HIGH_200G_AUI4_AOC_ACC | \
-					 ICE_PHY_TYPE_HIGH_200G_AUI4)
+					 ICE_PHY_TYPE_HIGH_200G_AUI4 | \
+					 ICE_PHY_TYPE_HIGH_200G_AUI8_AOC_ACC | \
+					 ICE_PHY_TYPE_HIGH_200G_AUI8)
 
 /**
  * ice_mask_min_supported_speeds
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.h b/drivers/net/ethernet/intel/ice/ice_ethtool.h
index 23b2cfb..c4732a3 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.h
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.h
@@ -153,6 +153,14 @@ phy_type_high_lkup[] = {
 	[10] = ICE_PHY_TYPE(200GB, 200000baseKR4_Full),
 	[11] = ICE_PHY_TYPE(200GB, 200000baseSR4_Full),
 	[12] = ICE_PHY_TYPE(200GB, 200000baseCR4_Full),
+	/* 200G_AUI8_AOC_ACC and 200G_AUI8 are 8-lane 25G-per-lane interfaces.
+	 * The kernel has no 200000baseSR8/CR8 modes yet; map to the closest
+	 * available 4-lane equivalents so ethtool reports 200G as supported.
+	 * FIXME: replace with 200000baseSR8_Full / 200000baseCR8_Full once
+	 * those ethtool link modes are defined upstream.
+	 */
+	[13] = ICE_PHY_TYPE(200GB, 200000baseSR4_Full),
+	[14] = ICE_PHY_TYPE(200GB, 200000baseCR4_Full),
 };
 
 #endif /* !_ICE_ETHTOOL_H_ */
-- 
2.52.0

