Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DF02FF2B7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jan 2021 19:03:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 99DFA86D54;
	Thu, 21 Jan 2021 18:03:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HSiBzQnyUq9n; Thu, 21 Jan 2021 18:03:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2370A86D60;
	Thu, 21 Jan 2021 18:03:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 001F81BF9D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 18:03:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EED6486D5E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 18:03:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3R7kXw1JS4Rv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jan 2021 18:03:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9643086D54
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 18:03:12 +0000 (UTC)
IronPort-SDR: JrCvy1/wcHKAWRwvS6eUt5RzkDHQ47tX8OvNtd6SoTkERLaj0mkSoV+EFMNqU+5kC177Cd7AAV
 nqB1n8TuFb3w==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="178536132"
X-IronPort-AV: E=Sophos;i="5.79,364,1602572400"; d="scan'208";a="178536132"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 10:03:08 -0800
IronPort-SDR: l759UnQuK3XF1wu2lsWjh6wSGeq4j5yJIVz08xjAIwhMBPLx2Ei9DtUn1JYzvPxhSknDSKeM3+
 DIJsG0Myp+Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,364,1602572400"; d="scan'208";a="467538851"
Received: from bcreeley-st-desk.jf.intel.com ([10.166.244.126])
 by fmsmga001.fm.intel.com with ESMTP; 21 Jan 2021 10:03:05 -0800
From: Brett Creeley <brett.creeley@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 21 Jan 2021 17:58:46 -0800
Message-Id: <20210122015847.21825-1-brett.creeley@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 1/2] ice: Don't allow more channels
 than LAN MSI-X available
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

Currently users could create more channels than LAN MSI-X available.
This is happening because there is no check against pf->num_lan_msix
when checking the max allowed channels and will cause performance issues
if multiple Tx and Rx queues are tied to a single MSI-X. Fix this by not
allowing more channels than LAN MSI-X available in pf->num_lan_msix.

Fixes: 87324e747fde ("ice: Implement ethtool ops for channels")
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 41427302332c..aebebd2102da 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3265,8 +3265,8 @@ ice_set_rxfh(struct net_device *netdev, const u32 *indir, const u8 *key,
  */
 static int ice_get_max_txq(struct ice_pf *pf)
 {
-	return min_t(int, num_online_cpus(),
-		     pf->hw.func_caps.common_cap.num_txq);
+	return min3(pf->num_lan_msix, (u16)num_online_cpus(),
+		    (u16)pf->hw.func_caps.common_cap.num_txq);
 }
 
 /**
@@ -3275,8 +3275,8 @@ static int ice_get_max_txq(struct ice_pf *pf)
  */
 static int ice_get_max_rxq(struct ice_pf *pf)
 {
-	return min_t(int, num_online_cpus(),
-		     pf->hw.func_caps.common_cap.num_rxq);
+	return min3(pf->num_lan_msix, (u16)num_online_cpus(),
+		    (u16)pf->hw.func_caps.common_cap.num_rxq);
 }
 
 /**
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
