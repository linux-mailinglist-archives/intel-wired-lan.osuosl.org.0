Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 308854AF5A0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Feb 2022 16:43:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5E8960AEC;
	Wed,  9 Feb 2022 15:43:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W1NWfaQlRHff; Wed,  9 Feb 2022 15:43:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE78460AB2;
	Wed,  9 Feb 2022 15:43:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4C83E1BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Feb 2022 15:43:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3870C404AB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Feb 2022 15:43:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fhHR-tKBXu5I for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Feb 2022 15:43:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6148C400D0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Feb 2022 15:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644421415; x=1675957415;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tT0ubbIOHy9IAuW3heCg9dBzqzLkwpWxBVD1B0pmpaQ=;
 b=BimlXhnafmYZeRAnxWg3H1QUHe49YZWZ8WVj4XUYNhYY0TMlC8la1XUk
 EewQqP+pJxFgBS8Mt+wQ6JbKaxIZgn2wZVKzFuOTKDIz0X0EDAbZq9qSu
 Yt4kqx0515UDxcZkouXQn3giJq8Ny1aSsN0wDEw/71tRVY3kVXpRPAYCp
 6Uz8HdT6h/9aNGBSKueBm/VrTd2xrlhwQpCGQc/Lx+7SejZnx8xXLLWlZ
 Etb5ibPRyOscZV65RYrdKqTKyYpppmQwn/ewLLUIA+nTCHVWoCuNpSScz
 +NiygLpxxOEr26fa8E/6F3xoYeuRuAMWomxroLWiiE+bbrDSQDzZd54t8 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="312524221"
X-IronPort-AV: E=Sophos;i="5.88,356,1635231600"; d="scan'208";a="312524221"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 07:43:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,356,1635231600"; d="scan'208";a="541143751"
Received: from chenyu-dev.sh.intel.com ([10.239.158.61])
 by orsmga008.jf.intel.com with ESMTP; 09 Feb 2022 07:43:28 -0800
From: Chen Yu <yu.c.chen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 10 Feb 2022 07:43:02 +0800
Message-Id: <20220209234302.50833-1-yu.c.chen@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] e1000e: Print PHY register address when
 MDI read/write fails
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
Cc: Len Brown <len.brown@intel.com>, Chen Yu <yu.c.chen@intel.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Todd Brandt <todd.e.brandt@intel.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There is occasional suspend error from e1000e which blocks the
system from further suspending:
[   20.078957] PM: pci_pm_suspend(): e1000e_pm_suspend+0x0/0x780 [e1000e] returns -2
[   20.078970] PM: dpm_run_callback(): pci_pm_suspend+0x0/0x170 returns -2
[   20.078974] e1000e 0000:00:1f.6: PM: pci_pm_suspend+0x0/0x170 returned -2 after 371012 usecs
[   20.078978] e1000e 0000:00:1f.6: PM: failed to suspend async: error -2
According to the code flow, this might be caused by broken MDI read/write to PHY registers.
However currently the code does not tell us which register is broken. Thus enhance the debug
information to print the offender PHY register for easier debugging.

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
