Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D094B0E56
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Feb 2022 14:23:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 572E480ACE;
	Thu, 10 Feb 2022 13:23:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AktcQeAgUsua; Thu, 10 Feb 2022 13:23:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6304080A55;
	Thu, 10 Feb 2022 13:23:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AFDCC1BF356
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 13:23:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9D0B180A55
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 13:23:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3gFh-vSys3gx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Feb 2022 13:23:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E1F2C80A53
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Feb 2022 13:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644499416; x=1676035416;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xaNbbSHH+Oj7f0ul4xNRnJxNvPSGLv4NgNZTbVdjjnc=;
 b=dVlJswngNgiSDMOvl4v7yxuTdzPe9N810sPJsBD6VKv3f026nOiomc5o
 cJ8m179rddLCprPA6dN0uID7KVFoQeCQv/ezbNtk5APDQ0Lb50YPVBW3N
 i81C0fKZ6uWC1202ylvttKP1ozEVkmVgG7TwGBbttE7itXKV0gahenpFy
 R+pC1TIu/UsVdbDWCsUC03yus/itQ9oV8yr1VuWWwV2O3YpYb0DJwjgtf
 deO/cJdYpb9WdaawcoTfWwZTQE09Lr1CjTb+TyO2nl7urIWtqGkxm6YPt
 d01HG90+qk/4ySDCfJEsJJJ1AIQs4Iv2DzPfctQOgfivRAUhmRFkzJhaa Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="249240307"
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="249240307"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 05:23:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="633663096"
Received: from chenyu-dev.sh.intel.com ([10.239.158.61])
 by orsmga004.jf.intel.com with ESMTP; 10 Feb 2022 05:23:33 -0800
From: Chen Yu <yu.c.chen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 10 Feb 2022 21:22:56 +0800
Message-Id: <20220210132256.53589-1-yu.c.chen@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2] e1000e: Print PHY register address
 when MDI read/write fails
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, Chen Yu <yu.c.chen@intel.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Todd Brandt <todd.e.brandt@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There is occasional suspend error from e1000e which blocks the
system from further suspending. And the issue was found on
a WhiskeyLake-U platform with I219-V:

[   20.078957] PM: pci_pm_suspend(): e1000e_pm_suspend+0x0/0x780 [e1000e] returns -2
[   20.078970] PM: dpm_run_callback(): pci_pm_suspend+0x0/0x170 returns -2
[   20.078974] e1000e 0000:00:1f.6: PM: pci_pm_suspend+0x0/0x170 returned -2 after 371012 usecs
[   20.078978] e1000e 0000:00:1f.6: PM: failed to suspend async: error -2

According to the code flow, this might be caused by broken MDI read/write
to PHY registers. However currently the code does not tell us which
register is broken. Thus enhance the debug information to print the
offender PHY register. So the next the issue is reproduced, this
information could be used for narrow down.

Acked-by: Paul Menzel <pmenzel@molgen.mpg.de>
Reported-by: Todd Brandt <todd.e.brandt@intel.com>
Signed-off-by: Chen Yu <yu.c.chen@intel.com>
---
 drivers/net/ethernet/intel/e1000e/phy.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
index 0f0efee5fc8e..fd07c3679bb1 100644
--- a/drivers/net/ethernet/intel/e1000e/phy.c
+++ b/drivers/net/ethernet/intel/e1000e/phy.c
@@ -146,11 +146,11 @@ s32 e1000e_read_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 *data)
 			break;
 	}
 	if (!(mdic & E1000_MDIC_READY)) {
-		e_dbg("MDI Read did not complete\n");
+		e_dbg("MDI Read PHY Reg Address %d did not complete\n", offset);
 		return -E1000_ERR_PHY;
 	}
 	if (mdic & E1000_MDIC_ERROR) {
-		e_dbg("MDI Error\n");
+		e_dbg("MDI Read PHY Reg Address %d Error\n", offset);
 		return -E1000_ERR_PHY;
 	}
 	if (((mdic & E1000_MDIC_REG_MASK) >> E1000_MDIC_REG_SHIFT) != offset) {
@@ -210,11 +210,11 @@ s32 e1000e_write_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 data)
 			break;
 	}
 	if (!(mdic & E1000_MDIC_READY)) {
-		e_dbg("MDI Write did not complete\n");
+		e_dbg("MDI Write PHY Reg Address %d did not complete\n", offset);
 		return -E1000_ERR_PHY;
 	}
 	if (mdic & E1000_MDIC_ERROR) {
-		e_dbg("MDI Error\n");
+		e_dbg("MDI Write PHY Red Address %d Error\n", offset);
 		return -E1000_ERR_PHY;
 	}
 	if (((mdic & E1000_MDIC_REG_MASK) >> E1000_MDIC_REG_SHIFT) != offset) {
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
