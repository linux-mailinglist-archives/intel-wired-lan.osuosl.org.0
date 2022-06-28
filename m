Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 310D855C047
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jun 2022 12:38:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C226540999;
	Tue, 28 Jun 2022 10:38:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C226540999
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656412718;
	bh=TPX3kMsFZKPnQgndzsIWNyrCq7boxYSwRhdo2YO0+Is=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=M1r7TztS953jcEjb6dmjWrzkOl7g8DERvNhy/+eFnEGPZHkW5W5bKCJXMu+OpA5L+
	 N3A2z7uvK2lbB4Fg/HqySWq/7NC1mo2Y1md4lurYT5pLkGoC9OdripjCoELjlMpDNn
	 eoQ+pR/Yix6iu3NDxKUJT4wWcLY0IAypDOkq67haoS/x9LbdKVRE7mXgrjlIEoLWVd
	 fsf0PDu4q28PsZDTE5u0/sT2oKoZj9DelDGvMZR+byXI9IXIWgPLSXX/EypV0kRtT8
	 CTc1dy509JwjgL0kb0DhUj7ibMk4AQcM/hVfE+TNmo0JlIA+GiOY0oCxzwCnqoAVEw
	 TtQykPzIIAAWQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q2c2R3J4mgCA; Tue, 28 Jun 2022 10:38:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70E4E408E5;
	Tue, 28 Jun 2022 10:38:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70E4E408E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 95F381BF599
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 10:38:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6379C6072A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 10:38:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6379C6072A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HohI1lcH1CIk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 10:38:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7BE62606C6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7BE62606C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 10:38:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="262115326"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="262115326"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 03:38:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="836629398"
Received: from propan.igk.intel.com ([10.211.8.82])
 by fmsmga006.fm.intel.com with ESMTP; 28 Jun 2022 03:38:18 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 Jun 2022 12:36:57 +0200
Message-Id: <20220628103657.3668-1-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656412710; x=1687948710;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hpFHLAEgttKEyLQWlXjGOsJgD/4W0Nq5BWneBlgBp9k=;
 b=mpbzKYJjq0MHwn0yePjgHuHDDrb2mdAD2uF7VMraUj9wKhzr/yux6jtD
 9Ng+KttaAGrm5/05j3BswkQfwlDaapQdGejy35goCrPSRZEvT9zxSLWY9
 4984BfnEoLZg8Qa6NrFy94awpeJizaijD8q9P/hhHLlwMTwqH9nvX0/EV
 EXJHnywLbny9srjxsb5Q1RrTWKiVi9GcoJ7g+56o4rXRLEe0aXxzC+r9R
 pOZM6ODPeBVEr6+WA6lwavwT0VVaQFtMJHHSCRqQZQx/gGyuLGcNtQ3O3
 Ww4+SL/OPmSM4dAZUCeSdJmpuwTz9qCKJH7EE8AvQyzjXXuO/tnL4P4ET
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mpbzKYJj
Subject: [Intel-wired-lan] [PATCH net-next] ice: Add EXTTS feature to the
 feature bitmap
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
Cc: Maciej Machnikowski <maciej.machnikowski@intel.com>,
 Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

External time stamp sources are supported only on certain devices. Enforce
the right support matrix by adding the ICE_F_PTP_EXTTS bit to the feature
bitmap set.

Co-developed-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Acked-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h     |  1 +
 drivers/net/ethernet/intel/ice/ice_lib.c |  1 +
 drivers/net/ethernet/intel/ice/ice_ptp.c | 18 +++++++++++++-----
 3 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 60453b3b8d23..f72c5cc4e035 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -181,6 +181,7 @@
 
 enum ice_feature {
 	ICE_F_DSCP,
+	ICE_F_PTP_EXTTS,
 	ICE_F_SMA_CTRL,
 	ICE_F_GNSS,
 	ICE_F_MAX
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index a6c4be5e5566..bc357dfae306 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -4182,6 +4182,7 @@ void ice_init_feature_support(struct ice_pf *pf)
 	case ICE_DEV_ID_E810C_QSFP:
 	case ICE_DEV_ID_E810C_SFP:
 		ice_set_feature_support(pf, ICE_F_DSCP);
+		ice_set_feature_support(pf, ICE_F_PTP_EXTTS);
 		if (ice_is_e810t(&pf->hw)) {
 			ice_set_feature_support(pf, ICE_F_SMA_CTRL);
 			if (ice_gnss_is_gps_present(&pf->hw))
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index ef9344ef0d8e..29c7a0ccb3c4 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1900,9 +1900,12 @@ ice_ptp_setup_pins_e810t(struct ice_pf *pf, struct ptp_clock_info *info)
 	}
 
 	info->n_per_out = N_PER_OUT_E810T;
-	info->n_ext_ts = N_EXT_TS_E810;
-	info->n_pins = NUM_PTP_PINS_E810T;
-	info->verify = ice_verify_pin_e810t;
+
+	if (ice_is_feature_supported(pf, ICE_F_PTP_EXTTS)) {
+		info->n_ext_ts = N_EXT_TS_E810;
+		info->n_pins = NUM_PTP_PINS_E810T;
+		info->verify = ice_verify_pin_e810t;
+	}
 
 	/* Complete setup of the SMA pins */
 	ice_ptp_setup_sma_pins_e810t(pf, info);
@@ -1910,11 +1913,16 @@ ice_ptp_setup_pins_e810t(struct ice_pf *pf, struct ptp_clock_info *info)
 
 /**
  * ice_ptp_setup_pins_e810 - Setup PTP pins in sysfs
+ * @pf: pointer to the PF instance
  * @info: PTP clock capabilities
  */
-static void ice_ptp_setup_pins_e810(struct ptp_clock_info *info)
+static void ice_ptp_setup_pins_e810(struct ice_pf *pf, struct ptp_clock_info *info)
 {
 	info->n_per_out = N_PER_OUT_E810;
+
+	if (!ice_is_feature_supported(pf, ICE_F_PTP_EXTTS))
+		return;
+
 	info->n_ext_ts = N_EXT_TS_E810;
 }
 
@@ -1956,7 +1964,7 @@ ice_ptp_set_funcs_e810(struct ice_pf *pf, struct ptp_clock_info *info)
 	if (ice_is_e810t(&pf->hw))
 		ice_ptp_setup_pins_e810t(pf, info);
 	else
-		ice_ptp_setup_pins_e810(info);
+		ice_ptp_setup_pins_e810(pf, info);
 }
 
 /**
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
