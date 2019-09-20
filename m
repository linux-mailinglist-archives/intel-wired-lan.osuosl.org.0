Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A080B96A3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Sep 2019 19:40:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 87130857C1;
	Fri, 20 Sep 2019 17:39:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mfr1dJfrFMW8; Fri, 20 Sep 2019 17:39:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C9FAA857D8;
	Fri, 20 Sep 2019 17:39:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F06F11BF9AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EDB3E857D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ot6zX4MsuaMV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Sep 2019 17:39:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 40F7A85764
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 10:39:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,529,1559545200"; d="scan'208";a="212635338"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by fmsmga004.fm.intel.com with ESMTP; 20 Sep 2019 10:39:51 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Sep 2019 02:17:21 -0700
Message-Id: <20190920091724.51767-7-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190920091724.51767-1-alice.michael@intel.com>
References: <20190920091724.51767-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S10 07/10] i40e: initialize ITRN
 registers with correct values
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

From: Nicholas Nunley <nicholas.d.nunley@intel.com>

Since commit 92418fb14750 ("i40e/i40evf: Use usec value instead of reg
value for ITR defines") the driver tracks the interrupt throttling
intervals in single usec units, although the actual ITRN/ITR0 registers are
programmed in 2 usec units. Most register programming flows in the driver
correctly handle the conversion, although it is currently not applied when
the registers are initialized to their default values. Most of the time
this doesn't present a problem since the default values are usually
immediately overwritten through the standard adaptive throttling mechanism,
or updated manually by the user, but if adaptive throttling is disabled and
the interval values are left alone then the incorrect value will persist.

Since the intended default interval of 50 usecs (vs. 100 usecs as
programmed) performs better for most traffic workloads, this can lead to
performance regressions.

This patch adds the correct conversion when writing the initial values to
the ITRN registers.

Signed-off-by: Nicholas Nunley <nicholas.d.nunley@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index f158760511ab..22394da6cb94 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3534,14 +3534,14 @@ static void i40e_vsi_configure_msix(struct i40e_vsi *vsi)
 		q_vector->rx.target_itr =
 			ITR_TO_REG(vsi->rx_rings[i]->itr_setting);
 		wr32(hw, I40E_PFINT_ITRN(I40E_RX_ITR, vector - 1),
-		     q_vector->rx.target_itr);
+		     q_vector->rx.target_itr >> 1);
 		q_vector->rx.current_itr = q_vector->rx.target_itr;
 
 		q_vector->tx.next_update = jiffies + 1;
 		q_vector->tx.target_itr =
 			ITR_TO_REG(vsi->tx_rings[i]->itr_setting);
 		wr32(hw, I40E_PFINT_ITRN(I40E_TX_ITR, vector - 1),
-		     q_vector->tx.target_itr);
+		     q_vector->tx.target_itr >> 1);
 		q_vector->tx.current_itr = q_vector->tx.target_itr;
 
 		wr32(hw, I40E_PFINT_RATEN(vector - 1),
@@ -3646,11 +3646,11 @@ static void i40e_configure_msi_and_legacy(struct i40e_vsi *vsi)
 	/* set the ITR configuration */
 	q_vector->rx.next_update = jiffies + 1;
 	q_vector->rx.target_itr = ITR_TO_REG(vsi->rx_rings[0]->itr_setting);
-	wr32(hw, I40E_PFINT_ITR0(I40E_RX_ITR), q_vector->rx.target_itr);
+	wr32(hw, I40E_PFINT_ITR0(I40E_RX_ITR), q_vector->rx.target_itr >> 1);
 	q_vector->rx.current_itr = q_vector->rx.target_itr;
 	q_vector->tx.next_update = jiffies + 1;
 	q_vector->tx.target_itr = ITR_TO_REG(vsi->tx_rings[0]->itr_setting);
-	wr32(hw, I40E_PFINT_ITR0(I40E_TX_ITR), q_vector->tx.target_itr);
+	wr32(hw, I40E_PFINT_ITR0(I40E_TX_ITR), q_vector->tx.target_itr >> 1);
 	q_vector->tx.current_itr = q_vector->tx.target_itr;
 
 	i40e_enable_misc_int_causes(pf);
@@ -11396,7 +11396,7 @@ static int i40e_setup_misc_vector(struct i40e_pf *pf)
 
 	/* associate no queues to the misc vector */
 	wr32(hw, I40E_PFINT_LNKLST0, I40E_QUEUE_END_OF_LIST);
-	wr32(hw, I40E_PFINT_ITR0(I40E_RX_ITR), I40E_ITR_8K);
+	wr32(hw, I40E_PFINT_ITR0(I40E_RX_ITR), I40E_ITR_8K >> 1);
 
 	i40e_flush(hw);
 
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
