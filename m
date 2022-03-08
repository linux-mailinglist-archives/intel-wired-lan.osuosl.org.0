Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2281E4D1343
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Mar 2022 10:24:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3AEF41743;
	Tue,  8 Mar 2022 09:24:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G1SOz4jEYxjS; Tue,  8 Mar 2022 09:24:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C78EC4170E;
	Tue,  8 Mar 2022 09:24:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A9DFC1BF30D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 09:24:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 96C68403B8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 09:24:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lsHWUCYA0i4P for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Mar 2022 09:24:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A1A3640396
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 09:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646731467; x=1678267467;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=m7I2yK4h6tNe6g1eGMwJOM0V0CrtUnhdvlPB6eUr6x4=;
 b=lyBa7DrqTiOiD4DuH3OR35a9mNHpy3svqgxgFfwzvtv+OmjbgIknq03Y
 cRnfILboh1WDucG5SQAKHek7C5lzEz1Svtj27NM5WvRdX3vmouuhwwX6V
 tXRl3d4SxDr5lZWJ1p7WPl0AnSkyrruglLtL1jrOaq39TucnmaiY1+uNL
 OQbst/aLd/dVp8TjjT8jz5NwqnLjdHhnWRp2QdbYvmIUm/YnJt70NJCH/
 t+R8PefQi3N7Qx4hjR8mAOXkAnXjFeK82Saxu6MlBeDq7AiLYsBox9Ei3
 7Rw2t1C2eL4AUTzY9+GF0s9pvcWjN0gDKSToZO1JrI5Fvk6gXAfn4bqMT A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="253467349"
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="253467349"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 01:24:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="510040506"
Received: from ccdlinuxdev12.iil.intel.com ([143.185.162.56])
 by orsmga002.jf.intel.com with ESMTP; 08 Mar 2022 01:24:25 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  8 Mar 2022 11:24:22 +0200
Message-Id: <20220308092422.2971655-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Fix BUG: scheduling while
 atomic: kworker/u64:0/9/0x00000002
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
Cc: Corinna Vinschen <vinschen@redhat.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Replace usleep_range() method with udelay() method to allow atomic contects
in low-level MDIO access functions.

Bugzilla: https://bugzilla.redhat.com/show_bug.cgi?id=2014971
Fixes: 5586838fe9ce ("igc: Add code for PHY support")
Reported-by: Corinna Vinschen <vinschen@redhat.com>
Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_phy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
index 40dbf4b43234..6961f65d36b9 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.c
+++ b/drivers/net/ethernet/intel/igc/igc_phy.c
@@ -581,7 +581,7 @@ static s32 igc_read_phy_reg_mdic(struct igc_hw *hw, u32 offset, u16 *data)
 	 * the lower time out
 	 */
 	for (i = 0; i < IGC_GEN_POLL_TIMEOUT; i++) {
-		usleep_range(500, 1000);
+		udelay(50);
 		mdic = rd32(IGC_MDIC);
 		if (mdic & IGC_MDIC_READY)
 			break;
@@ -638,7 +638,7 @@ static s32 igc_write_phy_reg_mdic(struct igc_hw *hw, u32 offset, u16 data)
 	 * the lower time out
 	 */
 	for (i = 0; i < IGC_GEN_POLL_TIMEOUT; i++) {
-		usleep_range(500, 1000);
+		udelay(50);
 		mdic = rd32(IGC_MDIC);
 		if (mdic & IGC_MDIC_READY)
 			break;
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
