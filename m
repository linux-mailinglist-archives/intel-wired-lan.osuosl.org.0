Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CF1119683
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Dec 2019 22:28:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C462F85C05;
	Tue, 10 Dec 2019 21:27:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kNJaJLi18ucI; Tue, 10 Dec 2019 21:27:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 62894854EF;
	Tue, 10 Dec 2019 21:27:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 636CF1BF580
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2019 21:10:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5EAAD2042C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2019 21:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lqWWPK-OdGqu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Dec 2019 21:10:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 8E86C22843
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2019 21:10:09 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 99446246AF;
 Tue, 10 Dec 2019 21:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012209;
 bh=dEYdNzA7sCJZoAWIs+glPqeh02jENtriAG4jZL0kQbM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Xt4Xfaqkgn6L2U1WUYUNepDdvxuXnIfWYoW2LRdX6ZjapUlvMB84rQpHoI4Vao52M
 4qmfkg742DoCANxKQFpy4q6kNYySFcb6k8+QSfofm8UtDpZSkchlmH85acNVG1s2tK
 mwhL+OP0F7O/yUJxRFO0uelAnHFOYbd/lljvOZf0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 10 Dec 2019 16:04:26 -0500
Message-Id: <20191210210735.9077-122-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Mailman-Approved-At: Tue, 10 Dec 2019 21:27:55 +0000
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.4 161/350] i40e: initialize ITRN
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Nicholas Nunley <nicholas.d.nunley@intel.com>

[ Upstream commit 998e5166e604fd37afe94352f7b8c2d816b11049 ]

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
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 6031223eafab8..339925af02062 100644
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
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
