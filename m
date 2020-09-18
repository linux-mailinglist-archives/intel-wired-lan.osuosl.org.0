Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9732270441
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Sep 2020 20:42:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4A51787AE3;
	Fri, 18 Sep 2020 18:42:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j+TckR3i+oaP; Fri, 18 Sep 2020 18:42:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8C33287AEA;
	Fri, 18 Sep 2020 18:42:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5816C1BF31B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Sep 2020 18:42:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 53CB987AE9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Sep 2020 18:42:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rju0x35K9bCl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Sep 2020 18:42:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 83EE187AE3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Sep 2020 18:42:07 +0000 (UTC)
IronPort-SDR: ATmtJTHHhlTWAvHeH96fnhCwtJWhn0xviBz0Ws7xWTuasNGucPczOP/luR81sNcKy027LetnRQ
 uuSlES/ZT3sA==
X-IronPort-AV: E=McAfee;i="6000,8403,9748"; a="147758841"
X-IronPort-AV: E=Sophos;i="5.77,274,1596524400"; d="scan'208";a="147758841"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2020 11:41:59 -0700
IronPort-SDR: wXvYVv8eG1aHU8+5CBNg7YpO8S6bT1/4FYZC72MW2CP+bp60H23eytrMgYrdRawhajvTvgdlNg
 RCc3OrlRbllQ==
X-IronPort-AV: E=Sophos;i="5.77,274,1596524400"; d="scan'208";a="339908506"
Received: from jbrandeb-desk.jf.intel.com ([10.166.244.152])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2020 11:41:59 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 18 Sep 2020 11:41:52 -0700
Message-Id: <20200918184152.604967-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] e1000: remove unused and
 incorrect code
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

The e1000_clear_vfta function was triggering a warning in kbuild-bot
testing. It's actually a bug but has no functional impact.

drivers/net/ethernet/intel/e1000/e1000_hw.c:4415:58: warning: Same expression in both branches of ternary operator. [duplicateExpressionTernary]

Fix this warning by removing the offending code and simplifying
the routine to do exactly what it did before, no functional
change.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---

NOTE: I don't recommend this go to stable as there is no functional
change.
---
 drivers/net/ethernet/intel/e1000/e1000_hw.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_hw.c b/drivers/net/ethernet/intel/e1000/e1000_hw.c
index 2120dacfd55c..c5d702543daa 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_hw.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_hw.c
@@ -4403,17 +4403,9 @@ void e1000_write_vfta(struct e1000_hw *hw, u32 offset, u32 value)
 static void e1000_clear_vfta(struct e1000_hw *hw)
 {
 	u32 offset;
-	u32 vfta_value = 0;
-	u32 vfta_offset = 0;
-	u32 vfta_bit_in_reg = 0;
 
 	for (offset = 0; offset < E1000_VLAN_FILTER_TBL_SIZE; offset++) {
-		/* If the offset we want to clear is the same offset of the
-		 * manageability VLAN ID, then clear all bits except that of the
-		 * manageability unit
-		 */
-		vfta_value = (offset == vfta_offset) ? vfta_bit_in_reg : 0;
-		E1000_WRITE_REG_ARRAY(hw, VFTA, offset, vfta_value);
+		E1000_WRITE_REG_ARRAY(hw, VFTA, offset, 0);
 		E1000_WRITE_FLUSH();
 	}
 }

base-commit: aa042f60e4961d4bec57e3268624df1f3a6befa4
-- 
2.25.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
