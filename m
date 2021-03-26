Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C47D4349E1B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Mar 2021 01:39:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 657664021A;
	Fri, 26 Mar 2021 00:39:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oq9ucSzy_E14; Fri, 26 Mar 2021 00:39:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6EBC340208;
	Fri, 26 Mar 2021 00:39:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7BB261C1190
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 042B16001B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uE19bXVj4cWY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Mar 2021 00:38:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5C9B760B82
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:46 +0000 (UTC)
IronPort-SDR: kG+uO0yOgADh0SGpo+ghnYXfGT1rG7NUoGDJ7ZIog3hyoH4COu4AhRPsYjHfcltkjKmFZpK4B1
 JnOx2pT3ciCA==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="188762085"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="188762085"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 17:38:45 -0700
IronPort-SDR: zuI/sX3rccwJGYkfQBAC38Dq75tm4t2hosa/2ChzpGM2iWM5ZY8L3N6YjrSmpyPCLWXUpUqKFG
 Ty57HAl+7crg==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="416276269"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 17:38:43 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 17:38:33 -0700
Message-Id: <20210326003834.3886241-11-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
References: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 10/11] ixgbe: use checker safe
 conversions
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

The ixgbe hardware needs some very specific programming for
certain registers, which led to some misguided usage of ntohs
instead of using be16_to_cpu(), as well as a home grown swap
followed by an ntohs. Sparse didn't like this at all, and this
fixes the C=2 build, with code that uses native kernel interface.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
Warning Details:
.../ixgbe/ixgbe_82599.c:1660:20: warning: cast to restricted __be16
.../ixgbe/ixgbe_82599.c:1660:20: warning: cast to restricted __be16
.../ixgbe/ixgbe_82599.c:1660:20: warning: cast to restricted __be16
.../ixgbe/ixgbe_82599.c:1660:20: warning: cast to restricted __be16
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
index e324e42fab2d..58ea959a4482 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
@@ -1514,8 +1514,7 @@ static u32 ixgbe_get_fdirtcpm_82599(union ixgbe_atr_input *input_mask)
 #define IXGBE_WRITE_REG_BE32(a, reg, value) \
 	IXGBE_WRITE_REG((a), (reg), IXGBE_STORE_AS_BE32(ntohl(value)))
 
-#define IXGBE_STORE_AS_BE16(_value) \
-	ntohs(((u16)(_value) >> 8) | ((u16)(_value) << 8))
+#define IXGBE_STORE_AS_BE16(_value) __swab16(ntohs((_value)))
 
 s32 ixgbe_fdir_set_input_mask_82599(struct ixgbe_hw *hw,
 				    union ixgbe_atr_input *input_mask)
@@ -1651,13 +1650,13 @@ s32 ixgbe_fdir_write_perfect_filter_82599(struct ixgbe_hw *hw,
 	IXGBE_WRITE_REG_BE32(hw, IXGBE_FDIRIPDA, input->formatted.dst_ip[0]);
 
 	/* record source and destination port (little-endian)*/
-	fdirport = ntohs(input->formatted.dst_port);
+	fdirport = be16_to_cpu(input->formatted.dst_port);
 	fdirport <<= IXGBE_FDIRPORT_DESTINATION_SHIFT;
-	fdirport |= ntohs(input->formatted.src_port);
+	fdirport |= be16_to_cpu(input->formatted.src_port);
 	IXGBE_WRITE_REG(hw, IXGBE_FDIRPORT, fdirport);
 
 	/* record vlan (little-endian) and flex_bytes(big-endian) */
-	fdirvlan = IXGBE_STORE_AS_BE16((__force u16)input->formatted.flex_bytes);
+	fdirvlan = IXGBE_STORE_AS_BE16(input->formatted.flex_bytes);
 	fdirvlan <<= IXGBE_FDIRVLAN_FLEX_SHIFT;
 	fdirvlan |= ntohs(input->formatted.vlan_id);
 	IXGBE_WRITE_REG(hw, IXGBE_FDIRVLAN, fdirvlan);
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
