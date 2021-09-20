Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DED9411091
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Sep 2021 09:57:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 997BE8266A;
	Mon, 20 Sep 2021 07:57:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BHkaef5DQgzg; Mon, 20 Sep 2021 07:57:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADA8982540;
	Mon, 20 Sep 2021 07:57:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BDCF91BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 07:57:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A3B30607CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 07:57:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZHDkHPuXDPep for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Sep 2021 07:57:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 120EA607CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 07:57:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10112"; a="308625090"
X-IronPort-AV: E=Sophos;i="5.85,307,1624345200"; d="scan'208";a="308625090"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 00:57:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,307,1624345200"; d="scan'208";a="473466129"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by fmsmga007.fm.intel.com with ESMTP; 20 Sep 2021 00:57:46 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 20 Sep 2021 09:57:35 +0200
Message-Id: <20210920075735.15659-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix freeing of uninitialized
 misc IRQ vector
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>

When VSI set up failed in i40e_probe() as part of PF switch set up
driver was trying to free misc IRQ vectors in
i40e_clear_interrupt_scheme. The problem is that at that point
misc IRQ vectors were not allocated yet and we get a call trace
that driver is trying to free already free IRQ vectors.

Add a check in i40e_free_misc_vector for __I40E_MISC_IRQ_REQUESTED
PF state which is only set if misc IRQ vectors were properly
initialized.

Fixes: c17401a1dd21 ("i40e: use separate state bit for miscellaneous IRQ setup")
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v2: Fix commmit title typo
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 000991a..b16ae48 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3987,7 +3987,8 @@ static void i40e_free_misc_vector(struct i40e_pf *pf)
 	wr32(&pf->hw, I40E_PFINT_ICR0_ENA, 0);
 	i40e_flush(&pf->hw);
 
-	if (pf->flags & I40E_FLAG_MSIX_ENABLED && pf->msix_entries) {
+	if (pf->flags & I40E_FLAG_MSIX_ENABLED && pf->msix_entries &&
+	    test_bit(__I40E_MISC_IRQ_REQUESTED, pf->state)) {
 		synchronize_irq(pf->msix_entries[0].vector);
 		free_irq(pf->msix_entries[0].vector, pf);
 		clear_bit(__I40E_MISC_IRQ_REQUESTED, pf->state);
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
