Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5296345502A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Nov 2021 23:11:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02227825DF;
	Wed, 17 Nov 2021 22:11:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R_EvqyfgU6wJ; Wed, 17 Nov 2021 22:11:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0719E825C3;
	Wed, 17 Nov 2021 22:11:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7B05E1BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 22:11:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 74B70405CF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 22:11:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n8F-c_sq63oZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Nov 2021 22:10:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C4EFD404C5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 22:10:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10171"; a="234305262"
X-IronPort-AV: E=Sophos;i="5.87,243,1631602800"; d="scan'208";a="234305262"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 14:10:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,243,1631602800"; d="scan'208";a="736417447"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by fmsmga005.fm.intel.com with ESMTP; 17 Nov 2021 14:10:57 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 Nov 2021 14:10:38 -0800
Message-Id: <20211117221038.70579-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: Removed unused
 ICE_FLOW_SEG_HDRS_L2_MASK
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

ICE_FLOW_SEG_HDRS_L2_MASK is not being used; remove the define.

Reported-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flow.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index 2bfe9d9d7edc..ef10f0941231 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -609,8 +609,6 @@ struct ice_flow_prof_params {
 	ICE_FLOW_SEG_HDR_ESP | ICE_FLOW_SEG_HDR_AH | \
 	ICE_FLOW_SEG_HDR_NAT_T_ESP)
 
-#define ICE_FLOW_SEG_HDRS_L2_MASK	\
-	(ICE_FLOW_SEG_HDR_ETH | ICE_FLOW_SEG_HDR_VLAN)
 #define ICE_FLOW_SEG_HDRS_L3_MASK	\
 	(ICE_FLOW_SEG_HDR_IPV4 | ICE_FLOW_SEG_HDR_IPV6 | ICE_FLOW_SEG_HDR_ARP)
 #define ICE_FLOW_SEG_HDRS_L4_MASK	\
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
