Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBCD77EE06
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 02:01:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C60E41783;
	Thu, 17 Aug 2023 00:01:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C60E41783
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692230480;
	bh=VvDmwDYnAJJ2fFPKnibE9/jcPijIYL/JgpHmQrkk/gM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nsj/FGnNVuPJkbXv9DCJwJEtNBGS269bw8sUQJGJYmGh3Q0nVXrNQFViumhu0dqhZ
	 YXT25HRewj8o97DJ05l+54DvepsZnwDazHKN0FRfbn5jRCfKRhjmi8kwe6EM3XJ54v
	 C0guDtvP5GTP0W61dBRPP05I5rjY/wWBKSFhQyrGW/LPRSE6bPyldb/xDDPOseROYi
	 zfmnTQxfvh6cXCrvq++ZgmUkYANEioBYdtxZGKhWx8Srj6J9r8Mu4mIGHE8VmWadBn
	 vG2jV665FZVkBna6U9JHvIORAyT9+Oo2hJHtNI2YnuVUQPPBnbzpnlNYTd+T1Ka9cv
	 HLM+ujZrDFslQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jWc0wmSuuYpr; Thu, 17 Aug 2023 00:01:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3AAE741774;
	Thu, 17 Aug 2023 00:01:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3AAE741774
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A2FDB1BF97F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:01:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A7B483B77
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:01:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A7B483B77
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mwJONlI9LS87 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 00:01:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0223F83B72
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:01:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0223F83B72
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="403649709"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="403649709"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 17:01:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="799805038"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="799805038"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 17:01:03 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 16 Aug 2023 17:00:54 -0700
Message-ID: <20230817000058.2433236-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230817000058.2433236-1-jacob.e.keller@intel.com>
References: <20230817000058.2433236-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692230465; x=1723766465;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sn5mwvGg+ydf0YbK/S070S2hFHqCsOYElUp4swa+lbE=;
 b=jkHhrvc9KgxrdtWAWmE7NQQGIYfjOY/ZwdaFS2QYGogBr382UetCI8D3
 2zPUZtNPrWIE9RQtBvFutFdm+rV4iFrMceKV0syKH6YYoNtxwFxmSVQlW
 i1wlN5p/UwFmv21mGH/X71qnP8KBeGW49X3Gkj9UqKa0y7DQNsPnj6Oxc
 4ra4Ugq3jUQZAec4rs6206lps0bTLOZDEZWMBFnLISB+caJ+BiqcbtuSB
 +Q+KVsfFHl10Q4Xk78B7p+W2SY75ldAslyCJ3AJOMZHi7akKWz0qI5cVO
 lb8I2QuB0Az0mUH+UhXBdS3eVnq5Z1HGwPxkUJUDxKBoboy22SApdY+RB
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jkHhrvc9
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/5] ice: remove
 ICE_F_PTP_EXTTS feature flag
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
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
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
No changes since v1.

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
