Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DA121A49B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jul 2020 18:20:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7F7BA2CD4A;
	Thu,  9 Jul 2020 16:20:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t2fz+G6iRaGi; Thu,  9 Jul 2020 16:20:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ADE4A2C91A;
	Thu,  9 Jul 2020 16:20:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ACA361BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A904F89A04
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e43-voi7y-yy for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jul 2020 16:20:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 03A2F88C9C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:14 +0000 (UTC)
IronPort-SDR: JfQ6ZLK5ogZCZsBbEMAp+aQqR4ws0Acv79sffMsvkjtqFnbFMo5FqXUfZk6NnWU4DmNm5ywqqH
 q33uYYGqux5g==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="232906038"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="232906038"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 09:20:11 -0700
IronPort-SDR: f28Vxd5RVw0h5hChst6xT4/lmreqWBiCQ3xglfG6pKd/RLQIrbEUa1ThbUUbhHrqQDJg9PEzlN
 RpAJUPLjAJFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="280352073"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga003.jf.intel.com with ESMTP; 09 Jul 2020 09:20:07 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  9 Jul 2020 09:16:13 -0700
Message-Id: <20200709161614.61098-14-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S49 14/15] ice: Report AOC PHY Types as
 Fiber
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Doug Dziggel <douglas.a.dziggel@intel.com>

Report AOC types as fiber instead of unknown.

Signed-off-by: Doug Dziggel <douglas.a.dziggel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 2fdee4a34b39..8b45e64398f9 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -285,6 +285,14 @@ static enum ice_media_type ice_get_media_type(struct ice_port_info *pi)
 		case ICE_PHY_TYPE_LOW_100GBASE_LR4:
 		case ICE_PHY_TYPE_LOW_100GBASE_SR2:
 		case ICE_PHY_TYPE_LOW_100GBASE_DR:
+		case ICE_PHY_TYPE_LOW_10G_SFI_AOC_ACC:
+		case ICE_PHY_TYPE_LOW_25G_AUI_AOC_ACC:
+		case ICE_PHY_TYPE_LOW_40G_XLAUI_AOC_ACC:
+		case ICE_PHY_TYPE_LOW_50G_LAUI2_AOC_ACC:
+		case ICE_PHY_TYPE_LOW_50G_AUI2_AOC_ACC:
+		case ICE_PHY_TYPE_LOW_50G_AUI1_AOC_ACC:
+		case ICE_PHY_TYPE_LOW_100G_CAUI4_AOC_ACC:
+		case ICE_PHY_TYPE_LOW_100G_AUI4_AOC_ACC:
 			return ICE_MEDIA_FIBER;
 		case ICE_PHY_TYPE_LOW_100BASE_TX:
 		case ICE_PHY_TYPE_LOW_1000BASE_T:
@@ -338,6 +346,9 @@ static enum ice_media_type ice_get_media_type(struct ice_port_info *pi)
 			fallthrough;
 		case ICE_PHY_TYPE_HIGH_100GBASE_KR2_PAM4:
 			return ICE_MEDIA_BACKPLANE;
+		case ICE_PHY_TYPE_HIGH_100G_CAUI2_AOC_ACC:
+		case ICE_PHY_TYPE_HIGH_100G_AUI2_AOC_ACC:
+			return ICE_MEDIA_FIBER;
 		}
 	}
 	return ICE_MEDIA_UNKNOWN;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
