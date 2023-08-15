Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E70EC77D63A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 00:36:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 82B59611D5;
	Tue, 15 Aug 2023 22:36:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 82B59611D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692138977;
	bh=olp6D4QoFlzEtq674dbueKa2xyC4qeuB3XWvJPh6uVw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a8uH54OTx2+qN6jujxlg4PuSp1SXwtTQQHOmhvTUTsAgy+VhBoHD8TdWmPCMMiBqx
	 9PdxiWAVQVbuP/FXhNvHpwC6EfmkwrZ6ARM8xvaomEUYdZYAEgQfd7KWHWWn69H56m
	 oATXBAE0Q8K9d5dz1QdYpNK4LoDuoRRNyP8dwKZ/7uqSYqcrVdeP5lzqFBx5+bK5k8
	 LQW8CjtbULc3dAEQ5bmXnCZ3JdxrDmHNIazTa5ltnsITb18eN4Fail7oxrTbsSgni5
	 tGBteY2QcIFbbzD8EvWGorjGGiMLp/JmqU/4H1MBSDiEDCaz5L/1btMvkkDM22hrZo
	 ucTS6oQKfDFBg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id agrwyJW1BG-t; Tue, 15 Aug 2023 22:36:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 808E560AB9;
	Tue, 15 Aug 2023 22:36:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 808E560AB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3B49E1BF97D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 22:36:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0BAA741A43
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 22:36:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BAA741A43
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4LmxCTO2-cdc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Aug 2023 22:35:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1D95541A32
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 22:35:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D95541A32
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="352718855"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="352718855"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 15:35:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="710906000"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="710906000"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 15:35:56 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 15 Aug 2023 15:35:49 -0700
Message-ID: <20230815223551.1238091-8-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230815223551.1238091-1-jacob.e.keller@intel.com>
References: <20230815223551.1238091-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692138959; x=1723674959;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2KTC3tr2J/DxNQgB8gJPtqjW6Hp623y9M5HV1nK1UnY=;
 b=mq7S5lwjAijkFXA2ti6Zof6AUr9jFFvgamIgiC70cLoo2cFf9HIVH/JO
 BrNVR2yQ1GUbSl6Uxf+5eY8OJ/qmEAmcAHfEW+wTh6Ufc2IWcQLF9oy1i
 y1rOlg/NoAxT5U8a+hHVUbn8WDqrCdlJJdUmgA/8ye7664RqplN/5Lf/T
 3GuVv1NoL/wTZOfvhB10Jnp3YsWPr8JrID+VkSlSDa2yTsdvI6DF+z6Vi
 cqCjb94yUrHz4McF8TCSPeC030lficDJIpOH4vQEU5GJlEooH4ZVP7GPF
 UadvfLVnseSMeYAwIsRSwveDekLUPfwk7WSeH+7lIZS0RUEdMswrOBe2/
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mq7S5lwj
Subject: [Intel-wired-lan] [PATCH iwl-next 2/4] ice: don't enable PTP
 related capabilities on non-owner PFs
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

The ice driver currently sets feature flags for certain PTP related
capabilities based on whether the device has support for the feature. Avoid
enabling these capabilities except on the ports which own the timer. This
ensures that the driver never attempts to access the features except on the
ports designated as controlling the main timer functionality.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 5dfcb824f817..f29ff54383b5 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3986,6 +3986,9 @@ void ice_init_feature_support(struct ice_pf *pf)
 	case ICE_DEV_ID_E810C_QSFP:
 	case ICE_DEV_ID_E810C_SFP:
 		ice_set_feature_support(pf, ICE_F_DSCP);
+		/* If we don't own the timer - don't enable other caps */
+		if (!ice_pf_src_tmr_owned(pf))
+			break;
 		if (ice_is_e810t(&pf->hw)) {
 			ice_set_feature_support(pf, ICE_F_SMA_CTRL);
 			if (ice_gnss_is_gps_present(&pf->hw))
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
