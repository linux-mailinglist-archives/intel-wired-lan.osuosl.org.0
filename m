Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5DF77D639
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 00:36:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69CAC611D9;
	Tue, 15 Aug 2023 22:36:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69CAC611D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692138973;
	bh=olp6D4QoFlzEtq674dbueKa2xyC4qeuB3XWvJPh6uVw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=snP+mNST3on7srCC1eJurAAIiiSLsfxOrjsvCwPGTwGz/lwwtMshDln85iDZjAzB1
	 rt3d2/Zg/nltFhptPxk+FlN3vmtV7nnQ0gOWqX1jkQNE3bjnS5rPqcDgOroj7xyRVB
	 UkLZDgNVgN4KLUXl8msc3ohr/airVgVQQ11WOZxJKXYvXH2Bsgzcg89A0i1r3KPfEI
	 6mR9s49XG1+T4rewSuRqHQhvdQ/R8Nl6TEyID1zdchebKeSLO7iaCA52vf1b24IDMD
	 Yv+AECGJh8sjZSjkrg6KeD0ZI+qjxgY3ofd3o+oQB9N8ZjG0z2B1aPlrk7LN6ieMgZ
	 c3lR80NguaGVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NK0SLDgqzpWk; Tue, 15 Aug 2023 22:36:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 53B4F60AB9;
	Tue, 15 Aug 2023 22:36:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53B4F60AB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F7FF1BF47F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 22:36:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8E11041499
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 22:35:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E11041499
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p1Mg_ACUDvuQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Aug 2023 22:35:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EC2DC4149C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 22:35:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC2DC4149C
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="352718850"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="352718850"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 15:35:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="710905982"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="710905982"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 15:35:56 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 15 Aug 2023 15:35:44 -0700
Message-ID: <20230815223551.1238091-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230815223551.1238091-1-jacob.e.keller@intel.com>
References: <20230815223551.1238091-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692138957; x=1723674957;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2KTC3tr2J/DxNQgB8gJPtqjW6Hp623y9M5HV1nK1UnY=;
 b=dPZUb8GHMNgd4BUtkpsvz+HUoJkm8jJehKSja6SQuGGRI7T+jluup2kH
 aLjoiEiwLjbPwpAtLWrpVm/hH6DrcVUfQC0r2apCCtgEYqvhsLcgUzV2t
 bDfqVnjBop01m26VfyTty8rdEYhLZPSZoax4msufUnqoRYWU0hEm/0avW
 8Du4ImTwEZ9oGhU923n8tC7y9SYILm8q0vc4IgcNtInYwurb5cj3A2do/
 0HIWHLDF/nVY/Rj+Oh3GaQgId+c0N3UjaHFO0X+DevjKVtLl3NnRU/DIx
 y1igYd37rl4tgPZmUn+WGEe4WgrQ2UDtCj0ubVZjT3P6KSh6qVXHzK/Ug
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dPZUb8GH
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
