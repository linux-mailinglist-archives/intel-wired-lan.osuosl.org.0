Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCDB349E19
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Mar 2021 01:39:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B591D842B0;
	Fri, 26 Mar 2021 00:39:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8aMISujpsNBQ; Fri, 26 Mar 2021 00:39:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C279E84171;
	Fri, 26 Mar 2021 00:39:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 15E161C1190
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DBD6C84B76
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w_52PL0wcff3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Mar 2021 00:38:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E85584B78
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:46 +0000 (UTC)
IronPort-SDR: pg44GgvH5oENoTRPyg/bvG9IJtLcErlY2KfkQZ3I6xW3PR7YAHrPV2w2V3ipf4OThyKkcyMoHi
 MybNIax1ufAw==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="188762086"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="188762086"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 17:38:45 -0700
IronPort-SDR: wquTleFTl74t5eRrsthNERFHnd4Ue+5BKCVfbdAS5FSQCzbQG/njNeZcCGRMu2P7HCh09lxTmI
 eH9h2B15Nkrg==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="416276272"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 17:38:43 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 17:38:34 -0700
Message-Id: <20210326003834.3886241-12-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
References: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 11/11] ixgbe: reduce checker
 warnings
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
Cc: Shannon Nelson <snelson@pensando.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix the sparse warnings in the ixgbe crypto offload code. These
changes were made in the most conservative way (force cast)
in order to hopefully not break the code. I suspect that the
code might still be broken on big-endian architectures, but
no one is complaining, so I'm just leaving it functionally
the same.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Shannon Nelson <snelson@pensando.io>
---
Warning Detail:
.../ixgbe/ixgbe_ipsec.c:514:56: warning: restricted __be32 degrades to integer
.../ixgbe/ixgbe_ipsec.c:521:48: warning: restricted __be32 degrades to integer
.../ixgbe/ixgbe_ipsec.c:536:59: warning: restricted __be32 degrades to integer
.../ixgbe/ixgbe_ipsec.c:546:59: warning: restricted __be32 degrades to integer
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
index 54d47265a7ac..e596e1a9fc75 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
@@ -511,14 +511,14 @@ static int ixgbe_ipsec_check_mgmt_ip(struct xfrm_state *xs)
 					continue;
 
 				reg = IXGBE_READ_REG(hw, MIPAF_ARR(3, i));
-				if (reg == xs->id.daddr.a4)
+				if (reg == (__force u32)xs->id.daddr.a4)
 					return 1;
 			}
 		}
 
 		if ((bmcipval & BMCIP_MASK) == BMCIP_V4) {
 			reg = IXGBE_READ_REG(hw, IXGBE_BMCIP(3));
-			if (reg == xs->id.daddr.a4)
+			if (reg == (__force u32)xs->id.daddr.a4)
 				return 1;
 		}
 
@@ -533,7 +533,7 @@ static int ixgbe_ipsec_check_mgmt_ip(struct xfrm_state *xs)
 
 			for (j = 0; j < 4; j++) {
 				reg = IXGBE_READ_REG(hw, MIPAF_ARR(i, j));
-				if (reg != xs->id.daddr.a6[j])
+				if (reg != (__force u32)xs->id.daddr.a6[j])
 					break;
 			}
 			if (j == 4)   /* did we match all 4 words? */
@@ -543,7 +543,7 @@ static int ixgbe_ipsec_check_mgmt_ip(struct xfrm_state *xs)
 		if ((bmcipval & BMCIP_MASK) == BMCIP_V6) {
 			for (j = 0; j < 4; j++) {
 				reg = IXGBE_READ_REG(hw, IXGBE_BMCIP(j));
-				if (reg != xs->id.daddr.a6[j])
+				if (reg != (__force u32)xs->id.daddr.a6[j])
 					break;
 			}
 			if (j == 4)   /* did we match all 4 words? */
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
