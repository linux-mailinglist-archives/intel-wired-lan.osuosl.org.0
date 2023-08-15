Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6472877D640
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 00:36:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9655611D5;
	Tue, 15 Aug 2023 22:36:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9655611D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692139004;
	bh=cpqhdMGsNB1L1ZxbToZxvoZi3ddRoh+UPI6uNit+NvA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hxWa3No/i4EDOLQsxlzT8gZeYJOOVrW7Qv4U22Pr0zPnxmU/tF6jXPSRvAGWIU81h
	 ZyKbgAkAIqEdLsopcZ6CtVAxfiwEAzA+pCf6Vlh7R9R+IRDSyOGpSBoSI9JsHP6CFL
	 JX/JeoczkPOFB0qSBPSw8GYh97AHEMH4ZpEF5mqvp1YewMA5job/q/xfBZlUnEiDyA
	 7dy24Uo7hDsm1DCfLLrxqvKH8zsQdoizoLAvm5n6QffwXAcTcYU5UsfU2nxLMmQX+e
	 sbVFuLxqjJcsuDDy9d2z3sWGKnksArru776ZEeSP+dyIVgGJDzQAcsJvRVvtx/ha5x
	 FgsConXpJiITw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KWSC3YuDPmOu; Tue, 15 Aug 2023 22:36:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B38D160AB9;
	Tue, 15 Aug 2023 22:36:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B38D160AB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BF2E31BF47F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 22:36:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4FB9D4149C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 22:36:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4FB9D4149C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dclBMzeU9O14 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Aug 2023 22:35:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 08DA34149B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 22:35:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 08DA34149B
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="352718854"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="352718854"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 15:35:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="710905996"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="710905996"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 15:35:56 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 15 Aug 2023 15:35:48 -0700
Message-ID: <20230815223551.1238091-7-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230815223551.1238091-1-jacob.e.keller@intel.com>
References: <20230815223551.1238091-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692138958; x=1723674958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=syVLLL2YIkCivctCpVnmrNaHUSbAWALFm6l4frRtSFI=;
 b=BDM9rgWHik/VDR8+wjl136FZ8a9eYnq0LDgDfFVtT27tPVubnz5HwNHK
 QQ+29VJnKkAHTVdqxUcX10WXgllcVMF2oyiuHSbqJ1w+SuJkOAn5jwKgx
 sKJtBzrm3N6YB2aLuTYP/7x1VmXcQdhGTeue1eRqLxH6mXx8OVfoFlq9M
 tBWaEIwGUR4QMgrdDbiRnXQhlKaNtKwiX+FnErrHowsTeH/in7vznYqjl
 yoCFo6XfygRqrJD1agSFLZitY1C0UNTPvbFnQm74rwZ5OXRgpKRej52y1
 Yt9PgRCQF/ySh98rLZV1sevrnN+/eVEZ/7wyqr4c1q77eZxl+2wq00w9B
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BDM9rgWH
Subject: [Intel-wired-lan] [PATCH iwl-next 1/4] ice: remove ICE_F_PTP_EXTTS
 feature flag
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ICE_F_PTP_EXTTS feature flag is ostensibly intended to support checking
whether the device supports external timestamp pins. It is only checked in
E810-specific code flows, and is enabled for all E810-based devices. E822
and E823 flows unconditionally enable external timestamp support.

This makes the feature flag meaningless, as it is always enabled. Just
unconditionally enable support for external timestamp pins and remove this
unnecessary flag.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h     | 1 -
 drivers/net/ethernet/intel/ice/ice_lib.c | 1 -
 drivers/net/ethernet/intel/ice/ice_ptp.c | 4 +---
 3 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 5d307bacf7c6..013ea8970fbc 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -199,7 +199,6 @@
 
 enum ice_feature {
 	ICE_F_DSCP,
-	ICE_F_PTP_EXTTS,
 	ICE_F_SMA_CTRL,
 	ICE_F_GNSS,
 	ICE_F_ROCE_LAG,
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 201570cd2e0b..5dfcb824f817 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3986,7 +3986,6 @@ void ice_init_feature_support(struct ice_pf *pf)
 	case ICE_DEV_ID_E810C_QSFP:
 	case ICE_DEV_ID_E810C_SFP:
 		ice_set_feature_support(pf, ICE_F_DSCP);
-		ice_set_feature_support(pf, ICE_F_PTP_EXTTS);
 		if (ice_is_e810t(&pf->hw)) {
 			ice_set_feature_support(pf, ICE_F_SMA_CTRL);
 			if (ice_gnss_is_gps_present(&pf->hw))
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 97b8581ae931..9524fcea9ae9 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2205,9 +2205,7 @@ static void
 ice_ptp_setup_pins_e810(struct ice_pf *pf, struct ptp_clock_info *info)
 {
 	info->n_per_out = N_PER_OUT_E810;
-
-	if (ice_is_feature_supported(pf, ICE_F_PTP_EXTTS))
-		info->n_ext_ts = N_EXT_TS_E810;
+	info->n_ext_ts = N_EXT_TS_E810;
 
 	if (ice_is_feature_supported(pf, ICE_F_SMA_CTRL)) {
 		info->n_ext_ts = N_EXT_TS_E810;
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
